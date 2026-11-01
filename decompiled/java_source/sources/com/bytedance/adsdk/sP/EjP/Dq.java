package com.bytedance.adsdk.sP.EjP;

import android.content.Context;
import android.util.Pair;
import com.bytedance.adsdk.sP.aa;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private final Jcg Sj;
    private final vS sP;

    public Dq(Jcg jcg, vS vSVar) {
        this.Sj = jcg;
        this.sP = vSVar;
    }

    private aa<com.bytedance.adsdk.sP.Jcg> Sj(Context context, String str, InputStream inputStream, String str2) throws IOException {
        Jcg jcg;
        return (str2 == null || (jcg = this.Sj) == null) ? com.bytedance.adsdk.sP.Dq.Sj(context, new ZipInputStream(inputStream), (String) null) : com.bytedance.adsdk.sP.Dq.Sj(context, new ZipInputStream(new FileInputStream(jcg.Sj(str, inputStream, TKC.ZIP))), str);
    }

    private aa<com.bytedance.adsdk.sP.Jcg> Sj(Context context, String str, InputStream inputStream, String str2, String str3) throws IOException {
        aa<com.bytedance.adsdk.sP.Jcg> aaVarSj;
        TKC tkc;
        Jcg jcg;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            TKC tkc2 = TKC.ZIP;
            aaVarSj = Sj(context, str, inputStream, str3);
            tkc = tkc2;
        } else {
            tkc = TKC.JSON;
            aaVarSj = Sj(str, inputStream, str3);
        }
        if (str3 != null && aaVarSj.Sj() != null && (jcg = this.Sj) != null) {
            jcg.Sj(str, tkc);
        }
        return aaVarSj;
    }

    private aa<com.bytedance.adsdk.sP.Jcg> Sj(String str, InputStream inputStream, String str2) throws IOException {
        Jcg jcg;
        return (str2 == null || (jcg = this.Sj) == null) ? com.bytedance.adsdk.sP.Dq.sP(inputStream, (String) null) : com.bytedance.adsdk.sP.Dq.sP(new FileInputStream(jcg.Sj(str, inputStream, TKC.JSON).getAbsolutePath()), str);
    }

    private aa<com.bytedance.adsdk.sP.Jcg> TKC(Context context, String str, String str2) {
        Closeable closeable = null;
        try {
            try {
                EjP ejPSj = this.sP.Sj(str);
                if (!ejPSj.Sj()) {
                    aa<com.bytedance.adsdk.sP.Jcg> aaVar = new aa<>(new IllegalArgumentException(ejPSj.EjP()));
                    try {
                        ejPSj.close();
                    } catch (IOException unused) {
                    }
                    return aaVar;
                }
                aa<com.bytedance.adsdk.sP.Jcg> aaVarSj = Sj(context, str, ejPSj.sP(), ejPSj.TKC(), str2);
                aaVarSj.Sj();
                try {
                    ejPSj.close();
                } catch (IOException unused2) {
                }
                return aaVarSj;
            } catch (Throwable th2) {
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th2;
            }
        } catch (Exception e11) {
            aa<com.bytedance.adsdk.sP.Jcg> aaVar2 = new aa<>(e11);
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException unused4) {
                }
            }
            return aaVar2;
        }
    }

    private com.bytedance.adsdk.sP.Jcg sP(Context context, String str, String str2) {
        Jcg jcg;
        Pair<TKC, InputStream> pairSj;
        if (str2 == null || (jcg = this.Sj) == null || (pairSj = jcg.Sj(str)) == null) {
            return null;
        }
        TKC tkc = (TKC) pairSj.first;
        InputStream inputStream = (InputStream) pairSj.second;
        aa<com.bytedance.adsdk.sP.Jcg> aaVarSj = tkc == TKC.ZIP ? com.bytedance.adsdk.sP.Dq.Sj(context, new ZipInputStream(inputStream), str2) : com.bytedance.adsdk.sP.Dq.sP(inputStream, str2);
        if (aaVarSj.Sj() != null) {
            return aaVarSj.Sj();
        }
        return null;
    }

    public aa<com.bytedance.adsdk.sP.Jcg> Sj(Context context, String str, String str2) {
        com.bytedance.adsdk.sP.Jcg jcgSP = sP(context, str, str2);
        return jcgSP != null ? new aa<>(jcgSP) : TKC(context, str, str2);
    }
}
