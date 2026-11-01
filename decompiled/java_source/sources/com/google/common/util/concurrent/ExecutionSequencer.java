package com.google.common.util.concurrent;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ExecutionSequencer {

    enum RunningState {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    private static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {
        Executor delegate;
        ExecutionSequencer sequencer;
        Thread submitting;
        Runnable task;

        private TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer) {
            super(RunningState.NOT_RUN);
            this.delegate = executor;
        }

        /* synthetic */ TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer, h hVar) {
            this(executor, executionSequencer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetCancelled() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.CANCELLED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetStarted() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.STARTED);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (get() == RunningState.CANCELLED) {
                this.delegate = null;
                return;
            }
            this.submitting = Thread.currentThread();
            try {
                throw null;
            } catch (Throwable th2) {
                this.submitting = null;
                throw th2;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread threadCurrentThread = Thread.currentThread();
            h hVar = null;
            if (threadCurrentThread == this.submitting) {
                new a(hVar).f31000a = threadCurrentThread;
                throw null;
            }
            Runnable runnable = this.task;
            Objects.requireNonNull(runnable);
            this.task = null;
            runnable.run();
        }
    }

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Thread f31000a;

        private a() {
        }

        /* synthetic */ a(h hVar) {
            this();
        }
    }
}
