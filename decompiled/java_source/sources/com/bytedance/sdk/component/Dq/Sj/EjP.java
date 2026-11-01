package com.bytedance.sdk.component.Dq.Sj;

import com.bytedance.sdk.component.Dq.Sj.TKC;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public class EjP<T extends TKC> {
    private int Sj;
    private BlockingQueue<T> sP = new LinkedBlockingQueue();

    private EjP(int i11) {
        this.Sj = i11;
    }

    public static EjP Sj(int i11) {
        return new EjP(i11);
    }

    public T Sj() {
        return this.sP.poll();
    }

    public boolean Sj(T t11) {
        if (t11 == null) {
            return false;
        }
        t11.Sj();
        if (this.sP.size() >= this.Sj) {
            return false;
        }
        return this.sP.offer(t11);
    }
}
