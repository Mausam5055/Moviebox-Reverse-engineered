package com.bytedance.sdk.openadsdk.vS;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.utils.Dq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.Zq.TKC;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.Yf;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private static volatile sP Sj;
    private final ConcurrentHashMap<String, com.bytedance.sdk.openadsdk.uvD.Sj> sP = new ConcurrentHashMap<>();
    private com.bytedance.sdk.openadsdk.uvD.Sj TKC = null;
    private volatile boolean EjP = false;
    private volatile HandlerThread HiB = null;
    private volatile Handler vS = null;
    private String Jcg = "";
    private int Dq = 0;
    private volatile long uA = 0;
    private final Runnable TEQ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.vS.sP.6
        @Override // java.lang.Runnable
        public void run() {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    if (Sj.Sj().HiB()) {
                        Set<String> setKeySet = sP.this.sP.keySet();
                        if (setKeySet.size() > sP.this.Dq) {
                            sP.this.Dq = setKeySet.size();
                        }
                        HashSet hashSet = new HashSet(5);
                        ArrayList arrayList = new ArrayList(setKeySet.size());
                        arrayList.addAll(sP.this.sP.values());
                        Collections.sort(arrayList);
                        for (int i11 = 0; i11 < arrayList.size() && i11 < 5; i11++) {
                            hashSet.add(((com.bytedance.sdk.openadsdk.uvD.Sj) arrayList.get(i11)).sP());
                        }
                        try {
                            for (String str : setKeySet) {
                                com.bytedance.sdk.openadsdk.uvD.Sj sj2 = (com.bytedance.sdk.openadsdk.uvD.Sj) sP.this.sP.get(str);
                                if (sj2 != null) {
                                    JSONObject jSONObjectSj = sj2.Sj(jSONObject2);
                                    if (hashSet.contains(str)) {
                                        jSONObject.put(str, jSONObjectSj);
                                    }
                                }
                            }
                            jSONObject.put("common", jSONObject2);
                        } catch (JSONException e11) {
                            sU.sP(e11.getMessage(), new Object[0]);
                        }
                    } else {
                        try {
                            if (sP.this.TKC != null) {
                                jSONObject.put("common", sP.this.TKC.Sj(jSONObject2));
                            }
                        } catch (JSONException e12) {
                            sU.sP(e12.getMessage(), new Object[0]);
                        }
                    }
                } catch (Throwable th2) {
                    sU.sP(th2.getMessage(), new Object[0]);
                }
                sP.this.Jcg = jSONObject.toString();
                sP sPVar = sP.this;
                sPVar.Sj(sPVar.TEQ, Sj.Sj().EjP());
            } catch (OutOfMemoryError e13) {
                sU.sP(e13.getMessage(), new Object[0]);
            }
        }
    };

    private sP() {
    }

    private void EjP() {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.uA > 10000) {
            TKC.Sj("track_feature_result", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.vS.sP.1
                @Override // com.bytedance.sdk.openadsdk.Zq.sP
                @Nullable
                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                    sP.this.uA = jElapsedRealtime;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, String.valueOf(sP.this.Dq));
                    return EjP.sP().Sj("track_feature_result").sP(jSONObject.toString());
                }
            });
        }
    }

    private void HiB() {
        if (this.EjP) {
            return;
        }
        this.EjP = true;
        Sj(this.TEQ, Sj.Sj().EjP());
    }

    public static sP Sj() {
        if (Sj == null) {
            synchronized (com.bytedance.sdk.openadsdk.core.TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = new sP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    private void Sj(Runnable runnable) {
        if (Yf.Sj || runnable == null) {
            return;
        }
        try {
            TKC().post(runnable);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(Runnable runnable, long j11) {
        if (Yf.Sj || runnable == null) {
            return;
        }
        try {
            TKC().postDelayed(runnable, j11);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(@NonNull String str, @NonNull String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && Sj.Sj().TKC()) {
                HiB();
                if (!Sj.Sj().HiB()) {
                    if (this.TKC == null) {
                        this.TKC = new com.bytedance.sdk.openadsdk.uvD.Sj(str2);
                    }
                    this.TKC.Sj(str, str3);
                } else {
                    com.bytedance.sdk.openadsdk.uvD.Sj sj2 = this.sP.get(str2);
                    if (sj2 == null) {
                        sj2 = new com.bytedance.sdk.openadsdk.uvD.Sj(str2);
                    }
                    sj2.Sj(str, str3);
                    this.sP.put(str2, sj2);
                }
            }
        } catch (OutOfMemoryError e11) {
            sU.sP(e11.getMessage(), new Object[0]);
        }
    }

    private Handler TKC() {
        if (this.HiB == null || !this.HiB.isAlive()) {
            synchronized (sef.class) {
                try {
                    if (this.HiB == null || !this.HiB.isAlive()) {
                        this.HiB = Dq.Sj("csj_feature", -1);
                        this.vS = new Handler(this.HiB.getLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (this.vS == null) {
            synchronized (sef.class) {
                try {
                    if (this.vS == null) {
                        this.vS = new Handler(this.HiB.getLooper());
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return this.vS;
    }

    public void Sj(@NonNull final String str, final com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (!TextUtils.isEmpty(str) && Sj.Sj().TKC() && com.bytedance.sdk.openadsdk.core.model.sU.HiB(sUVar)) {
            if (!Sj.Sj().TzV() || sUVar.DKj() == 8 || sUVar.DKj() == 7 || sUVar.DKj() == 3) {
                if ("videoPercent30".equals(str) || "videoForceBreak".equals(str)) {
                    Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.vS.sP.4
                        @Override // java.lang.Runnable
                        public void run() {
                            String strCi = sUVar.Ci();
                            String strCKW = sUVar.cKW();
                            if (TextUtils.isEmpty(strCi)) {
                                return;
                            }
                            sP.this.Sj(str, strCi, strCKW);
                        }
                    });
                }
            }
        }
    }

    public void Sj(@NonNull final String str, final com.bytedance.sdk.openadsdk.core.model.sU sUVar, final String str2) {
        if (TextUtils.isEmpty(str) || !Sj.Sj().TKC()) {
            return;
        }
        if ("landingStart".equals(str) || "landingFinish".equals(str) || "landingContinue".equals(str) || "landingPause".equals(str)) {
            Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.vS.sP.5
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = sUVar;
                    if (sUVar2 == null || TextUtils.isEmpty(sUVar2.Ci())) {
                        return;
                    }
                    sP.this.Sj(str, sUVar.Ci(), sUVar.cKW() + str2);
                }
            });
        }
    }

    public void Sj(@NonNull final String str, @NonNull final String str2, final String str3, String str4) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !Sj.Sj().TKC()) {
            return;
        }
        if (PushConstants.PUSH_SERVICE_TYPE_SHOW.equals(str) || "click".equals(str) || "dislike".equals(str)) {
            Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.vS.sP.2
                @Override // java.lang.Runnable
                public void run() {
                    sP.this.Sj(str, str2, str3);
                }
            });
            return;
        }
        if (Sj.Sj().TzV()) {
            if (TextUtils.isEmpty(str4)) {
                return;
            }
            if (!"rewarded_video".equals(str4) && !"fullscreen_interstitial_ad".equals(str4) && !"open_ad".equals(str4)) {
                return;
            }
        }
        if ("feed_play".equals(str) || "feed_pause".equals(str) || "feed_continue".equals(str) || "feed_over".equals(str) || "feed_break".equals(str) || "play_error".equals(str)) {
            Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.vS.sP.3
                @Override // java.lang.Runnable
                public void run() {
                    sP.this.Sj(str, str2, str3);
                }
            });
        }
    }

    public void Sj(JSONObject jSONObject) {
        if (Sj.Sj().TKC()) {
            try {
                jSONObject.put("feature_data", this.Jcg);
                EjP();
            } catch (JSONException e11) {
                sU.sP(e11.getMessage(), new Object[0]);
            }
        }
    }

    public void sP() {
        try {
            if (Sj.Sj().TKC()) {
                Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.vS.sP.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!Sj.Sj().HiB()) {
                            if (sP.this.TKC != null) {
                                sP.this.TKC.Sj();
                            }
                        } else {
                            Iterator it = sP.this.sP.keySet().iterator();
                            while (it.hasNext()) {
                                com.bytedance.sdk.openadsdk.uvD.Sj sj2 = (com.bytedance.sdk.openadsdk.uvD.Sj) sP.this.sP.get((String) it.next());
                                if (sj2 != null) {
                                    sj2.Sj();
                                }
                            }
                        }
                    }
                });
            }
        } catch (OutOfMemoryError e11) {
            sU.sP(e11.getMessage(), new Object[0]);
        }
    }
}
