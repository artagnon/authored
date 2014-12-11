struct mutex {
	/* 1: unlocked, 0: locked, negative: waiters */
	atomic_t count;
	spinlock_t wait_lock;
	struct list_head wait_list;
};

struct mutex_waiter {
	struct list_head list;
	struct task_struct *task;
};

void mutex_lock(struct mutex *lock);
void mutex_unlock(struct mutex *lock);
