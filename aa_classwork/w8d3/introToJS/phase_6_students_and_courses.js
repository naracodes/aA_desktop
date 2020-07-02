
function Student(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.courses = [];
}

Student.prototype.name = function() {
    return `${this.firstName} ${this.lastName}`;
}

Student.prototype.enroll = function(courseObj) {
    if (!this.courses.includes(courseObj)) {
        this.courses.push(courseObj)
    }
}

Student.prototype.courseLoad = function() {
    const courseLoad = {};
    this.courses.forEach( course => {
        let dpt = course.department;
        courseLoad[dpt] = courseLoad[dpt] || 0;
        courseLoad[dpt] += course.numCredits;
    })
    return courseLoad;
}

function Course(courseName, department, numCredits) {
    this.students = [];
}

Course.prototype.addStudent = function(studentObj) {
    if (!this.students.includes(studentObj)) {
        this.students.push(studentObj);
        studentObj.enroll(this)
    }
}