package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.EjP.Ym;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends Sj {
    private boolean Fmk;
    private float Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private float f20807aa;

    public Jcg(Context context) {
        super(context);
    }

    public boolean Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Ym = motionEvent.getRawX();
            this.f20807aa = motionEvent.getRawY();
        } else if (action != 1) {
            if (action == 2) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (Math.abs(rawX - this.Ym) >= 15.0f || Math.abs(rawY - this.f20807aa) >= 15.0f) {
                    this.Fmk = true;
                }
            } else if (action == 3) {
                this.Fmk = false;
            }
        } else {
            if (this.Fmk) {
                this.Fmk = false;
                this.Ym = 0.0f;
                this.f20807aa = 0.0f;
                return false;
            }
            float rawX2 = motionEvent.getRawX();
            float rawY2 = motionEvent.getRawY();
            if (Math.abs(rawX2 - this.Ym) >= 15.0f || Math.abs(rawY2 - this.f20807aa) >= 15.0f) {
                this.Fmk = false;
            } else {
                Ym ym2 = this.Sj;
                if (ym2 != null) {
                    ym2.Sj(tkc, this.vS, this.TKC.sP());
                    this.Ym = 0.0f;
                    this.f20807aa = 0.0f;
                    return true;
                }
            }
        }
        return true;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.EjP.Sj
    public boolean Sj(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        return Sj(this.sP, (MotionEvent) objArr[0]);
    }
}
