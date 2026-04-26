#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 'Root/Microsoft/Windows/TaskScheduler/MSFT_ScheduledTask'
$script:ClassVersion = ''
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
          

function Get-ScheduledTask
{
[CmdletBinding(DefaultParameterSetName='ByPath', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#Root/Microsoft/Windows/TaskS
cheduler/MSFT_ScheduledTask')]

param(

[Parameter(ParameterSetName='ByPath', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[string[]]
${TaskName},

[Parameter(ParameterSetName='ByPath', Position=1, 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[string[]]
${TaskPath},

[Parameter(ParameterSetName='ByPath')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByPath')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='ByPath')]
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
if ($PSBoundParameters.ContainsKey('TaskName') -and (@('ByPath') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${TaskName})
  $__cmdletization_queryBuilder.FilterByProperty('TaskName', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('TaskPath') -and (@('ByPath') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${TaskPath})
  $__cmdletization_queryBuilder.FilterByProperty('TaskPath', 
$__cmdletization_values, $true, 'Default')
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

# .EXTERNALHELP MSFT_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Get-ScheduledTask' -Alias '*'
  

function Unregister-ScheduledTask
{
[CmdletBinding(DefaultParameterSetName='ByPath', SupportsShouldProcess=$true, 
ConfirmImpact='High', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#Root/Microsoft/Windows/TaskS
cheduler/MSFT_ScheduledTask')]

param(

[Parameter(ParameterSetName='ByPath', Position=0, 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[string[]]
${TaskName},

[Parameter(ParameterSetName='ByPath', Position=1, 
ValueFromPipelineByPropertyName=$true)]
[ValidateNotNull()]
[string[]]
${TaskPath},

[Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, 
ValueFromPipeline=$true)]
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByPath')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[Alias('Session')]
[ValidateNotNullOrEmpty()]
[CimSession[]]
${CimSession},

[Parameter(ParameterSetName='ByPath')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[int]
${ThrottleLimit},

[Parameter(ParameterSetName='ByPath')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[switch]
${AsJob},

[Parameter(ParameterSetName='ByPath')]
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
if ($PSBoundParameters.ContainsKey('TaskName') -and (@('ByPath') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${TaskName})
  $__cmdletization_queryBuilder.FilterByProperty('TaskName', 
$__cmdletization_values, $true, 'Default')
}
if ($PSBoundParameters.ContainsKey('TaskPath') -and (@('ByPath') -contains 
$PSCmdlet.ParameterSetName )) {
  $__cmdletization_values = @(${TaskPath})
  $__cmdletization_queryBuilder.FilterByProperty('TaskPath', 
$__cmdletization_values, $true, 'Default')
}


$__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerS
hell.Cmdletization.MethodParameter]]::new()
switch -exact ($PSCmdlet.ParameterSetName) { 
  { @('ByPath', 'InputObject (cdxml)') -contains $_ } {
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

# .EXTERNALHELP MSFT_ScheduledTask_v1.0.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Unregister-ScheduledTask' 
-Alias '*'