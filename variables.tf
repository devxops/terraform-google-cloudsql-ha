# For more details please see the following pages :
# https://www.terraform.io/docs/providers/google/r/sql_database_instance.html

##############################
###        CLOUDSQL        ###
##############################

# name (mandatory)
# env (mandatory)
# region (mandatory)
# db_version (default: MYSQL_5_7)
# backup_enabled (default: true)
# backup_time (default: 02:30)
variable "general" {
  type        = map(string)
  description = "General configuration"
}

# tier (default: db-f1-micro)
# zone (mandatory)
# disk_type (default: PD_SSD)
# disk_size (default: 10)
# disk_auto (default: true)
# activation_policy (default: ALWAYS)
# require_ssl (default: false)
# ipv4_enabled (default: true)
# maintenance_day (default: 1)
# maintenance_hour (default: 2)
# maintenance_track (default: stable)
variable "master" {
  type        = map(string)
  description = "Master configuration"
}

# tier (default: db-f1-micro)
# zone (mandatory)
# disk_type (default: PD_SSD)
# disk_size (default: 10)
# disk_auto (default: true)
# activation_policy (default: ALWAYS)
# retry_interval (default: 60) => disabled
# maintenance_day (default: 3)
# maintenance_hour (default: 2)
# maintenance_track (default: stable)
variable "replica" {
  type        = map(string)
  description = "Replica configuration"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Global labels"
}

##########################
###       COMMON       ###
##########################
variable "database_flags" {
  description = "List of Cloud SQL flags that are applied to the database server. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  type = map(string)
  default = {}
}