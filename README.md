# Taiwan-income-csv
Re-parse Taiwan's income data to more structured csv format

## Data source

http://www.fia.gov.tw/ct.asp?xItem=3451&ctNode=236&mp=1

## Usages

### CSV reformat

- Use https://pdftables.com to convert PDF file to raw CSV file
- Example: https://pdftables.com/upload/view/db0yjo8yjidurcijdk6rck0iw/103_165-J.pdf

Run

```
ruby reformat_cvs.rb < 103_165-F.csv
```

which will give you `output.csv', or you might specify the output name

```
ruby reformat_cvs.rb < 103_165-F.csv 103_165_F
```


