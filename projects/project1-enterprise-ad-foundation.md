## Project Overview

This project establishes Active Directory Domain Services as the on‑premises
identity authority for a simulated enterprise environment.

The focus is on:
- Identity structure and governance
- Role‑Based Access Control (RBAC)
- Centralized enforcement of local administrator privileges
- Correct Group Policy scoping and precedence

## Architecture Summary

- Domain Controller: Windows Server 2022 running AD DS and DNS
- Domain: hafsatsoc.local
- Clients: Domain‑joined Windows 11 workstations
- Policy enforcement: Domain Group Policy Objects (GPOs)
  
## OU Design

Organizational Units were designed as policy and delegation boundaries rather
than access control mechanisms.

Key OUs include:
- Users (by department)
- Computers / Workstations
- Administrative accounts

This design allows Group Policy to be applied predictably and supports the least
privilege enforcement.

## RBAC Strategy

Administrative access is granted using domain security groups rather than
individual user accounts.

A dedicated group (e.g. GG‑Workstation‑LocalAdmins) is used to control which
Users receive local administrator privileges on workstations.

## Local Administrator Enforcement

Local administrator access is enforced centrally using a computer‑scoped Group
Policy Object.

Restricted Groups was configured under Computer Configuration to define the
members of the local BUILTIN\Administrators group.

The policy is linked to the Workstations OU, ensuring consistent enforcement
across all domain‑joined devices.

## Validation and Troubleshooting

During testing, local administrator access was initially unavailable due to a misconfigured "Restricted Group" definition on the GPO policy.

Key validation steps included:
- Confirming workstation OU placement
- Correcting the Restricted group definition
- Forcing Group Policy refresh and reboot
- Verifying local group membership using net localgroup administrators
- Reviewing computer‑scoped RSOP data

The issue was resolved after correcting GPO scope and ensuring Restricted Groups
was applied at the computer level.

## Evidence

The following artifacts verify correct policy enforcement
and least‑privilege behavior:

- Domain OU structure (`ou-structure.png`)
- Workstation OU placement (`workstation-ou-location.png`)
- Restricted Groups GPO configuration (`gpo-restricted-groups.png`)
- Local administrators membership validation (`local-admin-membership.png`)
- Computer‑scoped RSOP output (`gpresult-computer-scope.png`)

Screenshots are located in `/docs/screenshots/project1`.

## Lessons Learned

- Domain Group Policy overrides local policy by design
- OU placement is critical for policy application
- Computer‑scoped policies must be validated differently from user policies
- RBAC simplifies privilege management and auditing
