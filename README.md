# AWS Pipeline Puppet Configurations for Enterprise Integrator Module
> **Warning**
>
>   The CICD pipeline is deprecated.
>

This repository contains the Puppet configurations WSO2 API Manager modules used in AWS Pipeline.

## Adding files
1. Add the necessary `files/lib` folder. 
2. Add the file names as parameters in `init.pp` manifest file.
        
        $file_name = filename
2. Add the following code in init.pp  manifest file.
    
        file { "$carbon_home/$product-$product_version/repository/components/lib/${file_name}":
            mode   => '0754',
            source => "puppet:///modules/${module_name}/repository/components/lib/${file_name}",
        }     }
