package com.bytedance.sdk.component.Sj;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EjP<P, R> extends com.bytedance.sdk.component.Sj.sP<P, R> {
    private boolean Sj = true;
    private vS TKC;
    private Sj sP;

    interface Sj {
        void Sj(Object obj);

        void Sj(Throwable th2);
    }

    public interface sP {
        EjP Sj();
    }

    private boolean vS() {
        if (this.Sj) {
            return true;
        }
        uA.Sj(new IllegalStateException("Jsb async call already finished: " + Sj() + ", hashcode: " + hashCode()));
        return false;
    }

    protected void EjP() {
        this.Sj = false;
        this.TKC = null;
    }

    void HiB() {
        EjP();
    }

    @Override // com.bytedance.sdk.component.Sj.sP
    public /* bridge */ /* synthetic */ String Sj() {
        return super.Sj();
    }

    protected final void Sj(R r11) {
        if (vS()) {
            this.sP.Sj(r11);
            EjP();
        }
    }

    protected abstract void Sj(P p11, vS vSVar) throws Exception;

    void Sj(P p11, vS vSVar, Sj sj2) throws Exception {
        this.TKC = vSVar;
        this.sP = sj2;
        Sj(p11, vSVar);
    }

    protected final void Sj(Throwable th2) {
        if (vS()) {
            this.sP.Sj(th2);
            EjP();
        }
    }

    protected final void TKC() {
        Sj((Throwable) null);
    }
}
