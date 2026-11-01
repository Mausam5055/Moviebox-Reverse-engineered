package com.bytedance.sdk.component.vS.Sj.Sj.sP;

import com.bytedance.sdk.component.vS.Sj.EjP.Sj;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EjP<T extends com.bytedance.sdk.component.vS.Sj.EjP.Sj> {
    private String EjP;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Sj;
    private Queue<String> TKC;
    private Queue<T> sP = new ConcurrentLinkedQueue();

    public EjP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2, Queue<String> queue, String str) {
        this.Sj = sj2;
        this.TKC = queue;
        this.EjP = str;
    }

    public synchronized List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i11, int i12) {
        if (!sP(i11, i12)) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.Sj.Sj());
        do {
            T tPoll = this.sP.poll();
            if (tPoll == null) {
                break;
            }
            arrayList.add(tPoll);
        } while (arrayList.size() != this.Sj.sP());
        return arrayList;
    }

    public synchronized void Sj(int i11, List<T> list) {
        try {
            if (i11 == -1 || i11 == 200 || i11 == 509) {
                this.sP.size();
            } else {
                this.sP.addAll(list);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void Sj(T t11) {
        Queue<T> queue = this.sP;
        if (queue == null || t11 == null) {
            return;
        }
        queue.offer(t11);
    }

    public synchronized boolean sP(int i11, int i12) {
        int size = this.sP.size();
        int iSj = this.Sj.Sj();
        if (i11 != 2 && i11 != 1) {
            return size >= iSj;
        }
        if (com.bytedance.sdk.component.vS.Sj.TKC.Sj.TKC()) {
            return size > 0;
        }
        return size >= iSj;
    }
}
