package com.bytedance.sdk.component.sP.Sj;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Ym implements Cloneable {
    public long EjP;
    public TimeUnit HiB;
    public TimeUnit Jcg;
    public List<Dq> Sj;
    public TimeUnit TKC;
    public long sP;
    public long vS;

    public static final class Sj {
        public long EjP;
        public TimeUnit HiB;
        public TimeUnit Jcg;
        public final List<Dq> Sj;
        public TimeUnit TKC;
        public long sP;
        public long vS;

        public Sj() {
            this.Sj = new ArrayList();
            this.sP = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.TKC = timeUnit;
            this.EjP = 10000L;
            this.HiB = timeUnit;
            this.vS = 10000L;
            this.Jcg = timeUnit;
        }

        public Sj(Ym ym2) {
            this.Sj = new ArrayList();
            this.sP = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.TKC = timeUnit;
            this.EjP = 10000L;
            this.HiB = timeUnit;
            this.vS = 10000L;
            this.Jcg = timeUnit;
            this.sP = ym2.sP;
            this.TKC = ym2.TKC;
            this.EjP = ym2.EjP;
            this.HiB = ym2.HiB;
            this.vS = ym2.vS;
            this.Jcg = ym2.Jcg;
        }

        public Sj(String str) {
            this.Sj = new ArrayList();
            this.sP = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.TKC = timeUnit;
            this.EjP = 10000L;
            this.HiB = timeUnit;
            this.vS = 10000L;
            this.Jcg = timeUnit;
        }

        public Sj Sj(long j11, TimeUnit timeUnit) {
            this.sP = j11;
            this.TKC = timeUnit;
            return this;
        }

        public Sj Sj(Dq dq2) {
            this.Sj.add(dq2);
            return this;
        }

        public Ym Sj() {
            return com.bytedance.sdk.component.sP.Sj.Sj.Sj.Sj(this);
        }

        public Sj TKC(long j11, TimeUnit timeUnit) {
            this.vS = j11;
            this.Jcg = timeUnit;
            return this;
        }

        public Sj sP(long j11, TimeUnit timeUnit) {
            this.EjP = j11;
            this.HiB = timeUnit;
            return this;
        }
    }

    public Ym(Sj sj2) {
        this.sP = sj2.sP;
        this.EjP = sj2.EjP;
        this.vS = sj2.vS;
        List<Dq> list = sj2.Sj;
        this.TKC = sj2.TKC;
        this.HiB = sj2.HiB;
        this.Jcg = sj2.Jcg;
        this.Sj = list;
    }

    public abstract EjP Sj();

    public abstract sP Sj(Fmk fmk);

    public Sj sP() {
        return new Sj(this);
    }
}
