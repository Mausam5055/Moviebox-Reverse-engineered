package com.bytedance.adsdk.ugeno.Sj.sP;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends Sj {

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.Sj.sP.sP$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.ugeno.Sj.EjP.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.ugeno.Sj.EjP.TRANSLATE_X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.TRANSLATE_Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.SCALE_X.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.SCALE_Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.ROTATE_X.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.ROTATE_Y.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.ROTATE_Z.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.ALPHA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                Sj[com.bytedance.adsdk.ugeno.Sj.EjP.BORDER_RADIUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public sP(Context context, com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, TreeMap<Float, String> treeMap) {
        super(context, tkc, str, treeMap);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public void Sj(float f11, String str) {
        this.HiB.add(Keyframe.ofFloat(f11, (this.sP.startsWith(com.bytedance.adsdk.ugeno.Sj.EjP.TRANSLATE.Sj()) || this.EjP == com.bytedance.adsdk.ugeno.Sj.EjP.BORDER_RADIUS) ? Dq.Sj(this.Sj, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str, 0.0f)) : com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str, 0.0f)));
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public void sP() {
        float fSef;
        switch (AnonymousClass1.Sj[this.EjP.ordinal()]) {
            case 1:
                fSef = this.Jcg.sef();
                break;
            case 2:
                fSef = this.Jcg.Zq();
                break;
            case 3:
                fSef = this.Jcg.uvD();
                break;
            case 4:
                fSef = this.Jcg.dNu();
                break;
            case 5:
                fSef = this.Jcg.TzV();
                break;
            case 6:
                fSef = this.Jcg.RiZ();
                break;
            case 7:
                fSef = this.Jcg.sU();
                break;
            case 8:
                fSef = this.Jcg.dx();
                break;
            case 9:
                fSef = this.Jcg.zR();
                break;
            default:
                fSef = 0.0f;
                break;
        }
        this.HiB.add(Keyframe.ofFloat(0.0f, fSef));
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.sP.Sj
    public TypeEvaluator vS() {
        return new FloatEvaluator();
    }
}
