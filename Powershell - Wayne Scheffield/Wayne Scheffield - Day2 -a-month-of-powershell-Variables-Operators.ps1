<#
    Day2: Variables & Operators
    ------------------------------
    1. The syntax for a variable is the name of that variable preceded by a dollar sign ($). 
    ex: $i = 123
    2. When the variable is defined and a value is assigned to it, an appropriate .NET data type is created.
        ex: For instance, $MyVariable = 123 creates the variable $MyVariable with a System.Int32 data type and assigns the value 123 to it.
    3. String variables are assigned by using quotation marks ('' or "")
        However, there is a difference in how they operate. 
        - Single quotation marks use the literal value inside the quotation marks as the string (This means that the content within the single quotes is treated exactly as written.). 
        Double quotation marks will perform string substitution of other variables in the string. Let’s look at a quick example:
    4. You can assign variables to specific .NET data types by preceding the variable declaration with the data type:
        [int]$A = 50
        

#>

# single quotes

    $i = 3
    $s = 'hello'
    $s2 = "$s $i"
    $s2

# double quotes
    $q = "SELECT  TOP (1000)"
    $q = $q + "        [BusinessEntityId],"
    $q = $q + "        [FirstName],"
    $q = $q + "        [LastName]"
    $q = $q + "  FROM  [AdventureWorks2012].[dbo].[Person];"

# Or by the use of a “here-string”:

$q = @"
SELECT  TOP (1000)
        [BusinessEntityId],
        [FirstName],
        [LastName]
  FROM  [AdventureWorks2012].[dbo].[Person];
"@
$q

<# 
    Special Variables: PowerShell has a few variables that are automatically created, as seen in the following table:
    Command	                                    Description
    --------------------------------------------------------------------------------------------
    Get-Help about_automatic_variables	        Variables that store PowerShell state information.
    Get-Help about_preference_variables	        Variables that customize PowerShell behavior.
    Get-Help about_environment_variables	    Working with Windows environment variables within PowerShell.

#>

# these are Powershell managed variables and cannot be used for user defined
# https://www.powershelltutorial.net/PS-Script/understanding-automatic-variables-in-powershell.aspx

Get-Help about_automatic_variables	
    <# 
    $$                  - last token used in last line of the cmdlet/code
    $?                  - contains last state of the operation. give True if exec was success, else FALSE.
    $^                  - Contains the first token in the last line received by the shell
    $_                  - Contains the current object in the pipeline object.
    $Args               - Contains the current object in the pipeline object.
    $ConsoleFileName    - Stores the filename of the most recently reported console file
    $PSCulture          - Contains the current culture used by the OS.
    $Error              - An array of error objects representing the most recent errors.
    $ExecutionContext   - Contains the EngineIntristics objects that represents the execution context of the Windows PowerShell host.
    $False              - It contains the value False.
    $ForEach            - Contains the enumerator of a foreach-object loop.
    $Home               - Stores the full path to the user's home directory.
    $Host               - Current host application for Windows PowerShell.
    $Input              - Contains the object currently in the pipeline in the Process block of a function.
    $LastExitCode       - Contains the exit code of the last Windows program executed.
    $MyInvocation       - Contains information about the current command. Useful for dynamically retrieving the filename and path of the current script.
    $PID                - Contains the process identifier of the Windows PowerShell process.
    $Profile            - Stores the full path to the Windows PowerShell user profile for the default shell.
    $PSHome             - Stores the full path to the installation of Windows PowerShell.
    $PSVersionTable     - A hash table containing details about the version and build of the current Windows PowerShell console.
    $Pwd                - Stores the full path to the current directory.

#>

<#

-------------- Arrays: -----------------

- data structures designed to store a collection of items, which can be of the same type or of different types.
example:
$a = 1,2,3,4,5
$b = 6..10
$c = @("string1","string2","string3")
$d = ()


#>

<#

-------------- Hash Tables --------------------
A hash table is simply a Name-Value pair.

$Z = @{"Colorado" = "Denver"; "Virginia" = "Richmond"; "North Carolina" = "Raleigh"}
$Z.Add("Alaska", "Fairbanks")


#>




















