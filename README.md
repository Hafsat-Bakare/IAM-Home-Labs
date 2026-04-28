# IAM-Home-Labs

# Hybrid Identity & Access Management Homelab

## Overview
This repository documents a hybrid Identity & Access Management (IAM) homelab
designed to mirror enterprise identity architecture.

The lab demonstrates:
- Active Directory as the on‑prem identity authority
- Role‑based access control (RBAC)
- Group Policy enforcement
- Security‑focused identity design
- Documentation aligned with real enterprise standards

## Architecture Summary
- Windows Server 2022 (AD DS + DNS)
- Windows 10/11 Enterprise clients
- OU design for policy & delegation
- Security groups for access control

## Project 1 – Enterprise Active Directory Foundation
Focus: Identity architecture, RBAC, and policy enforcement
-	Established Active Directory as the authoritative identity store
-	Designed Organizational Units (OUs) for policy and delegation scope
-	Implemented role-based access using security groups
-	Enforced centralized local administrator control via Group Policy
-	Validated policy application and least privilege behavior

**Documentation**:
projects/project1-enterprise-ad-foundation.md


##  Project 2 – Identity Lifecycle Management (Joiner–Mover–Leaver)
Focus: Identity governance and lifecycle access control
-	Implemented Joiner workflows for secure onboarding
-	Managed Mover scenarios to remove old access during role changes
-	Performed Leaver offboarding with complete access removal
-	Used attributes and RBAC to drive access decisions
-	Captured validation evidence for each lifecycle phase

**Documentation:**
projects/project2-identity-lifecycle-jml.md

## Project 3 – IAM Automation with PowerShell
Focus: Operational efficiency and consistency
- Automating joiner, mover, and leaver actions
- Scripted group membership updates
-	Reduced manual IAM operations
-	Improved accuracy and repeatability

## Documentation
Detailed design documentation and diagrams are available in the `/docs` directory.
