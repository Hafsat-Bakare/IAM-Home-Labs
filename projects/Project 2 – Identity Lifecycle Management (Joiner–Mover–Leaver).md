# Project 2 – Identity Lifecycle Management (Joiner–Mover–Leaver)

## Summary

This project demonstrates practical Identity Lifecycle Management using the
Joiner–Mover–Leaver (JML) model.

Built on an Active Directory foundation, it shows how user access is provisioned,
updated, and fully removed as employees join, change roles, or leave the organization.

The implementation emphasizes role-based access control (RBAC), least privilege,
and audit-ready validation.

---

## Objectives

- Provision secure access for new users
- Modify access cleanly during role changes
- Remove all access during offboarding
- Prevent permission creep
- Document and validate access changes

---

## Scope and Assumptions

**In scope**
- Active Directory users and groups
- Department and title attributes
- Role-based access control

**Out of scope**
- External HR systems
- Cloud IAM platforms
- Application-level provisioning

Active Directory acts as the authoritative identity source for this lab.

---

## Identity Model

### Authoritative Attributes

The following attributes drive lifecycle decisions:

- Department
- Title

---

### Role-Based Access Control

Access is granted only through security groups.

Examples:
- HG_HR-Users
- HG_Finance-Users
- HG_Operations-Users

Users are never assigned access directly.

---

## Joiner – Secure Onboarding

New identities are created and granted access based on role attributes.

**Outcome**
- Day-one access aligned to role
- No administrative privileges
- Access is explainable and auditable

Evidence stored in:
docs/screenshots/project2/joiner/

---

## Mover – Controlled Role Changes

When users change roles, old access is removed and new access is assigned.

**Outcome**
- No access accumulation
- Clean RBAC alignment

Evidence stored in:
docs/screenshots/project2/mover/

---

## Leaver – Secure Offboarding

Access is fully removed when employment ends.

**Outcome**
- Account disabled
- Group membership cleared
- Authentication blocked

Evidence stored in:
docs/screenshots/project2/leaver/

---

## Validation

Access lifecycle was validated using:

- Attribute verification
- Group membership checks
- Authentication testing
- Screenshot evidence

---

## Status

Joiner: Completed  
Mover: Completed  
Leaver: Completed
