package com.google.common.util.concurrent;

import com.google.common.collect.s3;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
abstract class ListenerCallQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q f31001a = new q(ListenerCallQueue.class);

    private static final class PerListenerQueue<L> implements Runnable {
        final Executor executor;
        boolean isThreadScheduled;
        final L listener;
        final Queue<a> waitQueue = s3.a();
        final Queue<Object> labelQueue = s3.a();

        PerListenerQueue(L l11, Executor executor) {
            this.listener = (L) com.google.common.base.m.o(l11);
            this.executor = (Executor) com.google.common.base.m.o(executor);
        }

        synchronized void add(a aVar, Object obj) {
            this.waitQueue.add(aVar);
            this.labelQueue.add(obj);
        }

        void dispatch() throws Exception {
            boolean z10;
            synchronized (this) {
                try {
                    if (this.isThreadScheduled) {
                        z10 = false;
                    } else {
                        z10 = true;
                        this.isThreadScheduled = true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z10) {
                try {
                    this.executor.execute(this);
                } catch (Exception e11) {
                    synchronized (this) {
                        this.isThreadScheduled = false;
                        ListenerCallQueue.f31001a.a().log(Level.SEVERE, "Exception while running callbacks for " + this.listener + " on " + this.executor, (Throwable) e11);
                        throw e11;
                    }
                }
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x005e */
        /* JADX WARN: Code duplicated, block: B:28:0x0062  */
        /* JADX WARN: Code duplicated, block: B:38:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
        
            r2.call(r9.listener);
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
        
            com.google.common.util.concurrent.ListenerCallQueue.f31001a.a().log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r9.listener + " " + r3, (java.lang.Throwable) r2);
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws Throwable {
            boolean z10;
            Throwable th2;
            while (true) {
                boolean z11 = true;
                try {
                    synchronized (this) {
                        try {
                            com.google.common.base.m.u(this.isThreadScheduled);
                            a aVarPoll = this.waitQueue.poll();
                            Object objPoll = this.labelQueue.poll();
                            if (aVarPoll == null) {
                                this.isThreadScheduled = false;
                                try {
                                    return;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    z10 = false;
                                }
                            }
                        } catch (Throwable th4) {
                            z10 = true;
                            th2 = th4;
                        }
                        while (true) {
                        }
                    }
                    try {
                        throw th2;
                    } catch (Throwable th5) {
                        boolean z12 = z10;
                        th = th5;
                        z11 = z12;
                        if (z11) {
                            synchronized (this) {
                                this.isThreadScheduled = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (z11) {
                        synchronized (this) {
                            this.isThreadScheduled = false;
                        }
                    }
                    throw th;
                }
            }
        }
    }

    interface a {
        void call(Object obj);
    }
}
