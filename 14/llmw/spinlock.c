typedef struct spinlock {
	struct raw_spinlock rlock;
} spinlock_t;

typedef struct raw_spinlock {
	arch_spinlock_t raw_lock;
} raw_spinlock_t;

typedef struct arch_spinlock {
	union {
		u32 head_tail;
		struct __raw_tickets {
			u16 head, tail;
		} tickets;
	};
} arch_spinlock_t;

void spin_lock(spinlock_t *lock);
void spin_unlock(spinlock_t *lock);
