provider "aws" {
  region  = "eu-central-1"
}

resource "aws_config_config_rule" "ConfigRule_GBkZT" {
  name = "restricted-common-ports"
  description = "A Config rule that checks whether security groups in use do not allow restricted incoming TCP traffic to the specified ports. This rule applies only to IPv4."
  input_parameters = "{\"blockedPort1\":\"20\",\"blockedPort2\":\"21\",\"blockedPort3\":\"3389\",\"blockedPort4\":\"3306\",\"blockedPort5\":\"4333\"}"

  source {
    owner = "AWS"
    source_identifier = "RESTRICTED_INCOMING_TRAFFIC"
  }
  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }
}

resource "aws_config_config_rule" "ConfigRule_OyiOX" {
  name = "restricted-ssh"
  description = "A Config rule that checks whether security groups in use do not allow restricted incoming SSH traffic. This rule applies only to IPv4."

  source {
    owner = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }
  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }
}

resource "aws_config_config_rule" "ConfigRule_ozuPq" {
  name = "restricted-ssh"
  description = "A Config rule that checks whether security groups in use do not allow restricted incoming SSH traffic. This rule applies only to IPv4."

  source {
    owner = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }
  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }
}