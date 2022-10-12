package container;

import model.Task;

import static utils.Constants.INITIAL_STACK_SIZE;

public class StackContainer extends ContainerSuperclass {

    public StackContainer() {
        super();
    }

    @Override
    public Task remove() throws Exception {
        if(!isEmpty()) {
            size--;
            return tasks[size];
        }
        return null;
    }

    @Override
    public void add(Task task) {
        if(tasks.length==size) {
            Task[] t=new Task[tasks.length*2];
            System.arraycopy(tasks, 0, t, 0, tasks.length);
            tasks = t;
        }
        tasks[size] = task;
        size++;
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public boolean isEmpty() {
        return size == 0;
    }
}
