//Sdk.csx

#r "EnvDTE.dll"
#r "EnvDTE80.dll"
#r "Microsoft.VisualStudio.Shell.11.0.dll"

using EnvDTE;
using EnvDTE80;
using Microsoft.VisualStudio.Shell;

var DTE = Package.GetGlobalService(typeof(DTE)) as DTE2;
var textDoc = (TextDocument)DTE.ActiveDocument.Object("TextDocument");
var editPoint = (EditPoint)textDoc.StartPoint.CreateEditPoint();
editPoint.Insert("Hello, World!");