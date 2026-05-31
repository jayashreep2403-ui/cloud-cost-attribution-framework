# Cloud Cost Attribution & Tagging Framework

## Overview

Organizations often struggle to determine which teams, environments, or services are responsible for cloud spending. This project implements a standardized AWS tagging framework using Terraform to enable accurate cost allocation, governance, and reporting.

The solution enforces tagging standards across AWS resources and visualizes cost efficiency metrics through Grafana dashboards.

-----------------------------------------------------------------------

## Problem Statement

Without consistent resource tagging:

* Cloud costs cannot be accurately allocated.
* Idle resources are difficult to identify.
* Environment-wise spending becomes unclear.
* FinOps initiatives become difficult to implement.

This project addresses these challenges through automated tagging enforcement and cost attribution.

-------------------------------------------------------------------------------

## Solution Architecture

AWS Resources

* EC2
* S3
* VPC
* IAM
* CloudWatch

Infrastructure Provisioning

* Terraform

Monitoring & Visualization

* Grafana
* CloudWatch Metrics

-------------------------------------------------------------------------------

## Tagging Strategy

Every resource receives mandatory tags:

| Tag         | Purpose            |
| ----------- | ------------------ |
| Environment | dev, stage, prod   |
| Application | Service Name       |
| Owner       | Team or Engineer   |
| CostCenter  | Business Unit      |
| Project     | Project Identifier |
| ManagedBy   | Terraform          |

Example:

Environment = prod

Application = payment-service

Owner = platform-team

CostCenter = engineering

ManagedBy = terraform

-------------------------------------------------------------------------------------

## Terraform Implementation

Reusable Terraform modules automatically apply tags to all supported resources.


------------------------------------------------------------------------------------

## Cost Attribution Workflow

1. Resources are deployed through Terraform.
2. Standardized tags are applied automatically.
3. AWS Cost Explorer groups spending by tags.
4. CloudWatch metrics are collected.
5. Grafana dashboards visualize cost allocation.
6. Teams analyze spending trends and optimization opportunities.

----------------------------------------------------------------

## Grafana Dashboards

Key Metrics:

* Cost by Environment
* Cost by Team
* Cost by Application
* Idle Resource Detection
* Monthly Cost Trends
* Resource Utilization

---------------------------------------------------------------------------

## Security Considerations

* Least-privilege IAM access
* Terraform state protection
* Controlled tag modification permissions
* Audit-friendly tagging standards

------------------------------------------------------------------

## Benefits

* Improved cost visibility
* Faster cost allocation
* FinOps readiness
* Better governance
* Simplified reporting
* Reduced cloud waste

---------------------------------------------------------------------

## Technologies Used

* AWS
* Terraform
* CloudWatch
* Grafana
* IAM

## Author

Jayashree Patil

