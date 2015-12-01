# == Class: rally
#
# Configure the rally application
#
# === Parameters
#
# [*debug*]
#   Print debugging output (set logging level to DEBUG instead of default INFO
#   level). (boolean value) #debug = false debug = False
#   Defaults to False
#
# [*verbose*]
#   If set to false, will disable INFO logging level, making WARNING the
#   default. (boolean value) This option is deprecated for removal. Its value
#   may be silently ignored in the future.
#   Defaults to False
#
# [*log_file*]
#   (Optional) Name of log file to output to. If no default is set, logging
#   will go to stdout. (string value)
#   Defaults to <None>
#
# [*log_dir*]
#   (Optional) The base directory used for relative --log-file paths.
#   (string value)
#   Defaults to <None>
#
# [*openstack_client_http_timeout*]
#   HTTP timeout for any of OpenStack service in seconds (floating point value)
#   Defaults to 180.0
#
# [*cinder_volume_create_prepoll_delay*]
#   Time to sleep after creating a resource before polling for it status
#   (floating point value)
#   Defaults to 2.0
#
# [*cinder_volume_create_timeout*]
#   Time to wait for cinder volume to be created. (floating point value)
#   Defaults to 600.0
#
# [*cinder_volume_create_poll_interval*]
#   Interval between checks when waiting for volume creation. (floating point
#   value)
#   Defaults to 2.0
#
# [*cinder_volume_delete_timeout*]
#   Time to wait for cinder volume to be deleted. (floating point value)
#   Defaults to 600.0
#
# [*cinder_volume_delete_poll_interval*]
#   Interval between checks when waiting for volume deletion. (floating point
#   value)
#   Defaults to 2.0
#
# [*ec2_server_boot_prepoll_delay*]
#   Time to sleep after boot before polling for status (floating point value)
#   Defaults to 1.0
#
# [*ec2_server_boot_timeout*]
#   Server boot timeout (floating point value)
#   Defaults to 300.0
#
# [*ec2_server_boot_poll_interval*]
#   Server boot poll interval (floating point value)
#   Defaults to 1.0
#
# [*glance_image_create_prepoll_delay*]
#   Time to sleep after creating a resource before polling for it status
#   (floating point value)
#   Defaults to 2.0
#
# [*glance_image_create_timeout*]
#   Time to wait for glance image to be created. (floating point value)
#   Defaults to 120.0
#
# [*glance_image_create_poll_interval*]
#   Interval between checks when waiting for image creation. (floating point
#   value)
#   Defaults to 1.0
#
# [*glance_image_delete_timeout*]
#   Time to wait for glance image to be deleted. (floating point value)
#   Defaults to 120.0
#
# [*glance_image_delete_poll_interval*]
#   Interval between checks when waiting for image deletion. (floating point
#   value)
#   Defaults to 1.0
#
# [*heat_stack_create_prepoll_delay*]
#   Time(in sec) to sleep after creating a resource before polling for it
#   status. (floating point value)
#   Defaults to 2.0
#
# [*heat_stack_create_timeout*]
#   Time(in sec) to wait for heat stack to be created. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_create_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack creation.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_delete_timeout*]
#   Time(in sec) to wait for heat stack to be deleted. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_delete_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack deletion.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_check_timeout*]
#   Time(in sec) to wait for stack to be checked. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_check_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack checking.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_update_prepoll_delay*]
#   Time(in sec) to sleep after updating a resource before polling for it
#   status. (floating point value)
#   Defaults to 2.0
#
# [*heat_stack_update_timeout*]
#   Time(in sec) to wait for stack to be updated. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_update_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack update.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_suspend_timeout*]
#   Time(in sec) to wait for stack to be suspended. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_suspend_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack suspend.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_resume_timeout*]
#   Time(in sec) to wait for stack to be resumed. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_resume_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack resume.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_snapshot_timeout*]
#   Time(in sec) to wait for stack snapshot to be created. (floating point
#   value)
#   Defaults to 3600.0
#
# [*heat_stack_snapshot_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack snapshot to be
#   created. (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_restore_timeout*]
#   Time(in sec) to wait for stack to be restored from snapshot. (floating
#   point value)
#   Defaults to 3600.0
#
# [*heat_stack_restore_poll_interval*]
#   Time interval(in sec) between checks when waiting for stack to be restored.
#   (floating point value)
#   Defaults to 1.0
#
# [*heat_stack_scale_timeout*]
#   Time (in sec) to wait for stack to scale up or down. (floating point value)
#   Defaults to 3600.0
#
# [*heat_stack_scale_poll_interval*]
#   Time interval (in sec) between checks when waiting for a stack to scale up
#   or down. (floating point value)
#   Defaults to 1.0
#
# [*ironic_node_create_poll_interval*]
#   Interval(in sec) between checks when waiting for node creation. (floating
#   point value)
#   Defaults to 1.0
#
# [*manila_share_create_prepoll_delay*]
#   Delay between creating Manila share and polling for its status. (floating
#   point value)
#   Defaults to 2.0
#
# [*manila_share_create_timeout*]
#   Timeout for Manila share creation. (floating point value)
#   Defaults to 300.0
#
# [*manila_share_create_poll_interval*]
#   Interval between checks when waiting for Manila share creation. (floating
#   point value)
#   Defaults to 3.0
#
# [*manila_share_delete_timeout*]
#   Timeout for Manila share deletion. (floating point value)
#   Defaults to 180.0
#
# [*manila_share_delete_poll_interval*]
#   Interval between checks when waiting for Manila share deletion. (floating
#   point value)
#   Defaults to 2.0
#
# [*murano_deploy_environment_timeout*]
#   A timeout in seconds for an environment deploy (integer value)
#   Defaults to 1200
#
# [*murano_deploy_environment_check_interval*]
#   Deploy environment check interval in seconds (integer value)
#   Defaults to 5
#
# [*nova_server_start_prepoll_delay*]
#   Time to sleep after start before polling for status (floating point value)
#   Defaults to 0.0
#
# [*nova_server_start_timeout*]
#   Server start timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_start_poll_interval*]
#   Server start poll interval (floating point value)
#   Defaults to 1.0
#
# [*nova_server_stop_prepoll_delay*]
#   Time to sleep after stop before polling for status (floating point value)
#   Defaults to 0.0
#
# [*nova_server_stop_timeout*]
#   Server stop timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_stop_poll_interval*]
#   Server stop poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_boot_prepoll_delay*]
#   Time to sleep after boot before polling for status (floating point value)
#   Defaults to 1.0
#
# [*nova_server_boot_timeout*]
#   Server boot timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_boot_poll_interval*]
#   Server boot poll interval (floating point value)
#   Defaults to 1.0
#
# [*nova_server_delete_prepoll_delay*]
#   Time to sleep after delete before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_delete_timeout*]
#   Server delete timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_delete_poll_interval*]
#   Server delete poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_reboot_prepoll_delay*]
#   Time to sleep after reboot before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_reboot_timeout*]
#   Server reboot timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_reboot_poll_interval*]
#   Server reboot poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_rebuild_prepoll_delay*]
#   Time to sleep after rebuild before polling for status (floating point value)
#   Defaults to 1.0
#
# [*nova_server_rebuild_timeout*]
#   Server rebuild timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_rebuild_poll_interval*]
#   Server rebuild poll interval (floating point value)
#   Defaults to 1.0
#
# [*nova_server_rescue_prepoll_delay*]
#   Time to sleep after rescue before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_rescue_timeout*]
#   Server rescue timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_rescue_poll_interval*]
#   Server rescue poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_unrescue_prepoll_delay*]
#   Time to sleep after unrescue before polling for status (floating point
#   value)
#   Defaults to 2.0
#
# [*nova_server_unrescue_timeout*]
#   Server unrescue timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_unrescue_poll_interval*]
#   Server unrescue poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_suspend_prepoll_delay*]
#   Time to sleep after suspend before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_suspend_timeout*]
#   Server suspend timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_suspend_poll_interval*]
#   Server suspend poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_resume_prepoll_delay*]
#   Time to sleep after resume before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_resume_timeout*]
#   Server resume timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_resume_poll_interval*]
#   Server resume poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_pause_prepoll_delay*]
#   Time to sleep after pause before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_pause_timeout*]
#   Server pause timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_pause_poll_interval*]
#   Server pause poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_unpause_prepoll_delay*]
#   Time to sleep after unpause before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_unpause_timeout*]
#   Server unpause timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_unpause_poll_interval*]
#   Server unpause poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_shelve_prepoll_delay*]
#   Time to sleep after shelve before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_shelve_timeout*]
#   Server shelve timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_shelve_poll_interval*]
#   Server shelve poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_unshelve_prepoll_delay*]
#   Time to sleep after unshelve before polling for status (floating point
#   value)
#   Defaults to 2.0
#
# [*nova_server_unshelve_timeout*]
#   Server unshelve timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_unshelve_poll_interval*]
#   Server unshelve poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_image_create_prepoll_delay*]
#   Time to sleep after image_create before polling for status (floating point
#   value)
#   Defaults to 0.0
#
# [*nova_server_image_create_timeout*]
#   Server image_create timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_image_create_poll_interval*]
#   Server image_create poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_image_delete_prepoll_delay*]
#   Time to sleep after image_delete before polling for status (floating point
#   value)
#   Defaults to 0.0
#
# [*nova_server_image_delete_timeout*]
#   Server image_delete timeout (floating point value)
#   Defaults to 300.0
#
# [*nova_server_image_delete_poll_interval*]
#   Server image_delete poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_resize_prepoll_delay*]
#   Time to sleep after resize before polling for status (floating point value)
#   Defaults to 2.0
#
# [*nova_server_resize_timeout*]
#   Server resize timeout (floating point value)
#   Defaults to 400.0
#
# [*nova_server_resize_poll_interval*]
#   Server resize poll interval (floating point value)
#   Defaults to 5.0
#
# [*nova_server_resize_confirm_prepoll_delay*]
#   Time to sleep after resize_confirm before polling for status (floating
#   point value)
#   Defaults to 0.0
#
# [*nova_server_resize_confirm_timeout*]
#   Server resize_confirm timeout (floating point value)
#   Defaults to 200.0
#
# [*nova_server_resize_confirm_poll_interval*]
#   Server resize_confirm poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_resize_revert_prepoll_delay*]
#   Time to sleep after resize_revert before polling for status (floating point
#   value)
#   Defaults to 0.0
#
# [*nova_server_resize_revert_timeout*]
#   Server resize_revert timeout (floating point value)
#   Defaults to 200.0
#
# [*nova_server_resize_revert_poll_interval*]
#   Server resize_revert poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_live_migrate_prepoll_delay*]
#   Time to sleep after live_migrate before polling for status (floating point
#   value)
#   Defaults to 1.0
#
# [*nova_server_live_migrate_timeout*]
#   Server live_migrate timeout (floating point value)
#   Defaults to 400.0
#
# [*nova_server_live_migrate_poll_interval*]
#   Server live_migrate poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_server_migrate_prepoll_delay*]
#   Time to sleep after migrate before polling for status (floating point value)
#   Defaults to 1.0
#
# [*nova_server_migrate_timeout*]
#   Server migrate timeout (floating point value)
#   Defaults to 400.0
#
# [*nova_server_migrate_poll_interval*]
#   Server migrate poll interval (floating point value)
#   Defaults to 2.0
#
# [*nova_detach_volume_timeout*]
#   Nova volume detach timeout (floating point value)
#   Defaults to 200.0
#
# [*nova_detach_volume_poll_interval*]
#   Nova volume detach poll interval (floating point value)
#   Defaults to 2.0
#
# [*sahara_cluster_create_timeout*]
#   A timeout in seconds for a cluster create operation (integer value)
#   Defaults to 1800
#
# [*sahara_cluster_delete_timeout*]
#   A timeout in seconds for a cluster delete operation (integer value)
#   Defaults to 900
#
# [*sahara_cluster_check_interval*]
#   Cluster status polling interval in seconds (integer value)
#   Defaults to 5
#
# [*sahara_job_execution_timeout*]
#   A timeout in seconds for a Job Execution to complete (integer value)
#   Defaults to 600
#
# [*sahara_job_check_interval*]
#   Job Execution status polling interval in seconds (integer value)
#   Defaults to 5
#
# [*sahara_workers_per_proxy*]
#   Amount of workers one proxy should serve to. (integer value)
#   Defaults to 20
#
# [*vm_ping_poll_interval*]
#   Interval between checks when waiting for a VM to become pingable (floating
#   point value)
#   Defaults to 1.0
#
# [*vm_ping_timeout*]
#   Time to wait for a VM to become pingable (floating point value)
#   Defaults to 120.0
#
# [*resource_deletion_timeout*]
#   A timeout in seconds for deleting resources (integer value)
#   Defaults to 600

# [*database_connection*]
#   The SQLAlchemy connection string to use to connect to the database.
#   (string value)
#   Defaults to sqlite:////var/lib/rally/rally.sqlite
#
# [*database_idle_timeout*]
#   Timeout before idle SQL connections are reaped. (integer value)
#   #idle_timeout = 3600 idle_timeout = 3600
#   Defaults to 3600
#
# [*database_min_pool_size*]
#   Minimum number of SQL connections to keep open in a pool. (integer value)
#   Defaults to 1
#
# [*database_max_pool_size*]
#   Maximum number of SQL connections to keep open in a pool. (integer value)
#   Defaults to 10
#
# [*database_max_retries*]
#   Maximum number of database connection retries during startup. Set to -1 to
#   specify an infinite retry count. (integer value)
#   Defaults to 10
#
# [*database_retry_interval*]
#   Interval between retries of opening a SQL connection. (integer value)
#   Defaults to 10
#
# [*max_overflow*]
#   If set, use this value for max_overflow with SQLAlchemy. (integer value)
#   Defaults to 20
#
class rally(
  $verbose                                  = false,
  $debug                                    = false,
  $log_file                                 = undef,
  $log_dir                                  = undef,
  $openstack_client_http_timeout            = 180.0,
  $cinder_volume_create_prepoll_delay       = 2.0,
  $cinder_volume_create_timeout             = 600.0,
  $cinder_volume_create_poll_interval       = 2.0,
  $cinder_volume_delete_timeout             = 600.0,
  $cinder_volume_delete_poll_interval       = 2.0,
  $ec2_server_boot_prepoll_delay            = 1.0,
  $ec2_server_boot_timeout                  = 300.0,
  $ec2_server_boot_poll_interval            = 1.0,
  $glance_image_create_prepoll_delay        = 2.0,
  $glance_image_create_timeout              = 120.0,
  $glance_image_create_poll_interval        = 1.0,
  $glance_image_delete_timeout              = 120.0,
  $glance_image_delete_poll_interval        = 1.0,
  $heat_stack_create_prepoll_delay          = 2.0,
  $heat_stack_create_timeout                = 3600.0,
  $heat_stack_create_poll_interval          = 1.0,
  $heat_stack_delete_timeout                = 3600.0,
  $heat_stack_delete_poll_interval          = 1.0,
  $heat_stack_check_timeout                 = 3600.0,
  $heat_stack_check_poll_interval           = 1.0,
  $heat_stack_update_prepoll_delay          = 2.0,
  $heat_stack_update_timeout                = 3600.0,
  $heat_stack_update_poll_interval          = 1.0,
  $heat_stack_suspend_timeout               = 3600.0,
  $heat_stack_suspend_poll_interval         = 1.0,
  $heat_stack_resume_timeout                = 3600.0,
  $heat_stack_resume_poll_interval          = 1.0,
  $heat_stack_snapshot_timeout              = 3600.0,
  $heat_stack_snapshot_poll_interval        = 1.0,
  $heat_stack_restore_timeout               = 3600.0,
  $heat_stack_restore_poll_interval         = 1.0,
  $heat_stack_scale_timeout                 = 3600.0,
  $heat_stack_scale_poll_interval           = 1.0,
  $ironic_node_create_poll_interval         = 1.0,
  $manila_share_create_prepoll_delay        = 2.0,
  $manila_share_create_timeout              = 300.0,
  $manila_share_create_poll_interval        = 3.0,
  $manila_share_delete_timeout              = 180.0,
  $manila_share_delete_poll_interval        = 2.0,
  $murano_deploy_environment_timeout        = 1200,
  $murano_deploy_environment_check_interval = 5,
  $nova_server_start_prepoll_delay          = 0.0,
  $nova_server_start_timeout                = 300.0,
  $nova_server_start_poll_interval          = 1.0,
  $nova_server_stop_prepoll_delay           = 0.0,
  $nova_server_stop_timeout                 = 300.0,
  $nova_server_stop_poll_interval           = 2.0,
  $nova_server_boot_prepoll_delay           = 1.0,
  $nova_server_boot_timeout                 = 300.0,
  $nova_server_boot_poll_interval           = 1.0,
  $nova_server_delete_prepoll_delay         = 2.0,
  $nova_server_delete_timeout               = 300.0,
  $nova_server_delete_poll_interval         = 2.0,
  $nova_server_reboot_prepoll_delay         = 2.0,
  $nova_server_reboot_timeout               = 300.0,
  $nova_server_reboot_poll_interval         = 2.0,
  $nova_server_rebuild_prepoll_delay        = 1.0,
  $nova_server_rebuild_timeout              = 300.0,
  $nova_server_rebuild_poll_interval        = 1.0,
  $nova_server_rescue_prepoll_delay         = 2.0,
  $nova_server_rescue_timeout               = 300.0,
  $nova_server_rescue_poll_interval         = 2.0,
  $nova_server_unrescue_prepoll_delay       = 2.0,
  $nova_server_unrescue_timeout             = 300.0,
  $nova_server_unrescue_poll_interval       = 2.0,
  $nova_server_suspend_prepoll_delay        = 2.0,
  $nova_server_suspend_timeout              = 300.0,
  $nova_server_suspend_poll_interval        = 2.0,
  $nova_server_resume_prepoll_delay         = 2.0,
  $nova_server_resume_timeout               = 300.0,
  $nova_server_resume_poll_interval         = 2.0,
  $nova_server_pause_prepoll_delay          = 2.0,
  $nova_server_pause_timeout                = 300.0,
  $nova_server_pause_poll_interval          = 2.0,
  $nova_server_unpause_prepoll_delay        = 2.0,
  $nova_server_unpause_timeout              = 300.0,
  $nova_server_unpause_poll_interval        = 2.0,
  $nova_server_shelve_prepoll_delay         = 2.0,
  $nova_server_shelve_timeout               = 300.0,
  $nova_server_shelve_poll_interval         = 2.0,
  $nova_server_unshelve_prepoll_delay       = 2.0,
  $nova_server_unshelve_timeout             = 300.0,
  $nova_server_unshelve_poll_interval       = 2.0,
  $nova_server_image_create_prepoll_delay   = 0.0,
  $nova_server_image_create_timeout         = 300.0,
  $nova_server_image_create_poll_interval   = 2.0,
  $nova_server_image_delete_prepoll_delay   = 0.0,
  $nova_server_image_delete_timeout         = 300.0,
  $nova_server_image_delete_poll_interval   = 2.0,
  $nova_server_resize_prepoll_delay         = 2.0,
  $nova_server_resize_timeout               = 400.0,
  $nova_server_resize_poll_interval         = 5.0,
  $nova_server_resize_confirm_prepoll_delay = 0.0,
  $nova_server_resize_confirm_timeout       = 200.0,
  $nova_server_resize_confirm_poll_interval = 2.0,
  $nova_server_resize_revert_prepoll_delay  = 0.0,
  $nova_server_resize_revert_timeout        = 200.0,
  $nova_server_resize_revert_poll_interval  = 2.0,
  $nova_server_live_migrate_prepoll_delay   = 1.0,
  $nova_server_live_migrate_timeout         = 400.0,
  $nova_server_live_migrate_poll_interval   = 2.0,
  $nova_server_migrate_prepoll_delay        = 1.0,
  $nova_server_migrate_timeout              = 400.0,
  $nova_server_migrate_poll_interval        = 2.0,
  $nova_detach_volume_timeout               = 200.0,
  $nova_detach_volume_poll_interval         = 2.0,
  $sahara_cluster_create_timeout            = 1800,
  $sahara_cluster_delete_timeout            = 900,
  $sahara_cluster_check_interval            = 5,
  $sahara_job_execution_timeout             = 600,
  $sahara_job_check_interval                = 5,
  $sahara_workers_per_proxy                 = 20,
  $vm_ping_poll_interval                    = 1.0,
  $vm_ping_timeout                          = 120.0,
  $resource_deletion_timeout                = 600,
  $database_connection                      = 'sqlite:////var/lib/rally/rally.sqlite',
  $database_idle_timeout                    = 3600,
  $database_min_pool_size                   = 1,
  $database_max_pool_size                   = 10,
  $database_max_retries                     = 10,
  $database_retry_interval                  = 10,
  $database_max_overflow                    = 20,
) {

  include ::rally::params
  include ::rally::db

  Exec['link-default-config'] -> Rally_config<||> ~> Exec<| title == 'rally-manage db_sync' |>

  ensure_packages(['build-essential', 'libssl-dev', 'libffi-dev', 'python-dev',
                   'libxml2-dev', 'libxslt1-dev', 'libpq-dev', 'python-pip',
                   'libmysqlclient-dev', 'python-virtualenv'])

  group { 'rally':
    ensure => present,
    system => true,
  }

  user { 'rally':
    home   => '/opt/rally',
    gid    => 'rally',
    system => true,
  }

  file { '/opt/rally':
    ensure => directory,
    owner  => 'rally',
    group  => 'rally',
    mode   => '0755'
  }

  file { '/etc/rally':
    ensure => directory,
    owner  => 'rally',
    group  => 'root',
    mode   => '0770',
  }

  exec { 'retrieve_rally_install':
    command => '/usr/bin/wget -q https://raw.githubusercontent.com/openstack/rally/master/install_rally.sh -O /opt/rally/install_rally.sh',
    creates => '/opt/rally/install_rally.sh',
    user    => 'rally',
    require => File['/opt/rally'],
  }

  file { '/opt/rally/install_rally.sh':
    owner => 'rally',
    group => 'rally',
    mode  => '0755',
  }

  exec { 'create_virtualenv':
    command => '/usr/bin/virtualenv /opt/rally/rally',
    user    => 'rally',
    cwd     => '/opt/rally',
    creates => '/opt/rally/rally/bin/pip',
    require => File['/opt/rally'],
  }

  # install requests and mysql before rally install
  exec { 'pip_install_deps':
    command => '/opt/rally/rally/bin/pip install \'requests[security]\' mysql',
    user    => 'rally',
    cwd     => '/opt/rally',
    creates => '/opt/rally/rally/lib/python2.7/site-packages/MySQLdb',
    require => Exec['create_virtualenv'],
  }

  exec { 'run_rally_install':
    command => '/bin/bash /opt/rally/install_rally.sh -y --no-recreate --target /opt/rally/rally',
    creates => '/opt/rally/rally/bin/rally',
    user    => 'rally',
    cwd     => '/opt/rally',
    require => [
      Exec['pip_install_deps'],
      File['/opt/rally/install_rally.sh'],
    ]
  }

  exec { 'link-default-config':
    command => '/bin/ln -s /opt/rally/rally/etc/rally/rally.conf /etc/rally/rally.conf',
    creates => '/etc/rally/rally.conf',
    require => [
      File['/etc/rally'],
      Exec['run_rally_install'],
    ],
  }

  file { '/usr/bin/rally-manage':
    ensure  => link,
    target  => '/opt/rally/rally/bin/rally-manage',
    require => Exec['run_rally_install'],
  }

  file { '/usr/bin/rally':
    ensure => link,
    target => '/opt/rally/rally/bin/rally',
    require => Exec['run_rally_install'],
  }

  rally_config {
    'DEFAULT/verbose': value => $verbose;
    'DEFAULT/debug':   value => $debug;
  }

  if $log_file {
    rally_config { 'DEFAULT/log_file': value => $log_file; }
  } else {
    rally_config { 'DEFAULT/log_file': ensure => absent; }
  }

  if $log_dir {
    rally_config { 'DEFAULT/log_dir': value => $log_dir; }
  } else {
    rally_config { 'DEFAULT/log_dir': ensure => absent; }
  }

  # benchmarking config
  rally_config {
    'DEFAULT/openstack_client_http_timeout':              value => $openstack_client_http_timeout,
    'benchmark/cinder_volume_create_prepoll_delay':       value => $cinder_volume_create_prepoll_delay,
    'benchmark/cinder_volume_create_timeout':             value => $cinder_volume_create_timeout,
    'benchmark/cinder_volume_create_poll_interval':       value => $cinder_volume_create_poll_interval,
    'benchmark/cinder_volume_delete_timeout':             value => $cinder_volume_delete_timeout,
    'benchmark/cinder_volume_delete_poll_interval':       value => $cinder_volume_delete_poll_interval,
    'benchmark/ec2_server_boot_prepoll_delay':            value => $ec2_server_boot_prepoll_delay,
    'benchmark/ec2_server_boot_timeout':                  value => $ec2_server_boot_timeout,
    'benchmark/ec2_server_boot_poll_interval':            value => $ec2_server_boot_poll_interval,
    'benchmark/glance_image_create_prepoll_delay':        value => $glance_image_create_prepoll_delay,
    'benchmark/glance_image_create_timeout':              value => $glance_image_create_timeout,
    'benchmark/glance_image_create_poll_interval':        value => $glance_image_create_poll_interval,
    'benchmark/glance_image_delete_timeout':              value => $glance_image_delete_timeout,
    'benchmark/glance_image_delete_poll_interval':        value => $glance_image_delete_poll_interval,
    'benchmark/heat_stack_create_prepoll_delay':          value => $heat_stack_create_prepoll_delay,
    'benchmark/heat_stack_create_timeout':                value => $heat_stack_create_timeout,
    'benchmark/heat_stack_create_poll_interval':          value => $heat_stack_create_poll_interval,
    'benchmark/heat_stack_delete_timeout':                value => $heat_stack_delete_timeout,
    'benchmark/heat_stack_delete_poll_interval':          value => $heat_stack_delete_poll_interval,
    'benchmark/heat_stack_check_timeout':                 value => $heat_stack_check_timeout,
    'benchmark/heat_stack_check_poll_interval':           value => $heat_stack_check_poll_interval,
    'benchmark/heat_stack_update_prepoll_delay':          value => $heat_stack_update_prepoll_delay,
    'benchmark/heat_stack_update_timeout':                value => $heat_stack_update_timeout,
    'benchmark/heat_stack_update_poll_interval':          value => $heat_stack_update_poll_interval,
    'benchmark/heat_stack_suspend_timeout':               value => $heat_stack_suspend_timeout,
    'benchmark/heat_stack_suspend_poll_interval':         value => $heat_stack_suspend_poll_interval,
    'benchmark/heat_stack_resume_timeout':                value => $heat_stack_resume_timeout,
    'benchmark/heat_stack_resume_poll_interval':          value => $heat_stack_resume_poll_interval,
    'benchmark/heat_stack_snapshot_timeout':              value => $heat_stack_snapshot_timeout,
    'benchmark/heat_stack_snapshot_poll_interval':        value => $heat_stack_snapshot_poll_interval,
    'benchmark/heat_stack_restore_timeout':               value => $heat_stack_restore_timeout,
    'benchmark/heat_stack_restore_poll_interval':         value => $heat_stack_restore_poll_interval,
    'benchmark/heat_stack_scale_timeout':                 value => $heat_stack_scale_timeout,
    'benchmark/heat_stack_scale_poll_interval':           value => $heat_stack_scale_poll_interval,
    'benchmark/ironic_node_create_poll_interval':         value => $ironic_node_create_poll_interval,
    'benchmark/manila_share_create_prepoll_delay':        value => $manila_share_create_prepoll_delay,
    'benchmark/manila_share_create_timeout':              value => $manila_share_create_timeout,
    'benchmark/manila_share_create_poll_interval':        value => $manila_share_create_poll_interval,
    'benchmark/manila_share_delete_timeout':              value => $manila_share_delete_timeout,
    'benchmark/manila_share_delete_poll_interval':        value => $manila_share_delete_poll_interval,
    'benchmark/murano_deploy_environment_timeout':        value => $murano_deploy_environment_timeout,
    'benchmark/murano_deploy_environment_check_interval': value => $murano_deploy_environment_check_interval,
    'benchmark/nova_server_start_prepoll_delay':          value => $nova_server_start_prepoll_delay,
    'benchmark/nova_server_start_timeout':                value => $nova_server_start_timeout,
    'benchmark/nova_server_start_poll_interval':          value => $nova_server_start_poll_interval,
    'benchmark/nova_server_stop_prepoll_delay':           value => $nova_server_stop_prepoll_delay,
    'benchmark/nova_server_stop_timeout':                 value => $nova_server_stop_timeout,
    'benchmark/nova_server_stop_poll_interval':           value => $nova_server_stop_poll_interval,
    'benchmark/nova_server_boot_prepoll_delay':           value => $nova_server_boot_prepoll_delay,
    'benchmark/nova_server_boot_timeout':                 value => $nova_server_boot_timeout,
    'benchmark/nova_server_boot_poll_interval':           value => $nova_server_boot_poll_interval,
    'benchmark/nova_server_delete_prepoll_delay':         value => $nova_server_delete_prepoll_delay,
    'benchmark/nova_server_delete_timeout':               value => $nova_server_delete_timeout,
    'benchmark/nova_server_delete_poll_interval':         value => $nova_server_delete_poll_interval,
    'benchmark/nova_server_reboot_prepoll_delay':         value => $nova_server_reboot_prepoll_delay,
    'benchmark/nova_server_reboot_timeout':               value => $nova_server_reboot_timeout,
    'benchmark/nova_server_reboot_poll_interval':         value => $nova_server_reboot_poll_interval,
    'benchmark/nova_server_rebuild_prepoll_delay':        value => $nova_server_rebuild_prepoll_delay,
    'benchmark/nova_server_rebuild_timeout':              value => $nova_server_rebuild_timeout,
    'benchmark/nova_server_rebuild_poll_interval':        value => $nova_server_rebuild_poll_interval,
    'benchmark/nova_server_rescue_prepoll_delay':         value => $nova_server_rescue_prepoll_delay,
    'benchmark/nova_server_rescue_timeout':               value => $nova_server_rescue_timeout,
    'benchmark/nova_server_rescue_poll_interval':         value => $nova_server_rescue_poll_interval,
    'benchmark/nova_server_unrescue_prepoll_delay':       value => $nova_server_unrescue_prepoll_delay,
    'benchmark/nova_server_unrescue_timeout':             value => $nova_server_unrescue_timeout,
    'benchmark/nova_server_unrescue_poll_interval':       value => $nova_server_unrescue_poll_interval,
    'benchmark/nova_server_suspend_prepoll_delay':        value => $nova_server_suspend_prepoll_delay,
    'benchmark/nova_server_suspend_timeout':              value => $nova_server_suspend_timeout,
    'benchmark/nova_server_suspend_poll_interval':        value => $nova_server_suspend_poll_interval,
    'benchmark/nova_server_resume_prepoll_delay':         value => $nova_server_resume_prepoll_delay,
    'benchmark/nova_server_resume_timeout':               value => $nova_server_resume_timeout,
    'benchmark/nova_server_resume_poll_interval':         value => $nova_server_resume_poll_interval,
    'benchmark/nova_server_pause_prepoll_delay':          value => $nova_server_pause_prepoll_delay,
    'benchmark/nova_server_pause_timeout':                value => $nova_server_pause_timeout,
    'benchmark/nova_server_pause_poll_interval':          value => $nova_server_pause_poll_interval,
    'benchmark/nova_server_unpause_prepoll_delay':        value => $nova_server_unpause_prepoll_delay,
    'benchmark/nova_server_unpause_timeout':              value => $nova_server_unpause_timeout,
    'benchmark/nova_server_unpause_poll_interval':        value => $nova_server_unpause_poll_interval,
    'benchmark/nova_server_shelve_prepoll_delay':         value => $nova_server_shelve_prepoll_delay,
    'benchmark/nova_server_shelve_timeout':               value => $nova_server_shelve_timeout,
    'benchmark/nova_server_shelve_poll_interval':         value => $nova_server_shelve_poll_interval,
    'benchmark/nova_server_unshelve_prepoll_delay':       value => $nova_server_unshelve_prepoll_delay,
    'benchmark/nova_server_unshelve_timeout':             value => $nova_server_unshelve_timeout,
    'benchmark/nova_server_unshelve_poll_interval':       value => $nova_server_unshelve_poll_interval,
    'benchmark/nova_server_image_create_prepoll_delay':   value => $nova_server_image_create_prepoll_delay,
    'benchmark/nova_server_image_create_timeout':         value => $nova_server_image_create_timeout,
    'benchmark/nova_server_image_create_poll_interval':   value => $nova_server_image_create_poll_interval,
    'benchmark/nova_server_image_delete_prepoll_delay':   value => $nova_server_image_delete_prepoll_delay,
    'benchmark/nova_server_image_delete_timeout':         value => $nova_server_image_delete_timeout,
    'benchmark/nova_server_image_delete_poll_interval':   value => $nova_server_image_delete_poll_interval,
    'benchmark/nova_server_resize_prepoll_delay':         value => $nova_server_resize_prepoll_delay,
    'benchmark/nova_server_resize_timeout':               value => $nova_server_resize_timeout,
    'benchmark/nova_server_resize_poll_interval':         value => $nova_server_resize_poll_interval,
    'benchmark/nova_server_resize_confirm_prepoll_delay': value => $nova_server_resize_confirm_prepoll_delay,
    'benchmark/nova_server_resize_confirm_timeout':       value => $nova_server_resize_confirm_timeout,
    'benchmark/nova_server_resize_confirm_poll_interval': value => $nova_server_resize_confirm_poll_interval,
    'benchmark/nova_server_resize_revert_prepoll_delay':  value => $nova_server_resize_revert_prepoll_delay,
    'benchmark/nova_server_resize_revert_timeout':        value => $nova_server_resize_revert_timeout,
    'benchmark/nova_server_resize_revert_poll_interval':  value => $nova_server_resize_revert_poll_interval,
    'benchmark/nova_server_live_migrate_prepoll_delay':   value => $nova_server_live_migrate_prepoll_delay,
    'benchmark/nova_server_live_migrate_timeout':         value => $nova_server_live_migrate_timeout,
    'benchmark/nova_server_live_migrate_poll_interval':   value => $nova_server_live_migrate_poll_interval,
    'benchmark/nova_server_migrate_prepoll_delay':        value => $nova_server_migrate_prepoll_delay,
    'benchmark/nova_server_migrate_timeout':              value => $nova_server_migrate_timeout,
    'benchmark/nova_server_migrate_poll_interval':        value => $nova_server_migrate_poll_interval,
    'benchmark/nova_detach_volume_timeout':               value => $nova_detach_volume_timeout,
    'benchmark/nova_detach_volume_poll_interval':         value => $nova_detach_volume_poll_interval,
    'benchmark/sahara_cluster_create_timeout':            value => $sahara_cluster_create_timeout,
    'benchmark/sahara_cluster_delete_timeout':            value => $sahara_cluster_delete_timeout,
    'benchmark/sahara_cluster_check_interval':            value => $sahara_cluster_check_interval,
    'benchmark/sahara_job_execution_timeout':             value => $sahara_job_execution_timeout,
    'benchmark/sahara_job_check_interval':                value => $sahara_job_check_interval,
    'benchmark/sahara_workers_per_proxy':                 value => $sahara_workers_per_proxy,
    'benchmark/vm_ping_poll_interval':                    value => $vm_ping_poll_interval,
    'benchmark/vm_ping_timeout':                          value => $vm_ping_timeout,
    'cleanup/resource_deletion_timeout':                  value => $resource_deletion_timeout,
  }

}
