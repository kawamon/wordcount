package org.myorg;

import java.io.IOException;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class WordMapper extends Mapper<LongWritable, Text, Text, IntWritable> {
    private final static IntWritable one = new IntWritable(1);
    private Text word = new Text();

    public void map(LongWritable key, Text value, Context context)
	throws IOException, InterruptedException {
      String s = value.toString();
      for (String w : s.split("\\W+")) {
        if (w.length() > 0) {	
          word.set(w);
          context.write(word, one);
        }
      }
    }
}

