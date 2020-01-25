#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"JA")]
[assembly: AssemblyProduct(@"Attack")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"JA.Attack.DslPackage, PublicKey=002400000480000094000000060200000024000052534131000400000100010019DE5172D10DFF161D2FBBFF342194E090380E5AA738C49CE240320DF7ED3127C86B00C65547537ED35DEF4ADBB5AADB3735A8D6A97144B71A34B1413A86BB0F99FAE1AD66A921D58DD105916B252A6C46EC7D0029C41F492B8AAE8C81A7F0153710AB91DCA4C670A9BA55A7E3D08EF28466C13D9CDBA94B4507D45493AC86AB")]