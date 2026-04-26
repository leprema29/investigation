#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 'ROOT/StandardCimv2/MSFT_NetAdapterAdvancedPropertySettingData'
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
          

function New-NetAdapterAdvancedProperty
{
[CmdletBinding(DefaultParameterSetName='Name', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]


param(

[Parameter(ParameterSetName='InstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${InterfaceDescription},

[Parameter(ParameterSetName='InstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='Name', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${RegistryKeyword},

[Parameter(ParameterSetName='InstanceID', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='Name', ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterAdvancedProperty.RegData
Type]
${RegistryDataType},

[Parameter(ParameterSetName='InstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='Name', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string[]]
${RegistryValue},

[Parameter(ParameterSetName='InstanceID')]
[Parameter(ParameterSetName='Name')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='InstanceID')]
[Parameter(ParameterSetName='Name')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='Name', Mandatory=$true, Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Name},

[Parameter(ParameterSetName='InstanceID')]
[Parameter(ParameterSetName='Name')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='InstanceID')]
[Parameter(ParameterSetName='Name')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='InstanceID')]
[Parameter(ParameterSetName='Name')]
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
$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.Powe
rShell.Cmdletization.MethodParameter]]::new()

switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('InstanceID') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('InterfaceDescription')) {
    [object]$__cmdletization_value = ${InterfaceDescription}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'InterfaceDescription'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'InterfaceDescription'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RegistryKeyword')) {
    [object]$__cmdletization_value = ${RegistryKeyword}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryKeyword'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryKeyword'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RegistryDataType')) {
    [object]$__cmdletization_value = ${RegistryDataType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryDataType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterAdvancedProp
erty.RegDataType'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryDataType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterAdvancedProp
erty.RegDataType'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RegistryValue')) {
    [object]$__cmdletization_value = ${RegistryValue}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryValue'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryValue'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('NoRestart')) {
    [object]$__cmdletization_value = ${NoRestart}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('IncludeHidden')) {
    [object]$__cmdletization_value = ${IncludeHidden}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:IncludeHidden'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:IncludeHidden'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:CreateInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Name') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Name')) {
    [object]$__cmdletization_value = ${Name}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Name'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Name'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RegistryKeyword')) {
    [object]$__cmdletization_value = ${RegistryKeyword}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryKeyword'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryKeyword'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RegistryDataType')) {
    [object]$__cmdletization_value = ${RegistryDataType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryDataType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterAdvancedProp
erty.RegDataType'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryDataType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterAdvancedProp
erty.RegDataType'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RegistryValue')) {
    [object]$__cmdletization_value = ${RegistryValue}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryValue'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryValue'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('NoRestart')) {
    [object]$__cmdletization_value = ${NoRestart}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('IncludeHidden')) {
    [object]$__cmdletization_value = ${IncludeHidden}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:IncludeHidden'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:IncludeHidden'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:CreateInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterAdvancedProperty.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'New-NetAdapterAdvancedProperty' 
-Alias '*'
  

function Get-NetAdapterAdvancedProperty
{
[CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterAdvancedPropertySettingData')]

param(

[Parameter(ParameterSetName='ByName', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByNameDisplayName', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByNameRegistryKeyword', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true)]
[Parameter(ParameterSetName='ByInstanceIDDisplayName', Mandatory=$true)]
[Parameter(ParameterSetName='ByInstanceIDKeyword', Mandatory=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByNameDisplayName', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceIDDisplayName', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('DispN')]
[ValidateNotNull()]
[string[]]
${DisplayName},

[Parameter(ParameterSetName='ByNameRegistryKeyword', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceIDKeyword', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('RegKey')]
[ValidateNotNull()]
[string[]]
${RegistryKeyword},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByNameDisplayName')]
[Parameter(ParameterSetName='ByNameRegistryKeyword')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByInstanceIDDisplayName')]
[Parameter(ParameterSetName='ByInstanceIDKeyword')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByNameDisplayName')]
[Parameter(ParameterSetName='ByNameRegistryKeyword')]
[Parameter(
aluePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:ModifyInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterPacketDirect.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterPacketDirect' 
-Alias '*'
  

function Enable-NetAdapterPacketDirect
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterPacketDir
ectSettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterPacketDirect.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterPacketDirect' 
-Alias '*'
  

function Disable-NetAdapterPacketDirect
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterPacketDir
ectSettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[Alias('Session')]
[ValidateNotNullOrEmpty(
Parameters.ContainsKey('Enabled')) {
      [object]$__cmdletization_value = ${Enabled}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Enabled'; ParameterType = 
'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Enabled'; ParameterType = 
'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:ModifyInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterVmq.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterVmq' -Alias '*'
  

function Enable-NetAdapterVmq
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterVmqSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterVmq.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterVmq' -Alias '*'
  

function Disable-NetAdapterVmq
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterVmqSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_
.ContainsKey('Profile')) {
      [object]$__cmdletization_value = ${Profile}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Profile'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterRss.Profile'; Bindings = 
'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Profile'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterRss.Profile'; Bindings = 
'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('BaseProcessorGroup')) {
      [object]$__cmdletization_value = ${BaseProcessorGroup}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'BaseProcessorGroup'; 
ParameterType = 'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'BaseProcessorGroup'; 
ParameterType = 'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('BaseProcessorNumber')) {
      [object]$__cmdletization_value = ${BaseProcessorNumber}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'BaseProcessorNumber'; 
ParameterType = 'System.Byte'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'BaseProcessorNumber'; 
ParameterType = 'System.Byte'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('MaxProcessorGroup')) {
      [object]$__cmdletization_value = ${MaxProcessorGroup}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaxProcessorGroup'; 
ParameterType = 'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaxProcessorGroup'; 
ParameterType = 'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('MaxProcessorNumber')) {
      [object]$__cmdletization_value = ${MaxProcessorNumber}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaxProcessorNumber'; 
ParameterType = 'System.Byte'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaxProcessorNumber'; 
ParameterType = 'System.Byte'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('MaxProcessors')) {
      [object]$__cmdletization_value = ${MaxProcessors}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaxProcessors'; 
ParameterType = 'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaxProcessors'; 
ParameterType = 'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NumaNode')) {
      [object]$__cmdletization_value = ${NumaNode}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NumaNode'; ParameterType = 
'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NumaNode'; ParameterType = 
'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('Enabled')) {
      [object]$__cmdletization_value = ${Enabled}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Enabled'; ParameterType = 
'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Enabled'; ParameterType = 
'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:ModifyInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterRss.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterRss' -Alias '*'
  

function Enable-NetAdapterRss
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterRssSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetNam
methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:ModifyInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterRdma.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterRdma' -Alias '*'
  

function Enable-NetAdapterRdma
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Low', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterRdmaSetti
ngData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterRdma.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterRdma' -Alias 
'*'
  

function Disable-NetAdapterRdma
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Low', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
${InterfaceDescrip
ter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterQosSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterQos.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterQos' -Alias '*'
  

function Disable-NetAdapterQos
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterQosSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters
}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:ModifyInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterChecksumOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterChecksumOffload' 
-Alias '*'
  

function Enable-NetAdapterChecksumOffload
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterChecksumO
ffloadSettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IpIPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${TcpIPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${TcpIPv6},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${UdpIPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${UdpIPv6},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IpIPv4')) {
      [object]$__cmdletization_value = ${IpIPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('TcpIPv4')) {
      [object]$__cmdletization_value = ${TcpIPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('TcpIPv6')) {
      [object]$__cmdletization_value = ${TcpIPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('UdpIPv4')) {
      [object]$__cmdletization_value = ${UdpIPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('UdpIPv6')) {
      [object]$__cmdletization_value = ${UdpIPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterChecksumOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Enable-NetAdapterChecksumOffload' -Alias '*'
  

function Disable-NetAdapterChecksumOffload
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},
eterSetName='ByInstanceID')]
[ValidateNotNull()]
[string[]]
${ComponentID},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[ValidateNotNull()]
[string[]]
${DisplayName},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${AllBindings},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterBindingSe
ttingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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
if ($PSBoundParameters.ContainsKey('ComponentID') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${ComponentID})
  $__cmdletization_queryBuilder.FilterByProperty('ComponentID', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('DisplayName') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${DisplayName})
  $__cmdletization_queryBuilder.FilterByProperty('DisplayName', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}
if ($PSBoundParameters.ContainsKey('AllBindings') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('AllBindings', ${AllBindings})
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterBinding.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterBinding' 
-Alias '*'
  

function Disable-NetAdapterBinding
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[ValidateNotNull()]
[string[]]
${ComponentID},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[ValidateNotNull()]
[string[]]
${DisplayName},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${AllBindings},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterBindingSe
ttingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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
if ($PSBoundParameters.ContainsKey('ComponentID') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${ComponentID})
  $__cmdletization_queryBuilder.FilterByProperty('ComponentID', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('DisplayName') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${DisplayName})
  $__cmdletization_queryBuilder.FilterByProperty('DisplayName', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}
if ($PSBoundParameters.ContainsKey('AllBindings') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('AllBindings', ${AllBindings})
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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
  c
ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByInstanceIDDisplayName')]
[Parameter(ParameterSetName='ByInstanceIDKeyword')]
[switch]
${AllProperties},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByNameDisplayName')]
[Parameter(ParameterSetName='ByNameRegistryKeyword')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByInstanceIDDisplayName')]
[Parameter(ParameterSetName='ByInstanceIDKeyword')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByNameDisplayName')]
[Parameter(ParameterSetName='ByNameRegistryKeyword')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByInstanceIDDisplayName')]
[Parameter(ParameterSetName='ByInstanceIDKeyword')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByNameDisplayName')]
[Parameter(ParameterSetName='ByNameRegistryKeyword')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByInstanceIDDisplayName')]
[Parameter(ParameterSetName='ByInstanceIDKeyword')]
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
if ($PSBoundParameters.ContainsKey('Name') -and (@('ByName', 'ByNameDisplayName', 
'ByNameRegistryKeyword') -contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${Name})
  $__cmdletization_queryBuilder.FilterByProperty('Name', $__cmdletization_values, 
$true, 'Default')
}
if ($PSBoundParameters.ContainsKey('InterfaceDescription') -and (@('ByInstanceID', 
'ByInstanceIDDisplayName', 'ByInstanceIDKeyword') -contains $PSCmdlet.ParameterSetName 
)) {
  $__cmdletization_values = @(${InterfaceDescription})
  $__cmdletization_queryBuilder.FilterByProperty('InterfaceDescription', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('DisplayName') -and (@('ByNameDisplayName', 
'ByInstanceIDDisplayName') -contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${DisplayName})
  $__cmdletization_queryBuilder.FilterByProperty('DisplayName', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('RegistryKeyword') -and 
(@('ByNameRegistryKeyword', 'ByInstanceIDKeyword') -contains $PSCmdlet.ParameterSetName 
)) {
  $__cmdletization_values = @(${RegistryKeyword})
  $__cmdletization_queryBuilder.FilterByProperty('RegistryKeyword', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByNameDisplayName', 'ByNameRegistryKeyword', 'ByInstanceID', 'ByInstanceIDDisplayName', 
'ByInstanceIDKeyword') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}
if ($PSBoundParameters.ContainsKey('AllProperties') -and (@('ByName', 
'ByNameDisplayName', 'ByNameRegistryKeyword', 'ByInstanceID', 'ByInstanceIDDisplayName', 
'ByInstanceIDKeyword') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('AllProperties', ${AllProperties})
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

# .EXTERNALHELP MSFT_NetAdapterAdvancedProperty.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Get-NetAdapterAdvancedProperty' 
-Alias '*'
  

function Set-NetAdapterAdvancedProperty
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterAdvancedPropertySettingData')]

param(

[Parameter(ParameterSetName='ByName', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceID', ValueFromPipelineByPropertyName=$true)]
[Alias('DispN')]
[ValidateNotNull()]
[string[]]
${DisplayName},

[Parameter(ParameterSetName='ByName', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceID', ValueFromPipelineByPropertyName=$true)]
[Alias('RegKey')]
[ValidateNotNull()]
[string[]]
${RegistryKeyword},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${AllProperties},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterAdvancedP
ropertySettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceID', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='InputObject (cdxml)', 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${DisplayValue},

[Parameter(ParameterSetName='ByName', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceID', ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='InputObject (cdxml)', 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string[]]
${RegistryValue},

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
if ($PSBoundParameters.ContainsKey('DisplayName') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${DisplayName})
  $__cmdletization_queryBuilder.FilterByProperty('DisplayName', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('RegistryKeyword') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${RegistryKeyword})
  $__cmdletization_queryBuilder.FilterByProperty('RegistryKeyword', 
$__cmdletization_values, $false, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}
if ($PSBoundParameters.ContainsKey('AllProperties') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('AllProperties', ${AllProperties})
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('DisplayValue')) {
      [object]$__cmdletization_value = ${DisplayValue}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DisplayValue'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DisplayValue'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('RegistryValue')) {
      [object]$__cmdletization_value = ${RegistryValue}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryValue'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RegistryValue'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:ModifyInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterAdvancedProperty.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterAdvancedProperty' 
-Alias '*'
  

function Remove-NetAdapterAdvancedProperty
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterAdvancedPropertySettingData')]

param(

[Parameter(ParameterSetName='ByName', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('RegKey')]
[ValidateNotNull()]
[string[]]
${RegistryKeyword},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${AllProperties},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterAdvancedP
ropertySettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

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

Begi
)]
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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterPacketDirect.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterPacketDirect' 
-Alias '*'
value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterVmq.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterVmq' -Alias 
'*'
e) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Enable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterRss.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterRss' -Alias '*'
  

function Disable-NetAdapterRss
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterRssSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterRss.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterRss' -Alias 
'*'
tion},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterRdmaSetti
ngData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterRdma.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterRdma' -Alias 
'*'
, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterQos.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterQos' -Alias 
'*'
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterChecksumO
ffloadSettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IpIPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${TcpIPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${TcpIPv6},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${UdpIPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${UdpIPv6},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IpIPv4')) {
      [object]$__cmdletization_value = ${IpIPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('TcpIPv4')) {
      [object]$__cmdletization_value = ${TcpIPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('TcpIPv6')) {
      [object]$__cmdletization_value = ${TcpIPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TcpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('UdpIPv4')) {
      [object]$__cmdletization_value = ${UdpIPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('UdpIPv6')) {
      [object]$__cmdletization_value = ${UdpIPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UdpIPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Disable', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterChecksumOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Disable-NetAdapterChecksumOffload' -Alias '*'
atch
  {
      throw
  }
}

# .EXTERNALHELP MSFT_NetAdapterBinding.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterBinding' 
-Alias '*'
n {
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
if ($PSBoundParameters.ContainsKey('RegistryKeyword') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${RegistryKeyword})
  $__cmdletization_queryBuilder.FilterByProperty('RegistryKeyword', 
$__cmdletization_values, $false, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}
if ($PSBoundParameters.ContainsKey('AllProperties') -and (@('ByName', 
'ByInstanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('AllProperties', ${AllProperties})
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:DeleteInstance', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and 
$PassThru
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterAdvancedProperty.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Remove-NetAdapterAdvancedProperty' -Alias '*'
  

function Reset-NetAdapterAdvancedProperty
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
param(

[Parameter(ParameterSetName='ByName', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true)]
[Alias('ifDesc','InstanceID')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('DispN')]
[ValidateNotNull()]
[string[]]
${DisplayName},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterAdvancedP
ropertySettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

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
if ($PSBoundParameters.ContainsKey('DisplayName') -and (@('ByName', 'ByInstanceID') 
-contains $PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${DisplayName})
  $__cmdletization_queryBuilder.FilterByProperty('DisplayName', 
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
    if ($PSBoundParameters.ContainsKey('NoRestart')) {
      [object]$__cmdletization_value = ${NoRestart}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:NoRestart'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = $null
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Reset', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_passThru = $false
      if ($PSBoundParameters.ContainsKey('InputObject')) {
          foreach ($x in $InputObject) { 
$__cmdletization_objectModelWrapper.ProcessRecord($x, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
      } else {
          
$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, 
$__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
      }
  }
}

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

# .EXTERNALHELP MSFT_NetAdapterAdvancedProperty.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Reset-NetAdapterAdvancedProperty' -Alias '*'