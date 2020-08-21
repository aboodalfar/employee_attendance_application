<p align="center">
<img src="https://i.ibb.co/Z8mRKwC/merge-from-ofoct.jpg" alt="merge-from-ofoct" border="0">
</p>

<h2>
copy file .env.example  to  .env

and change this lines :

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=University_Attendance_System
DB_USERNAME=root
DB_PASSWORD=
```
</h2>

## you can use dump sql file : employee_attendance.sql

## the app by : php laravel

1- run ```bash composer install ```
2-copy file .env.example  to  .env

and change this lines :

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=University_Attendance_System
DB_USERNAME=root
DB_PASSWORD=
```

3- php ```bash artisan migrate ```

## test credentials  for employee :
employee no : 1   ,  pass : 123123



## test credentials  for admin :
employee no : 2   ,  pass : 123123