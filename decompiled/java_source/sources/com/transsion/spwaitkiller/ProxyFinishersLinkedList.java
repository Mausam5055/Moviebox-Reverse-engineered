package com.transsion.spwaitkiller;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\fJ\b\u0010\u000f\u001a\u00020\nH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/transsion/spwaitkiller/ProxyFinishersLinkedList;", "T", "Ljava/util/concurrent/ConcurrentLinkedDeque;", "sPendingWorkFinishers", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "<init>", "(Ljava/util/concurrent/ConcurrentLinkedQueue;)V", "poll", "()Ljava/lang/Object;", "add", "", "t", "(Ljava/lang/Object;)Z", "remove", "element", "isEmpty", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProxyFinishersLinkedList<T> extends ConcurrentLinkedDeque<T> {
    private final ConcurrentLinkedQueue<T> sPendingWorkFinishers;

    public ProxyFinishersLinkedList(ConcurrentLinkedQueue<T> sPendingWorkFinishers) {
        Intrinsics.h(sPendingWorkFinishers, "sPendingWorkFinishers");
        this.sPendingWorkFinishers = sPendingWorkFinishers;
    }

    @Override // java.util.concurrent.ConcurrentLinkedDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque, java.util.Queue
    public boolean add(T t11) {
        return this.sPendingWorkFinishers.add(t11);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @Override // java.util.concurrent.ConcurrentLinkedDeque, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.concurrent.ConcurrentLinkedDeque, java.util.Deque, java.util.Queue
    public T poll() {
        return null;
    }

    @Override // java.util.concurrent.ConcurrentLinkedDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque
    public boolean remove(Object element) {
        return this.sPendingWorkFinishers.remove(element);
    }

    @Override // java.util.concurrent.ConcurrentLinkedDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque
    public final /* bridge */ int size() {
        return getSize();
    }
}
