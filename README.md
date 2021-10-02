# NASM**
#here you will find full information with screenshots
https://github.com/WaleedAkramChattha/NASM/tree/main/nasm



COMPUTER ORGANIZATION AND ASSEMBLY LANGUAGE


NAME : WALEED AKRAM
ROLL NO :20P-0640
SECTION : 2-B
INSTRUCTOR : DR.USMAN ABBASI
							
							
ASSEMBLY  LANGUAGE

Assembly language is a low-level programming language for a computer or other programmable device specific to a particular computer architecture in contrast to most high-level programming languages, which are generally portable across multiple systems. Assembly language is converted into executable machine code by a utility program referred to as an assembler like NASM, MASM, etc.

To run and execute our assembly code we will need DOSBOX (because it is a debugger)and NASM (because it is a  assembler) both.

Installing DOSBOX
Install dosbox by entering the following commands in the terminal:
$ sudo apt update
$ sudo apt install dosbox
x86 emulator with Tandy/Herc/CGA/EGA/VGA/SVGA graphics, sound and DOS
DOSBox is a x86 emulator with Tandy/Hercules/CGA/EGA/VGA/SVGA graphics, sound and DOS. It's been designed to run old DOS games under platforms that don't support it. (Win2k/XP/FreeBSD/Linux/MAC OS X) . The following legacy sound devices are emulated: PC Speaker, Creative CMS/Gameblaster, Tandy 3 voice, Adlib, Sound Blaster Pro/16, Disney Soundsource and a Gravis Ultrasound. MPU-401 is forwarded to the host.
Homepage:http://www.dosbox.com/



Installing NASM

If you select "Development Tools" while installing Linux, you may get NASM installed along with the Linux operating system and you do not need to download and install it separately. For checking whether you already have NASM installed, take the following steps −
Open a Linux terminal.
Type whereis nasm and press Enter.

If it is already installed ,then a line like( nasm: /usr/bin/nasm ) appears. Otherwise,you
will see just nasm:, then you need to install NASM.

To install NASM you should go to below link:
	https://github.com/WaleedAkramChattha/Softwares/blob/main/NASM-main.zip
After downloading zip folder extract it in your home directory .Open extracted folder make a new file with extension (.asm) assembly code is given below:
org 0x0100
    mov     ax,5   
    mov     bx,3  
    mov     ebx,1   
    add     ax,bx   
    mov     ax,0x4c00  
    int     0x21

Then open terminal (Ctrl + Alt + t).
use below command to run DOSBOX
$ dosbox  then press ENTER
 
          
Now mount folder in c:
use below command 
mount c /home/username/foldername

now press commands given below
c:
dir

Now give commands 
c:\> NASM assemblyfilename.asm -o  assemblyfilename.com
c:\> afd assemblyfilename.com

TASK DONE
