variable "project" {
  description = "Project ID"
  default = "prismatic-grail-420403"  
}

variable "region" {
  description = "Region"
  default = "us-west1-a"  
}

variable "location" {
  description = "Resource location"
  default = "US"  
}

variable "bq_dataset" {
    description = "BigQuery Dataset Name"
    default = "reddit_dataset"
}

