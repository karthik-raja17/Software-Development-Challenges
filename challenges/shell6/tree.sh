touch -at 0711171533 ./file1;
mkdir dirA;
cd dirA;
mkdir dirC;
touch -at 0711171533 dirC/file4;
touch -at 0711171533 dirC/file5;
mkdir -p dirC/dirD;
touch -at 0711171533 dirC/dirD/file8;
touch dirC/dirD/file6;
touch -at 0711171533 dirC/dirD/file7;
mkdir dirE;
touch -at 0711171533 dirE/file9;
touch -at 0711171533 file2;
touch -at 0711171533 file3;
# change to dir B

cd ../


mkdir dirB;
cd dirB;
touch file10;
mkdir dirF;
cd dirF;
touch -at 0711171533 file11;
touch -at 0711171533 file12;
mkdir dirG;
touch -at 0711171533 dirG/file13;

echo "DONE"
