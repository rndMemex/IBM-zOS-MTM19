# IBM-z-MTM19

- **Part 1**: Learn the basics of navigation, files and programs.
- **Part 2**: Practice programming languages, operating systems and technologies.
- **Part 3**: Participate in real-world challenges.


Following are the commands needed to complete the programming contest successfully.

- **b**: to browse
- **c**: copy one line
- **cc**: copy multiple lines (e.g. tab on line `'00001'` and type cc to have `'cc001`, tab on line `'00031'` to have `'cc 31'`. This will copy the content from line `00001` to line `00031`)
- **cols**: display columns
- **e**: edit
- **end;return**: to save your work and return to `ISPF Primary Option Menu`
- **dslisto`p2.output`**: to list output associated with your `ID`
- **hex on**: turn on hexagonal representation
- **i**: return assigned attributes information to display
- **ISPF 3.4**: equivalent of **dslist**
- **=sd;st**: to jump to the SDSF status panel.
- **prefix ; owner z#####** to see status of jobs associated with your `ID`
- **dslist pds.data**: list `pds.data partition data set`
- **rep p2.output(#No)**: replace output of member #no with new content 
- **reset** suppress the `==MSG>` lines
- **save;end** or F3 to save and exit current screen
- **sj**: see the JCL used to create the output
- **source ascii**: change display output from EBCDIC to ASCII
- **submit; =sd; st**: submit JCL job to the system for processing. Jump to SDSF. Check JCL jobs status using SDSF
- **v**: view content of a job
- **x'F0'** short hexadecimal for 0
- **?**: review job output

### UNIX SHELL PROMPT COMMANDS

- **oedit ascii**: edit a new Unix file 
- **cat**: concatenate' or display text file
- - **ls -TH ascii**: Unix ls -T flag lists the ascii file tag information 
- **TSO OMVS**: to launch a Unix shell prompt

Following is a list of terms

- **EBCDIC**: Extended Binary Coded Decimal Interchange Code

- **ASCII**: American Standard Code for Information Interchange
- **Bit**: a binary state either 0 or 1
- **Nibble**: 4 Bits used to encode a hexadecimal digit (0 - F)
- **Byte**: 8 Bits used to encode a single character

To start-over Part-3 simply submit `tso sub 'zos.public.jcl(part3)'`. This will delete all existing submission so that you can start over.
