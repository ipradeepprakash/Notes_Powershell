# ----------- Wayne Scheffield - Day2 -a-month-of-powershell (Security) ------------

<#

ref: https://blog.waynesheffield.com/wayne/archive/2013/02/a-month-of-powershell-day-3-security/
     https://blog.waynesheffield.com/wayne/a-month-of-powershell/



#>
Get-Process | Where-Object ProcessName -EQ 'chrome' | Out-GridView

# Execution Policy
<#
PowerShell comes configured in, well, “Safe Mode”, and its default security setting doesn’t allow for running scripts.

# check security settings of Execution policy
Get-Executionpolicy
- Bypass            : Nothing is blocked and there are no warnings or prompts.
- Unrestricted      : Loads all configuration files and runs all scripts. 
                      If you run an unsigned script that was downloaded from the Internet, you are prompted for permission before it runs.
- Restricted        : Does not load configuration files or run scripts. “Restricted” is the default execution policy.
- AllSigned         : Requires that all scripts and configuration files be signed by a trusted publisher, including scripts that you write on the local computer.
- RemoteSigned      : Requires that all scripts and configuration files downloaded from the Internet be signed by a trusted publisher.
- Undefined         : Removes the currently assigned execution policy from the current scope. This parameter will not remove an execution policy that is set in a Group Policy scope.

# to set the execution policy to any of the above parameters
Set-ExecutionPolicy <parameter>
i.e. 
Set-ExecutionPolicy RemoteSigned.
Set-ExecutionPolicy Unrestricted


# -----------  ------------








#>
































