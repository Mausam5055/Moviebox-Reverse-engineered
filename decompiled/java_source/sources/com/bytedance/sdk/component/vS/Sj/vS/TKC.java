package com.bytedance.sdk.component.vS.Sj.vS;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements sP {
    private final Context Sj;
    private final HiB sP;

    @SuppressLint({"StaticFieldLeak"})
    private class Sj extends com.bytedance.sdk.component.vS.Sj.HiB.HiB {
        private final Map<String, String> EjP;
        private final String TKC;
        private final EjP sP;

        private Sj(EjP ejP, String str, Map<String, String> map) {
            super("AdsStats");
            this.sP = ejP;
            this.TKC = str;
            this.EjP = map;
        }

        private String TKC(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            if (str.contains("{TS}") || str.contains("__TS__")) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                str = str.replace("{TS}", String.valueOf(jCurrentTimeMillis)).replace("__TS__", String.valueOf(jCurrentTimeMillis));
            }
            return ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.TKC)) ? str.replace("{UID}", this.TKC).replace("__UID__", this.TKC) : str;
        }

        boolean Sj(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.startsWith("http://") || str.startsWith("https://");
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.vS.Sj.HiB.EjP ejPSj;
            com.bytedance.sdk.component.vS.Sj.HiB hiBUvD = Dq.Jcg().uvD();
            if (hiBUvD == null || Dq.Jcg().vS() == null || !hiBUvD.TKC() || !Sj(this.sP.sP())) {
                return;
            }
            if (this.sP.EjP() >= hiBUvD.TKC(this.sP.vS())) {
                TKC.this.sP.TKC(this.sP);
                return;
            }
            try {
                hiBUvD.Fmk();
                if (this.sP.Ym()) {
                    TKC.this.sP.Sj(this.sP);
                }
                if (hiBUvD.Sj(TKC.this.Sj())) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strSP = this.sP.sP();
                    if (hiBUvD.vS() == 0) {
                        strSP = TKC(this.sP.sP());
                        if (this.sP.TKC()) {
                            strSP = sP(strSP);
                        }
                    }
                    com.bytedance.sdk.component.vS.Sj.HiB.TKC tkcTEQ = hiBUvD.TEQ();
                    if (tkcTEQ == null) {
                        return;
                    }
                    tkcTEQ.Sj("User-Agent", hiBUvD.uA());
                    tkcTEQ.Sj("csj_client_source_from", "1");
                    if (this.EjP != null) {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry<String, String> entry : this.EjP.entrySet()) {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                        tkcTEQ.Sj("csj_extra_info", jSONObject.toString());
                    }
                    tkcTEQ.Sj(strSP);
                    try {
                        ejPSj = tkcTEQ.Sj();
                        try {
                            hiBUvD.Sj(ejPSj.Sj());
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable unused2) {
                        ejPSj = null;
                    }
                    EjP ejP = this.sP;
                    ejP.Sj(ejP.EjP() + 1);
                    if (ejPSj != null && ejPSj.Sj()) {
                        TKC.this.sP.TKC(this.sP);
                        this.sP.sP();
                        hiBUvD.Sj(true, 200, System.currentTimeMillis() - jCurrentTimeMillis, this.sP);
                        return;
                    }
                    if (ejPSj != null) {
                        this.sP.sP(ejPSj.sP());
                        this.sP.TKC(ejPSj.TKC());
                    }
                    if (ejPSj == null || ejPSj.sP() != 8848) {
                        this.sP.sP();
                        if (this.sP.EjP() >= hiBUvD.TKC(this.sP.vS())) {
                            TKC.this.sP.TKC(this.sP);
                            this.sP.sP();
                        } else {
                            TKC.this.sP.sP(this.sP);
                        }
                    } else {
                        ejPSj.TKC();
                        TKC.this.sP.TKC(this.sP);
                    }
                    hiBUvD.Sj(false, this.sP.Dq(), System.currentTimeMillis() - jCurrentTimeMillis, this.sP);
                }
            } catch (Throwable unused3) {
            }
        }

        String sP(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                return str.replace("[ss_random]", String.valueOf(TKC.TKC().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
            } catch (Exception unused) {
                return str;
            }
        }
    }

    public TKC(Context context, HiB hiB) {
        this.Sj = context;
        this.sP = hiB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(List<EjP> list, String str, boolean z10) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.HiB hiBUvD = Dq.Jcg().uvD();
        for (EjP ejP : list) {
            if (hiBUvD != null && hiBUvD.EjP() != null) {
                ejP.Sj(z10);
                hiBUvD.EjP().execute(new Sj(ejP, str, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Random TKC() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    public Context Sj() {
        Context context = this.Sj;
        return context == null ? Dq.Jcg().vS() : context;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.sP
    public Runnable Sj(final EjP ejP, final String str, final Map<String, String> map) {
        if (ejP == null || TextUtils.isEmpty(ejP.Sj())) {
            return null;
        }
        return new Runnable() { // from class: com.bytedance.sdk.component.vS.Sj.vS.TKC.1
            @Override // java.lang.Runnable
            public void run() {
                if (TKC.this.sP.Sj(ejP.Sj()) != null) {
                    new Sj(ejP, str, map).run();
                }
            }
        };
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.sP
    public void Sj(String str, List<String> list, boolean z10, Map<String, String> map, int i11, String str2) {
        com.bytedance.sdk.component.vS.Sj.HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD == null || Dq.Jcg().vS() == null || hiBUvD.EjP() == null || !hiBUvD.TKC() || list == null || list.size() == 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            hiBUvD.EjP().execute(new Sj(new EjP(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), it.next(), z10, i11, str2), str, map));
        }
    }

    @Override // com.bytedance.sdk.component.vS.Sj.vS.sP
    public void Sj(final String str, final boolean z10) {
        com.bytedance.sdk.component.vS.Sj.HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD == null || Dq.Jcg().vS() == null || !hiBUvD.TKC()) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.HiB.HiB hiB = new com.bytedance.sdk.component.vS.Sj.HiB.HiB("trackFailedUrls") { // from class: com.bytedance.sdk.component.vS.Sj.vS.TKC.2
            @Override // java.lang.Runnable
            public void run() {
                TKC.this.Sj(TKC.this.sP.Sj(), str, z10);
            }
        };
        hiB.Sj(1);
        if (hiBUvD.EjP() != null) {
            hiBUvD.EjP().execute(hiB);
        }
    }
}
