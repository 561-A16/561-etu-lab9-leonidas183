#!/bin/bash

set -ev
#Web app source code
cd webapp
dotnet restore
#dotnet ef database update

#Tests
cd ../webapp.unittests
dotnet restore
dotnet test

#Publish
cd ../webapp
dotnet publish --output ~/publish

