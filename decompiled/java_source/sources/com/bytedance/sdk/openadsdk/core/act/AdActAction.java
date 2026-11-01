package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.c;
import androidx.browser.customtabs.j;
import androidx.browser.customtabs.l;
import com.bytedance.sdk.openadsdk.core.model.TEQ;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdActAction {
    private ActServiceConnection Dq;
    private String EjP;
    private String HiB;
    private j Jcg;
    private sU TKC;
    private Long Zq;
    private Context sP;
    private BindCustomTabsServiceCallback uvD;
    private CustomTabsClient vS = null;
    private boolean uA = false;
    private boolean TEQ = false;
    private boolean Ym = false;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f21061aa = false;
    private boolean Fmk = false;
    private long sef = 0;
    private sP dNu = new sP() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.1
        @Override // com.bytedance.sdk.openadsdk.core.act.sP
        public void Sj() {
            AdActAction.this.vS = null;
            AdActAction.this.Dq = null;
            AdActAction.this.Jcg = null;
        }

        @Override // com.bytedance.sdk.openadsdk.core.act.sP
        public void Sj(final CustomTabsClient customTabsClient) {
            if (JcM.vS()) {
                AdActAction.this.Sj(customTabsClient);
            } else {
                JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdActAction.this.Sj(customTabsClient);
                    }
                });
            }
        }
    };
    public l Sj = new PAGEngagementSignalsCallback();
    private c TzV = new PAGCustomTabsCallback();

    public interface BindCustomTabsServiceCallback {
        void onBindFail(int i11, String str);

        void onBindSuccess(j jVar);
    }

    public class PAGCustomTabsCallback extends c {
        public PAGCustomTabsCallback() {
        }

        @Override // androidx.browser.customtabs.c
        public void onNavigationEvent(int i11, @Nullable Bundle bundle) {
            if (i11 == 1) {
                AdActAction.this.Zq = Long.valueOf(SystemClock.elapsedRealtime());
                if (AdActAction.this.f21061aa || AdActAction.this.TKC == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    AdActAction.this.Sj("load_start", jSONObject, 0L);
                    AdActAction.this.f21061aa = true;
                    return;
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("AdActAction", th2.getMessage());
                    return;
                }
            }
            if (i11 == 2) {
                if (AdActAction.this.TEQ || AdActAction.this.Zq == null || AdActAction.this.TKC == null) {
                    return;
                }
                long jLongValue = AdActAction.this.Zq.longValue() - SystemClock.elapsedRealtime();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("first_page", true);
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.put("url", AdActAction.this.HiB);
                    jSONObject2.put("preload_h5_type", AdActAction.this.TKC.rd());
                    AdActAction.this.Sj("load_finish", jSONObject2, jLongValue);
                    AdActAction.this.TEQ = true;
                    return;
                } catch (Throwable th3) {
                    com.bytedance.sdk.component.utils.sU.sP("AdActAction", th3.getMessage());
                    return;
                }
            }
            if (i11 != 3) {
                if (i11 != 6) {
                    return;
                }
                AdActAction.this.Sj();
                if (AdActAction.this.Fmk || AdActAction.this.TKC == null || AdActAction.this.Ym || AdActAction.this.TEQ || AdActAction.this.Zq == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(AdActAction.this.TKC, Mts.Sj(AdActAction.this.TKC), SystemClock.elapsedRealtime() - AdActAction.this.Zq.longValue(), 0, 1);
                return;
            }
            if (AdActAction.this.Ym || AdActAction.this.TKC == null) {
                return;
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.putOpt("render_type", "h5");
                jSONObject3.putOpt("render_type_2", 0);
                jSONObject3.put("url", AdActAction.this.HiB);
                jSONObject3.put("preload_h5_type", AdActAction.this.TKC.rd());
                AdActAction.this.Sj("load_fail", jSONObject3, 0L);
                AdActAction.this.Ym = true;
            } catch (Throwable th4) {
                com.bytedance.sdk.component.utils.sU.sP("AdActAction", th4.getMessage());
            }
        }
    }

    public class PAGEngagementSignalsCallback implements l {
        public PAGEngagementSignalsCallback() {
        }

        @Override // androidx.browser.customtabs.l
        public void onGreatestScrollPercentageIncreased(int i11, @NonNull Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.l
        public void onSessionEnded(boolean z10, @NonNull Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.l
        public void onVerticalScrollEvent(boolean z10, @NonNull Bundle bundle) {
            AdActAction.this.sef = System.currentTimeMillis();
            if (AdActAction.this.TKC == null || AdActAction.this.uA) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", AdActAction.this.HiB);
                jSONObject.put("down_time", AdActAction.this.sef);
                long jCurrentTimeMillis = System.currentTimeMillis();
                jSONObject.put("up_time", jCurrentTimeMillis);
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(AdActAction.this.TKC, Mts.Sj(AdActAction.this.TKC), "in_web_click", jSONObject, jCurrentTimeMillis - AdActAction.this.sef);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("AdActAction", th2.getMessage());
            }
            if (!TextUtils.isEmpty(sU.Sj(AdActAction.this.sP, AdActAction.this.TKC))) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", AdActAction.this.TKC, new TEQ.Sj().sP(AdActAction.this.sef).Sj(System.currentTimeMillis()).sP(uA.sP().Sj() ? 1 : 2).TKC(FPG.uA(AdActAction.this.sP)).Sj(FPG.Jcg(AdActAction.this.sP)).sP(FPG.Dq(AdActAction.this.sP)).Sj(), Mts.Sj(AdActAction.this.TKC), true, (Map<String, Object>) new HashMap(), 2);
            }
            AdActAction.this.uA = true;
        }
    }

    public AdActAction(Context context, sU sUVar, String str, String str2) {
        this.sP = context;
        this.TKC = sUVar;
        this.EjP = str;
        this.HiB = str2;
    }

    private com.bytedance.sdk.openadsdk.Zq.Sj.sP Sj(int i11) {
        com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVar = new com.bytedance.sdk.openadsdk.Zq.Sj.sP();
        sPVar.Sj(this.EjP);
        sPVar.Sj(this.TKC);
        sPVar.sP(Mts.Sj(this.TKC));
        sPVar.Sj(i11);
        sPVar.Sj(false);
        sPVar.sP(8);
        return sPVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj() {
        try {
            ActServiceConnection actServiceConnection = this.Dq;
            if (actServiceConnection == null) {
                return;
            }
            this.sP.unbindService(actServiceConnection);
            this.vS = null;
            this.Jcg = null;
            this.Dq = null;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("AdActAction", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(CustomTabsClient customTabsClient) {
        this.vS = customTabsClient;
        this.Jcg = customTabsClient.c(this.TzV);
        com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVarSj = Sj(9);
        try {
            j jVar = this.Jcg;
            Bundle bundle = Bundle.EMPTY;
            if (jVar.g(bundle)) {
                boolean zJ = this.Jcg.j(this.Sj, bundle);
                sPVarSj.TKC(1);
                Sj.Sj(1);
                if (zJ) {
                    sPVarSj.EjP(1);
                    Sj.sP(1);
                } else {
                    Sj.sP(0);
                }
            } else {
                sPVarSj.TKC(0);
                Sj.Sj(0);
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVarSj);
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback = this.uvD;
            if (bindCustomTabsServiceCallback != null) {
                bindCustomTabsServiceCallback.onBindSuccess(this.Jcg);
            }
        } catch (Throwable th2) {
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback2 = this.uvD;
            if (bindCustomTabsServiceCallback2 != null) {
                bindCustomTabsServiceCallback2.onBindFail(11, th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(String str, final JSONObject jSONObject, final long j11) {
        if (this.TKC == null || TextUtils.isEmpty(str)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        sU sUVar = this.TKC;
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(jCurrentTimeMillis, sUVar, Mts.Sj(sUVar), str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.2
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2;
                Throwable th2;
                try {
                    jSONObject.put("is_playable", uP.sP(AdActAction.this.TKC) ? 1 : 0);
                    jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(AdActAction.this.TKC) ? 1 : 0);
                    jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        long j12 = j11;
                        if (j12 > 0) {
                            jSONObject2.put("duration", j12);
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        com.bytedance.sdk.component.utils.sU.sP("AdActAction", th2.getMessage());
                    }
                } catch (Throwable th4) {
                    jSONObject2 = null;
                    th2 = th4;
                }
                return jSONObject2;
            }
        });
    }

    public void Sj(BindCustomTabsServiceCallback bindCustomTabsServiceCallback) {
        this.uvD = bindCustomTabsServiceCallback;
        if (this.sP == null || this.TKC == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Sj(8));
            String strSj = Sj.Sj(this.sP);
            if (strSj == null) {
                return;
            }
            ActServiceConnection actServiceConnection = new ActServiceConnection(this.dNu);
            this.Dq = actServiceConnection;
            CustomTabsClient.a(this.sP, strSj, actServiceConnection);
        } catch (Throwable th2) {
            String message = th2.getMessage();
            com.bytedance.sdk.component.utils.sU.sP("AdActAction", message);
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback2 = this.uvD;
            if (bindCustomTabsServiceCallback2 != null) {
                bindCustomTabsServiceCallback2.onBindFail(10, message);
            }
        }
    }
}
