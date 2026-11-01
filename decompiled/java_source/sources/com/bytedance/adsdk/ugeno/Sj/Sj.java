package com.bytedance.adsdk.ugeno.Sj;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private Context EjP;
    private int HiB;
    private com.bytedance.adsdk.ugeno.sP.TKC Sj;
    private ValueAnimator TKC;
    private sP sP;
    private com.bytedance.adsdk.ugeno.Sj.Sj.Sj vS;

    public Sj(Context context, com.bytedance.adsdk.ugeno.sP.TKC tkc, sP sPVar) {
        this.Sj = tkc;
        this.sP = sPVar;
        this.EjP = context;
    }

    public void Sj() {
        ValueAnimator valueAnimator = this.TKC;
        if (valueAnimator == null || this.HiB == -2) {
            return;
        }
        valueAnimator.start();
    }

    public void Sj(int i11, int i12) {
        com.bytedance.adsdk.ugeno.Sj.Sj.Sj sj2 = this.vS;
        if (sj2 != null) {
            sj2.Sj(i11, i12);
        }
    }

    public void Sj(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Sj.Sj.Sj sj2 = this.vS;
        if (sj2 != null) {
            sj2.Sj(canvas);
        }
    }

    public ValueAnimator TKC() {
        com.bytedance.adsdk.ugeno.Sj.sP.Sj tkc;
        sP sPVar = this.sP;
        if (sPVar == null || this.Sj == null) {
            return null;
        }
        Map<String, TreeMap<Float, String>> mapSP = sPVar.sP();
        ArrayList arrayList = new ArrayList();
        if (mapSP != null && !mapSP.isEmpty()) {
            for (Map.Entry<String, TreeMap<Float, String>> entry : mapSP.entrySet()) {
                if (entry != null) {
                    String key = entry.getKey();
                    String strTKC = EjP.Sj(key).TKC();
                    strTKC.hashCode();
                    switch (strTKC) {
                        case "int":
                            tkc = new com.bytedance.adsdk.ugeno.Sj.sP.TKC(this.EjP, this.Sj, key, entry.getValue());
                            break;
                        case "float":
                            tkc = new com.bytedance.adsdk.ugeno.Sj.sP.sP(this.EjP, this.Sj, key, entry.getValue());
                            break;
                        case "point":
                            tkc = new com.bytedance.adsdk.ugeno.Sj.sP.EjP(this.EjP, this.Sj, key, entry.getValue());
                            break;
                        default:
                            tkc = null;
                            break;
                    }
                    if (tkc != null) {
                        arrayList.addAll(tkc.HiB());
                    }
                }
            }
        }
        JSONObject jSONObjectSj = this.sP.Sj();
        if (jSONObjectSj != null) {
            com.bytedance.adsdk.ugeno.Sj.Sj.Sj Sj = com.bytedance.adsdk.ugeno.Sj.Sj.Sj.C0201Sj.Sj(this.Sj, jSONObjectSj);
            this.vS = Sj;
            if (Sj != null) {
                arrayList.addAll(Sj.TKC());
            }
        }
        final View viewYm = this.Sj.Ym();
        if (viewYm == null) {
            return null;
        }
        final sP.Sj sjJcg = this.sP.Jcg();
        if (sjJcg != null) {
            viewYm.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.Sj.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    int width = viewYm.getWidth();
                    int height = viewYm.getHeight();
                    viewYm.setPivotX(TKC.Sj(sjJcg.Sj, width));
                    viewYm.setPivotY(TKC.Sj(sjJcg.sP, height));
                }
            });
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(viewYm, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[0]));
        this.HiB = TKC.Sj(this.sP.EjP());
        objectAnimatorOfPropertyValuesHolder.setDuration(this.sP.TKC());
        int i11 = this.HiB;
        if (i11 != -2) {
            objectAnimatorOfPropertyValuesHolder.setRepeatCount(i11);
        }
        objectAnimatorOfPropertyValuesHolder.setStartDelay(this.sP.vS());
        objectAnimatorOfPropertyValuesHolder.setRepeatMode(TKC.Sj(this.sP.HiB()));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(TKC.sP(this.sP.Dq()));
        this.TKC = objectAnimatorOfPropertyValuesHolder;
        return objectAnimatorOfPropertyValuesHolder;
    }

    public void sP() {
        ValueAnimator valueAnimator = this.TKC;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void sP(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Sj.Sj.Sj sj2 = this.vS;
        if (sj2 != null) {
            sj2.sP(canvas);
        }
    }
}
