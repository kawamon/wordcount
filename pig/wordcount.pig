docs = LOAD '/user/cloudera/input' AS (line:chararray);
words = FOREACH docs GENERATE FLATTEN(TOKENIZE(line)) AS word;
groupd = GROUP words BY word;
wordcount = FOREACH groupd GENERATE group, COUNT(words);
DUMP wordcount;
