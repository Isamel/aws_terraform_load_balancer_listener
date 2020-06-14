resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.alb_listener_depends_on)
    }
}

resource "aws_lb_listener" "alb_listener_terraform" {
    count                = var.alb_count
    depends_on           = [null_resource.depends_on]
    load_balancer_arn    = var.alb_listener_load_balancer_arn
    port                 = var.alb_listener_port
    protocol             = var.alb_listener_protocol
    ssl_policy           = var.alb_listener_ssl_policy
    certificate_arn      = var.alb_listener_certificate_arn
    default_action {
        type             = var.alb_listener_default_action_type
        fixed_response {
            content_type = var.alb_listener_default_action_fixed_response_content_type
            message_body = var.alb_listener_default_action_fixed_response_message_body
            status_code  = var.alb_listener_default_action_fixed_response_status_code
        }
    }
}