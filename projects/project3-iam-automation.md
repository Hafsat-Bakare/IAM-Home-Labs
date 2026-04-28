
# Project 3 – IAM Automation (Joiner–Mover–Leaver)

## Summary

This project demonstrates **IAM lifecycle automation** using PowerShell to enforce Joiner, Mover, and Leaver (JML) controls in Active Directory.

It builds on Projects 1 and 2 by replacing manual identity operations with repeatable, script‑based workflows that reduce risk, improve consistency, and support audit readiness.

Automation is scoped intentionally to core IAM tasks commonly handled by IAM Engineering and Identity Operations teams.


## Objectives

- Automate user onboarding (Joiner)
- Automate access changes during role transitions (Mover)
- Automate secure offboarding and access revocation (Leaver)
- Ensure role‑based access control (RBAC) integrity
- Reduce manual IAM effort while improving reliability

---

## Automation Scope

**In Scope**
- Active Directory user lifecycle actions
- Attribute updates (Department, Title)
- Role‑based security group membership
- Account disablement and cleanup

**Out of Scope**
- External HR system integrations
- Cloud IAM platforms
- Application‑level provisioning

Active Directory is treated as the authoritative identity system for this lab, simulating enterprise directory‑driven automation.

---

## Automation Structure

Automation scripts are organized by lifecycle stage under the repository root:
scripts/
├── joiner/
├── mover/
└── leaver/
Each folder contains scripts focused on a specific IAM lifecycle event.

---

## Joiner Automation

### Description

Joiner automation provisions a new identity and assigns baseline access based on
role attributes.

### Automated Actions

- Create user account
- Set Department and Title attributes
- Assign role‑based security group membership
- Enable authentication

### Outcome

- Day‑one access without manual steps
- Consistent RBAC enforcement
- Reduced provisioning errors

Evidence: docs/screenshots/project3/joiner/

---

## Mover Automation

### Description

Mover automation updates access when a user changes roles or departments.

### Automated Actions

- Remove previous role group membership
- Assign new role‑based group
- Update user attributes

### Outcome

- No access stacking
- Immediate alignment to new role
- Reduced privilege creep risk

Evidence:docs/screenshots/project3/mover/

---

## Leaver Automation

### Description

Leaver automation ensures timely and complete access removal when employment ends.

### Automated Actions

- Disable user account
- Remove all role‑based group memberships
- Move account to Disabled Users OU

### Outcome

- Authentication blocked
- No residual access
- Clear audit trail

Evidence:docs/screenshots/project3/leaver/

---

## Validation and Evidence

Automation outcomes were validated through:

- Attribute verification
- Group membership inspection
- Authentication success and failure testing
- Screenshot evidence for each lifecycle stage

All artifacts are stored under:

docs/screenshots/project3/

---

## Risk Reduction and Benefits

- Reduced manual IAM operations
- Improved consistency and repeatability
- Faster provisioning and deprovisioning
- Stronger alignment with least‑privilege principles
- Audit‑ready evidence for lifecycle actions

---

## Relationship to Other Projects

- **Project 1** established identity foundations and RBAC
- **Project 2** implemented lifecycle governance logically
- **Project 3** enforces governance programmatically

Together, these projects demonstrate an end‑to‑end IAM lifecycle implementation.

---

## Status

- Joiner automation: Completed
- Mover automation: Completed
- Leaver automation: Completed
