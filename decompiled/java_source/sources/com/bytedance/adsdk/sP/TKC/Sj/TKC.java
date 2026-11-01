package com.bytedance.adsdk.sP.TKC.Sj;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends sef<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> {
    public TKC(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> list) {
        super(Sj(list));
    }

    private static com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP> Sj(com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP> sj2) {
        com.bytedance.adsdk.sP.TKC.sP.EjP ejP = sj2.Sj;
        com.bytedance.adsdk.sP.TKC.sP.EjP ejP2 = sj2.sP;
        if (ejP == null || ejP2 == null || ejP.Sj().length == ejP2.Sj().length) {
            return sj2;
        }
        float[] fArrSj = Sj(ejP.Sj(), ejP2.Sj());
        return sj2.Sj(ejP.Sj(fArrSj), ejP2.Sj(fArrSj));
    }

    private static List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> Sj(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            list.set(i11, Sj(list.get(i11)));
        }
        return list;
    }

    static float[] Sj(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f11 = Float.NaN;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            float f12 = fArr3[i12];
            if (f12 != f11) {
                fArr3[i11] = f12;
                i11++;
                f11 = fArr3[i12];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i11);
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public com.bytedance.adsdk.sP.Sj.sP.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> Sj() {
        return new com.bytedance.adsdk.sP.Sj.sP.HiB(this.Sj);
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.sef, com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public /* bridge */ /* synthetic */ List TKC() {
        return super.TKC();
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.sef, com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public /* bridge */ /* synthetic */ boolean sP() {
        return super.sP();
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.sef
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
