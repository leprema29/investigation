#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 'Root/Microsoft/Windows/TaskScheduler/PS_ScheduledTask'
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
          

function Disable-ScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')][OutputType([Microsoft.Manage
ment.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimIns
tance#MSFT_ScheduledTask')]
param(

[Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Name', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('DisableByName', 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('DisableByObject', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-ScheduledTask' -Alias 
'*'
  

function Enable-ScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')][OutputType([Microsoft.Manage
ment.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimIns
tance#MSFT_ScheduledTask')]
param(

[Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Name', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
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
  if ($PSBoundParameters.ContainsKey('TaskPath
')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('EnableByName', 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('EnableByObject', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-ScheduledTask' -Alias '*'
  

function Export-ScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([System.String])][OutputType([System.String])]
param(

[Parameter(ParameterSetName='Name', Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Name', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'System.String'; Bindings = 'Out'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('ExportByName', 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'System.String'; Bindings = 'Out'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('ExportByObject', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Export-ScheduledTask' -Alias '*'
  

function Get-ScheduledTaskInfo
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_TaskDynamicInfo')][OutputType([Microsoft.Mana
gement.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimI
nstance#MSFT_TaskDynamicInfo')]
param(

[Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Name', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
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

[Parameter(ParameterSetName='Name
')]
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskDynamicInfo'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('GetInfoByName', 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskDynamicInfo'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('GetInfoByObject', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Get-ScheduledTaskInfo' -Alias 
'*'
  

function New-ScheduledTask
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
param(

[Parameter(ParameterSetName='New0', Position=0)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Action},

[Parameter(ParameterSetName='New0', Position=4)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Description},

[Parameter(ParameterSetName='New0', Position=3)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Principal},

[Parameter(ParameterSetName='New0', Position=2)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Settings},

[Parameter(ParameterSetName='New0', Position=1)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Trigger},

[Parameter(ParameterSetName='New0')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='New0')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='New0')]
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
  if ($PSBoundParameters.ContainsKey('Principal')) {
    [object]$__cmdletization_value = ${Principal}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Principal'; ParameterType 
= 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Principal'; ParameterType 
= 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal'
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
'Microsoft.Management.Infrastructure.CimInstance'; Bindings 
= 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings'
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('New', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'New-ScheduledTask' -Alias '*'
  

function New-ScheduledTaskAction
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
param(

[Parameter(ParameterSetName='Exec')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Id},

[Parameter(ParameterSetName='Exec', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Execute},

[Parameter(ParameterSetName='Exec', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Argument},

[Parameter(ParameterSetName='Exec', Position=2)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${WorkingDirectory},

[Parameter(ParameterSetName='Exec')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Exec')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Exec')]
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
  if ($PSBoundParameters.ContainsKey('Id')) {
    [object]$__cmdletization_value = ${Id}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Id'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Id'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Execute')) {
    [object]$__cmdletization_value = ${Execute}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Execute'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Execute'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Argument')) {
    [object]$__cmdletization_value = ${Argument}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Argument'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Argument'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('WorkingDirectory')) {
    [object]$__cmdletization_value = ${WorkingDirectory}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'WorkingDirectory'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'WorkingDirectory'; 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewActionByExec', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'New-ScheduledTaskAction' -Alias 
'*'
  

function New-ScheduledTaskPrincipal
{
[CmdletBinding(DefaultParameterSetName='User', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')][OutputType([Microsoft.Manage
ment.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimIns
tance#MSFT_TaskPrincipal')]
param(

[Parameter(ParameterSetName='Group', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${GroupId},

[Parameter(ParameterSetName='Group', Position=4)]
[Parameter(ParameterSetName='User', Position=5)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Id},

[Parameter(ParameterSetName='Group', Position=1)]
[Parameter(ParameterSetName='User', Position=2)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum]
${RunLevel},

[Parameter(ParameterSetName='Group', Position=2)]
[Parameter(ParameterSetName='User', Position=3)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]

[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessTokenSidTypeEnum]
${ProcessTokenSidType},

[Parameter(ParameterSetName='Group', Position=3)]
[Parameter(ParameterSetName='User', Position=4)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string[]]
${RequiredPrivilege},

[Parameter(ParameterSetName='User', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${UserId},

[Parameter(ParameterSetName='User', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.LogonTypeEnum]
${LogonType},

[Parameter(ParameterSetName='Group')]
[Parameter(ParameterSetName='User')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Group')]
[Parameter(ParameterSetName='User')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Group')]
[Parameter(ParameterSetName='User')]
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
  { @('Group') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('GroupId')) {
    [object]$__cmdletization_value = ${GroupId}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'GroupId'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'GroupId'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Id')) {
    [object]$__cmdletization_value = ${Id}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Id'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Id'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RunLevel')) {
    [object]$__cmdletization_value = ${RunLevel}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunLevel'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum'; Bindings 
= 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunLevel'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum'; Bindings 
= 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('ProcessTokenSidType')) {
    [object]$__cmdletization_value = ${ProcessTokenSidType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'ProcessTokenSidType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessT
okenSidTypeEnum'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'ProcessTokenSidType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessT
okenSidTypeEnum'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RequiredPrivilege')) {
    [object]$__cmdletization_value = ${RequiredPrivilege}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RequiredPrivilege'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RequiredPrivilege'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = 
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
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewPrincipalByGroup', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('User') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('UserId')) {
    [object]$__cmdletization_value = ${UserId}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UserId'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'UserId'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('LogonType')) {
    [object]$__cmdletization_value = ${LogonType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'LogonType'; ParameterType 
= 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.LogonTypeEnum'; 
Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'LogonType'; ParameterType 
= 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.LogonTypeEnum'; 
Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Id')) {
    [object]$__cmdletization_value = ${Id}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Id'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Id'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('ProcessTokenSidType')) {
    [object]$__cmdletization_value = ${ProcessTokenSidType}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'ProcessTokenSidType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessT
okenSidTypeEnum'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'ProcessTokenSidType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessT
okenSidTypeEnum'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RequiredPrivilege')) {
    [object]$__cmdletization_value = ${RequiredPrivilege}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RequiredPrivilege'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RequiredPrivilege'; 
ParameterType = 'System.String[]'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RunLevel')) {
    [object]$__cmdletization_value = ${RunLevel}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunLevel'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum'; Bindings 
= 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunLevel'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum'; Bindings 
= 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewPrincipalByUser', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'New-ScheduledTaskPrincipal' 
-Alias '*'
  

function New-ScheduledTaskSettingsSet
{
[CmdletBinding(PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
param(

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${DisallowDemandStart},

[Parameter(ParameterSetName='
NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${DisallowHardTerminate},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.CompatibilityEnum]
${Compatibility},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${DeleteExpiredTaskAfter},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${AllowStartIfOnBatteries},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${Disable},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${MaintenanceExclusive},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${Hidden},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${RunOnlyIfIdle},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${IdleWaitTimeout},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${NetworkId},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${NetworkName},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${DisallowStartOnRemoteAppSession},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${MaintenancePeriod},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${MaintenanceDeadline},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${StartWhenAvailable},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${DontStopIfGoingOnBatteries},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${WakeToRun},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${IdleDuration},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${RestartOnIdle},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${DontStopOnIdleEnd},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${ExecutionTimeLimit},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]

[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.MultipleInstancesEnum]
${MultipleInstances},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[int]
${Priority},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[int]
${RestartCount},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${RestartInterval},

[Parameter(ParameterSetName='NewSettings1')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${RunOnlyIfNetworkAvailable},

[Parameter(ParameterSetName='NewSettings1')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='NewSettings1')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='NewSettings1')]
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
  if ($PSBoundParameters.ContainsKey('DisallowDemandStart')) {
    [object]$__cmdletization_value = ${DisallowDemandStart}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DisallowDemandStart'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DisallowDemandStart'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DisallowHardTerminate')) {
    [object]$__cmdletization_value = ${DisallowHardTerminate}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DisallowHardTerminate'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DisallowHardTerminate'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Compatibility')) {
    [object]$__cmdletization_value = ${Compatibility}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Compatibility'; 
ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.CompatibilityEnum'; 
Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Compatibility'; 
ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.CompatibilityEnum'; 
Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DeleteExpiredTaskAfter')) {
    [object]$__cmdletization_value = ${DeleteExpiredTaskAfter}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DeleteExpiredTaskAfter'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DeleteExpiredTaskAfter'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('AllowStartIfOnBatteries')) {
    [object]$__cmdletization_value = ${AllowStartIfOnBatteries}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'AllowStartIfOnBatteries'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'AllowStartIfOnBatteries'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Disable')) {
    [object]$__cmdletization_value = ${Disable}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Disable'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Disable'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('MaintenanceExclusive')) {
    [object]$__cmdletization_value = ${MaintenanceExclusive}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaintenanceExclusive'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaintenanceExclusive'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Hidden')) {
    [object]$__cmdletization_value = ${Hidden}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Hidden'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Hidden'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RunOnlyIfIdle')) {
    [object]$__cmdletization_value = ${RunOnlyIfIdle}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunOnlyIfIdle'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunOnlyIfIdle'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $
__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('IdleWaitTimeout')) {
    [object]$__cmdletization_value = ${IdleWaitTimeout}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IdleWaitTimeout'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IdleWaitTimeout'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('NetworkId')) {
    [object]$__cmdletization_value = ${NetworkId}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NetworkId'; ParameterType 
= 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NetworkId'; ParameterType 
= 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('NetworkName')) {
    [object]$__cmdletization_value = ${NetworkName}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NetworkName'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NetworkName'; 
ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DisallowStartOnRemoteAppSession')) {
    [object]$__cmdletization_value = ${DisallowStartOnRemoteAppSession}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'DisallowStartOnRemoteAppSession'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'DisallowStartOnRemoteAppSession'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('MaintenancePeriod')) {
    [object]$__cmdletization_value = ${MaintenancePeriod}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaintenancePeriod'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaintenancePeriod'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('MaintenanceDeadline')) {
    [object]$__cmdletization_value = ${MaintenanceDeadline}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaintenanceDeadline'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MaintenanceDeadline'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('StartWhenAvailable')) {
    [object]$__cmdletization_value = ${StartWhenAvailable}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'StartWhenAvailable'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'StartWhenAvailable'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DontStopIfGoingOnBatteries')) {
    [object]$__cmdletization_value = ${DontStopIfGoingOnBatteries}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'DontStopIfGoingOnBatteries'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'DontStopIfGoingOnBatteries'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('WakeToRun')) {
    [object]$__cmdletization_value = ${WakeToRun}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'WakeToRun'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'WakeToRun'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('IdleDuration')) {
    [object]$__cmdletization_value = ${IdleDuration}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IdleDuration'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'IdleDuration'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RestartOnIdle')) {
    [object]$__cmdletization_value = ${RestartOnIdle}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RestartOnIdle'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RestartOnIdle'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DontStopOnIdleEnd')) {
    [object]$__cmdletization_value = ${DontStopOnIdleEnd}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DontStopOnIdleEnd'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DontStopOnIdleEnd'; 
ParameterType = 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('ExecutionTimeLimit')) {
    [object]$__cmdletization_value = ${ExecutionTimeLimit}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'ExecutionTimeLimit'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'ExecutionTimeLimit'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('MultipleInstances')) {
    [object]$__cmdletization_value = ${MultipleInstances}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MultipleInstances'; 
ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.MultipleInstancesEnum'; 
Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'MultipleInstances'; 
ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.MultipleInstancesEnum'; 
Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Priority')) {
    [object]$__cmdletization_value = ${Priority}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Priority'; ParameterType = 
'System.Int32'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Priority'; ParameterType = 
'System.Int32'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RestartCount')) {
    [object]$__cmdletization_value = ${RestartCount}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Resta
rtCount'; ParameterType = 'System.Int32'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RestartCount'; 
ParameterType = 'System.Int32'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RestartInterval')) {
    [object]$__cmdletization_value = ${RestartInterval}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RestartInterval'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RestartInterval'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RunOnlyIfNetworkAvailable')) {
    [object]$__cmdletization_value = ${RunOnlyIfNetworkAvailable}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'RunOnlyIfNetworkAvailable'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'RunOnlyIfNetworkAvailable'; ParameterType = 
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
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewSettings', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'New-ScheduledTaskSettingsSet' 
-Alias '*'
  

function New-ScheduledTaskTrigger
{
[CmdletBinding(DefaultParameterSetName='Once', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')][OutputType([Microsoft.Manageme
nt.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimInsta
nce#MSFT_TaskTrigger')][OutputType([Microsoft.Management.Infrastructure.CimInstance])][Ou
tputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')][OutputType(
[Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infr
astructure.CimInstance#MSFT_TaskTrigger')][OutputType([Microsoft.Management.Infrastructur
e.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTri
gger')]
param(

[Parameter(ParameterSetName='Daily', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${Daily},

[Parameter(ParameterSetName='Daily')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[uint32]
${DaysInterval},

[Parameter(ParameterSetName='Daily')]
[Parameter(ParameterSetName='Logon')]
[Parameter(ParameterSetName='Once')]
[Parameter(ParameterSetName='Startup')]
[Parameter(ParameterSetName='Weekly')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${RandomDelay},

[Parameter(ParameterSetName='Daily', Mandatory=$true)]
[Parameter(ParameterSetName='Once', Mandatory=$true)]
[Parameter(ParameterSetName='Weekly', Mandatory=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[datetime]
${At},

[Parameter(ParameterSetName='Logon', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${AtLogOn},

[Parameter(ParameterSetName='Logon')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${User},

[Parameter(ParameterSetName='Once', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${Once},

[Parameter(ParameterSetName='Once')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${RepetitionDuration},

[Parameter(ParameterSetName='Once')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[timespan]
${RepetitionInterval},

[Parameter(ParameterSetName='Startup', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${AtStartup},

[Parameter(ParameterSetName='Weekly')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[System.DayOfWeek[]]
${DaysOfWeek},

[Parameter(ParameterSetName='Weekly', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${Weekly},

[Parameter(ParameterSetName='Weekly')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[uint32]
${WeeksInterval},

[Parameter(ParameterSetName='Daily')]
[Parameter(ParameterSetName='Logon')]
[Parameter(ParameterSetName='Once')]
[Parameter(ParameterSetName='Startup')]
[Parameter(ParameterSetName='Weekly')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Daily')]
[Parameter(ParameterSetName='Logon')]
[Parameter(ParameterSetName='Once')]
[Parameter(ParameterSetName='Startup')]
[Parameter(ParameterSetName='Weekly')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Daily')]
[Parameter(ParameterSetName='Logon')]
[Parameter(ParameterSetName='Once')]
[Parameter(ParameterSetName='Startup')]
[Parameter(ParameterSetName='Weekly')]
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
  { @('Daily') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Daily')) {
    [object]$__cmdletization_value = ${Daily}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Daily'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Daily'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DaysInterval')) {
    [object]$__cmdletization_value = ${DaysInterval}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DaysInterval'; 
ParameterType = 'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DaysInterval'; 
ParameterType = 'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RandomDelay')) {
    [object]$__cmdletization_value = ${RandomDelay}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('At')) {
    [object]$__cmdletization_value = ${At}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'At'; ParameterType = 
'System.DateTime'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'At'; ParameterType = 
'System.DateTime'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewTriggerByDaily', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)
$__cmdletization_objectModelWrapper.ProcessReco
rd($__cmdletization_methodInvocationInfo)
  }
  { @('Logon') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RandomDelay')) {
    [object]$__cmdletization_value = ${RandomDelay}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('AtLogOn')) {
    [object]$__cmdletization_value = ${AtLogOn}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'AtLogOn'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'AtLogOn'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('User')) {
    [object]$__cmdletization_value = ${User}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewTriggerByLogon', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Once') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RandomDelay')) {
    [object]$__cmdletization_value = ${RandomDelay}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('At')) {
    [object]$__cmdletization_value = ${At}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'At'; ParameterType = 
'System.DateTime'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'At'; ParameterType = 
'System.DateTime'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Once')) {
    [object]$__cmdletization_value = ${Once}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Once'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Once'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RepetitionDuration')) {
    [object]$__cmdletization_value = ${RepetitionDuration}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RepetitionDuration'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RepetitionDuration'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RepetitionInterval')) {
    [object]$__cmdletization_value = ${RepetitionInterval}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RepetitionInterval'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RepetitionInterval'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
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
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewTriggerByOnce', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Startup') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RandomDelay')) {
    [object]$__cmdletization_value = ${RandomDelay}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('AtStartup')) {
    [object]$__cmdletization_value = ${AtStartup}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'AtStartup'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'AtStartup'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
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
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewTriggerByStartup', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Weekly') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('RandomDelay')) {
    [object]$__cmdletization_value = ${RandomDelay}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RandomDelay'; 
ParameterType = 'System.TimeSpan'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('DaysOfWeek')) {
    [object]$__cmdletization_value = ${DaysOfWeek}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DaysOfWeek'; ParameterType 
= 'System.DayOfWeek[]'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent 
= $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'DaysOfWeek'; ParameterType 
= 'System.DayOfWeek[]'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
 [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Weekly')) {
    [object]$__cmdletization_value = ${Weekly}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Weekly'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Weekly'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('WeeksInterval')) {
    [object]$__cmdletization_value = ${WeeksInterval}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'WeeksInterval'; 
ParameterType = 'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'WeeksInterval'; 
ParameterType = 'System.UInt32'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('At')) {
    [object]$__cmdletization_value = ${At}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'At'; ParameterType = 
'System.DateTime'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = 
$true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'At'; ParameterType = 
'System.DateTime'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('NewTriggerByWeekly', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'New-ScheduledTaskTrigger' 
-Alias '*'
  

function Register-ScheduledTask
{
[CmdletBinding(DefaultParameterSetName='User', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')][OutputType([Microsoft.Manage
ment.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimIns
tance#MSFT_ScheduledTask')][OutputType([Microsoft.Management.Infrastructure.CimInstance])
][OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')][Outpu
tType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft.Managemen
t.Infrastructure.CimInstance#MSFT_ScheduledTask')]
param(

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
[Parameter(ParameterSetName='Xml')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${Force},

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=2, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Object', Position=4)]
[Parameter(ParameterSetName='User', Position=6)]
[Parameter(ParameterSetName='Xml', Position=4)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Password},

[Parameter(ParameterSetName='Object', Position=3)]
[Parameter(ParameterSetName='User', Position=5)]
[Parameter(ParameterSetName='Xml', Position=3)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${User},

[Parameter(ParameterSetName='Object', Position=0)]
[Parameter(ParameterSetName='Principal', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='User', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='Xml', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object', Position=1)]
[Parameter(ParameterSetName='Principal', Position=1)]
[Parameter(ParameterSetName='User', Position=1)]
[Parameter(ParameterSetName='Xml', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Principal', Position=5)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Principal},

[Parameter(ParameterSetName='Principal', Mandatory=$true, Position=2)]
[Parameter(ParameterSetName='User', Mandatory=$true, Position=2)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Action},

[Parameter(ParameterSetName='Principal', Position=6)]
[Parameter(ParameterSetName='User', Position=8)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Description},

[Parameter(ParameterSetName='Principal', Position=4)]
[Parameter(ParameterSetName='User', Position=4)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Settings},

[Parameter(ParameterSetName='Principal', Position=3)]
[Parameter(ParameterSetName='User', Position=3)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Trigger},

[Parameter(ParameterSetName='User', Position=7)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum]
${RunLevel},

[Parameter(ParameterSetName='Xml', Mandatory=$true, Position=2, 
ValueFromPipeline=$true)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Xml},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
[Parameter(ParameterSetName='Xml')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
[Parameter(ParameterSetName='Xml')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
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
  if ($PSBoundParameters.ContainsKey('Force')) {
    [object]$__cmdletization_value = ${Force}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
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
  if ($PSBoundParameters.ContainsKey('Password')) {
    [object]$__cmdletization_value = ${Password}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('User')) {
    [object]$__cmdletization_value = ${User}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = [Microsoft.PowerShell.Cmdlet
ization.MethodParameter]@{Name = 'User'; ParameterType = 'System.String'; Bindings = 
'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
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
  { @('Principal') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Force')) {
    [object]$__cmdletization_value = ${Force}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Principal')) {
    [object]$__cmdletization_value = ${Principal}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Principal'; ParameterType 
= 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Principal'; ParameterType 
= 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal'
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('RegisterByPrincipal', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('User') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Force')) {
    [object]$__cmdletization_value = ${Force}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance[]'; Bindings = 'In'; Value = $__cmd
letization_value; IsValuePresent = $true}
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
  if ($PSBoundParameters.ContainsKey('User')) {
    [object]$__cmdletization_value = ${User}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Password')) {
    [object]$__cmdletization_value = ${Password}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
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
  if ($PSBoundParameters.ContainsKey('RunLevel')) {
    [object]$__cmdletization_value = ${RunLevel}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunLevel'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum'; Bindings 
= 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'RunLevel'; ParameterType = 
'Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum'; Bindings 
= 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('RegisterByUser', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Xml') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Force')) {
    [object]$__cmdletization_value = ${Force}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Force'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

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
  if ($PSBoundParameters.ContainsKey('Password')) {
    [object]$__cmdletization_value = ${Password}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('User')) {
    [object]$__cmdletization_value = ${User}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocatio
nInfo = [Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('RegisterByXml', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Register-ScheduledTask' -Alias 
'*'
  

function Set-ScheduledTask
{
[CmdletBinding(DefaultParameterSetName='User', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])][OutputType('Microsoft
.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')][OutputType([Microsoft.Manage
ment.Infrastructure.CimInstance])][OutputType('Microsoft.Management.Infrastructure.CimIns
tance#MSFT_ScheduledTask')][OutputType([Microsoft.Management.Infrastructure.CimInstance])
][OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
param(

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Object', Position=1)]
[Parameter(ParameterSetName='User', Position=6)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${Password},

[Parameter(ParameterSetName='Object', Position=2)]
[Parameter(ParameterSetName='User', Position=5)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${User},

[Parameter(ParameterSetName='Principal', Position=5)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Principal},

[Parameter(ParameterSetName='Principal', Position=2)]
[Parameter(ParameterSetName='User', Position=2)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Action},

[Parameter(ParameterSetName='Principal', Position=1)]
[Parameter(ParameterSetName='User', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Principal', Position=4)]
[Parameter(ParameterSetName='User', Position=4)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${Settings},

[Parameter(ParameterSetName='Principal', Position=3)]
[Parameter(ParameterSetName='User', Position=3)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance[]]
${Trigger},

[Parameter(ParameterSetName='Principal', Mandatory=$true, Position=0)]
[Parameter(ParameterSetName='User', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Principal')]
[Parameter(ParameterSetName='User')]
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
  if ($PSBoundParameters.ContainsKey('Password')) {
    [object]$__cmdletization_value = ${Password}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('User')) {
    [object]$__cmdletization_value = ${User}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
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
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
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
  { @('Principal') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('Principal')) {
    [object]$__cmdletization_value = ${Principal}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Principal'; ParameterType 
= 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Principal'; ParameterType 
= 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal'
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
  if ($PSBoundParameters.ContainsKey('Trigger')) {
    [object]$__cmdletization_value = ${Trigger}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Trigger'; ParameterType = 
'Microsoft.Management.I
nfrastructure.CimInstance[]'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('SetByPrincipal', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('User') -contains $_ } {
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
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
  if ($PSBoundParameters.ContainsKey('Password')) {
    [object]$__cmdletization_value = ${Password}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Password'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent 
= $__cmdletization_defaultValueIsPresent}
  }
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('User')) {
    [object]$__cmdletization_value = ${User}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'User'; ParameterType = 
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
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'CmdletOutput'; 
ParameterType = 'Microsoft.Management.Infrastructure.CimInstance'; Bindings = 'Out'; 
Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
  $__cmdletization_methodParameter.ParameterTypeName = 
'Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask'
  $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('SetByUser', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Set-ScheduledTask' -Alias '*'
  

function Start-ScheduledTask
{
[CmdletBinding(DefaultParameterSetName='Path', PositionalBinding=$false)]


param(

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=1, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Path', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Path', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Path')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Path')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Path')]
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
Value = $__cmdletization_value; IsValuePre
sent = $true}
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

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('StartByObject', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Path') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('StartByPath', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Start-ScheduledTask' -Alias '*'
  

function Stop-ScheduledTask
{
[CmdletBinding(DefaultParameterSetName='Path', PositionalBinding=$false)]


param(

[Parameter(ParameterSetName='Object', Mandatory=$true, Position=1, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ciminstance]
${InputObject},

[Parameter(ParameterSetName='Path', Position=1)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskPath},

[Parameter(ParameterSetName='Path', Mandatory=$true, Position=0)]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[string]
${TaskName},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Path')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Path')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='Object')]
[Parameter(ParameterSetName='Path')]
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

$__cmdletization_returnValue = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; 
ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = 
$false }
$__cmdletization_methodInvocationInfo = 
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('StopByObject', 
$__cmdletization_methodParameters, $__cmdletization_returnValue)

$__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_methodInvocationInfo)
  }
  { @('Path') -contains $_ } {
  [object]$__cmdletization_defaultValue = $null
  [object]$__cmdletization_defaultValueIsPresent = $false
  if ($PSBoundParameters.ContainsKey('TaskPath')) {
    [object]$__cmdletization_value = ${TaskPath}
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
  } else {
    $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'TaskPath'; ParameterType = 
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
[Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('StopByPath', 
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

# .EXTERNALHELP PS_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Stop-ScheduledTask' -Alias '*'