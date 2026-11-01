package com.bytedance.adsdk.ugeno.Sj.sP;

import android.animation.ArgbEvaluator;
import android.animation.IntEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends Sj {
    public TKC(Context context, com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, TreeMap<Float, String> treeMap) {
        super(context, tkc, str, treeMap);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public void Sj(float f11, String str) {
        this.HiB.add(this.EjP == com.bytedance.adsdk.ugeno.Sj.EjP.BACKGROUND_COLOR ? Keyframe.ofInt(f11, com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str)) : Keyframe.ofInt(f11, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str, 0)));
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public void sP() {
        if (this.EjP == com.bytedance.adsdk.ugeno.Sj.EjP.BACKGROUND_COLOR) {
            this.HiB.add(Keyframe.ofInt(0.0f, this.Jcg.xD()));
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public TypeEvaluator vS() {
        return this.EjP == com.bytedance.adsdk.ugeno.Sj.EjP.BACKGROUND_COLOR ? new ArgbEvaluator() : new IntEvaluator();
    }
}
