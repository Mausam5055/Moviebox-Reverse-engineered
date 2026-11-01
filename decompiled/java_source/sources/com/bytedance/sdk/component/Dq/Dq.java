package com.bytedance.sdk.component.Dq;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Dq implements Comparable<Dq>, Runnable {
    private int Sj;
    private String sP;

    public Dq(String str) {
        this.Sj = 5;
        this.sP = str;
    }

    public Dq(String str, int i11) {
        this.Sj = 0;
        this.Sj = i11 == 0 ? 5 : i11;
        this.sP = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(Dq dq2) {
        if (getPriority() < dq2.getPriority()) {
            return 1;
        }
        return getPriority() >= dq2.getPriority() ? -1 : 0;
    }

    public String getName() {
        return this.sP;
    }

    public int getPriority() {
        return this.Sj;
    }

    public void setPriority(int i11) {
        this.Sj = i11;
    }
}
