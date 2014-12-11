struct semaphore {
	raw_spinlock_t lock;
	unsigned int count;
	struct list_head wait_list;
};

void down(struct rw_semaphore *sem);
void up(struct rw_semaphore *sem);

/* rwsem.h */
struct rw_semaphore {
	__s32 activity;
	raw_spinlock_t wait_lock;
	struct list_head wait_list;
};

void down_read(struct rw_semaphore *sem);
void up_read(struct rw_semaphore *sem);
void down_write(struct rw_semaphore *sem);
void up_write(struct rw_semaphore *sem);
