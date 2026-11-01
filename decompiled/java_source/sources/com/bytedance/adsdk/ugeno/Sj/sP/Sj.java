package com.bytedance.adsdk.ugeno.Sj.sP;

import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj {
    protected com.bytedance.adsdk.ugeno.Sj.EjP EjP;
    protected com.bytedance.adsdk.ugeno.sP.TKC Jcg;
    protected Context Sj;
    protected Map<Float, String> TKC;
    protected String sP;
    protected List<PropertyValuesHolder> vS = new ArrayList();
    protected List<Keyframe> HiB = new ArrayList();

    public Sj(Context context, com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, Map<Float, String> map) {
        this.Sj = context;
        this.sP = str;
        this.TKC = map;
        this.EjP = com.bytedance.adsdk.ugeno.Sj.EjP.Sj(this.sP);
        this.Jcg = tkc;
    }

    public void EjP() {
        Map<Float, String> map = this.TKC;
        if (map == null || map.size() <= 0) {
            return;
        }
        if (!Sj()) {
            sP();
        }
        for (Map.Entry<Float, String> entry : this.TKC.entrySet()) {
            if (entry != null) {
                Sj(entry.getKey().floatValue() / 100.0f, entry.getValue());
            }
        }
        TKC();
    }

    public List<PropertyValuesHolder> HiB() {
        String strSP = this.EjP.sP();
        EjP();
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(strSP, (Keyframe[]) this.HiB.toArray(new Keyframe[0]));
        TypeEvaluator typeEvaluatorVS = vS();
        if (typeEvaluatorVS != null) {
            propertyValuesHolderOfKeyframe.setEvaluator(typeEvaluatorVS);
        }
        this.vS.add(propertyValuesHolderOfKeyframe);
        return this.vS;
    }

    public abstract void Sj(float f11, String str);

    public boolean Sj() {
        Map<Float, String> map = this.TKC;
        if (map == null || map.size() <= 0) {
            return false;
        }
        return this.TKC.containsKey(Float.valueOf(0.0f));
    }

    public void TKC() {
        Map<Float, String> map = this.TKC;
        if (map == null || map.size() <= 0) {
            return;
        }
        Map<Float, String> map2 = this.TKC;
        if (map2 instanceof TreeMap) {
            Float f11 = (Float) ((TreeMap) map2).lastKey();
            if (f11.floatValue() != 100.0f) {
                Sj(100.0f, this.TKC.get(f11));
            }
        }
    }

    public abstract void sP();

    public abstract TypeEvaluator vS();
}
