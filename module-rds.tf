#https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest

# module "db" {
#   source  = "terraform-aws-modules/rds/aws"
#   version = "6.3.1"

#   identifier = "demodb"

#   engine            = "mysql"
#   engine_version    = "5.7"
#   instance_class    = "db.t3.micro"
#   allocated_storage = 5

#   db_name  = "demodb"
#   username = "user"
#   port     = "3306"

#   iam_database_authentication_enabled = true

#   vpc_security_group_ids = [module.vpc.default_security_group_id]

#   maintenance_window = "Mon:00:00-Mon:03:00"
#   backup_window      = "03:00-06:00"

#   # Enhanced Monitoring - see example for details on how to create the role
#   # by yourself, in case you don't want to create it automatically
#   monitoring_interval    = "30"
#   monitoring_role_name   = "MyRDSMonitoringRole"
#   create_monitoring_role = true

#   tags = {
#     Owner       = "user"
#     Environment = "dev"
#   }

#   # DB subnet group
#   create_db_subnet_group = true
#   subnet_ids             = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]

#   # DB parameter group
#   family = "mysql5.7"

#   # DB option group
#   major_engine_version = "5.7"

#   create_db_option_group = false
#   # Database Deletion Protection
#   # deletion_protection = true
#   deletion_protection = false
#   skip_final_snapshot = true
#   parameters = [
#     {
#       name  = "character_set_client"
#       value = "utf8mb4"
#     },
#     {
#       name  = "character_set_server"
#       value = "utf8mb4"
#     }
#   ]

#   options = [
#     {
#       option_name = "MARIADB_AUDIT_PLUGIN"

#       option_settings = [
#         {
#           name  = "SERVER_AUDIT_EVENTS"
#           value = "CONNECT"
#         },
#         {
#           name  = "SERVER_AUDIT_FILE_ROTATIONS"
#           value = "37"
#         },
#       ]
#     },
#   ]
# }
