
















































































# Assign the value "beach" to the variable "location":
location=beach

# Assign the value "200" to the variable "nlines":
nlines=200













echo Hello!
```



echo $location



location=beach
echo $location



echo $nlines



nlines=200

echo $nlines






input_file=data/fastq/SRR7609467.fastq.gz

ls -lh $input_file 



ls_options="-lh"            # (We'll talk about the quotes that are used here later)

ls $ls_options data/meta





























today=Thu, Aug 18




















today="Thu, Aug 18"
echo $today










today="Thu, Aug 18"
touch README_$today.txt



touch README_$today.txt
ls





















touch README_"$today".txt

# This will list the most recently modified file (ls -t sorts by last modified date):
ls -t | head -n 1



today="Thu, Aug 18"
touch README_"$today".txt
ls -t | head -n 1













echo README_$today_final.txt



today="Thu, Aug 18"
echo README_$today_final.txt






















echo README_"$today"_final.txt



today="Thu, Aug 18"
echo README_"$today"_final.txt
















echo *     # This will echo/list all files in the current working dir (!)



echo "*"   # This will simply print the "*" character 







echo "$today"



today="Thu, Aug 18"
echo "$today"





echo '$today'
















date






today=date
echo "$today"





today=$(date)
echo "$today"










date +%F







# Create a file with our $today variable:
touch README_"$(date +%F)".txt

# Check the name of our newly created file:
ls -t | head -n 1



today=$(date +%F)
touch README_"$today".txt
ls -t | head -n 1

















wc -l data/fastq/SRR7609472.fastq.gz



# Use `<` (input redirection) to omit the filename:
wc -l < data/fastq/SRR7609472.fastq.gz













nlines=$(wc -l < data/fastq/SRR7609472.fastq.gz)

echo "The file $nlines lines"






















# Environment variable $USER contains your user name 
echo $USER



# Environment variable $HOME contains the path to your home directory
echo $HOME










































ls data/fastq/*














  ls data/fastq/SRR7609467.fastq.gz data/fastq/SRR7609468.fastq.gz data/fastq/SRR7609469.fastq.gz data/fastq/SRR7609470.fastq.gz data/fastq/SRR7609471.fastq.gz data/fastq/SRR7609472.fastq.gz data/fastq/SRR7609473.fastq.gz data/fastq/SRR7609474.fastq.gz data/fastq/SRR7609475.fastq.gz data/fastq/SRR7609476.fastq.gz data/fastq/SRR7609477.fastq.gz data/fastq/SRR7609478.fastq.gz






echo data/fastq/*







# This will still list all 12 FASTQ files --
# can be a good pattern to use to make sure you're not selecting other types of files 
ls data/fastq/*fastq.gz



# Only select the ...67.fastq.gz, ...68.fastq.gz, and ...69.fastq.gz files 
ls data/fastq/SRR760946*fastq.gz






ls data/fastq/SRR760946*.fastq*
















cp data/fastq/SRR760946* .     # Copy 3 FASTQ files to your working dir 
ls *fastq.gz                   # Check if they're here



rm *fastq.gz                  # Remove all FASTQ files in your working dir
ls *fastq.gz                  # Check if they're here



rm *fastq.gz











rm README_*
rm Aug 18.txt


































for a_number in 1 2 3; do
    echo "In this iteration of the loop, the number is $a_number"
    echo "--------"
done



















mkdir results
cd results





mkdir results; cd results






for a_number in 1 2 3
do
    echo "In this iteration of the loop, the number is $a_number"
done






















for a_number in 1 2 3; do
    echo "In this iteration of the loop, the number is $a_number"
    sleep 1s          # Let the computer sleep for 1 second
    date              # Print the date and time
    echo "--------"
done





























for mushroom in morel destroying_angel eyelash_cup; do
    echo "$mushroom is an Ohio mushroom"
done














# We make sure we only select gzipped FASTQ files using the `*fastq.gz` glob
for fastq_file in data/raw/*fastq.gz; do
    echo "File $fastq_file has $(wc -l < $fastq_file) lines."
    # More processing...
done











# Perhaps we only want to select R1 files (forward reads): 
for fastq_file in data/raw/*R1*fastq.gz; do
    # Some file processing...
done

# Or only filenames starting with A or B:
for fastq_file in data/raw/[AB]*fastq.gz; do
    # Some file processing...
done


















  for sample in A1 B6 D3; do
      R1=data/fastq/"$sample"_R1.fastq.gz
      R2=data/fastq/"$sample"_R2.fastq.gz
      # Some file processing...
  done







  for fastq_file in $(cat file_of_filenames.txt); do
      # Some file processing...
  done










rm -f Aug README* *txt




