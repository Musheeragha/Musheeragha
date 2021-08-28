#Powershell script:

#Split:

$i=0; Get-Content "C:\Users\mus101944\Desktop\AllNestedMembers.csv" -ReadCount 60000 | %{$i++; $_ | Out-File "C:\Users\mus101944\Desktop\out_$i.txt"}


#Merge:

for ($i=1; $i -le 15; $i++) 
{

    Get-Content "C:\Users\agha_musheer\Desktop\Split\out_$i.txt"  | Out-File "C:\Users\agha_musheer\Desktop\Split\AllNestedGroup.txt" -Append

}