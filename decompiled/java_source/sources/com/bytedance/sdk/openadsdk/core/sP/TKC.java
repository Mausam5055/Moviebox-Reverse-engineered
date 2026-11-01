package com.bytedance.sdk.openadsdk.core.sP;

import android.graphics.Point;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.settings.uA;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC implements View.OnClickListener, View.OnTouchListener {
    private static float EjP = 0.0f;
    private static long HiB = 0;
    protected static int LD = 8;
    private static float Sj;
    private static float TKC;
    private static float sP;
    protected View JcM;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    protected float f21091dx = -1.0f;
    protected float zR = -1.0f;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    protected float f21092ib = -1.0f;
    protected float kF = -1.0f;
    protected long uP = -1;
    protected long wE = -1;
    protected int ley = -1;
    protected int LqL = -1024;
    protected int Yf = -1;
    protected boolean fF = true;
    public SparseArray<Sj> WMZ = new SparseArray<>();
    private int vS = 0;
    private int Jcg = 0;

    /* JADX INFO: loaded from: classes3.dex */
    public static class Sj {
        public long EjP;
        public int Sj;
        public double TKC;
        public double sP;

        public Sj(int i11, double d11, double d12, long j11) {
            this.Sj = i11;
            this.sP = d11;
            this.TKC = d12;
            this.EjP = j11;
        }
    }

    static {
        if (dNu.Sj() != null) {
            LD = dNu.sP();
        }
        Sj = 0.0f;
        sP = 0.0f;
        TKC = 0.0f;
        EjP = 0.0f;
        HiB = 0L;
    }

    private boolean Sj(View view, Point point) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i15 = 0; i15 < viewGroup.getChildCount(); i15++) {
                View childAt = viewGroup.getChildAt(i15);
                if (sP.TKC(childAt)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    return view.isShown() && (i11 = point.x) >= (i12 = iArr[0]) && i11 <= i12 + childAt.getWidth() && (i13 = point.y) >= (i14 = iArr[1]) && i13 <= i14 + childAt.getHeight();
                }
                if (Sj(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean Jcg() {
        return this.fF;
    }

    protected abstract void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<Sj> sparseArray, boolean z10);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (uA.Sj()) {
            Sj(view, this.f21091dx, this.zR, this.f21092ib, this.kF, this.WMZ, this.fF);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i11;
        this.LqL = motionEvent.getDeviceId();
        this.ley = motionEvent.getToolType(0);
        this.Yf = motionEvent.getSource();
        int actionMasked = motionEvent.getActionMasked();
        int i12 = 1;
        if (actionMasked != 0) {
            int i13 = 3;
            if (actionMasked == 1) {
                this.f21092ib = motionEvent.getRawX();
                this.kF = motionEvent.getRawY();
                this.wE = System.currentTimeMillis();
                if (Math.abs(this.f21092ib - this.vS) >= LD || Math.abs(this.kF - this.Jcg) >= LD) {
                    this.fF = false;
                }
                Point point = new Point((int) this.f21092ib, (int) this.kF);
                if (view != null && !sP.TKC(view) && Sj((View) view.getParent(), point)) {
                    return true;
                }
            } else if (actionMasked != 2) {
                i13 = actionMasked != 3 ? -1 : 4;
            } else {
                TKC += Math.abs(motionEvent.getX() - Sj);
                EjP += Math.abs(motionEvent.getY() - sP);
                Sj = motionEvent.getX();
                sP = motionEvent.getY();
                if (System.currentTimeMillis() - HiB > 200) {
                    float f11 = TKC;
                    int i14 = LD;
                    if (f11 <= i14 && EjP <= i14) {
                        i12 = 2;
                    }
                } else {
                    i12 = 2;
                }
                this.f21092ib = motionEvent.getRawX();
                this.kF = motionEvent.getRawY();
                if (Math.abs(this.f21092ib - this.vS) >= LD || Math.abs(this.kF - this.Jcg) >= LD) {
                    this.fF = false;
                }
                i11 = i12;
            }
            i11 = i13;
        } else {
            this.vS = (int) motionEvent.getRawX();
            this.Jcg = (int) motionEvent.getRawY();
            this.f21091dx = motionEvent.getRawX();
            this.zR = motionEvent.getRawY();
            this.uP = System.currentTimeMillis();
            this.ley = motionEvent.getToolType(0);
            this.LqL = motionEvent.getDeviceId();
            this.Yf = motionEvent.getSource();
            HiB = System.currentTimeMillis();
            this.fF = true;
            this.JcM = view;
            com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(motionEvent);
            i11 = 0;
        }
        this.WMZ.put(motionEvent.getActionMasked(), new Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        return false;
    }
}
