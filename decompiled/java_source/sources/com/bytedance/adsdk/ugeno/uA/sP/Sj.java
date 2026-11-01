package com.bytedance.adsdk.ugeno.uA.sP;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.core.TEQ;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends FrameLayout {
    private EjP Sj;
    private Map<Integer, TEQ> sP;

    public Sj(Context context) {
        super(context);
    }

    public void Sj(EjP ejP) {
        this.Sj = ejP;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map<Integer, TEQ> map = this.sP;
        if (map == null || !map.containsKey(4)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.vS();
        }
        super.onLayout(z10, i11, i12, i13, i14);
        EjP ejP2 = this.Sj;
        if (ejP2 != null) {
            ejP2.Sj(i11, i12, i13, i14);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        EjP ejP = this.Sj;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i11, i12);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        } else {
            super.onMeasure(i11, i12);
        }
        EjP ejP2 = this.Sj;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.sP(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void setEventMap(Map<Integer, TEQ> map) {
        this.sP = map;
    }
}
