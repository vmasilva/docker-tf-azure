FROM mcr.microsoft.com/azure-cli:2.36.0

### version 0.12.21
# RUN wget -O terraform_binary.zip https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip
### version 1.0.9
RUN wget -O terraform_binary.zip https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_linux_amd64.zip 
### version 1.1.0
#RUN wget -O terraform_binary.zip https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_linux_amd64.zip 

RUN unzip terraform_binary.zip && rm terraform_binary.zip
RUN mv terraform /usr/bin/terraform