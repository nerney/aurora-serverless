# aurora-serverless

## This poc will use Serverless Framework with Golang on AWS with an Aurora Serverless database.

- NEED DB CLUSTER - would prefer to do it all in CloudFormation in serverless.yml IF POSSIBLE
  but for getting things going we might just need to set one up and reverse engineer the
  CF process.

- We are going to need a package to connect to the DB. I am of two minds. Either, we don't even mess with CF at this time and use the Data API for Aurora Serverless and use the aws-sdk rdsdata thing whatever it's called to allow direct access to your cluster without having to make a mysql connection. It's still in beta and not supposed to be very fast, but it would be pretty crazy to get that working.

- We'll seed some data in the DB and have the fetch function just make a query at this time. It's more about the arch at first.

- I'll wanna integrate with CodeBuild for deploying, will need to have node to install serverless for the deploy after using Go stuff to prepare the binaries, so that will be a little more interesting.

- super simple CodePipeline that just watches for change on master branch and runs the codebuild job
