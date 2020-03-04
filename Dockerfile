# STAGE01 - Build application and its dependencies
FROM mcr.microsoft.com/dotnet/core/sdk:latest AS build-env
WORKDIR /app
COPY *.csproj ./
COPY . ./
RUN ["dotnet", "restore"] 

# STAGE02 - Publish the application
FROM build-env AS publish
RUN dotnet publish -c Release -o /app

# STAGE03 - Create the final image
FROM mcr.microsoft.com/dotnet/core/aspnet:latest
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "ikbelwebapp.dll", "--server.urls", "http://*:80"]
