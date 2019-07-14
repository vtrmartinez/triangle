# Configure the environment to Mobile Android automation

Instalation and configuration, to execute the mobile tests, using calabash-android with Cucumber.

## Open the terminal and execute the steps:

* Install homebrew

		$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

* Install rvm

		$ curl -sSL https://get.rvm.io | bash

* Give permission on Gems

		$ sudo chown -R `whoami` /Library/Ruby/Gems

* Install bundle

		$ gem install bundler

* Install Android SDK

		$ brew install android-sdk
		$ brew install android-platform-tools

* Install Java

		- https://www.java.com/pt_BR/download/faq/java_mac.xml

* Install JDK

		- http://www.oracle.com/technetwork/pt/java/javase/downloads

### Install Android Studio

* Download:

		- http://tools.android.com/download/studio/stable

### Install Android dependencies

* Execute the commands on terminal:

		$ cd /Users/{usuario}/Library/Android/sdk/tools
		$ open android

* On the screen of SDK manager select all the packages
    
    ![alt tag](https://puu.sh/sRKbk/c28a19e0e4.png)
    ![alt tag](https://puu.sh/sRKf2/e896fe7418.png)
    ![alt tag](https://puu.sh/sRKg8/a366a26484.png)
    
		
### Configure environments variables

* Execute the commands on terminal:
    
        $ vim .bash_profile
        On vim touch (I)
        Paste theses variables
        $ export ANDROID_HOME=/Users/{usuario}/Library/Android/sdk/
        $ export PATH=$PATH:$ANDROID_HOME/platform-tools
        Touch (ZZ) to close and save
        $ source ~/.bash_profile
        
--------------------------------------------------------------------------------

# Create the project
 
* Create the project folder
 
        - Access through the terminal the path where you want to create the project folder: $ cd ~/<diretório>
        $ mkdir <project_name>
        - Access the folder created: $ cd ~/<Nome da pasta>

* Create the structure

        $ calabash-android gen <Nome_projeto>
--------------------------------------------------------------------------------


# Execute the tests

* Open the Android Studio and create a emulator to run the tests

 		- Access Android Studio > AVD Manager > Create Virtual Device

* Open the project folder and run the commands:

	 	$ cd ~/<project_folder>

* Sign the app on device

		$ calabash-android resign <PATH.apk>

* Execute the tests

		$ calabash-android run <PATH.apk>
