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
Attached below is the Notion page which served as an introduction to Bluespec and implemented are the exercises mentioned in them :
https://app.notion.com/p/Bluespec-Start-26af39daf5548025a6c9d26fec0ae807#32df39daf554803f9a5ff68ed0691e28
