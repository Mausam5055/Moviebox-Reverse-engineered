package com.mbridge.msdk.foundation.download.core;

/* JADX INFO: loaded from: classes5.dex */
public class ExecutorManager {
    private static ExecutorManager instance;
    private final ExecutorSupplier executorSupplier;

    private static final class ClassHolder {
        private static final ExecutorManager EXECUTOR_MANAGER = new ExecutorManager();

        private ClassHolder() {
        }
    }

    private ExecutorManager() {
        this.executorSupplier = new DefaultExecutorSupplier();
    }

    public static ExecutorManager getInstance() {
        return ClassHolder.EXECUTOR_MANAGER;
    }

    public static void shutDown() {
        if (instance != null) {
            instance = null;
        }
    }

    public ExecutorSupplier getExecutorSupplier() {
        return this.executorSupplier;
    }
}
