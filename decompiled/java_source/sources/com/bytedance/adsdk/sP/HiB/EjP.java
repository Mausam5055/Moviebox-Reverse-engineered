package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    static com.bytedance.adsdk.sP.TKC.Sj.Jcg EjP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.Jcg(Sj(jsonReader, jcg, WMZ.Sj));
    }

    static com.bytedance.adsdk.sP.TKC.Sj.Dq HiB(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.Dq(Sj(jsonReader, com.bytedance.adsdk.sP.vS.vS.Sj(), jcg, Mts.Sj));
    }

    static com.bytedance.adsdk.sP.TKC.Sj.Sj Jcg(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.Sj(Sj(jsonReader, jcg, Jcg.Sj));
    }

    static com.bytedance.adsdk.sP.TKC.Sj.TKC Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, int i11) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.TKC(Sj(jsonReader, jcg, new Zq(i11)));
    }

    public static com.bytedance.adsdk.sP.TKC.Sj.sP Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return Sj(jsonReader, jcg, true);
    }

    public static com.bytedance.adsdk.sP.TKC.Sj.sP Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, boolean z10) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.sP(Sj(jsonReader, z10 ? com.bytedance.adsdk.sP.vS.vS.Sj() : 1.0f, jcg, aa.Sj));
    }

    private static <T> List<com.bytedance.adsdk.sP.Jcg.Sj<T>> Sj(JsonReader jsonReader, float f11, com.bytedance.adsdk.sP.Jcg jcg, Ei<T> ei2) throws IOException {
        return dx.Sj(jsonReader, jcg, f11, ei2, false);
    }

    private static <T> List<com.bytedance.adsdk.sP.Jcg.Sj<T>> Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, Ei<T> ei2) throws IOException {
        return dx.Sj(jsonReader, jcg, 1.0f, ei2, false);
    }

    static com.bytedance.adsdk.sP.TKC.Sj.vS TKC(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.vS(dx.Sj(jsonReader, jcg, com.bytedance.adsdk.sP.vS.vS.Sj(), LqL.Sj, true));
    }

    static com.bytedance.adsdk.sP.TKC.Sj.EjP sP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.EjP(Sj(jsonReader, jcg, TzV.Sj));
    }

    static com.bytedance.adsdk.sP.TKC.Sj.TEQ vS(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.TKC.Sj.TEQ(Sj(jsonReader, com.bytedance.adsdk.sP.vS.vS.Sj(), jcg, uA.Sj));
    }
}
