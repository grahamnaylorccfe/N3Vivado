# N3Vivado
Vivado project for the TE0722 based N3
to update Git repository:

cd Dropbox/N3workingG
cd TE0722Rebuild/N3Vivado/
git add -A
git commit -m "Comment"
git push

(Enter username grahamnaylorccfe and password)
if you get the error:
fatal: Reference has invalid format: 'refs/remotes/origin/master
then look for conflicting copy files in refs/ and delete them



From within directory
cd Dropbox/N3workingG/TE0722Rebuild/ZynqStuff/


To create bin file:
/opt/Xilinx/SDK/2014.4/bin/bootgen -image N3.bif -w -o BOOT.bin

To program flash:
/opt/Xilinx/SDK/2014.4/bin/zynq_flash -f BOOT.bin -flash_type qspi_single -verify

Git push history:

..
Production version (BOOT_prod2.bin) 2/6/2016
Corrected for Bluetooth volume (AGC - BOOT_prod4.bin GV06)


Switching between Production 1 build and the prototype build design
i) For proto, set f target to 48.5169 in the clock wizard and 49.162 for the production build
ii) Use PrototypeConstraints.xdc for proto and n3_te0722a5_clock.xdc for production (in ~\N3Vivado\TE0722\TE0722.srcs\constrs_1\imports\VivadoProject )

