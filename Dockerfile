FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["PoojaStores/PoojaStores.csproj", "PoojaStores/"]
RUN dotnet restore "PoojaStores/PoojaStores.csproj"
COPY . .
WORKDIR "/src/PoojaStores"
RUN dotnet build "PoojaStores.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "PoojaStores.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "PoojaStores.dll"]
