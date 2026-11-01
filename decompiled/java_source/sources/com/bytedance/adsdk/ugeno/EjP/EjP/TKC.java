package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.EjP.Ym;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends Sj {
    private int Fmk;
    private float Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private float f20808aa;
    private String sef;

    public TKC(Context context) {
        super(context);
        this.Fmk = 0;
        this.sef = "up";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:0x007a  */
    private boolean Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        byte b11;
        Ym ym2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Ym = motionEvent.getX();
            this.f20808aa = motionEvent.getY();
        } else if (action == 1 || action == 3) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (this.Fmk == 0 && (ym2 = this.Sj) != null) {
                ym2.Sj(tkc, this.vS, this.TKC.sP());
                return true;
            }
            int iSP = com.bytedance.adsdk.ugeno.Jcg.Dq.sP(this.TEQ, x10 - this.Ym);
            int iSP2 = com.bytedance.adsdk.ugeno.Jcg.Dq.sP(this.TEQ, y10 - this.f20808aa);
            switch (this.sef) {
                case "up":
                    b11 = 0;
                    break;
                case "all":
                    b11 = 4;
                    break;
                case "down":
                    b11 = 1;
                    break;
                case "left":
                    b11 = 2;
                    break;
                case "right":
                    b11 = 3;
                    break;
                default:
                    b11 = -1;
                    break;
            }
            if (b11 == 0) {
                iSP = -iSP2;
            } else if (b11 == 1) {
                iSP = iSP2;
            } else if (b11 == 2) {
                iSP = -iSP;
            } else if (b11 != 3) {
                iSP = (int) Math.abs(Math.sqrt(Math.pow(iSP, 2.0d) + Math.pow(iSP2, 2.0d)));
            }
            if (iSP < this.Fmk) {
                return false;
            }
            Ym ym3 = this.Sj;
            if (ym3 != null) {
                this.Ym = 0.0f;
                this.f20808aa = 0.0f;
                ym3.Sj(tkc, this.vS, this.TKC.sP());
                return true;
            }
        }
        return true;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.EjP.Sj
    public boolean Sj(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        Map<String, String> map = this.HiB;
        if (map != null) {
            this.sef = TextUtils.isEmpty(map.get("direction")) ? IntegrationConstants.NAVIGATION_BAR_ALL_ACTION : this.HiB.get("direction");
            this.Fmk = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get("distance"), 0);
        }
        return Sj(this.sP, (MotionEvent) objArr[0]);
    }
}
