USE quanlysinhvien;
SELECT * FROM student;
SELECT * FROM student WHERE StudentName LIKE 'H%';

SELECT * FROM class;
SELECT * FROM class WHERE EXTRACT(MONTH FROM StartDate) = 12;

SELECT * FROM subject WHERE Credit BETWEEN 3 AND 5;

SELECT * FROM student WHERE StudentName = 'Hung';
UPDATE student SET ClassID = 2 WHERE StudentName = 'Hung';

SELECT * FROM mark;
SELECT StudentName, SubName, Mark FROM student INNER JOIN mark ON student.StudentID = mark.StudentID
    INNER JOIN subject ON Mark.SubID = subject.SubID ORDER BY Mark DESC, StudentName ASC ;