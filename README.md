# Module Aviatrix Transit VPC for AWS

### Description
This module deploys a VPC and an Aviatrix transit gateway. Defining the Aviatrix Terraform provider is assumed upstream and is not part of this module.

### Diagram
<img src="https://dhagens-repository-images-public.s3.eu-central-1.amazonaws.com/terraform-aviatrix-aws-transit/module-aviatrix-transit-vpc-for-aws-ha.png"  height="250">

with ha_gw set to false, the following will be deployed:

<img src="https://dhagens-repository-images-public.s3.eu-central-1.amazonaws.com/terraform-aviatrix-aws-transit/module-aviatrix-transit-vpc-for-aws.png"  height="250">

### Usage Example
```
module "transit_aws_1" {
  source  = "<path>"
  version = "0.0.9"

  cidr = "10.1.0.0/20"
  region = "eu-west-1"
  aws_account_name = "AWS"
}
```

### Variables
The following variables are required:

key | value
--- | ---
region | AWS region to deploy the transit VPC in
aws_account_name | The AWS accountname on the Aviatrix controller, under which the controller will deploy this VPC
cidr | The IP CIDR wo be used to create the VPC.

The following variables are optional:

key | default | value
--- | --- | ---
instance_size | t3.small | Size of the transit gateway instances
ha_gw | true | Set to true to false te deploy a single transit GW.

### Outputs
This module will return the following objects:

key | description
--- | ---
vpc | The created VPC as an object with all of it's attributes. This was created using the aviatrix_vpc resource.
transit_gateway | The created Aviatrix transit gateway as an object with all of it's attributes.