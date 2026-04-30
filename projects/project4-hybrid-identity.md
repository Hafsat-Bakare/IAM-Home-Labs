# Project 4 – Hybrid Identity & Azure AD (Microsoft Entra ID) Deployment

## Summary

This project documents the end‑to‑end deployment of a **hybrid identity environment**
integrating an on‑premises Active Directory domain with **Microsoft Entra ID
(Azure Active Directory)**.

The implementation follows Microsoft‑supported hybrid identity patterns, enabling
a single, directory‑anchored identity to authenticate across both on‑premises and
cloud resources. Active Directory remains the authoritative source for identity
lifecycle management, while Azure AD extends authentication and access to cloud
services.

---

## Objectives

- Deploy Microsoft Entra ID as a cloud identity provider
- Integrate on‑premises Active Directory using hybrid identity
- Configure directory synchronization with Microsoft Entra Connect
- Establish a supported authentication model for hybrid users
- Validate synchronization health and hybrid authentication
- Align cloud identity with existing IAM lifecycle and governance controls

---

## Deployment Scope

### In Scope

- Creation and validation of a Microsoft Entra ID (Azure AD) tenant
- Preparation of on‑premises Active Directory as the authoritative identity source
- Installation and configuration of Microsoft Entra Connect (custom installation)
- Controlled synchronization of users, groups, and identity attributes
- Selection and implementation of **Password Hash Synchronization (PHS)**
- Verification of hybrid authentication using on‑prem credentials
- Validation of synchronization status and operational health

### Out of Scope

- Conditional Access and MFA policy enforcement
- Privileged Identity Management (PIM)
- SaaS application integrations
- Advanced identity protection features

The scope reflects a **phase‑one enterprise hybrid identity rollout**, focused on
core identity integration and reliability rather than advanced cloud controls.

---

## Hybrid Identity Architecture

In this deployment:

- **Active Directory** remains the authoritative identity source
- **Microsoft Entra ID** consumes synchronized identity objects
- Authentication is performed in the cloud using Password Hash Synchronization
- No cloud‑only accounts are created for synced users
