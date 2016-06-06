# Challenge 9.1: Release 1

**What are some of the key design philosophies of the Linux operating system?**

Linux provides the maximum amount of power to the user.
Tenets to the Linux philosophy includes:

* Small is Beautiful
* Each Program Does One Thing Well
* Prototype as Soon as Possible
* Choose Portability Over Efficiency
* Store Data in Flat Text Files
* Use Software Leverage
* Use Shell Scripts to Increase Leverage and Portability
* Avoid Captive User Interfaces
* Make Every Program a Filter

Sources:
https://opensource.com/business/14/12/linux-philosophy
https://opensource.com/business/15/2/how-linux-philosophy-affects-you



**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

A VPS is a virtual machine which emulates an operating system. 
Advantages include:

* they offer a safe place to experiment with Linux, the command line, and web development in general
* it has more stability and reliability for basic web hosting needs
* it has more control compared to shared hosting
* it can be cost efficient
* it provides easy scalability



**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

It is good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis. You want to keep security high, and prevent all your applications from having access to everything else in your machine. If an application has root access, things including small bugs, vulnerabilities, and viruses will be able to do major damage. This is preventable if you run programs as a normal user instead.

