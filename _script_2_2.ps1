#requires -version 3.0

try { Microsoft.PowerShell.Core\Set-StrictMode -Off } catch { }

$script:MyModule = $MyInvocation.MyCommand.ScriptBlock.Module

$script:ClassName = 
'ROOT/StandardCimv2/MSFT_NetAdapterEncapsulatedPacketTaskOffloadSettingData'
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
          

function Get-NetAdapterEncapsulatedPacketTaskOffload
{
[CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterEncapsulatedPacketTaskOffloadSettingData')]

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

# .EXTERNALHELP MSFT_NetAdapterEncapsulatedPacketTaskOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Get-NetAdapterEncapsulatedPacketTaskOffload' -Alias '*'
  

function Set-NetAdapterEncapsulatedPacketTaskOffload
{
[CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, 
ConfirmImpact='Medium', PositionalBinding=$false)]

[OutputType([Microsoft.Management.Infrastructure.CimInstance])]
[OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetA
dapterEncapsulatedPacketTaskOffloadSettingData')]

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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterEncapsula
tedPacketTaskOffloadSettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[bool]
${NvgreEncapsulatedPacketTaskOffloadEnabled},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[bool]
${VxlanEncapsulatedPacketTaskOffloadEnabled},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[ValidateRange(1, 65535)]
[uint16]
${VxlanUDPPortNumber},

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
    if 
($PSBoundParameters.ContainsKey('NvgreEncapsulatedPacketTaskOffloadEnabled')) {
      [object]$__cmdletization_value = ${NvgreEncapsulatedPacketTaskOffloadEnabled}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'NvgreEncapsulatedPacketTaskOffloadEnabled'; ParameterType = 'System.Boolean'; Bindings 
= 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'NvgreEncapsulatedPacketTaskOffloadEnabled'; ParameterType = 'System.Boolean'; Bindings 
= 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if 
($PSBoundParameters.ContainsKey('VxlanEncapsulatedPacketTaskOffloadEnabled')) {
      [object]$__cmdletization_value = ${VxlanEncapsulatedPacketTaskOffloadEnabled}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'VxlanEncapsulatedPacketTaskOffloadEnabled'; ParameterType = 'System.Boolean'; Bindings 
= 'In'; Value = $__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 
'VxlanEncapsulatedPacketTaskOffloadEnabled'; ParameterType = 'System.Boolean'; Bindings 
= 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = 
$__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('VxlanUDPPortNumber')) {
      [object]$__cmdletization_value = ${VxlanUDPPortNumber}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'VxlanUDPPortNumber'; 
ParameterType = 'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'VxlanUDPPortNumber'; 
ParameterType = 'System.UInt16'; Bindings = 'In'; Value = $__cmdletization_defaultValue; 
IsValuePresent = $__cmdletization_defaultValueIsPresent}
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

# .EXTERNALHELP MSFT_NetAdapterEncapsulatedPacketTaskOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Set-NetAdapterEncapsulatedPacketTaskOffload' -Alias '*'
  

function Enable-NetAdapterEncapsulatedPacketTaskOffload
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterEncapsula
tedPacketTaskOffloadSettingData')]
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
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterEncapsulatedPacketTaskOf
fload.EncapsulationType]
${EncapsulationType},

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
          $__cmdletization_objectModelWrapper.Initialize($PSCmdlet, $script:C
nputObject (cdxml)')]
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

# .EXTERNALHELP MSFT_NetAdapterUro.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterUro' -Alias '*'
  

function Disable-NetAdapterUro
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterUroSettin
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

# .EXTERNALHELP MSFT_NetAdapterUro.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterUro' -Alias 
'*'
er(ParameterSetName='ByInstanceID')]
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
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NoRestart'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NoRestart'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'PassThru'; ParameterType = 
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

# .EXTERNALHELP MSFT_NetAdapterIPsecOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Enable-NetAdapterIPsecOffload' 
-Alias '*'
  

function Disable-NetAdapterIPsecOffload
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterIPsecOffl
oadV2SettingData')]
[ValidateNotNull()]
[ciminstance[]]
${InputObject},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
[switch]
${NoRestart},

[Parameter(ParameterSetName='ByName')]
[Parameter(ParameterSetName='ByInstanceID')]
[Parameter(ParameterSetName='InputObject (cdxml)')]
[ValidateNotNull()]
[ValidateNotNullOrEmpty()]
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
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NoRestart'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NoRestart'; ParameterType 
= 'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
    $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('PassThru')) {
      [object]$__cmdletization_value = ${PassThru}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'PassThru'; ParameterType = 
'System.Management.Automation.SwitchParameter'; Bindings = 'In'; Value = 
$__cmdletization_value; IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'PassThru'; ParameterType = 
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

# .EXTERNALHELP MSFT_NetAdapterIPsecOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 'Disable-NetAdapterIPsecOffload' 
-Alias '*'
lassName, $script:ClassVersion, $script:ModuleVersion, $script:PrivateData)

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

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('EncapsulationType')) {
      [object]$__cmdletization_value = ${EncapsulationType}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'EncapsulationType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterEncapsulated
PacketTaskOffload.EncapsulationType'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'EncapsulationType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterEncapsulated
PacketTaskOffload.EncapsulationType'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
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

# .EXTERNALHELP MSFT_NetAdapterEncapsulatedPacketTaskOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Enable-NetAdapterEncapsulatedPacketTaskOffload' -Alias '*'
  

function Disable-NetAdapterEncapsulatedPacketTaskOffload
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
[PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapterEncapsula
tedPacketTaskOffloadSettingData')]
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
[Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterEncapsulatedPacketTaskOf
fload.EncapsulationType]
${EncapsulationType},

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

    [object]$__cmdletization_defaultValue = $null
    [object]$__cmdletization_defaultValueIsPresent = $false
    if ($PSBoundParameters.ContainsKey('EncapsulationType')) {
      [object]$__cmdletization_value = ${EncapsulationType}
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'EncapsulationType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterEncapsulated
PacketTaskOffload.EncapsulationType'; Bindings = 'In'; Value = $__cmdletization_value; 
IsValuePresent = $true}
    } else {
      $__cmdletization_methodParameter = 
[Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'EncapsulationType'; 
ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterEncapsulated
PacketTaskOffload.EncapsulationType'; Bindings = 'In'; Value = 
$__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent}
    }
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

# .EXTERNALHELP MSFT_NetAdapterEncapsulatedPacketTaskOffload.cdxml-Help.xml
}
Microsoft.PowerShell.Core\Export-ModuleMember -Function 
'Disable-NetAdapterEncapsulatedPacketTaskOffload' -Alias '*'