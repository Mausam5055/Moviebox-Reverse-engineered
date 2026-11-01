package com.bytedance.sdk.openadsdk.EjP;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class dNu implements com.bytedance.sdk.openadsdk.EjP.EjP.HiB {
    private JSONArray Dq;
    private Boolean EjP;
    private Boolean HiB;
    private JSONArray Jcg;
    private String Sj;
    private Boolean TKC;
    private sU sP;
    private JSONObject vS;

    protected dNu() {
        this.Sj = "embeded_ad";
        Boolean bool = Boolean.FALSE;
        this.TKC = bool;
        this.EjP = bool;
        this.HiB = bool;
    }

    public dNu(int i11, String str, sU sUVar) {
        Boolean bool = Boolean.FALSE;
        this.TKC = bool;
        this.EjP = bool;
        this.HiB = bool;
        this.Sj = str;
        this.sP = sUVar;
        this.vS = new JSONObject();
        this.Jcg = new JSONArray();
        this.Dq = new JSONArray();
        Sj(this.vS, "webview_source", Integer.valueOf(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(JSONArray jSONArray, Object obj) {
        if (jSONArray == null || jSONArray.length() >= 10) {
            return;
        }
        try {
            jSONArray.put(obj);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(JSONObject jSONObject, String str, Object obj) {
        Sj(jSONObject, str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(JSONObject jSONObject, String str, Object obj, boolean z10) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z10) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dNu() {
        if (this.HiB.booleanValue()) {
            return true;
        }
        return this.EjP.booleanValue() && this.TKC.booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.TKC
    public void Dq() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.2
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "native_endcard_close", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.TKC
    public void EjP() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.26
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "native_render_end", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void EjP(final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.18
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.sP
    public void Fmk() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.14
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "native_render_end", jSONObject);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                JSONObject jSONObject2 = new JSONObject();
                dNu.this.Sj(jSONObject2, "ts", Long.valueOf(jCurrentTimeMillis2));
                dNu dnu2 = dNu.this;
                dnu2.Sj(dnu2.vS, "render_success", jSONObject2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void HiB() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.27
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "webview_load_start", (Object) jSONObject, false);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void HiB(final String str) {
        try {
            com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.19
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    dNu dnu = dNu.this;
                    dnu.Sj(dnu.vS, str, jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.TKC
    public void Jcg() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.30
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "native_endcard_show", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void Jcg(final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.22
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.EjP
    public void Sj() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.1
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(jSONObject, "render_sequence", Integer.valueOf(dnu.sP.fF()));
                if (dNu.this.sP != null) {
                    if (dNu.this.sP.xhi() != null) {
                        if (dNu.this.sP.xhi().sef()) {
                            dNu.this.Sj(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().EjP()));
                            dNu.this.Sj(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().EjP()));
                        } else {
                            dNu.this.Sj(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().TKC()));
                            dNu.this.Sj(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().TKC()));
                        }
                    } else if (dNu.this.sP.ndK() != null) {
                        dNu.this.Sj(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().EjP()));
                        dNu.this.Sj(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().EjP()));
                    }
                }
                dNu dnu2 = dNu.this;
                dnu2.Sj(dnu2.vS, "render_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void Sj(final int i11) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.24
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, "isWebViewCache", Integer.valueOf(i11));
                if (dNu.this.sP != null) {
                    if (dNu.this.sP.db()) {
                        dNu.this.Sj(jSONObject, "engine_version", "v3");
                    } else {
                        dNu.this.Sj(jSONObject, "engine_version", "v1");
                    }
                }
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "before_webview_request", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.EjP
    public void Sj(final int i11, final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.23
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, "code", Integer.valueOf(i11));
                String str2 = str;
                if (str2 != null) {
                    dNu.this.Sj(jSONObject, "reason", str2);
                }
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "render_error", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void Sj(final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.7
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, "jsb", str);
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "webview_jsb_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void Sj(final String str, final long j11, final long j12, final int i11) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.5
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str) || j12 < j11) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "start_ts", Long.valueOf(j11));
                dNu.this.Sj(jSONObject, "end_ts", Long.valueOf(j12));
                dNu.this.Sj(jSONObject, "intercept_type", Integer.valueOf(i11));
                dNu.this.Sj(jSONObject, NativeComponentConstants.KEY_COMPONENT_TYPE, "intercept_html");
                dNu.this.Sj(jSONObject, "url", str);
                dNu.this.Sj(jSONObject, "duration", Long.valueOf(j12 - j11));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.Dq, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void Sj(final JSONObject jSONObject) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.29
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                dNu.this.Sj(jSONObject2, "ts", Long.valueOf(System.currentTimeMillis()));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "webview_load_error", jSONObject2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.HiB
    public void Sj(boolean z10) {
        this.HiB = Boolean.valueOf(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.TKC
    public void TEQ() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.4
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, NativeComponentConstants.KEY_COMPONENT_TYPE, "native_enterForeground");
                dNu dnu = dNu.this;
                dnu.Sj(dnu.Jcg, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.sP
    public void TKC() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.25
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "native_render_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void TKC(final int i11, final String str) {
        try {
            com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.21
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    dNu.this.Sj(jSONObject, "code", Integer.valueOf(i11));
                    dNu dnu = dNu.this;
                    dnu.Sj(dnu.vS, str, jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void TKC(final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.11
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.HiB
    public void Ym() {
        this.TKC = Boolean.TRUE;
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.EjP
    public void Zq() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.16
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "render_failed", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.HiB
    public void aa() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.10
            @Override // java.lang.Runnable
            public void run() {
                if (dNu.this.dNu()) {
                    if (dNu.this.Jcg != null && dNu.this.Jcg.length() != 0) {
                        try {
                            dNu.this.vS.put("native_switchBackgroundAndForeground", dNu.this.Jcg);
                        } catch (Exception unused) {
                        }
                    }
                    if (dNu.this.Dq != null && dNu.this.Dq.length() != 0) {
                        try {
                            dNu.this.vS.put("intercept_source", dNu.this.Dq);
                        } catch (Exception unused2) {
                        }
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("webview_time_track", dNu.this.vS);
                    } catch (JSONException e11) {
                        com.bytedance.sdk.component.utils.sU.Sj("WebviewTimeTrack", "trySendTrackInfo json error", e11);
                    }
                    if (com.bytedance.sdk.openadsdk.core.uA.sP().RiZ() && dNu.this.vS != null) {
                        JSONObject unused3 = dNu.this.vS;
                    }
                    TKC.sP(dNu.this.sP, dNu.this.Sj, "webview_time_track", jSONObject);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.EjP
    public void sP() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.12
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "render_success", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void sP(final int i11, final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.13
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, "code", Integer.valueOf(i11));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void sP(final String str) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.8
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, "jsb", str);
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "webview_jsb_end", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void sP(final String str, final long j11, final long j12, final int i11) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.6
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str) || j12 < j11) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "start_ts", Long.valueOf(j11));
                dNu.this.Sj(jSONObject, "end_ts", Long.valueOf(j12));
                dNu.this.Sj(jSONObject, "intercept_type", Integer.valueOf(i11));
                dNu.this.Sj(jSONObject, NativeComponentConstants.KEY_COMPONENT_TYPE, "intercept_js");
                dNu.this.Sj(jSONObject, "url", str);
                dNu.this.Sj(jSONObject, "duration", Long.valueOf(j12 - j11));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.Dq, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void sP(final JSONObject jSONObject) {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.9
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2;
                if (dNu.this.vS == null || (jSONObject2 = jSONObject) == null) {
                    return;
                }
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    dNu dnu = dNu.this;
                    dnu.Sj(dnu.vS, next, jSONObject.opt(next));
                }
                dNu.this.EjP = Boolean.TRUE;
                dNu.this.aa();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.sP
    public void sef() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.15
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "no_native_render", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.TKC
    public void uA() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.3
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu.this.Sj(jSONObject, NativeComponentConstants.KEY_COMPONENT_TYPE, "native_enterBackground");
                dNu dnu = dNu.this;
                dnu.Sj(dnu.Jcg, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.EjP
    public void uvD() {
        try {
            com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.17
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    dNu dnu = dNu.this;
                    dnu.Sj(dnu.vS, "render_did_finish", jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.vS
    public void vS() {
        com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.28
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                dNu dnu = dNu.this;
                dnu.Sj(dnu.vS, "webview_load_success", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.EjP.Sj
    public void vS(final String str) {
        try {
            com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.dNu.20
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    dNu.this.Sj(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    dNu dnu = dNu.this;
                    dnu.Sj(dnu.vS, str, jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }
}
