package com.transsion.spwaitkiller;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u001aB'\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0018\u001a\u00020\u000fH\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/transsion/spwaitkiller/ProxySWork;", "T", "Ljava/util/LinkedList;", "proxy", "looper", "Landroid/os/Looper;", "aboveAndroid12Processor", "Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;", "<init>", "(Ljava/util/LinkedList;Landroid/os/Looper;Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;)V", "sHandler", "Landroid/os/Handler;", "clone", "", "delegateWork", "", "add", "", "t", "(Ljava/lang/Object;)Z", "size", "", "getSize", "()I", "clear", "isEmpty", "AboveAndroid12Processor", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProxySWork<T> extends LinkedList<T> {
    private final AboveAndroid12Processor aboveAndroid12Processor;
    private final LinkedList<T> proxy;
    private Handler sHandler;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;", "", "reProxySWork", "", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface AboveAndroid12Processor {
        void reProxySWork();
    }

    public ProxySWork(LinkedList<T> proxy, Looper looper, AboveAndroid12Processor aboveAndroid12Processor) {
        Intrinsics.h(proxy, "proxy");
        Intrinsics.h(looper, "looper");
        this.proxy = proxy;
        this.aboveAndroid12Processor = aboveAndroid12Processor;
        this.sHandler = new Handler(looper);
    }

    private final void delegateWork() {
        if (this.proxy.size() == 0) {
            return;
        }
        Object objClone = this.proxy.clone();
        Intrinsics.f(objClone, "null cannot be cast to non-null type java.util.LinkedList<java.lang.Runnable>");
        final LinkedList linkedList = (LinkedList) objClone;
        this.proxy.clear();
        Handler handler = this.sHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.transsion.spwaitkiller.a
                @Override // java.lang.Runnable
                public final void run() {
                    ProxySWork.delegateWork$lambda$0(linkedList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void delegateWork$lambda$0(LinkedList linkedList) {
        Iterator it = linkedList.iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.g(next, "next(...)");
            ((Runnable) next).run();
        }
    }

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
    public boolean add(T t11) {
        return this.proxy.add(t11);
    }

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.proxy.clear();
    }

    @Override // java.util.LinkedList
    public Object clone() {
        if (Build.VERSION.SDK_INT < 31) {
            delegateWork();
            return new LinkedList();
        }
        Object objClone = this.proxy.clone();
        Intrinsics.e(objClone);
        return objClone;
    }

    public int getSize() {
        if (Build.VERSION.SDK_INT < 31) {
            return this.proxy.size();
        }
        delegateWork();
        AboveAndroid12Processor aboveAndroid12Processor = this.aboveAndroid12Processor;
        if (aboveAndroid12Processor != null) {
            aboveAndroid12Processor.reProxySWork();
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.LinkedList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i11) {
        return (T) removeAt(i11);
    }

    public /* bridge */ Object removeAt(int i11) {
        return super.remove(i11);
    }

    @Override // java.util.LinkedList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque
    public final /* bridge */ int size() {
        return getSize();
    }
}
