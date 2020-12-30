# iosbuildsystem
This is demo project to learn the ios build pipeline just like jenkins

# Step 1

Lets first set up the xcode project.

Check you have already install cocoapods in your mac, if not run below command to install it.

sudo gem install cocoapods

# Step 2

Create the xcode project
open terminal and go to root folder of recently create project and create the pod file by entering below command.

pod init

# Step 3

Now in the same root directory add one more folder vermasdk and add vermasdk.swift which has some public class and api. (This is our library folder where all files are there and when we run pod install, all files from this location will get install in our pod project folder)

# Step 4

Create the pod spec file

pod spec create vermasdk

open the podspec file and update the required enter as shown in vermasdk.podspec

# Step 5

Now commit and push the tag as mentioned in vermasdk.podspec

git add -A && git commit -m "Release 0.0.1."

git tag '0.0.1'

git push --tags


# Step 6

Now go to path in terminal to podspec directory and run below commands one by one.

pod repo add vermapodspec https://github.com/vermamukesh67/iosbuildsystem.git

pod repo push  vermapodspec --sources='https://github.com/vermamukesh67/iosbuildsystem/blob/main/vermasdk.podspec' --allow-warnings




