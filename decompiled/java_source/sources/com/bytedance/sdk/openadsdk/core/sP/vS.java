package com.bytedance.sdk.openadsdk.core.sP;

import android.util.SparseArray;
import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.core.dNu;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    private static float Fmk = 0.0f;
    public static int TEQ = 8;
    private static float Zq;
    private static long dNu;
    private static float sef;
    private static float uvD;
    public float Sj = -1.0f;
    public float sP = -1.0f;
    public float TKC = -1.0f;
    public float EjP = -1.0f;
    public long HiB = -1;
    public long vS = -1;
    public int Jcg = -1;
    public int Dq = -1024;
    public int uA = -1;
    public boolean Ym = true;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    public SparseArray<TKC.Sj> f21094aa = new SparseArray<>();
    private int TzV = 0;
    private int RiZ = 0;

    static {
        if (dNu.Sj() != null) {
            TEQ = dNu.sP();
        }
        Fmk = 0.0f;
        sef = 0.0f;
        Zq = 0.0f;
        uvD = 0.0f;
        dNu = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    public void Sj(MotionEvent motionEvent) {
        int i11;
        this.Dq = motionEvent.getDeviceId();
        int i12 = 0;
        this.Jcg = motionEvent.getToolType(0);
        this.uA = motionEvent.getSource();
        int actionMasked = motionEvent.getActionMasked();
        int i13 = 1;
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.TKC = motionEvent.getRawX();
                this.EjP = motionEvent.getRawY();
                this.vS = System.currentTimeMillis();
                if (Math.abs(this.TKC - this.TzV) >= TEQ || Math.abs(this.EjP - this.RiZ) >= TEQ) {
                    this.Ym = false;
                }
                i11 = 3;
            } else if (actionMasked != 2) {
                i12 = actionMasked != 3 ? -1 : 4;
            } else {
                Zq += Math.abs(motionEvent.getX() - Fmk);
                uvD += Math.abs(motionEvent.getY() - sef);
                Fmk = motionEvent.getX();
                sef = motionEvent.getY();
                if (System.currentTimeMillis() - dNu > 200) {
                    float f11 = Zq;
                    int i14 = TEQ;
                    if (f11 <= i14 && uvD <= i14) {
                        i13 = 2;
                    }
                } else {
                    i13 = 2;
                }
                this.TKC = motionEvent.getRawX();
                this.EjP = motionEvent.getRawY();
                if (Math.abs(this.TKC - this.TzV) >= TEQ || Math.abs(this.EjP - this.RiZ) >= TEQ) {
                    this.Ym = false;
                }
                i11 = i13;
            }
            this.f21094aa.put(motionEvent.getActionMasked(), new TKC.Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        }
        this.TzV = (int) motionEvent.getRawX();
        this.RiZ = (int) motionEvent.getRawY();
        this.Sj = motionEvent.getRawX();
        this.sP = motionEvent.getRawY();
        this.HiB = System.currentTimeMillis();
        this.Jcg = motionEvent.getToolType(0);
        this.Dq = motionEvent.getDeviceId();
        this.uA = motionEvent.getSource();
        dNu = System.currentTimeMillis();
        this.Ym = true;
        i11 = i12;
        this.f21094aa.put(motionEvent.getActionMasked(), new TKC.Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
    }
}
