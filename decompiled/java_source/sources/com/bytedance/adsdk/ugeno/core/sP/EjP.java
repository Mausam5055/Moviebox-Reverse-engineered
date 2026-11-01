package com.bytedance.adsdk.ugeno.core.sP;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private boolean Dq;
    private TEQ EjP;
    private TEQ HiB;
    private Context Jcg;
    private String vS;
    private float Sj = Float.MIN_VALUE;
    private float sP = Float.MIN_VALUE;
    private int TKC = 0;

    public EjP(Context context, TEQ teq, TEQ teq2, boolean z10) {
        this.Jcg = context;
        this.EjP = teq;
        this.HiB = teq2;
        this.Dq = z10;
        sP();
    }

    public EjP(Context context, TEQ teq, boolean z10) {
        this.Jcg = context;
        this.EjP = teq;
        this.Dq = z10;
        sP();
    }

    private void sP() {
        TEQ teq = this.EjP;
        if (teq == null) {
            return;
        }
        this.TKC = teq.TKC().optInt("slideThreshold");
        this.vS = this.EjP.TKC().optString("slideDirection");
    }

    public void Sj() {
        this.Sj = Float.MIN_VALUE;
        this.sP = Float.MIN_VALUE;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    /* JADX WARN: Code duplicated, block: B:31:0x007b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x008f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0091  */
    /* JADX WARN: Code duplicated, block: B:39:0x009c  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c7  */
    public boolean Sj(aa aaVar, com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        float x10;
        float y10;
        int iSP;
        int iSP2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Sj = motionEvent.getX();
            this.sP = motionEvent.getY();
        } else if (action == 1) {
            x10 = motionEvent.getX();
            y10 = motionEvent.getY();
            if (!this.Dq && Math.abs(x10 - this.Sj) <= 10.0f && Math.abs(y10 - this.sP) <= 10.0f && aaVar != null) {
                Sj();
                aaVar.Sj(this.HiB, tkc, tkc);
                return true;
            }
            if (this.TKC != 0 && aaVar != null) {
                Sj();
                aaVar.Sj(this.EjP, tkc, tkc);
                return true;
            }
            iSP = Dq.sP(this.Jcg, x10 - this.Sj);
            iSP2 = Dq.sP(this.Jcg, y10 - this.sP);
            if (TextUtils.equals(this.vS, "up")) {
                iSP = -iSP2;
            } else if (!TextUtils.equals(this.vS, "down")) {
                iSP = iSP2;
            } else if (TextUtils.equals(this.vS, TtmlNode.LEFT)) {
                iSP = -iSP;
            } else if (!TextUtils.equals(this.vS, TtmlNode.RIGHT)) {
                iSP = (int) Math.abs(Math.sqrt(Math.pow(iSP, 2.0d) + Math.pow(iSP2, 2.0d)));
            }
            if (iSP >= this.TKC) {
                Sj();
                return false;
            }
            if (aaVar != null) {
                Sj();
                aaVar.Sj(this.EjP, tkc, tkc);
                return true;
            }
            Sj();
        } else if (action == 3) {
            if (this.Sj == Float.MIN_VALUE || this.sP == Float.MIN_VALUE) {
                return false;
            }
            x10 = motionEvent.getX();
            y10 = motionEvent.getY();
            if (!this.Dq) {
            }
            if (this.TKC != 0) {
            }
            iSP = Dq.sP(this.Jcg, x10 - this.Sj);
            iSP2 = Dq.sP(this.Jcg, y10 - this.sP);
            if (TextUtils.equals(this.vS, "up")) {
                iSP = -iSP2;
            } else if (!TextUtils.equals(this.vS, "down")) {
                iSP = iSP2;
            } else if (TextUtils.equals(this.vS, TtmlNode.LEFT)) {
                iSP = -iSP;
            } else if (!TextUtils.equals(this.vS, TtmlNode.RIGHT)) {
                iSP = (int) Math.abs(Math.sqrt(Math.pow(iSP, 2.0d) + Math.pow(iSP2, 2.0d)));
            }
            if (iSP >= this.TKC) {
                Sj();
                return false;
            }
            if (aaVar != null) {
                Sj();
                aaVar.Sj(this.EjP, tkc, tkc);
                return true;
            }
            Sj();
        }
        return true;
    }
}
