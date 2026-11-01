package com.bytedance.adsdk.ugeno.Sj.sP;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Sj {
    private List<Keyframe> Dq;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.Sj.sP.EjP$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.ugeno.Sj.EjP.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.ugeno.Sj.EjP.TRANSLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public EjP(Context context, com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, Map<Float, String> map) {
        super(context, tkc, str, map);
        this.Dq = new ArrayList();
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public List<PropertyValuesHolder> HiB() {
        String strSP = this.EjP.sP();
        EjP();
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(strSP + "X", (Keyframe[]) this.HiB.toArray(new Keyframe[0]));
        this.vS.add(propertyValuesHolderOfKeyframe);
        PropertyValuesHolder propertyValuesHolderOfKeyframe2 = PropertyValuesHolder.ofKeyframe(strSP + "Y", (Keyframe[]) this.Dq.toArray(new Keyframe[0]));
        this.vS.add(propertyValuesHolderOfKeyframe2);
        TypeEvaluator typeEvaluatorVS = vS();
        if (typeEvaluatorVS != null) {
            propertyValuesHolderOfKeyframe.setEvaluator(typeEvaluatorVS);
            propertyValuesHolderOfKeyframe2.setEvaluator(typeEvaluatorVS);
        }
        return this.vS;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public void Sj(float f11, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() != 2) {
                return;
            }
            float fOptDouble = (float) jSONArray.optDouble(0);
            float fOptDouble2 = (float) jSONArray.optDouble(1);
            if (this.EjP == com.bytedance.adsdk.ugeno.Sj.EjP.TRANSLATE) {
                fOptDouble = Dq.Sj(this.Sj, fOptDouble);
                fOptDouble2 = Dq.Sj(this.Sj, fOptDouble2);
            }
            this.HiB.add(Keyframe.ofFloat(f11, fOptDouble));
            this.Dq.add(Keyframe.ofFloat(f11, fOptDouble2));
        } catch (JSONException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public void sP() {
        Keyframe keyframeOfFloat;
        Keyframe keyframeOfFloat2;
        int i11 = AnonymousClass1.Sj[this.EjP.ordinal()];
        if (i11 == 1) {
            keyframeOfFloat = Keyframe.ofFloat(0.0f, this.Jcg.sef());
            keyframeOfFloat2 = Keyframe.ofFloat(0.0f, this.Jcg.Zq());
        } else if (i11 != 2) {
            keyframeOfFloat = null;
            keyframeOfFloat2 = null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(0.0f, this.Jcg.uvD());
            keyframeOfFloat2 = Keyframe.ofFloat(0.0f, this.Jcg.dNu());
        }
        if (keyframeOfFloat != null) {
            this.HiB.add(keyframeOfFloat);
        }
        if (keyframeOfFloat2 != null) {
            this.Dq.add(keyframeOfFloat2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public TypeEvaluator vS() {
        return new FloatEvaluator();
    }
}
