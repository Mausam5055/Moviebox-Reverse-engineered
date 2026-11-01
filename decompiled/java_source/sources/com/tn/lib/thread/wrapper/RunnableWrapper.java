package com.tn.lib.thread.wrapper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import eh.d;
import eh.f;
import fh.i;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\u000b\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001c\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/tn/lib/thread/wrapper/RunnableWrapper;", "Ljava/lang/Runnable;", "Leh/d;", "localConfigs", "<init>", "(Leh/d;)V", "runnable", "setRunnable", "(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;", "Ljava/util/concurrent/Callable;", "callable", "setCallable", "(Ljava/util/concurrent/Callable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;", "", "run", "()V", "", "threadName", "Ljava/lang/String;", "Ljava/lang/Runnable;", "Lfh/i;", "dispatcher", "Lfh/i;", "Ljava/util/concurrent/Callable;", "thread_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RunnableWrapper implements Runnable {
    private Callable<?> callable;
    private i dispatcher;
    private Runnable runnable;
    private String threadName;

    public RunnableWrapper(d localConfigs) {
        Intrinsics.h(localConfigs, "localConfigs");
        this.threadName = localConfigs.e();
        this.dispatcher = new i(localConfigs.d(), localConfigs.c(), localConfigs.a());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0033 A[Catch: Exception -> 0x002d, TRY_LEAVE, TryCatch #0 {Exception -> 0x002d, blocks: (B:12:0x0029, B:15:0x002f, B:17:0x0033), top: B:26:0x0029 }] */
    @Override // java.lang.Runnable
    public void run() {
        i iVar;
        Thread threadCurrentThread = Thread.currentThread();
        f.a aVar = f.f61880a;
        Intrinsics.e(threadCurrentThread);
        aVar.b(threadCurrentThread, this.threadName, this.dispatcher);
        i iVar2 = this.dispatcher;
        if (iVar2 != null) {
            iVar2.a(this.threadName);
        }
        Runnable runnable = this.runnable;
        if (runnable == null) {
            Callable<?> callable = this.callable;
            if (callable != null) {
                if (callable != null) {
                    try {
                        callable.call();
                        iVar = this.dispatcher;
                        if (iVar != null) {
                            iVar.onSuccess();
                        }
                    } catch (Exception e11) {
                        i iVar3 = this.dispatcher;
                        if (iVar3 != null) {
                            iVar3.b(this.threadName, e11);
                        }
                    }
                } else {
                    iVar = this.dispatcher;
                    if (iVar != null) {
                        iVar.onSuccess();
                    }
                }
            }
        } else if (runnable != null) {
            runnable.run();
        }
        i iVar4 = this.dispatcher;
        if (iVar4 != null) {
            iVar4.onCompleted(this.threadName);
        }
    }

    public final RunnableWrapper setCallable(Callable<?> callable) {
        this.callable = callable;
        return this;
    }

    public final RunnableWrapper setRunnable(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        this.runnable = runnable;
        return this;
    }
}
