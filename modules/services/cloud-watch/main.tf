resource "aws_sns_topic" "send_text" {
  name = "sendText"
}

resource "aws_sns_topic_subscription" "text_send_text_target" {
  topic_arn = "${aws_sns_topic.send_text.arn}"
  protocol  = "sms"
  endpoint = "${var.sms_number}"
}

resource "aws_cloudwatch_metric_alarm" "alarm_minutes" {
  alarm_name          = "terraform-idle_cpu_5_mins"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "2"

dimensions {
    AutoScalingGroupName = "${var.autoscaling_group}"
  }

  alarm_description = "This metric monitors ec2 cpu utilization every minute for 5 minutes"
  alarm_actions     = ["${aws_sns_topic.send_text.arn}"]
}
resource "aws_cloudwatch_metric_alarm" "alarm_hours" {
  alarm_name          = "terraform-idle_cpu_5_hours"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "3600"
  statistic           = "Average"
  threshold           = "2"

dimensions {
    AutoScalingGroupName = "${var.autoscaling_group}"
  }

  alarm_description = "This metric monitors ec2 cpu utilization every hour for 5 hours"
  alarm_actions     = ["${aws_sns_topic.send_text.arn}"]
}