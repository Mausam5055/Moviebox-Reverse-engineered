package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class zR extends GestureDetector {
    private final Sj Sj;
    private final com.bytedance.sdk.openadsdk.core.sP.vS sP;

    static class Sj extends GestureDetector.SimpleOnGestureListener {
        boolean Sj = false;

        Sj() {
        }

        void Sj() {
            this.Sj = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.Sj = true;
            return super.onSingleTapUp(motionEvent);
        }

        boolean sP() {
            return this.Sj;
        }
    }

    public zR(Context context) {
        this(context, new Sj());
    }

    public zR(Context context, Sj sj2) {
        super(context, sj2);
        this.Sj = sj2;
        this.sP = new com.bytedance.sdk.openadsdk.core.sP.vS();
        setIsLongpressEnabled(false);
    }

    public com.bytedance.sdk.openadsdk.core.model.TEQ Sj(Context context, View view, View view2) {
        if (this.sP == null) {
            return new com.bytedance.sdk.openadsdk.core.model.TEQ.Sj().Sj();
        }
        return new com.bytedance.sdk.openadsdk.core.model.TEQ.Sj().vS(this.sP.Sj).HiB(this.sP.sP).EjP(this.sP.TKC).TKC(this.sP.EjP).sP(this.sP.HiB).Sj(this.sP.vS).sP(FPG.Sj(view)).Sj(FPG.Sj(view2)).TKC(FPG.TKC(view)).EjP(FPG.TKC(view2)).EjP(this.sP.Jcg).HiB(this.sP.Dq).vS(this.sP.uA).Sj(this.sP.f21094aa).sP(com.bytedance.sdk.openadsdk.core.uA.sP().Sj() ? 1 : 2).Sj("vessel").Sj(FPG.Jcg(context)).TKC(FPG.uA(context)).sP(FPG.Dq(context)).Sj();
    }

    void Sj() {
        this.Sj.Sj();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.sP.Sj(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public boolean sP() {
        return this.Sj.sP();
    }
}
