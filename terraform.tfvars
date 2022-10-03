NAME          = "Wave-cycle"
CIDR          = "190.0.0.0/16"
AZ            = ["us-west-2a"]
SUBNET        = ["190.0.0.0/24"]
PVT-SUBNET    = ["190.0.1.0/24"]
spot_type     = "persistent"
spot_behavior = "stop"
ami           = "ami-08e2d37b6a0129927"
instance_type = "t2.micro"


