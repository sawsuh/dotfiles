;;; Compiled snippets and support files for `terraform-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("var" "variable \"${1:name}\" {\n  ${2:default = \"$3\"}\n}" "variable" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/variable" nil nil)
		       ("tf" "terraform {\n  backend \"${1:backend}\" {\n    $0\n  }\n}\n" "terraform" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/terraform" nil nil)
		       ("res" "resource \"${1:type}\" \"${2:name}\" {\n         $0\n}\n" "resource" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/resource" nil nil)
		       ("prov" "provider \"${1:name}\" {\n  $0\n}\n" "provider" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/provider" nil nil)
		       ("output" "output \"${1:name}\" {\n  value = ${2:value}\n}\n" "output" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/output" nil nil)
		       ("mod" "module \"${1:name}\" {\n  source = \"${2:location}\"\n  $0\n}\n" "module" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/module" nil nil)
		       ("locals" "locals {\n  {$1:name} = ${2:value}\n}" "locals" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/locals" nil nil)
		       ("data" "data \"${1:type}\" \"${2:name}\" {\n  $0\n}\n" "data" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/data" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_app_engine_application" "resource \"google_app_engine_application\" \"${1:name}\" {\n  project     = \"${2:project_id}\"\n  location_id = \"${3:location_id}\"\n}\n\n" "google_app_engine_application" nil
			("google" "app_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/app_engine_resources/google_app_engine_application" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_bigquery_table" "resource \"google_bigquery_table\" \"${1:name}\" {\n  dataset_id = \"${2:dataset_id}\"\n  table_id   = \"${3:table_id}\"\n}\n\n" "google_bigquery_table" nil
			("google" "bigquery_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/bigquery_resources/google_bigquery_table" nil nil)
		       ("goog_bigquery_dataset" "resource \"google_bigquery_dataset\" \"${1:name}\" {\n  dataset_id = \"${2:dataset_id}\"\n}\n\n" "google_bigquery_dataset" nil
			("google" "bigquery_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/bigquery_resources/google_bigquery_dataset" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_bigtable_table" "resource \"google_bigtable_table\" \"${1:name}\" {\n  name          = \"${2:name}\"\n  instance_name = \"${3:instance_name}\"\n}\n\n" "google_bigtable_table" nil
			("google" "bigtable_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/bigtable_resources/google_bigtable_table" nil nil)
		       ("goog_bigtable_instance" "resource \"google_bigtable_instance\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_bigtable_instance" nil
			("google" "bigtable_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/bigtable_resources/google_bigtable_instance" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_binary_authorization_policy" "resource \"google_binary_authorization_policy\" \"${1:name}\" {\n  default_admission_rule {\n    evaluation_mode = \"${2:evaluation_mode}\"\n    enforcement_mode = \"${3:enforcement_mode}\"\n  }\n}\n\n" "google_binary_authorization_policy" nil
			("google" "binary_authorization_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/binary_authorization_resources/google_binary_authorization_policy" nil nil)
		       ("goog_binary_authorization_attestor" "resource \"google_binary_authorization_attestor\" \"${1:name}\" {\n  name = \"${2:name}\"\n  attestation_authority_note {\n    note_reference = \"${3:note_name}\"\n  }\n}\n\n" "google_binary_authorization_attestor" nil
			("google" "binary_authorization_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/binary_authorization_resources/google_binary_authorization_attestor" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_cloudbuild_trigger" "resource \"google_cloudbuild_trigger\" \"build_trigger\" {\n}\n\n" "google_cloudbuild_trigger" nil
			("google" "cloud_build_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/cloud_build_resources/google_cloudbuild_trigger" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_composer_environment" "resource \"google_composer_environment\" \"${1:name}\" {\n  name   = \"${2:name}\"\n}\n\n" "google_composer_environment" nil
			("google" "cloud_composer_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/cloud_composer_resources/google_composer_environment" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_cloudfunctions_function" "resource \"google_cloudfunctions_function\" \"${1:name}\" {\n  name                  = \"${2:name}\"\n  source_archive_bucket = \"${3:bucket_name}\"\n  source_archive_object = \"${4:obejct_name}\"\n}\n\n" "google_cloudfunctions_function" nil
			("google" "cloud_functions_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/cloud_functions_resources/google_cloudfunctions_function" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_compute_vpn_tunnel" "resource \"google_compute_vpn_tunnel\" \"${1:name}\" {\n  name               = \"${2:name}\"\n  peer_ip            = \"${3:0.0.0.0}\"\n  shared_secret      = \"${4:secret}\"\n  target_vpn_gateway = \"${5:target_vpn_gateway}\"\n}\n\n" "google_compute_vpn_tunnel" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_vpn_tunnel" nil nil)
		       ("goog_compute_vpn_gateway" "resource \"google_compute_vpn_gateway\" \"${1:name}\" {\n  name    = \"${2:name}\"\n  network = \"${3:network}\"\n}\n\n" "google_compute_vpn_gateway" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_vpn_gateway" nil nil)
		       ("goog_compute_url_map" "resource \"google_compute_url_map\" \"${1:name}\" {\n  name            = \"${2:name}\"\n  default_service = \"${3:default_service}\"\n}\n\n" "google_compute_url_map" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_url_map" nil nil)
		       ("goog_compute_target_tcp_proxy" "resource \"google_compute_target_tcp_proxy\" \"${1:name}\" {\n  name            = \"${2:name}\"\n  backend_service = \"${3:backend_service}\"\n}\n\n" "google_compute_target_tcp_proxy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_target_tcp_proxy" nil nil)
		       ("goog_compute_target_ssl_proxy" "resource \"google_compute_target_ssl_proxy\" \"${1:name}\" {\n  name             = \"${2:name}\"\n  backend_service  = \"${3:backend_service}\"\n  ssl_certificates = [\"${4:ssl_cert}\"]\n}\n\n" "google_compute_target_ssl_proxy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_target_ssl_proxy" nil nil)
		       ("goog_compute_target_pool" "resource \"google_compute_target_pool\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_target_pool" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_target_pool" nil nil)
		       ("goog_compute_target_https_proxy" "resource \"google_compute_target_https_proxy\" \"${1:name}\" {\n  name             = \"${2:name}\"\n  url_map          = \"${3:url_map}\"\n  ssl_certificates = [\"${4:sll_cert}\"]\n}\n\n" "google_compute_target_https_proxy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_target_https_proxy" nil nil)
		       ("goog_compute_target_http_proxy" "resource \"google_compute_target_http_proxy\" \"${1:name}\" {\n  name    = \"${2:name}\"\n  url_map = \"${3:url_map}\"\n}\n\n" "google_compute_target_http_proxy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_target_http_proxy" nil nil)
		       ("goog_compute_subnetwork_iam_policy" "resource \"google_compute_subnetwork_iam_policy\" \"${1:name}\" {\n  subnetwork  = \"${2:subnet}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_compute_subnetwork_iam_policy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_subnetwork_iam_policy" nil nil)
		       ("goog_compute_subnetwork_iam_member" "resource \"google_compute_subnetwork_iam_member\" \"${1:name}\" {\n  subnetwork = \"${2:subnet}\"\n  role       = \"${3:role}\"\n  member     = \"${4:member}\"\n}\n\n" "google_compute_subnetwork_iam_member" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_subnetwork_iam_member" nil nil)
		       ("goog_compute_subnetwork_iam_binding" "resource \"google_compute_subnetwork_iam_binding\" \"${1:name}\" {\n  subnetwork = \"${2:subnet_id}\"\n  role       = \"${3:role}\"\n  members    = [\n    \"${4:user:jane@example.com}\",\n  ]\n}\n\n" "google_compute_subnetwork_iam_binding" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_subnetwork_iam_binding" nil nil)
		       ("goog_compute_subnetwork" "resource \"google_compute_subnetwork\" \"${1:name}\" {\n  name          = \"${2:name}\"\n  ip_cidr_range = \"${3:0.0.0.0/32}\"\n  network       = \"${4:network}\"\n}\n\n" "google_compute_subnetwork" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_subnetwork" nil nil)
		       ("goog_compute_ssl_policy" "resource \"google_compute_ssl_policy\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_ssl_policy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_ssl_policy" nil nil)
		       ("goog_compute_ssl_certificate" "resource \"google_compute_ssl_certificate\" \"${1:name}\" {\n  private_key = \"${file('${2:path}')}\"\n  certificate = \"${file('${3:path}')}\"\n}\n\n" "google_compute_ssl_certificate" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_ssl_certificate" nil nil)
		       ("goog_compute_snapshot" "resource \"google_compute_snapshot\" \"${1:name}\" {\n  name        = \"${2:name}\"\n  source_disk = \"${3:source_disk}\"\n}\n\n" "google_compute_snapshot" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_snapshot" nil nil)
		       ("goog_compute_shared_vpc_service_project" "resource \"google_compute_shared_vpc_service_project\" \"${1:name}\" {\n  host_project    = \"${2:host_project}\"\n  service_project = \"${3:service_project}\"\n}\n\n" "google_compute_shared_vpc_service_project" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_shared_vpc_service_project" nil nil)
		       ("goog_compute_shared_vpc_host_project" "resource \"google_compute_shared_vpc_host_project\" \"${1:name}\" {\n  project = \"${2:project}\"\n}\n\n" "google_compute_shared_vpc_host_project" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_shared_vpc_host_project" nil nil)
		       ("goog_compute_security_policy" "resource \"google_compute_security_policy\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_security_policy" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_security_policy" nil nil)
		       ("goog_compute_router_peer" "resource \"google_compute_router_peer\" \"${1:name}\" {\n  name            = \"${2:name}\"\n  router          = \"${3:router}\"\n  peer_ip_address = \"${4:ip_address}\"\n  peer_asn        = ${5:ASN}\n  interface       = \"${6:interface}\"\n}\n\n" "google_compute_router_peer" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_router_peer" nil nil)
		       ("goog_compute_router_nat" "resource \"google_compute_router_nat\" \"${1:name}\" {\n  name                               = \"${2:name}\"\n  router                             = \"${3:router}\"\n  region                             = \"${4:region}\"\n  nat_ip_allocate_option             = \"${5:allocate_option}\"\n  source_subnetwork_ip_ranges_to_nat = \"${6:ranges}\"\n}\n\n" "google_compute_router_nat" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_router_nat" nil nil)
		       ("goog_compute_router_interface" "resource \"google_compute_router_interface\" \"${1:name}\" {\n  name       = \"${2:name}\"\n  router     = \"${3:router}\"\n  vpn_tunnel = \"${4:vpn_tunnel}\"\n}\n\n" "google_compute_router_interface" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_router_interface" nil nil)
		       ("goog_compute_router" "resource \"google_compute_router\" \"${1:name}\" {\n  name    = \"${2:name}\"\n  network = \"${3:network}\"\n}\n\n" "google_compute_router" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_router" nil nil)
		       ("goog_compute_route" "resource \"google_compute_route\" \"${1:name}\" {\n  name        = \"${2:name}\"\n  dest_range  = \"${3:0.0.0.0/32}\"\n  network     = \"${4:network_name}\"\n}\n\n" "google_compute_route" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_route" nil nil)
		       ("goog_compute_region_instance_group_manager" "resource \"google_compute_region_instance_group_manager\" \"${1:name}\" {\n  name               = \"${2:name}\"\n  base_instance_name = \"${3:base_instance_name}\"\n  region             = \"${4:region}\"\n}\n\n" "google_compute_region_instance_group_manager" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_region_instance_group_manager" nil nil)
		       ("goog_compute_region_disk" "resource \"google_compute_region_disk\" \"${1:name}\" {\n  name          = \"${2:name}\"\n  replica_zones = [\"${3:replica_zones}\"]\n}\n\n" "google_compute_region_disk" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_region_disk" nil nil)
		       ("goog_compute_region_backend_service" "resource \"google_compute_region_backend_service\" \"${1:name}\" {\n  name          = \"${2:name}\"\n  health_checks = [\"${3:health_checks}\"]\n}\n\n" "google_compute_region_backend_service" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_region_backend_service" nil nil)
		       ("goog_compute_region_autoscaler" "resource \"google_compute_region_autoscaler\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  target = \"${3:target}\"\n\n  autoscaling_policy = {\n    max_replicas = ${4:max_replicas}\n    min_replicas = ${5:min_replicas}\n  }\n}\n\n" "google_compute_region_autoscaler" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_region_autoscaler" nil nil)
		       ("goog_compute_project_metadata_item" "resource \"google_compute_project_metadata_item\" \"${1:name}\" {\n  key   = \"${2:key}\"\n  value = \"${3:value}\"\n}\n\n" "google_compute_project_metadata_item" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_project_metadata_item" nil nil)
		       ("goog_compute_project_metadata" "resource \"google_compute_project_metadata\" \"${1:name}\" {\n  metadata {\n  }\n}\n\n" "google_compute_project_metadata" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_project_metadata" nil nil)
		       ("goog_compute_network_peering" "resource \"google_compute_network_peering\" \"${1:name}\" {\n  name         = \"${2:name}\"\n  network      = \"${3:network}\"\n  peer_network = \"${4:peer_network}\"\n}\n\n" "google_compute_network_peering" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_network_peering" nil nil)
		       ("goog_compute_network" "resource \"google_compute_network\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_network" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_network" nil nil)
		       ("goog_compute_interconnect_attachment" "resource \"google_compute_interconnect_attachment\" \"${1:name}\" {\n  name         = \"${2:name}\"\n  interconnect = \"${3:interconnect}\"\n  router       = \"${4:router}\"\n}\n\n" "google_compute_interconnect_attachment" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_interconnect_attachment" nil nil)
		       ("goog_compute_instance_template" "resource \"google_compute_instance_template\" \"${1:name}\" {\n  machine_type = \"${2:machine_type}\"\n  disk {\n    source_image = \"${3:source_image}\"\n  }\n}\n\n" "google_compute_instance_template" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_instance_template" nil nil)
		       ("goog_compute_instance_group_manager" "resource \"google_compute_instance_group_manager\" \"${1:name}\" {\n  name               = \"${2:name}\"\n  base_instance_name = \"${3:base_name}\"\n  zone               = \"${4:zone}\"\n}\n\n" "google_compute_instance_group_manager" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_instance_group_manager" nil nil)
		       ("goog_compute_instance_group" "resource \"google_compute_instance_group\" \"${1:name}\" {\n  name = \"${2:name}\"\n  zone = \"${3:zone}\"\n}\n\n" "google_compute_instance_group" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_instance_group" nil nil)
		       ("goog_compute_instance_from_template" "resource \"google_compute_instance_from_template\" \"${1:name}\" {\n  name                     = \"${2:name}\"\n  source_instance_template = \"${3:template}\"\n}\n\n" "google_compute_instance_from_template" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_instance_from_template" nil nil)
		       ("goog_compute_instance" "resource \"google_compute_instance\" \"${1:name}\" {\n  name         = \"${2:instance_name}\"\n  machine_type = \"${3:machine_type}\"\n  zone         = \"${4:zone}\"\n\n  boot_disk {\n  }\n\n  network_interface {\n  }\n}\n\n" "google_compute_instance" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_instance" nil nil)
		       ("goog_compute_image" "resource \"google_compute_image\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_image" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_image" nil nil)
		       ("goog_compute_https_health_check" "resource \"google_compute_https_health_check\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_https_health_check" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_https_health_check" nil nil)
		       ("goog_compute_http_health_check" "resource \"google_compute_http_health_check\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_http_health_check" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_http_health_check" nil nil)
		       ("goog_compute_health_check" "resource \"google_compute_health_check\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_health_check" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_health_check" nil nil)
		       ("goog_compute_global_forwarding_rule" "resource \"google_compute_global_forwarding_rule\" \"${1:name}\" {\n  name       = \"${2:name}\"\n  target     = \"${3:target}\"\n}\n\n" "google_compute_global_forwarding_rule" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_global_forwarding_rule" nil nil)
		       ("goog_compute_global_address" "resource \"google_compute_global_address\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_global_address" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_global_address" nil nil)
		       ("goog_compute_forwarding_rule" "resource \"google_compute_forwarding_rule\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_forwarding_rule" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_forwarding_rule" nil nil)
		       ("goog_compute_firewall" "resource \"google_compute_firewall\" \"${1:name}\" {\n  name    = \"${2:name}\"\n  network = \"${3:network}\"\n}\n\n" "google_compute_firewall" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_firewall" nil nil)
		       ("goog_compute_disk" "resource \"google_compute_disk\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_disk" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_disk" nil nil)
		       ("goog_compute_backend_service" "resource \"google_compute_backend_service\" \"${1:name}\" {\n  name          = \"${2:name}\"\n  health_checks = [\"${3:health_checks}\"]\n}\n\n" "google_compute_backend_service" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_backend_service" nil nil)
		       ("goog_compute_backend_bucket" "resource \"google_compute_backend_bucket\" \"${1:name}\" {\n  name        = \"${2:name}\"\n  bucket_name = \"${3:bucket_name}\"\n}\n\n" "google_compute_backend_bucket" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_backend_bucket" nil nil)
		       ("goog_compute_autoscaler" "resource \"google_compute_autoscaler\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  target = \"${3:target}\"\n\n  autoscaling_policy = {\n    max_replicas = ${4:max_replicas}\n    min_replicas = ${5:min_replicas}\n  }\n}\n\n" "google_compute_autoscaler" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_autoscaler" nil nil)
		       ("goog_compute_attached_disk" "resource \"google_compute_attached_disk\" \"${1:name}\" {\n  disk     = \"${2:name}\"\n  instance = \"${3:instance_name}\"\n}\n\n" "google_compute_attached_disk" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_attached_disk" nil nil)
		       ("goog_compute_address" "resource \"google_compute_address\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_address" nil
			("google" "compute_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/compute_engine_resources/google_compute_address" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_container_analysis_note" "resource \"google_container_analysis_note\" \"${1:name}\" {\n  name = \"${2:name}\"\n  attestation_authority {\n    hint {\n      human_readable_name = \"${3:human_readable_name}\"\n    }\n  }\n}\n\n" "google_container_analysis_note" nil
			("google" "container_analysis_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/container_analysis_resources/google_container_analysis_note" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_container_node_pool" "resource \"google_container_node_pool\" \"${1:name}\" {\n  cluster = \"${2:value}\"\n}\n\n" "google_container_node_pool" nil
			("google" "container_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/container_engine_resources/google_container_node_pool" nil nil)
		       ("goog_container_cluster" "resource \"google_container_cluster\" \"${1:name}\" {\n  name = \"${2:value}\"\n}\n\n" "google_container_cluster" nil
			("google" "container_engine_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/container_engine_resources/google_container_cluster" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_storage_project_service_account" "data \"google_storage_project_service_account\" \"${1:name}\" {}\n\n" "google_storage_project_service_account" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_storage_project_service_account" nil nil)
		       ("goog_storage_object_signed_url" "data \"google_storage_object_signed_url\" \"${1:name}\" {\n  bucket = \"${2:bucket}\"\n  path   = \"${3:path}\"\n}\n\n" "google_storage_object_signed_url" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_storage_object_signed_url" nil nil)
		       ("goog_service_account_key_data" "data \"google_service_account_key\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_service_account_key_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_service_account_key_data" nil nil)
		       ("goog_service_account_data" "data \"google_service_account\" \"${1:name}\" {\n  account_id = \"${2:account_id}\"\n}\n\n" "google_service_account_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_service_account_data" nil nil)
		       ("goog_project_services_data" "data \"google_project_services\" \"${1:name}\" {\n  project = \"${2:project_id}\"\n}\n\n" "google_project_services_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_project_services_data" nil nil)
		       ("goog_project_data" "data \"google_project\" \"project\" {}\n\n" "google_project_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_project_data" nil nil)
		       ("goog_organization" "data \"google_organization\" \"${1:name}\" {\n}\n\n" "google_organization" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_organization" nil nil)
		       ("goog_netblock_ip_ranges" "data \"google_netblock_ip_ranges\" \"${1:name}\" {}\n\n" "google_netblock_ip_ranges" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_netblock_ip_ranges" nil nil)
		       ("goog_kms_secret" "data \"google_kms_secret\" \"${1:name}\" {\n  crypto_key = \"${2:crypto_key}\"\n  ciphertext = \"${3:ciphertext}\"\n}\n\n" "google_kms_secret" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_kms_secret" nil nil)
		       ("goog_iam_role" "data \"google_iam_role\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_iam_role" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_iam_role" nil nil)
		       ("goog_iam_policy" "data \"google_iam_policy\" \"${1:name}\" {\n  binding {\n    role    = \"${2:role}\"\n    members = [\n      \"user:${3:service_account}\",\n    ]\n  }\n}\n\n" "google_iam_policy" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_iam_policy" nil nil)
		       ("goog_folder_data" "data \"google_folder\" \"${1:name}\" {\n  folder = \"${2:folder}\"\n}\n\n" "google_folder_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_folder_data" nil nil)
		       ("goog_dns_managed_zone_data" "data \"google_dns_managed_zone\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_dns_managed_zone_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_dns_managed_zone_data" nil nil)
		       ("goog_container_registry_repository" "data \"google_container_registry_repository\" \"${1:name}\" {}\n\n" "google_container_registry_repository" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_container_registry_repository" nil nil)
		       ("goog_container_registry_image" "data \"google_container_registry_image\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_container_registry_image" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_container_registry_image" nil nil)
		       ("goog_container_engine_versions" "data \"google_container_engine_versions\" \"${1:name}\" {}\n\n" "google_container_engine_versions" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_container_engine_versions" nil nil)
		       ("goog_container_cluster_data" "data \"google_container_cluster\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  zone   = \"${3:zone}\"\n}\n\n" "google_container_cluster_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_container_cluster_data" nil nil)
		       ("goog_compute_zones" "data \"google_compute_zones\" \"${1:name}\" {}\n\n" "google_compute_zones" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_zones" nil nil)
		       ("goog_compute_vpn_gateway_data" "data \"google_compute_vpn_gateway\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_vpn_gateway_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_vpn_gateway_data" nil nil)
		       ("goog_compute_subnetwork_data" "data \"google_compute_subnetwork\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_subnetwork_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_subnetwork_data" nil nil)
		       ("goog_compute_ssl_policy_data" "data \"google_compute_ssl_policy\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_ssl_policy_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_ssl_policy_data" nil nil)
		       ("goog_compute_regions" "data \"google_compute_regions\" \"${1:name}\" {}\n\n" "google_compute_regions" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_regions" nil nil)
		       ("goog_compute_region_instance_group" "data \"google_compute_region_instance_group\" \"${1:name}\" {\n  name = \"${2:instance_group_name}\"\n}\n\n" "google_compute_region_instance_group" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_region_instance_group" nil nil)
		       ("goog_compute_network_data" "data \"google_compute_network\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_network_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_network_data" nil nil)
		       ("goog_compute_lb_ip_ranges" "data \"google_compute_lb_ip_ranges\" \"${1:name}\" {}\n\n" "google_compute_lb_ip_ranges" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_lb_ip_ranges" nil nil)
		       ("goog_compute_instance_group_data" "data \"google_compute_instance_group\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_instance_group_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_instance_group_data" nil nil)
		       ("goog_compute_instance_data" "data \"google_compute_instance\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_instance_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_instance_data" nil nil)
		       ("goog_compute_image_data" "data \"google_compute_image\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_image_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_image_data" nil nil)
		       ("goog_compute_global_address_data" "data \"google_compute_global_address\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_global_address_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_global_address_data" nil nil)
		       ("goog_compute_forwarding_rule_data" "data \"google_compute_forwarding_rule\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_forwarding_rule_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_forwarding_rule_data" nil nil)
		       ("goog_compute_default_service_account" "data \"google_compute_default_service_account\" \"${1:name}\" { }\n\n" "google_compute_default_service_account" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_default_service_account" nil nil)
		       ("goog_compute_backend_service_data" "data \"google_compute_backend_service\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_backend_service_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_backend_service_data" nil nil)
		       ("goog_compute_address_data" "data \"google_compute_address\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_compute_address_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_compute_address_data" nil nil)
		       ("goog_cloudfunctions_function_data" "data \"google_cloudfunctions_function\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_cloudfunctions_function_data" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_cloudfunctions_function_data" nil nil)
		       ("goog_client_config" "data \"google_client_config\" \"${1:name}\" {}\n\n" "google_client_config" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_client_config" nil nil)
		       ("goog_billing_account" "data \"google_billing_account\" \"${1:name}\" {\n}\n\n" "google_billing_account" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_billing_account" nil nil)
		       ("goog_active_folder" "data \"google_active_folder\" \"${1:name}\" {\n  display_name = \"${2:name}\"\n  parent       = \"${3:parent}\"\n}\n\n" "google_active_folder" nil
			("google" "data_sources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/data_sources/google_active_folder" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_dataflow_job" "resource \"google_dataflow_job\" \"${1:name}\" {\n  name              = \"${2:name}\"\n  template_gcs_path = \"${3:gcs_patch}\"\n  temp_gcs_location = \"${4:gcs_location}\"\n}\n\n" "google_dataflow_job" nil
			("google" "dataflow_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/dataflow_resources/google_dataflow_job" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_dataproc_job" "resource \"google_dataproc_job\" \"${1:name}\" {\n  placement {\n    cluster_name = \"${2:cluster_name}\"\n  }\n  ${3:config_type}_config {\n    ${4:arguments}\n  }\n}\n\n" "google_dataproc_job" nil
			("google" "dataproc_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/dataproc_resources/google_dataproc_job" nil nil)
		       ("goog_dataproc_cluster" "resource \"google_dataproc_cluster\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_dataproc_cluster" nil
			("google" "dataproc_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/dataproc_resources/google_dataproc_cluster" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_dns_record_set" "resource \"google_dns_record_set\" \"${1:name}\" {\n  name = \"${2:name}\"\n  type = \"${3:type}\"\n  ttl  = ${4:ttl}\n  managed_zone = \"${5:managed_zone}\"\n  rrdatas = [\"${6:rrdatas}\"]\n}\n\n" "google_dns_record_set" nil
			("google" "dns_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/dns_resources/google_dns_record_set" nil nil)
		       ("goog_dns_managed_zone" "resource \"google_dns_managed_zone\" \"${1:name}\" {\n  name     = \"${2:name}\"\n  dns_name = \"${3:dns_name}\"\n}\n\n" "google_dns_managed_zone" nil
			("google" "dns_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/dns_resources/google_dns_managed_zone" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_endpoints_service" "resource \"google_endpoints_service\" \"${1:name}\" {\n  service_name = \"${2:service_name}\"\n}\n\n" "google_endpoints_service" nil
			("google" "endpoints_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/endpoints_resources/google_endpoints_service" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_filestore_instance" "resource \"google_filestore_instance\" \"${1:name}\" {\n  name = \"${2:name}\"\n  zone = \"${3:zone}\"\n  tier = \"${4:tier}\"\n\n  file_shares {\n    capacity_gb = ${5:capacity}\n    name        = \"${6:name}\"\n  }\n\n  networks {\n    network = \"${7:network}\"\n    modes   = [\"${8:mode}\"]\n  }\n}\n\n" "google_filestore_instance" nil
			("google" "filestore_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/filestore_resources/google_filestore_instance" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_service_account_key" "resource \"google_service_account_key\" \"${1:name}\" {\n  service_account_id = \"${2:service_account_id}\"\n}\n\n" "google_service_account_key" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_service_account_key" nil nil)
		       ("goog_service_account_iam_policy" "resource \"google_service_account_iam_policy\" \"${1:name}\" {\n  service_account_id = \"${2:service_account_id}\"\n  policy_data        = \"${3:policy_data}\"\n}\n\n" "google_service_account_iam_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_service_account_iam_policy" nil nil)
		       ("goog_service_account_iam_member" "resource \"google_service_account_iam_member\" \"${1:name}\" {\n  service_account_id = \"${2:service_account_id}\"\n  role               = \"${3:role}\"\n  member             = \"user:${4:member}\"\n}\n\n" "google_service_account_iam_member" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_service_account_iam_member" nil nil)
		       ("goog_service_account_iam_binding" "resource \"google_service_account_iam_binding\" \"${1:name}\" {\n  service_account_id = \"${2:service_account_id}\"\n  role               = \"${3:role}\"\n  members            = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_service_account_iam_binding" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_service_account_iam_binding" nil nil)
		       ("goog_service_account" "resource \"google_service_account\" \"${1:name}\" {\n  account_id = \"${2:value}\"\n}\n\n" "google_service_account" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_service_account" nil nil)
		       ("goog_resource_manager_lien" "resource \"google_resource_manager_lien\" \"${1:name}\" {\n  parent       = \"${2:parent}\"\n  restrictions = [\"${3:restriction}\"]\n  origin       = \"${4:origin}\"\n  reason       = \"${5:reason}\"\n}\n\n" "google_resource_manager_lien" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_resource_manager_lien" nil nil)
		       ("goog_project_usage_export_bucket" "resource \"google_project_usage_export_bucket\" \"${1:name}\" {\n  bucket_name = \"${2:bucket_name}\"\n}\n\n" "google_project_usage_export_bucket" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_usage_export_bucket" nil nil)
		       ("goog_project_services" "resource \"google_project_services\" \"${1:name}\" {\n  services = [\"${2:service}\"]\n}\n\n" "google_project_services" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_services" nil nil)
		       ("goog_project_service" "resource \"google_project_service\" \"${1:name}\" {\n  service = \"${2:service}\"\n}\n\n" "google_project_service" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_service" nil nil)
		       ("goog_project_organization_policy" "resource \"google_project_organization_policy\" \"${1:name}\" {\n  project    = \"${2:project}\"\n  constraint = \"${3:constraint}\"\n}\n\n" "google_project_organization_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_organization_policy" nil nil)
		       ("goog_project_iam_policy" "resource \"google_project_iam_policy\" \"${1:name}\" {\n  policy_data = \"${2:policy_data}\"\n}\n\n" "google_project_iam_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_iam_policy" nil nil)
		       ("goog_project_iam_member" "resource \"google_project_iam_member\" \"${1:name}\" {\n  role   = \"${2:role}\"\n  member = \"user:${3:user}\"\n}\n\n" "google_project_iam_member" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_iam_member" nil nil)
		       ("goog_project_iam_custom_role" "resource \"google_project_iam_custom_role\" \"${1:name}\" {\n  role_id     = \"${2:role}\"\n  title       = \"${3:title}\"\n  permissions = [\n    \"${4:permission}\",\n  ]\n}\n\n" "google_project_iam_custom_role" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_iam_custom_role" nil nil)
		       ("goog_project_iam_binding" "resource \"google_project_iam_binding\" \"${1:name}\" {\n  role    = \"${2:role}\"\n  members = [\n    \"user:${3:user}\",\n  ]\n}\n\n" "google_project_iam_binding" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project_iam_binding" nil nil)
		       ("goog_project" "resource \"google_project\" \"${1:name}\" {\n  name       = \"${2:name}\"\n  project_id = \"${3:project_id}\"\n}\n\n" "google_project" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_project" nil nil)
		       ("goog_organization_policy" "resource \"google_organization_policy\" \"${1:name}\" {\n  org_id     = \"${2:org_id}\"\n  constraint = \"${3:constraint}\"\n}" "google_organization_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_organization_policy" nil nil)
		       ("goog_organization_iam_policy" "resource \"google_organization_iam_policy\" \"${1:name}\" {\n  org_id      = \"${2:org_id}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_organization_iam_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_organization_iam_policy" nil nil)
		       ("goog_organization_iam_member" "resource \"google_organization_iam_member\" \"${1:name}\" {\n  org_id  = \"${2:org_id}\"\n  role    = \"${3:role}\"\n  member  = \"user:${4:user}\"\n}\n\n" "google_organization_iam_member" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_organization_iam_member" nil nil)
		       ("goog_organization_iam_custom_role" "resource \"google_organization_iam_custom_role\" \"${1:name}\" {\n  role_id     = \"${2:role_id}\"\n  org_id      = \"${3:org_id}\"\n  title       = \"${4:title}\"\n  permissions = [\"${5:permission}\"]\n}\n\n" "google_organization_iam_custom_role" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_organization_iam_custom_role" nil nil)
		       ("goog_organization_iam_binding" "resource \"google_organization_iam_binding\" \"${1:name}\" {\n  org_id  = \"${2:org_id}\"\n  role    = \"${3:role}\"\n  members = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_organization_iam_binding" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_organization_iam_binding" nil nil)
		       ("goog_folder_organization_policy" "resource \"google_folder_organization_policy\" \"${1:name}\" {\n  folder     = \"${2:folder}\"\n  constraint = \"${3:constraint}\"\n}" "google_folder_organization_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_folder_organization_policy" nil nil)
		       ("goog_folder_iam_policy" "resource \"google_folder_iam_policy\" \"${1:name}\" {\n  folder      = \"${2:folder}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_folder_iam_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_folder_iam_policy" nil nil)
		       ("goog_folder_iam_member" "resource \"google_folder_iam_member\" \"${1:name}\" {\n  folder = \"${2:folder}\"\n  role   = \"${3:role}\"\n  member = \"user:${4:member}\"\n}\n\n" "google_folder_iam_member" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_folder_iam_member" nil nil)
		       ("goog_folder_iam_binding" "resource \"google_folder_iam_binding\" \"${1:name}\" {\n  folder  = \"${2:folder}\"\n  role    = \"${3:role}\"\n  members = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_folder_iam_binding" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_folder_iam_binding" nil nil)
		       ("goog_folder" "resource \"google_folder\" \"${1:name}\" {\n  display_name = \"${2:display_name}\"\n  parent       = \"${3:parent}\"\n}\n\n" "google_folder" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_folder" nil nil)
		       ("goog_billing_account_iam_policy" "resource \"google_billing_account_iam_policy\" \"${1:name}\" {\n  billing_account_id = \"${2:billing_account_id}\"\n  policy_data        = \"${3:policy_data}\"\n}\n\n" "google_billing_account_iam_policy" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_billing_account_iam_policy" nil nil)
		       ("goog_billing_account_iam_member" "resource \"google_billing_account_iam_member\" \"${1:name}\" {\n  billing_account_id = \"${2:billing_account_id}\"\n  role               = \"${3:role}\"\n  member             = \"user:${4:member}\"\n}\n\n" "google_billing_account_iam_member" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_billing_account_iam_member" nil nil)
		       ("goog_billing_account_iam_binding" "resource \"google_billing_account_iam_binding\" \"${1:name}\" {\n  billing_account_id = \"${2:billing_account_id}\"\n  role               = \"${3:role}\"\n  members            = [\n  \"user:${4:user}\",\n  ]\n}\n\n" "google_billing_account_iam_binding" nil
			("google" "gcp_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/gcp_resources/google_billing_account_iam_binding" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_cloudiot_registry" "resource \"google_cloudiot_registry\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_cloudiot_registry" nil
			("google" "iot_core")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/iot_core/google_cloudiot_registry" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_kms_key_ring_iam_policy" "resource \"google_kms_key_ring_iam_policy\" \"${1:name}\" {\n  key_ring_id = \"${2:key_ring}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_kms_key_ring_iam_policy" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_key_ring_iam_policy" nil nil)
		       ("goog_kms_key_ring_iam_member" "resource \"google_kms_key_ring_iam_member\" \"${1:name}\" {\n  key_ring_id = \"${2:key_ring}\"\n  role        = \"${3:role}\"\n  member      = \"user:${4:user}\"\n}\n\n" "google_kms_key_ring_iam_member" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_key_ring_iam_member" nil nil)
		       ("goog_kms_key_ring_iam_binding" "resource \"google_kms_key_ring_iam_binding\" \"${1:name}\" {\n  key_ring_id = \"${2:key_ring}\"\n  role        = \"${3:role}\"\n  members     = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_kms_key_ring_iam_binding" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_key_ring_iam_binding" nil nil)
		       ("goog_kms_key_ring" "resource \"google_kms_key_ring\" \"${1:name}\" {\n  name     = \"${2:name}\"\n  location = \"${3:location}\"\n}\n\n" "google_kms_key_ring" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_key_ring" nil nil)
		       ("goog_kms_crypto_key_iam_member" "resource \"google_kms_crypto_key_iam_member\" \"${1:name}\" {\n  crypto_key_id = \"${2:crypto_key}\"\n  role          = \"${3:role}\"\n  member        = \"user:${4:user}\"\n}\n\n" "google_kms_crypto_key_iam_member" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_crypto_key_iam_member" nil nil)
		       ("goog_kms_crypto_key_iam_binding" "resource \"google_kms_crypto_key_iam_binding\" \"${1:name}\" {\n  crypto_key_id = \"${2:crypto_key_id}\"\n  role          = \"${3:role}\"\n  members       = [\n    \"user:${4:member}\",\n  ]\n}\n\n" "google_kms_crypto_key_iam_binding" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_crypto_key_iam_binding" nil nil)
		       ("goog_kms_crypto_key" "resource \"google_kms_crypto_key\" \"${1:name}\" {\n  name     = \"${2:name}\"\n  key_ring = \"${3:key_ring}\"\n}\n\n" "google_kms_crypto_key" nil
			("google" "key_management_service_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/key_management_service_resources/google_kms_crypto_key" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_pubsub_topic_iam_policy" "resource \"google_pubsub_topic_iam_policy\" \"${1:name}\" {\n  topic       = \"${2:topic}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_pubsub_topic_iam_policy" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_topic_iam_policy" nil nil)
		       ("goog_pubsub_topic_iam_member" "resource \"google_pubsub_topic_iam_member\" \"${1:name}\" {\n  topic  = \"${2:topic}\"\n  role   = \"${3:role}\"\n  member = \"user:${4:user}\"\n}\n\n" "google_pubsub_topic_iam_member" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_topic_iam_member" nil nil)
		       ("goog_pubsub_topic_iam_binding" "resource \"google_pubsub_topic_iam_binding\" \"${1:name}\" {\n  topic   = \"${2:topic}\"\n  role    = \"${3:role}\"\n  members = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_pubsub_topic_iam_binding" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_topic_iam_binding" nil nil)
		       ("goog_pubsub_topic" "resource \"google_pubsub_topic\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_pubsub_topic" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_topic" nil nil)
		       ("goog_pubsub_subscription_iam_policy" "resource \"google_pubsub_subscription_iam_policy\" \"${1:name}\" {\n  subscription = \"${2:subscription}\"\n  policy_data  = \"${3:policy_data}\"\n}\n\n" "google_pubsub_subscription_iam_policy" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_subscription_iam_policy" nil nil)
		       ("goog_pubsub_subscription_iam_member" "resource \"google_pubsub_subscription_iam_member\" \"${1:name}\" {\n  subscription = \"${2:subscription}\"\n  role         = \"${3:role}\"\n  member       = \"user:${4:user}\"\n}\n\n" "google_pubsub_subscription_iam_member" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_subscription_iam_member" nil nil)
		       ("goog_pubsub_subscription_iam_binding" "resource \"google_pubsub_subscription_iam_binding\" \"${1:name}\" {\n  subscription = \"${2:subscription}\"\n  role         = \"${3:role}\"\n  members      = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_pubsub_subscription_iam_binding" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_subscription_iam_binding" nil nil)
		       ("goog_pubsub_subscription" "resource \"google_pubsub_subscription\" \"${1:name}\" {\n  name  = \"${2:name}\"\n  topic = \"${3:topic}\"\n}\n\n" "google_pubsub_subscription" nil
			("google" "pubsub_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/pubsub_resources/google_pubsub_subscription" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_redis_instance" "resource \"google_redis_instance\" \"${1:name}\" {\n  name           = \"${2:name}\"\n  memory_size_gb = ${3:size}\n}\n\n" "google_redis_instance" nil
			("google" "redis_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/redis_resources/google_redis_instance" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_runtimeconfig_variable" "resource \"google_runtimeconfig_variable\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  parent = \"${3:parent_config_name}\"\n  text   = \"${4:text}\"\n}\n\n" "google_runtimeconfig_variable" nil
			("google" "runtimeconfig_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/runtimeconfig_resources/google_runtimeconfig_variable" nil nil)
		       ("goog_runtimeconfig_config" "resource \"google_runtimeconfig_config\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_runtimeconfig_config" nil
			("google" "runtimeconfig_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/runtimeconfig_resources/google_runtimeconfig_config" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_service_networking_connection" "resource \"google_service_networking_connection\" \"${1:name}\" {\n  network                 = \"${2:network}\"\n  service                 = \"${3:service}\"\n  reserved_peering_ranges = [\"${4:reserved_peering_ranges}\"]\n}\n\n" "google_service_networking_connection" nil
			("google" "service_networking_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/service_networking_resources/google_service_networking_connection" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_sourcerepo_repository" "resource \"google_sourcerepo_repository\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_sourcerepo_repository" nil
			("google" "source_repositories_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/source_repositories_resources/google_sourcerepo_repository" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_spanner_instance_iam_policy" "resource \"google_spanner_instance_iam_policy\" \"${1:name}\" {\n  instance    = \"${2:instance}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_spanner_instance_iam_policy" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_instance_iam_policy" nil nil)
		       ("goog_spanner_instance_iam_member" "resource \"google_spanner_instance_iam_member\" \"${1:name}\" {\n  instance  = \"${2:instance}\"\n  role      = \"${3:role}\"\n  member    = \"user:${4:user}\"\n}\n\n" "google_spanner_instance_iam_member" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_instance_iam_member" nil nil)
		       ("goog_spanner_instance_iam_binding" "resource \"google_spanner_instance_iam_binding\" \"${1:name}\" {\n  instance  = \"${2:instance}\"\n  role      = \"${3:role}\"\n  members   = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_spanner_instance_iam_binding" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_instance_iam_binding" nil nil)
		       ("goog_spanner_instance" "resource \"google_spanner_instance\" \"${1:name}\" {\n  config       = \"${2:config}\"\n  display_name = \"${3:display_name}\"\n}\n\n" "google_spanner_instance" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_instance" nil nil)
		       ("goog_spanner_database_iam_policy" "resource \"google_spanner_database_iam_policy\" \"${1:name}\" {\n  instance    = \"${2:instance}\"\n  database    = \"${3:database}\"\n  policy_data = \"${4:policy_data}\"\n}\n\n" "google_spanner_database_iam_policy" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_database_iam_policy" nil nil)
		       ("goog_spanner_database_iam_member" "resource \"google_spanner_database_iam_member\" \"${1:name}\" {\n  instance = \"${2:instance}\"\n  database = \"${3:database}\"\n  role     = \"${4:role}\"\n  member   = \"user:${5:user}\"\n}\n\n" "google_spanner_database_iam_member" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_database_iam_member" nil nil)
		       ("goog_spanner_database_iam_binding" "resource \"google_spanner_database_iam_binding\" \"${1:name}\" {\n  instance = \"${2:instance}\"\n  database = \"${3:database}\"\n  role     = \"${4:role}\"\n  members  = [\n    \"user:${5:user}\",\n  ]\n}\n\n" "google_spanner_database_iam_binding" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_database_iam_binding" nil nil)
		       ("goog_spanner_database" "resource \"google_spanner_database\" \"${1:name}\" {\n  instance  = \"${2:instance}\"\n  name      = \"${3:name}\"\n}\n\n" "google_spanner_database" nil
			("google" "spanner_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/spanner_resources/google_spanner_database" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_sql_user" "resource \"google_sql_user\" \"${1:name}\" {\n  name     = \"${2:name}\"\n  instance = \"${3:instance}\"\n  password = \"${4:changeme}\"\n}\n\n" "google_sql_user" nil
			("google" "sql_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/sql_resources/google_sql_user" nil nil)
		       ("goog_sql_ssl_cert" "resource \"google_sql_ssl_cert\" \"${1:name}\" {\n  common_name = \"${2:name}\"\n  instance    = \"${3:instance}\"\n}\n\n" "google_sql_ssl_cert" nil
			("google" "sql_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/sql_resources/google_sql_ssl_cert" nil nil)
		       ("goog_sql_database_instance" "resource \"google_sql_database_instance\" \"${1:name}\" {\n  region = \"${2:region}\"\n  settings {\n    tier = \"${3:tier}\"\n  }\n}\n\n" "google_sql_database_instance" nil
			("google" "sql_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/sql_resources/google_sql_database_instance" nil nil)
		       ("goog_sql_database" "resource \"google_sql_database\" \"${1:name}\" {\n  name     = \"${2:name}\"\n  instance = \"${3:instance}\"\n}\n\n" "google_sql_database" nil
			("google" "sql_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/sql_resources/google_sql_database" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_logging_project_sink" "resource \"google_logging_project_sink\" \"${1:name}\" {\n  name        = \"${2:name}\"\n  destination = \"${3:destination}\"\n}\n\n" "google_logging_project_sink" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_project_sink" nil nil)
		       ("goog_logging_project_exclusion" "resource \"google_logging_project_exclusion\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  filter = \"${3:filter}\"\n}\n\n" "google_logging_project_exclusion" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_project_exclusion" nil nil)
		       ("goog_logging_organization_sink" "resource \"google_logging_organization_sink\" \"${1:name}\" {\n  name        = \"${2:name}\"\n  org_id      = \"${3:org_id}\"\n  destination = \"${4:destination}\"\n}\n\n" "google_logging_organization_sink" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_organization_sink" nil nil)
		       ("goog_logging_organization_exclusion" "resource \"google_logging_organization_exclusion\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  org_id = \"${3:org_id}\"\n  filter = \"${4:filter}\"\n}\n\n" "google_logging_organization_exclusion" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_organization_exclusion" nil nil)
		       ("goog_logging_folder_sink" "resource \"google_logging_folder_sink\" \"${1:name}\" {\n  name        = \"${2:name}\"\n  folder      = \"${3:folder}\"\n  destination = \"${4:destination}\"\n}\n\n" "google_logging_folder_sink" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_folder_sink" nil nil)
		       ("goog_logging_folder_exclusion" "resource \"google_logging_folder_exclusion\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  folder = \"${3:folder}\"\n  filter = \"${4:filter}\"\n}\n\n" "google_logging_folder_exclusion" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_folder_exclusion" nil nil)
		       ("goog_logging_billing_account_sink" "resource \"google_logging_billing_account_sink\" \"${1:name}\" {\n  name            = \"${2:name}\"\n  billing_account = \"${3:billing_account}\"\n  destination     = \"${4:destination}\"\n}\n\n" "google_logging_billing_account_sink" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_billing_account_sink" nil nil)
		       ("goog_logging_billing_account_exclusion" "resource \"google_logging_billing_account_exclusion\" \"${1:name}\" {\n  name            = \"${2:name}\"\n  billing_account = \"${3:billing_account}\"\n  filter          = \"${4:filter}\"\n}\n\n" "google_logging_billing_account_exclusion" nil
			("google" "stackdriver_logging_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_logging_resources/google_logging_billing_account_exclusion" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_monitoring_uptime_check_config" "resource \"google_monitoring_uptime_check_config\" \"${1:name}\" {\n  display_name = \"${2:display_name}\"\n  timeout      = \"${3:timeout}\"\n}\n\n" "google_monitoring_uptime_check_config" nil
			("google" "stackdriver_monitoring_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_monitoring_resources/google_monitoring_uptime_check_config" nil nil)
		       ("goog_monitoring_notification_channel" "resource \"google_monitoring_notification_channel\" \"${1:name}\" {\n  display_name = \"${2:display_name}\"\n  type         = \"${3:type}\"\n}\n\n" "google_monitoring_notification_channel" nil
			("google" "stackdriver_monitoring_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_monitoring_resources/google_monitoring_notification_channel" nil nil)
		       ("goog_monitoring_group" "resource \"google_monitoring_group\" \"${1:name}\" {\n  display_name = \"${2:display_name}\"\n  filter       = \"${3:filter}\"\n}\n\n" "google_monitoring_group" nil
			("google" "stackdriver_monitoring_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_monitoring_resources/google_monitoring_group" nil nil)
		       ("goog_monitoring_alert_policy" "resource \"google_monitoring_alert_policy\" \"${1:name}\" {\n  display_name = \"${2:display_name}\"\n  combiner     = \"${3:combiner}\"\n  conditions   = [\n    {\n      display_name = \"${4:display_name}\"\n    }\n  ]\n}\n\n" "google_monitoring_alert_policy" nil
			("google" "stackdriver_monitoring_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/stackdriver_monitoring_resources/google_monitoring_alert_policy" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("goog_storage_object_acl" "resource \"google_storage_object_acl\" \"${1:name}\" {\n  bucket = \"${2:bucket}\"\n  object = \"${3:object}\"\n}\n\n" "google_storage_object_acl" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_object_acl" nil nil)
		       ("goog_storage_object_access_control" "resource \"google_storage_object_access_control\" \"${1:name}\" {\n  object = \"${2:object}\"\n  bucket = \"${3:bucket}\"\n  role   = \"${4:role}\"\n  entity = \"${5:entity}\"\n}\n\n" "google_storage_object_access_control" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_object_access_control" nil nil)
		       ("goog_storage_notification" "resource \"google_storage_notification\" \"${1:name}\" {\n  bucket         = \"${2:bucket}\"\n  payload_format = \"${3:payload}\"\n  topic          = \"${4:topic}\"\n}\n\n" "google_storage_notification" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_notification" nil nil)
		       ("goog_storage_default_object_acl" "resource \"google_storage_default_object_acl\" \"${1:name}\" {\n  bucket      = \"${2:bucket}\"\n  role_entity = [\n    \"OWNER:${3:owner}\",\n  ]\n}\n\n" "google_storage_default_object_acl" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_default_object_acl" nil nil)
		       ("goog_storage_default_object_access_control" "resource \"google_storage_default_object_access_control\" \"${1:name}\" {\n  bucket = \"${2:bucket}\"\n  role   = \"${3:role}\"\n  entity = \"${4:entity}\"\n}\n\n" "google_storage_default_object_access_control" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_default_object_access_control" nil nil)
		       ("goog_storage_bucket_object" "resource \"google_storage_bucket_object\" \"${1:name}\" {\n  name   = \"${2:name}\"\n  bucket = \"${3:bucket}\"\n}\n\n" "google_storage_bucket_object" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_bucket_object" nil nil)
		       ("goog_storage_bucket_iam_policy" "resource \"google_storage_bucket_iam_policy\" \"${1:name}\" {\n  bucket      = \"${2:bucket}\"\n  policy_data = \"${3:policy_data}\"\n}\n\n" "google_storage_bucket_iam_policy" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_bucket_iam_policy" nil nil)
		       ("goog_storage_bucket_iam_member" "resource \"google_storage_bucket_iam_member\" \"${1:name}\" {\n  bucket = \"${2:bucket name}\"\n  member = \"${3:member}\"\n  role   = \"${4:role}\"\n}\n\n" "google_storage_bucket_iam_member" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_bucket_iam_member" nil nil)
		       ("goog_storage_bucket_iam_binding" "resource \"google_storage_bucket_iam_binding\" \"${1:name}\" {\n  bucket  = \"${2:bucket}\"\n  role    = \"${3:role}\"\n  members = [\n    \"user:${4:user}\",\n  ]\n}\n\n" "google_storage_bucket_iam_binding" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_bucket_iam_binding" nil nil)
		       ("goog_storage_bucket_acl" "resource \"google_storage_bucket_acl\" \"${1:name}\" {\n  bucket = \"${2:bucket}\"\n}\n\n" "google_storage_bucket_acl" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_bucket_acl" nil nil)
		       ("goog_storage_bucket" "resource \"google_storage_bucket\" \"${1:name}\" {\n  name = \"${2:name}\"\n}\n\n" "google_storage_bucket" nil
			("google" "storage_resources")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/terraform-mode/google/storage_resources/google_storage_bucket" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
