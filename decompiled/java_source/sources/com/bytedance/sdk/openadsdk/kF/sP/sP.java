package com.bytedance.sdk.openadsdk.kF.sP;

import android.view.View;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public abstract class sP {
    private final Integer Dq;
    private final AtomicLong EjP;
    private final AtomicBoolean HiB;
    private final int Jcg;
    protected WeakReference<View> Sj;
    protected final AtomicBoolean TKC;
    protected sU sP;
    private volatile boolean uA = false;
    private final HiB.Sj vS;

    public sP(Integer num, View view, sU sUVar, int i11, HiB.Sj sj2) {
        this.Dq = num;
        this.Jcg = i11;
        this.sP = sUVar;
        this.vS = sj2;
        Sj(view);
        this.TKC = new AtomicBoolean(false);
        this.EjP = new AtomicLong(-1L);
        this.HiB = new AtomicBoolean(false);
    }

    public static sP Sj(boolean z10, Integer num, View view, sU sUVar, HiB.Sj sj2) {
        return z10 ? new Dq(num, view, sUVar, sj2) : new TKC(num, view, sUVar, sj2);
    }

    public void Dq() {
        this.EjP.set(-1L);
    }

    protected void EjP() {
        if (this.HiB.compareAndSet(false, true)) {
            EjP.Sj(this.sP, HiB(), this.vS);
        }
    }

    public void Fmk() {
        this.TKC.set(false);
        Dq();
    }

    protected Sj HiB() {
        WeakReference<View> weakReference = this.Sj;
        if (weakReference == null) {
            return new Sj(-1, -1, -1.0f);
        }
        View view = weakReference.get();
        return view == null ? new Sj(0, 0, 0.0f) : new Sj(view.getWidth(), view.getHeight(), view.getAlpha());
    }

    public void Jcg() {
        if (uA()) {
            return;
        }
        if (!this.TKC.get()) {
            Dq();
        } else if (!this.EjP.compareAndSet(-1L, System.currentTimeMillis()) && System.currentTimeMillis() - this.EjP.get() >= this.Jcg) {
            EjP();
        }
    }

    public void Sj() {
        if (this.TKC.compareAndSet(false, true)) {
            Jcg.Sj(this);
        }
    }

    public void Sj(int i11) {
        if (i11 == 4) {
            Sj();
            return;
        }
        if (i11 == 8) {
            Fmk();
        } else if (i11 == 9) {
            EjP();
        } else {
            sP(i11);
        }
    }

    public void Sj(View view) {
        if (view != null) {
            view.setTag(InputDeviceCompat.SOURCE_HDMI, Ym());
        }
        this.Sj = new WeakReference<>(view);
    }

    public void TEQ() {
        this.uA = true;
        Jcg.sP(this);
    }

    protected abstract boolean TKC();

    public Integer Ym() {
        return this.Dq;
    }

    public boolean aa() {
        return this.TKC.get();
    }

    public int sP() {
        if (uA()) {
            return 1;
        }
        WeakReference<View> weakReference = this.Sj;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null || this.uA) {
            return 3;
        }
        if (Ym().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI))) {
            return (Ym().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI)) && TKC()) ? 1 : 2;
        }
        TEQ();
        HiB.sP(Ym());
        return 3;
    }

    protected abstract void sP(int i11);

    public boolean uA() {
        return this.HiB.get();
    }

    public abstract int vS();
}
