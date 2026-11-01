package com.bytedance.sdk.component.Dq;

import android.os.SystemClock;
import com.bytedance.sdk.component.utils.Zq;

/* JADX INFO: loaded from: classes2.dex */
class sP implements Comparable, Runnable {
    private Thread EjP = null;
    private Dq Sj;
    private long TKC;
    private Sj sP;

    public sP(Dq dq2, Sj sj2) {
        this.TKC = 0L;
        this.Sj = dq2;
        this.sP = sj2;
        this.TKC = SystemClock.uptimeMillis();
    }

    private void Sj(String str, String str2, long j11) {
    }

    public Dq Sj() {
        return this.Sj;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof sP) {
            return this.Sj.compareTo(((sP) obj).Sj());
        }
        return 0;
    }

    public boolean equals(Object obj) {
        Dq dq2;
        return (obj instanceof sP) && (dq2 = this.Sj) != null && dq2.equals(((sP) obj).Sj());
    }

    public int hashCode() {
        return this.Sj.hashCode();
    }

    @Override // java.lang.Runnable
    public void run() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.EjP = Thread.currentThread();
        Dq dq2 = this.Sj;
        if (dq2 != null) {
            dq2.run();
        }
        long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
        if (this.sP != null) {
            EjP.Sj();
        }
        if (Zq.Sj()) {
            Sj sj2 = this.sP;
            if (sj2 != null) {
                sj2.Sj();
            }
            Dq dq3 = this.Sj;
            if (dq3 != null) {
                dq3.getName();
            }
            String strSj = this.sP.Sj();
            strSj.hashCode();
            switch (strSj) {
                case "ad":
                case "init":
                    if (jUptimeMillis2 > 2000) {
                        Sj sj3 = this.sP;
                        String strSj2 = sj3 != null ? sj3.Sj() : "null";
                        Dq dq4 = this.Sj;
                        Sj(strSj2, dq4 != null ? dq4.getName() : "null", jUptimeMillis2);
                        break;
                    }
                    break;
                case "io":
                    if (jUptimeMillis2 > 5000) {
                        Sj sj4 = this.sP;
                        String strSj3 = sj4 != null ? sj4.Sj() : "null";
                        Dq dq5 = this.Sj;
                        Sj(strSj3, dq5 != null ? dq5.getName() : "null", jUptimeMillis2);
                        break;
                    }
                    break;
                case "log":
                    if (jUptimeMillis2 > 3000) {
                        Sj sj5 = this.sP;
                        String strSj4 = sj5 != null ? sj5.Sj() : "null";
                        Dq dq6 = this.Sj;
                        Sj(strSj4, dq6 != null ? dq6.getName() : "null", jUptimeMillis2);
                        break;
                    }
                    break;
                case "computation":
                    if (jUptimeMillis2 > 1000) {
                        Sj sj6 = this.sP;
                        String strSj5 = sj6 != null ? sj6.Sj() : "null";
                        Dq dq7 = this.Sj;
                        Sj(strSj5, dq7 != null ? dq7.getName() : "null", jUptimeMillis2);
                        break;
                    }
                    break;
            }
        }
    }
}
