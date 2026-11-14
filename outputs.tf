output "vm_public_ip" {
  description = "Public IP of the compute instance"
  value       = oci_core_instance.lab_vm.public_ip
}
