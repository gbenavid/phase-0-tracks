What are some of the key design philosophies of the Linux operating system?

I liked this snippet from: https://opensource.com/business/14/12/linux-philosophy

"And therein lies the truth about Linux. It never assumes that the user is incompetent. It always assumes you know what you are doing and allows you do do anything you tell it to. Anything. Whether it is unintentionally bad or not. That is a huge amount of power in the hands of a user.

Linux treats everyone equally and allows everyone the maximum amount of power. That is egalitarian. Other operating systems are elitist and exclusive because they withhold or hide their power behind an inflexible Graphical User Interface that allows one to do only what the developers think we should be allowed to do.
[....]
It assumes you know what you are doing when you type a command and it proceeds to execute that command without asking if you really want to. It gives you complete control.

Imagine for a moment the chaos and frustration that would result from attempting to use a nail gun that asked you if you really wanted to shoot that nail and would not allow you to pull the trigger until you said the word “yes” aloud. Linux allows you to use the nail gun as you choose. Other operating systems let you know that you can use nails but don't tell you what tool is used to insert the nails let alone allow you to put your own finger on the trigger.
"
--David Both

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
..* A virtual private server is a server that is partitioned so that it has its own operating system, disc space, and bandwidth. Because it acts as a dedicated server this is a good interim solution for sites that may need a dedicated server in the future but are not yet ready for it. VPS hosting is a good bridge between shared hosting and dedicated hosting.

..* Without a need for a physical server VPS are cheaper
..* VPS can be customized to what you need, and upgraded as you go along with your site. Features can be added or skipped. 
..* Scalable 
..* Root access is given for greater control.
DISADVANTAGES WITH VPS
..* More expensive than shared hosting
..* Disproportionate allocations of resources among accounts. If each account is using it's resources at peak levels, it may cause server issues that may affect all other sites on the server. 
http://www.webhostinghub.com/web-hosting-guide/the-pros-and-cons-of-vps-web-hosting


Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

..* Its just good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis. This supports the security model that is in place, and applications are meant to run on non-administrative security. This prevents your shell from being wiped out in case an attacker approaches your system, you would want to preserve your root directory and instead work on a user level. 
When you're logged as root, you can do everything -- the system won't ask! That's because the Linex philosophy assumes you know what you're doing.