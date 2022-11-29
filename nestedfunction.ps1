$Applications = @{}
$Applications.Add("AD","Active Directory")
$Applications.Add("ADHA","ADFS High Availability")
$Applications.Add("ANTSV","Antivirus Management Service")
$Applications.Add("Cloud","Onboarding Cloud")
$Applications.Add("AUto","Infrastructure Automation")



$Environment = @{}
$Environment.Add("Dev","Development")
$Environment.Add("pro","Production")
$Environment.Add("test","Test")
$Environment.Add("qual","Qualification")
$Environment.Add("AD","Active Directory")
$i=1
$itotal = $applications.count
Foreach($app in  $Applications){


   
   $env = $Environment 

   $j=1
   $jtotal = $env.count

   if($env.count -ge 1){

   foreach($en in $env){


        $environment.item("subname")= $applications.item("subname")
        Write-Host $app.value $en.value

        }

        $j+=1

        }

        Write-Host $Applications.count

        
        $i+=1
        }



     
