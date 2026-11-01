package com.bytedance.sdk.component.Dq;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg<V> extends FutureTask<V> implements Comparable<Jcg<V>> {
    private int Sj;
    private int sP;

    public Jcg(Runnable runnable, V v11, int i11, int i12) {
        super(runnable, v11);
        this.Sj = i11 == -1 ? 5 : i11;
        this.sP = i12;
    }

    public Jcg(Callable<V> callable, int i11, int i12) {
        super(callable);
        this.Sj = i11 == -1 ? 5 : i11;
        this.sP = i12;
    }

    public int Sj() {
        return this.Sj;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public int compareTo(Jcg jcg) {
        if (Sj() < jcg.Sj()) {
            return 1;
        }
        return Sj() > jcg.Sj() ? -1 : 0;
    }
}
