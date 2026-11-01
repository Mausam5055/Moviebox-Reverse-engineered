package com.cloud.tmc.integration.invoke.action;

import com.cloud.tmc.integration.invoke.ExtensionCallback;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ActionCallback<T> implements ExtensionCallback<T> {
    private static final String TAG = "TmcKernel:ActionCallback";
    private final IExecutorService IExecutorService = (IExecutorService) TmcProxy.get(IExecutorService.class);
    private final Map<Action, ExecutorType> actionPolicyMap;
    private final T defaultValue;

    public ActionCallback(Map<Action, ExecutorType> map, T t11) {
        this.actionPolicyMap = map;
        this.defaultValue = t11;
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker.InvokeCallback
    public void onComplete(T t11) {
        if (t11 == null) {
            t11 = this.defaultValue;
        }
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Complete) {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                final T t12 = t11;
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() { // from class: com.cloud.tmc.integration.invoke.action.ActionCallback.5
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        TmcLogger.debug(ActionCallback.TAG, "onComplete for " + action.getClass().getName() + " schedule " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        ((Action.Complete) action).onComplete(t12);
                    }
                });
            }
        }
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionCallback
    public void onException(final Extension extension, final Throwable th2) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Exception) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() { // from class: com.cloud.tmc.integration.invoke.action.ActionCallback.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Action.Exception) action).onException(extension, th2);
                    }
                });
            }
        }
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker.InvokeCallback
    public void onFail(Throwable th2) {
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionCallback
    public void onInterrupt(final Extension extension) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Interrupt) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() { // from class: com.cloud.tmc.integration.invoke.action.ActionCallback.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Action.Interrupt) action).onInterrupt(extension);
                    }
                });
            }
        }
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionCallback
    public void onProgress(final Extension extension, final T t11) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Progress) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() { // from class: com.cloud.tmc.integration.invoke.action.ActionCallback.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Action.Progress) action).onProgress(extension, t11);
                    }
                });
            }
        }
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionCallback
    public void onStart(final List<Extension> list) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            if (action instanceof Action.Start) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() { // from class: com.cloud.tmc.integration.invoke.action.ActionCallback.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TmcLogger.debug(ActionCallback.TAG, "onComplete for " + action.getClass().getName() + " schedule " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        ((Action.Start) action).onStart(list);
                    }
                });
            }
        }
    }
}
