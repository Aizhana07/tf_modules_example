

variable "db_intance_type" {
  type = string
  /* default = "db.t3.micro" */
}

variable "password" {
  type = string
  /* default = "foobarbaz" */
}

variable "allocated_storage" {
  type = string
}

variable "db_name" {
  type = string

}
