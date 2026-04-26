#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 'ROOT/StandardCimv2/MSFT_NetAdapterUsoSettingData'
$script:ClassVersion = '1.0.0'
$script:ModuleVersion = '1.0'
$script:ObjectModelWrapper = [Microsoft.PowerShell.Cmdletization.Cim.CimCmdletAdapter]

$script:PrivateData = [System.Collections.Generic.Dictionary[string,string]]::new()

Microsoft.PowerShell.Core\Export-ModuleMember -Function @()
  

function __cmdletization_BindCommonParameters
{
param(
  $__cmdletization_objectModelWrapper,
  $myPSBoundParameters
)       
          

  if ($myPSBoundParameters.ContainsKey('CimSession')) { 
      $__cmdletization_objectModelWrapper.PSObject.Properties['CimSession'].Value 
= $myPSBoundParameters['CimSession'] 
  }
              

  if ($myPSBoundParameters.ContainsKey('ThrottleLimit')) { 
      
$__cmdletization_objectModelWrapper.PSObject.Properties['ThrottleLimit'].Value = 
$myPSBoundParameters['ThrottleLimit'] 
  }
              

  if ($myPSBoundParameters.ContainsKey('AsJob')) { 
      $__cmdletization_objectModelWrapper.PSObject.Properties['AsJob'].Value = 
$myPSBoundParameters['AsJob'] 
  }
              

}
          

function Get-NetAdapterUso
{
[CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterUsoSettingData')]

param(

[Parameter(ParameterSetName='ByName', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${AsJob})

DynamicParam {
  try 
  {
      if (-not $__cmdletization_exceptionHasBeenThrown)
      {
          $__cmdletization_objectModelWrapper = $script:ObjectModelWrapper::new()
          $__cmdletization_objectModelWrapper.Initialize($PSCmdlet, 
$script:ClassName, $script:ClassVersion, $script:ModuleVersion, $script:PrivateData)

          if ($__cmdletization_objectModelWrapper -is 
[System.Management.Automation.IDynamicParameters])
          {
              ([System.Management.Automation.IDynamicParameters]$__cmdletization_ob
jectModelWrapper).GetDynamicParameters()
          }
      }
  }
  catch
  {
      $__cmdletization_exceptionHasBeenThrown = $true
      throw
  }
}

Begin {
  $__cmdletization_exceptionHasBeenThrown = $false
  try 
  {
      __cmdletization_BindCommonParameters $__cmdletization_objectModelWrapper 
$PSBoundParameters
      $__cmdletization_objectModelWrapper.BeginProcessing()
  }
  catch
  {
      $__cmdletization_exceptionHasBeenThrown = $true
      throw
  }
}
  

Process {
  try 
  {
      if (-not $__cmdletization_exceptionHasBeenThrown)
      {
$__cmdletization_queryBuilder = $__cmdletization_objectModelWrapper.GetQueryBuilder()
if ($PSBoundParameters.ContainsKey('Name') -and (@('ByName') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${Name})
  $__cmdletization_queryBuilder.FilterByProperty('Name', $__cmdletization_values, 
$true, 'Default')
}
if ($PSBoundParameters.ContainsKey('InterfaceDescription') -and (@('ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${InterfaceDescription})
  $__cmdletization_queryBuilder.FilterByProperty('InterfaceDescription', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}


$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder)
      }
  }
  catch
  {
      $__cmdletization_exceptionHasBeenThrown = $true
      throw
  }
}
  

End {
  try
  {
      if (-not $__cmdletization_exceptionHasBeenThrown)
      {
          $__cmdletization_objectModelWrapper.EndProcessing()
      }
  }
  catch
  {
      throw
  }
}

# .EXTERNALHELP MSFT_NetAdapterUso.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Get-NetAdapterUso' -Alias '*'
  

function Set-NetAdapterUso
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterUsoSettingData')]

param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterUsoSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[bool]
${IPv4Enabled},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[bool]
${IPv6Enabled},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${AsJob},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru})

DynamicParam {
  try 
  {
      if (-not $__cmdletization_exceptionHasBeenThrown)
      {
          $__cmdletization_objectModelWrapper = $script:ObjectModelWrapper::new()
          $__cmdletization_objectModelWrapper.Initialize($PSCmdlet, 
$script:ClassName, $script:ClassVersion, $script:ModuleVersion, $script:PrivateData)

          if ($__cmdletization_objectModelWrapper -is 
[System.Management.Automation.IDynamicParameters])
          {
              ([System.Management.Automation.IDynamicParameters]$__cmdletization_ob
jectModelWrapper).GetDynamicParameters()
          }
      }
  }
  catch
  {
      $__cmdletization_exceptionHasBeenThrown = $true
      throw
  }
}

Begin {
  $__cmdletization_exceptionHasBeenThrown = $false
  try 
  {
      __cmdletization_BindCommonParameters $__cmdletization_objectModelWrapper 
$PSBoundParameters
      $__cmdletization_objectModelWrapper.BeginProcessing()
  }
  catch
  {
      $__cmdletization_exceptionHasBeenThrown = $true
      throw
  }
}
  

Process {
  try 
  {
      if (-not $__cmdletization_exceptionHasBeenThrown)
      {
$__cmdletization_queryBuilder = $__cmdletization_objectModelWrapper.GetQueryBuilder()
if ($PSBoundParameters.ContainsKey('Name') -and (@('ByName') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${Name})
  $__cmdletization_queryBuilder.FilterByProperty('Name', $__cmdletization_values, 
$true, 'Default')
}
if ($PSBoundParameters.ContainsKey('InterfaceDescription') -and (@('ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${InterfaceDescription})
  $__cmdletization_queryBuilder.FilterByProperty('InterfaceDescription', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv4Enabled')) {
      [object]$__cmdletization_value = ${IPv4Enabled}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6Enabled')) {
      [object]$__cmdletization_value = ${IPv6Enabled}
      $__cmdletization_methodParameter = [Microsoft.PowerS