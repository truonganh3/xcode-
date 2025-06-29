//
//  main.swift
//  3
//
//  Created by MacOS on 29/06/2025.
//
import Foundation
 
var a: [String] = ["hs1", "hs2"]
 
func addStudent() {
    print("nhập tên học sinh cần thêm")
    let b = readLine()!
    a.append(b)
    print(a)
}
 
func displayStudents() {
    print("danh sách học sinh là \(a)")
}
 
func searchStudent() {
    print("nhập học sinh cần tìm")
    if let hs = readLine() {
        if a.contains(hs) {
            print("Tìm thấy học sinh \(hs) trong danh sách")
        } else {
            print("không tìm thấy học sinh \(hs) trong danh sách")
        }
    }
}
 
func deleteStudents() {
    print("nhập học sinh muốn xoá")
    if let xoa = readLine() {
        if a.contains(xoa) {
            let index = a.firstIndex(of: xoa)!
            a.remove(at: index)
            print("học sinh \(xoa) đã bị xoá")
            print(a)
        } else {
            print("không tìm thấy học sinh cần xoá")
        }
    }
}
 
func diemTb() {
    print("nhập tên học sinh cần tính điểm:")
    let ten = readLine()!
    if a.contains(ten){
        print("nhập điểm môn 1")
        let mon1 = readLine()
        if let input1 = mon1, let db1 = Double(input1) {
            print("nhập điểm môn 2")
            let mon2 = readLine()
            if let input2 = mon2, let db2 = Double(input2) {
                print("nhập điểm môn 3")
                let mon3 = readLine()
                if let input3 = mon3, let db3 = Double(input3) {
                    let tb = (db1 + db2 + db3) / 3
                    print("điểm trung bình của \(ten) là \(tb)")
                } else {
                    print("không hợp lệ")
                }
            } else {
                print("không hợp lệ")
            }
        } else {
            print("không hợp lệ")
        }
    }else{
        print("không tìm thấy học sinh cần tính điểm")
    }
}
func out() {
    exit(0)
}
 
func sapXepHs(){
    let sapXep = a.sorted()
    print("Danh sách học sinh sau khi sắp xếp theo tên:")
    for hs in sapXep {
        print("- \(hs)")
    }
}
 
while true {
    print("\nDANH SÁCH QUẢN LÝ HỌC SINH")
    print("1. Thêm học sinh")
    print("2. Hiển thị danh sách học sinh")
    print("3. Tìm kiếm học sinh")
    print("4. Xoá học sinh")
    print("5. Sắp xếp học sinh theo tên")
    print("6. Tính điểm trung bình học sinh")
    print("7. Thoát chương trình")
    if let choice = readLine() {
        if choice == "1" {
            addStudent()
        } else if choice == "2" {
            displayStudents()
        } else if choice == "3" {
            searchStudent()
        } else if choice == "4" {
            deleteStudents()
        } else if choice == "5" {
            sapXepHs()
        } else if choice == "6" {
            diemTb()
        } else if choice == "7" {
            out()
        } else {
            print("Lựa chọn không hợp lệ!")
        }
    }
}
