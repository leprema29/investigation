#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 'Root/Microsoft/Windows/TaskScheduler/PS_ClusteredScheduledTask'
$script:ClassVersion = '1.0'
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
          

function Get-ClusteredScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance[]])][OutputType('Microso
ft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
param(

[Parameter(ParameterSetName='Get0', Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Get0', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Cluster},

[Parameter(ParameterSetName='Get0', Position=2)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum]
${TaskType},

[Parameter(ParameterSetName='Get0')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Get0')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Get0')]
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'Out'; 
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
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('Get', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)

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
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Get-ClusteredScheduledTask' 
-Alias '*'
  

function Register-ClusteredScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')][OutputType([Microso
ft.Management.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructu
re.CimInstance#MSFT_ClusteredScheduledTask')][OutputType([Microsoft.Management.Infrastruc
ture.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_Clus
teredScheduledTask')]
param(

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=2, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Object', Position=3)]
[Parameter(ParameterSetName='Params', Position=6)]
[Parameter(ParameterSetName='Xml', Position=3)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Cluster},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='Params', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='Xml', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object', Position=1)]
[Parameter(ParameterSetName='Params', Position=1)]
[Parameter(ParameterSetName='Xml', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum]
${TaskType},

[Parameter(ParameterSetName='Object', Position=4)]
[Parameter(ParameterSetName='Params', Position=7)]
[Parameter(ParameterSetName='Xml', Position=4)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Resource},

[Parameter(ParameterSetName='Params', Position=4)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Settings},

[Parameter(ParameterSetName='Params', Position=5)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Description},

[Parameter(ParameterSetName='Params', Position=3)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Trigger},

[Parameter(ParameterSetName='Params', Mandatory=$true, Position=2)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Action},

[Parameter(ParameterSetName='Xml', Mandatory=$true, Position=2, 
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
Bindings = 'In'; Valu