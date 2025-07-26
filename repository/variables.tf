variable "name" {
  type = string
}

variable "description" {
  type     = string
  nullable = true
  validation {
    condition     = (var.description == null) == (length(var.topics) == 0)
    error_message = "Description should be given exactly if topics are."
  }
}

variable "topics" {
  type = set(string)
  validation {
    condition     = length(var.topics) <= 5
    error_message = "Too many topics according to own convention."
  }
}
