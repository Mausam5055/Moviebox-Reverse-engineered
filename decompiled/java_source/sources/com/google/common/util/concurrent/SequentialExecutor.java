package com.google.common.util.concurrent;

import java.util.Deque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
abstract class SequentialExecutor implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q f31007a = new q(SequentialExecutor.class);

    /* JADX INFO: renamed from: com.google.common.util.concurrent.SequentialExecutor$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ SequentialExecutor this$0;
        final /* synthetic */ Runnable val$task;

        AnonymousClass1(SequentialExecutor sequentialExecutor, Runnable runnable) {
            this.val$task = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$task.run();
        }

        public String toString() {
            return this.val$task.toString();
        }
    }

    private final class QueueWorker implements Runnable {
        Runnable task;
        final /* synthetic */ SequentialExecutor this$0;

        private QueueWorker(SequentialExecutor sequentialExecutor) {
        }

        /* synthetic */ QueueWorker(SequentialExecutor sequentialExecutor, AnonymousClass1 anonymousClass1) {
            this(sequentialExecutor);
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
        
            if (r1 == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
        
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004a, code lost:
        
            r8.task.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0054, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0057, code lost:
        
            com.google.common.util.concurrent.SequentialExecutor.f31007a.a().log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.task, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
        
            r8.task = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
        
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
                    synchronized (SequentialExecutor.a(null)) {
                        if (!z10) {
                            WorkerRunningState workerRunningStateB = SequentialExecutor.b(null);
                            WorkerRunningState workerRunningState = WorkerRunningState.RUNNING;
                            if (workerRunningStateB != workerRunningState) {
                                SequentialExecutor.d(null);
                                SequentialExecutor.c(null, workerRunningState);
                                z10 = true;
                            }
                        }
                        Runnable runnable = (Runnable) SequentialExecutor.a(null).poll();
                        this.task = runnable;
                        if (runnable == null) {
                            SequentialExecutor.c(null, WorkerRunningState.IDLE);
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
                synchronized (SequentialExecutor.a(null)) {
                    SequentialExecutor.c(null, WorkerRunningState.IDLE);
                    throw e11;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.b(null) + "}";
        }
    }

    enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    static /* synthetic */ Deque a(SequentialExecutor sequentialExecutor) {
        throw null;
    }

    static /* synthetic */ WorkerRunningState b(SequentialExecutor sequentialExecutor) {
        throw null;
    }

    static /* synthetic */ WorkerRunningState c(SequentialExecutor sequentialExecutor, WorkerRunningState workerRunningState) {
        throw null;
    }

    static /* synthetic */ long d(SequentialExecutor sequentialExecutor) {
        throw null;
    }
}
