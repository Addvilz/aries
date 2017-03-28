use IO;

config const coeff = 33.0933;

coforall loc in Locales {
  var filename: string = "icml.txt";
  var fh = open(filename, iomode.r);
  var fc = fh.reader();

  on loc {
      var cpos = 1;
      var li: real;
      var lr = fc.read(li);

      while true == lr {
        var r = (li / coeff) * cpos;

        writeln(r);

        lr = fc.read(li);
        cpos = cpos + 1;
      }
  }
}

