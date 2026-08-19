For a BSV simulation , the general form is 

1. Compile + elaborate
   bsc -sim -g <TopModule> <SourceFile.bsv>
   
2. Build the simulation executable
   bsc -sim -e <TopModule>

3. Run the simulation
   ./a.out

   Complete general sequence
   bsc -sim -g <TopModule> <SourceFile.bsv>
   bsc -sim -e <TopModule>
   ./a.out
