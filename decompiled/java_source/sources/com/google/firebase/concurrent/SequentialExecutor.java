package com.google.firebase.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
final class SequentialExecutor implements Executor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Logger f31074f = Logger.getLogger(SequentialExecutor.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f31075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deque f31076b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WorkerRunningState f31077c = WorkerRunningState.IDLE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f31078d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final QueueWorker f31079e = new QueueWorker();

    private final class QueueWorker implements Runnable {
        Runnable task;

        private QueueWorker() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        
            if (r1 == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        
            r8.task.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
        
            com.google.firebase.concurrent.SequentialExecutor.f31074f.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.task, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
        
            r8.task = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void workOnQueue() {
            boolean z10 = false;
            boolean zInterrupted = false;
            while (true) {
                try {
                    synchronized (SequentialExecutor.this.f31076b) {
                        if (!z10) {
                            WorkerRunningState workerRunningState = SequentialExecutor.this.f31077c;
                            WorkerRunningState workerRunningState2 = WorkerRunningState.RUNNING;
                            if (workerRunningState != workerRunningState2) {
                                SequentialExecutor.d(SequentialExecutor.this);
                                SequentialExecutor.this.f31077c = workerRunningState2;
                                z10 = true;
                            }
                        }
                        Runnable runnable = (Runnable) SequentialExecutor.this.f31076b.poll();
                        this.task = runnable;
                        if (runnable == null) {
                            SequentialExecutor.this.f31077c = WorkerRunningState.IDLE;
                        }
                    }
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                    this.task = null;
                } catch (Throwable th2) {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                workOnQueue();
            } catch (Error e11) {
                synchronized (SequentialExecutor.this.f31076b) {
                    SequentialExecutor.this.f31077c = WorkerRunningState.IDLE;
                    throw e11;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.this.f31077c + "}";
        }
    }

    enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    SequentialExecutor(Executor executor) {
        this.f31075a = (Executor) Preconditions.checkNotNull(executor);
    }

    static /* synthetic */ long d(SequentialExecutor sequentialExecutor) {
        long j11 = sequentialExecutor.f31078d;
        sequentialExecutor.f31078d = 1 + j11;
        return j11;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0061  */
    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z10;
        Preconditions.checkNotNull(runnable);
        synchronized (this.f31076b) {
            WorkerRunningState workerRunningState2 = this.f31077c;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j11 = this.f31078d;
                Runnable runnable2 = new Runnable() { // from class: com.google.firebase.concurrent.SequentialExecutor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnable.run();
                    }

                    public String toString() {
                        return runnable.toString();
                    }
                };
                this.f31076b.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.f31077c = workerRunningState3;
                try {
                    this.f31075a.execute(this.f31079e);
                    if (this.f31077c != workerRunningState3) {
                        return;
                    }
                    synchronized (this.f31076b) {
                        try {
                            if (this.f31078d == j11 && this.f31077c == workerRunningState3) {
                                this.f31077c = workerRunningState;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e11) {
                    synchronized (this.f31076b) {
                        try {
                            WorkerRunningState workerRunningState4 = this.f31077c;
                            if (workerRunningState4 != WorkerRunningState.IDLE && workerRunningState4 != WorkerRunningState.QUEUING) {
                                z10 = false;
                            } else if (this.f31076b.removeLastOccurrence(runnable2)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (!(e11 instanceof RejectedExecutionException) || z10) {
                                throw e11;
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    return;
                }
            }
            this.f31076b.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f31075a + "}";
    }
}
