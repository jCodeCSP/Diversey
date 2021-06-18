//
//  TaskListViewModel.swift
//  Diversey
//
//  Created by Bryant Jaramillo on 6/15/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModels = [TaskCellViewModel]()
    
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModels = testDataTasks.map {task in
            TaskCellViewModel(task: task)
        }
    }
    
    func addTask(task: Task) {
        let taskVM = TaskCellViewModel(task: task)
        self.taskCellViewModels.append(taskVM)
        
    }
}
