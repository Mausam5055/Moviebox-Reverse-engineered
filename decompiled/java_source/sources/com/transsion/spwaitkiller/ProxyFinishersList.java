package com.transsion.spwaitkiller;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bJ\r\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0007J\u0015\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bJ\b\u0010\u000e\u001a\u00020\tH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/transsion/spwaitkiller/ProxyFinishersList;", "T", "Ljava/util/LinkedList;", "sFinishers", "<init>", "(Ljava/util/LinkedList;)V", "poll", "()Ljava/lang/Object;", "add", "", "t", "(Ljava/lang/Object;)Z", "remove", "element", "isEmpty", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProxyFinishersList<T> extends LinkedList<T> {
    private final LinkedList<T> sFinishers;

    public ProxyFinishersList(LinkedList<T> sFinishers) {
        Intrinsics.h(sFinishers, "sFinishers");
        this.sFinishers = sFinishers;
    }

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
    public boolean add(T t11) {
        return this.sFinishers.add(t11);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.LinkedList, java.util.Deque, java.util.Queue
    public T poll() {
        return null;
    }

    @Override // java.util.LinkedList, java.util.Deque, java.util.Queue
    public T remove() {
        return (T) super.remove();
    }

    @Override // java.util.LinkedList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i11) {
        return (T) removeAt(i11);
    }

    @Override // java.util.LinkedList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque
    public boolean remove(Object element) {
        return this.sFinishers.remove(element);
    }

    public /* bridge */ Object removeAt(int i11) {
        return super.remove(i11);
    }

    @Override // java.util.LinkedList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque
    public final /* bridge */ int size() {
        return getSize();
    }
}
