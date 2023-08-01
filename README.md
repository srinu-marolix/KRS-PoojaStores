Project Breif:

PoojaStores, a shopping mart specializing in Divine Items and spiritual products. We are pleased to inform you that
our online platform, developed using DotNet technology, is now operational and ready for customers to make
purchases.

1. Prerequisites:
- [.NET SDK] (https://dotnet.microsoft.com/en-us/download) - Make sure you have the appropriate .NET SDK
version installed. Specify the required version for the project (PoojaStores.csproject).
- [Other dependencies] - List any other external dependencies required for the project, such as databases, APIs,
etc., and provide links to install or set them up.
2. Cloning the Project:
- Provide instructions on how to clone the project from the version control repository (e.g., GitHub).
  $ git clone <repository_url>
- Change the working directory to the project folder:
  $ cd <project_directory>
3. Configuration:
- Describe any configuration files or environment variables that need to be set before running the project.
- If there are any sensitive configurations (e.g., API keys, database credentials), advise how to store them
securely (e.g., environment variables).
- By Creating .env files, we can secure.
4. Database Setup:
- If the project requires a database, provide instructions on how to set it up, including creating tables and
seeding data.
  $ dotnet ef database update
5. Building the Project:
- Describe the build process to compile the code:
  $ dotnet build
6. Running the Project:
- Provide instructions to run the application:
  $ dotnet run
- Specify any command-line arguments or options that can be used when running the project.
7. Accessing the Application:
- Indicate the URL or port where the application can be accessed once it's running.
http://publicip/localhost:5000
- Make sure that, If you are using ec2-instances, security port should be open in security groups.
8. Troubleshooting:
- Offer solutions to common issues that might be encountered during the setup or running of the project.

Or

  Using Docker
  Install Docker Software

  - Pull Docker Image by using below Command
  docker pull krssrinivas/poojastores:1

  - Create Container using following Command
   docker run -d -p 5000:5000 --name KRSContainer-Poojastores krssrinivas/poojastores:1
  
  Access it thru web by
  http://publicip/localhost:5000
