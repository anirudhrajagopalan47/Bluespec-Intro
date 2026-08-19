## Running the Simulation

The general sequence for a BSV simulation is:

1. **Compile + elaborate**
```bash
   bsc -sim -g <TopModule> <SourceFile.bsv>
```

2. **Build the simulation executable**
```bash
   bsc -sim -e <TopModule>
```

3. **Run the simulation**
```bash
   ./a.out
```

### Complete sequence
```bash
bsc -sim -g <TopModule> <SourceFile.bsv>
bsc -sim -e <TopModule>
./a.out
```
Attached below is the Notion page which served as an introduction to Bluespec and implemented are the exercises mentioned in them
