public with sharing class TeacherTriggerHandler {
    public static void operationAfterInsert(List<Teacher__c> newTeachers){
        TeacherUtility.firstTimeExecution = false;
        List<Student__c> students = new List<Student__c>();
        List<Teacher__c> teachers = new List<Teacher__c>();

        for(Teacher__c teacher: newTeachers){
            students.add(new Student__c(name = 'Student of'+ teacher.Subject__c, Teacher__c = teacher.id));
            Teacher__c t = new Teacher__c();
            if(teacher.Department_Name__c == 'Mechanical'){
                t.Subject__c = 'Physics';
            }
            else if(teacher.Department_Name__c == 'Computer'){
                t.Subject__c = 'Maths';
            }
            t.id = teacher.id;
            teachers.add(t);
        }

        System.debug(students);
        insert students;
        update teachers;
    }

    public static void operationBeforeUpdate(List<Teacher__c> updatedTeachers){
        System.debug('Inside before update');
    }

    public static void operationAfterUpdate(List<Teacher__c> updatedTeachers){
        System.debug('Inside after update');
    }
}