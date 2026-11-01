package com.bytedance.sdk.component.Jcg;

import android.os.Bundle;
import com.bytedance.sdk.component.Jcg.TKC.TKC;
import com.bytedance.sdk.component.Jcg.sP.EjP;
import com.bytedance.sdk.component.sP.Sj.Dq;
import com.bytedance.sdk.component.sP.Sj.Ym;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private Ym Sj;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.Jcg.Sj$Sj, reason: collision with other inner class name */
    public static final class C0214Sj {
        private Set<String> HiB;
        private Bundle vS;
        final List<Dq> EjP = new ArrayList();
        int Sj = 10000;
        int sP = 10000;
        int TKC = 10000;

        private static int Sj(String str, long j11, TimeUnit timeUnit) {
            if (j11 < 0) {
                throw new IllegalArgumentException(str + " < 0");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            long millis = timeUnit.toMillis(j11);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            }
            if (millis != 0 || j11 <= 0) {
                return (int) millis;
            }
            throw new IllegalArgumentException(str + " too small.");
        }

        public C0214Sj Sj(long j11, TimeUnit timeUnit) {
            this.Sj = Sj("timeout", j11, timeUnit);
            return this;
        }

        public C0214Sj Sj(Dq dq2) {
            this.EjP.add(dq2);
            return this;
        }

        public C0214Sj Sj(boolean z10) {
            return this;
        }

        public Sj Sj() {
            return new Sj(this);
        }

        public C0214Sj TKC(long j11, TimeUnit timeUnit) {
            this.TKC = Sj("timeout", j11, timeUnit);
            return this;
        }

        public C0214Sj sP(long j11, TimeUnit timeUnit) {
            this.sP = Sj("timeout", j11, timeUnit);
            return this;
        }
    }

    private Sj(C0214Sj c0214Sj) {
        Ym.Sj sj2 = new Ym.Sj();
        long j11 = c0214Sj.Sj;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Ym.Sj sjSP = sj2.Sj(j11, timeUnit).TKC(c0214Sj.TKC, timeUnit).sP(c0214Sj.sP, timeUnit);
        List<Dq> list = c0214Sj.EjP;
        if (list != null && list.size() > 0) {
            Iterator<Dq> it = c0214Sj.EjP.iterator();
            while (it.hasNext()) {
                sjSP.Sj(it.next());
            }
        }
        if (c0214Sj.vS != null) {
            Bundle unused = c0214Sj.vS;
        }
        Set unused2 = c0214Sj.HiB;
        this.Sj = sjSP.Sj();
    }

    public static void Sj() {
        TKC.Sj(TKC.Sj.DEBUG);
    }

    public com.bytedance.sdk.component.Jcg.sP.Sj EjP() {
        return new com.bytedance.sdk.component.Jcg.sP.Sj(this.Sj);
    }

    public Ym HiB() {
        return this.Sj;
    }

    public com.bytedance.sdk.component.Jcg.sP.sP TKC() {
        return new com.bytedance.sdk.component.Jcg.sP.sP(this.Sj);
    }

    public EjP sP() {
        return new EjP(this.Sj);
    }
}
