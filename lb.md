git clone https://github.com/GoogleCloudPlatform/terraform-google-lb-http.git

cd ~/terraform-google-lb-http/examples/multi-backend-multi-mig-bucket-https-lb



 examples/multi-backend-multi-mig-bucket-https-lb/main.tf.


create_ssl_certificate = true
managed_ssl_certificate_domains = ["example.com"]

terraform plan -out=tfplan -var 'project=Project ID'


terraform apply tfplan




# for machines having public ip
gcloud compute ssh --zone "us-central1-c" "ansible" 


# for machiens not having public ip
gcloud compute ssh --zone "us-central1-a" "noprivateip" --tunnel-through-iap 

