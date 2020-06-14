variable "alb_listener_count" {
    type        = bool
    description = "alb listener count."
}

variable "alb_listener_depends_on" {
    type        = list(string)
    description = "alb listener depends on"
}

variable "alb_listener_port" {
    type        = number
    description = "alb listener port."
}

variable "alb_internalb_listener_protocolal" {
    type        = string
    description = "alb listener protocol."
}

variable "alb_listener_ssl_policy" {
    type        = string
    description = "alb listener ssl policy."
}

variable "alb_listener_certificate_arn" {
    type        = string
    description = "alb listener certificate arn."
}

variable "alb_listener_default_action_type" {
    type        = string
    description = "alb listener default action type."
}

variable "alb_listener_default_action_fixed_response_content_type" {
    type        = string
    description = "alb listener default action fixed response content type."
}

variable "alb_listener_default_action_fixed_response_message_body" {
    type        = string
    description = "alb listener default action fixed response message body."
}

variable "alb_listener_default_action_fixed_response_status_code" {
    type        = number
    description = "alb listener default action fixed response status code."
}