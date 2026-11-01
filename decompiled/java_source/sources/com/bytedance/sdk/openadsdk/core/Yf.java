package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.push.PushConstants;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Yf implements com.bytedance.sdk.component.adexpress.HiB.sP, com.bytedance.sdk.component.utils.LqL.Sj, com.bytedance.sdk.openadsdk.TEQ.sP {
    private static final Map<String, Boolean> Dq;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.Sj Ei;
    private WeakReference<com.bytedance.sdk.component.uA.vS> EjP;
    private com.bytedance.sdk.openadsdk.EjP.EjP.HiB FPG;
    private String Fm;
    private int Fmk;
    private com.bytedance.sdk.openadsdk.aa.Dq HpB;
    private HashMap<String, TEQ> JcM;
    private com.bytedance.sdk.openadsdk.core.widget.HiB Jcg;
    private com.bytedance.sdk.openadsdk.aa.TKC LqL;
    private com.bytedance.sdk.component.adexpress.sP.Ym RiZ;
    protected Map<String, Object> Sj;
    private String TEQ;
    private JSONObject TzV;
    private com.bytedance.sdk.openadsdk.core.aa.EjP.sP UHs;
    private com.bytedance.sdk.component.Sj.dNu Wjd;
    private com.bytedance.sdk.openadsdk.aa.Ym Yf;
    private WeakReference<View> Ym;
    private int Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f21034aa;
    private com.bytedance.sdk.openadsdk.core.model.sU dNu;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private boolean f21035db;
    private Sj dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private JSONObject f21036dx;
    private List<com.bytedance.sdk.openadsdk.core.model.sU> fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.aa.Sj f21037ib;
    private com.bytedance.sdk.openadsdk.aa.vS kF;
    private com.bytedance.sdk.openadsdk.core.sP.EjP ley;
    private boolean ndK;
    private Context qRN;
    boolean sP;
    private com.bytedance.sdk.openadsdk.core.Dq.sef sU;
    private TKC sdp;
    private String sef;
    private com.bytedance.sdk.openadsdk.TEQ.TKC uA;
    private com.bytedance.sdk.openadsdk.aa.HiB uP;
    private String vS;
    private JSONObject wE;
    private com.bytedance.sdk.openadsdk.aa.sP xD;
    private com.bytedance.sdk.openadsdk.aa.Jcg xhi;
    private com.bytedance.sdk.openadsdk.TEQ.EjP zR;
    private boolean uvD = true;
    private boolean LD = true;
    private boolean WMZ = false;
    private boolean Mts = false;
    boolean TKC = false;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private boolean f21038jb = false;
    private final com.bytedance.sdk.component.utils.LqL HiB = new com.bytedance.sdk.component.utils.LqL(Looper.getMainLooper(), this);

    public interface Sj {
        void Sj();
    }

    private static class TKC implements Runnable {
        private final com.bytedance.sdk.openadsdk.core.Dq.sef Sj;
        private final JSONObject sP;

        public TKC(com.bytedance.sdk.openadsdk.core.Dq.sef sefVar, JSONObject jSONObject) {
            this.Sj = sefVar;
            this.sP = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            Yf.sP(this.Sj, this.sP);
        }
    }

    public static class sP {
        public JSONObject EjP;
        public int HiB;
        public String Sj;
        public String TKC;
        public String sP;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Dq = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("log_event", bool);
        concurrentHashMap.put("private", bool);
        concurrentHashMap.put("dispatch_message", bool);
        concurrentHashMap.put("custom_event", bool);
        concurrentHashMap.put("log_event_v3", bool);
    }

    public Yf(Context context) {
        this.qRN = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Dq(String str) {
        if (!TextUtils.isEmpty(str) && "click_other".equals(str)) {
            return TEQ();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Fmk(JSONObject jSONObject) {
        if (this.sU == null || jSONObject == null) {
            return;
        }
        try {
            this.sU.Sj(jSONObject.optInt("stateType", -1));
        } catch (Exception unused) {
        }
    }

    private void Jcg(String str) {
        try {
            JSONArray jSONArray = new JSONArray(new String(Base64.decode(str, 2)));
            int length = jSONArray.length();
            for (int i11 = 0; i11 < length; i11++) {
                sP sPVar = new sP();
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                    if (jSONObjectOptJSONObject != null) {
                        sPVar.Sj = jSONObjectOptJSONObject.optString("__msg_type", null);
                        sPVar.sP = jSONObjectOptJSONObject.optString("__callback_id", null);
                        sPVar.TKC = jSONObjectOptJSONObject.optString("func");
                        sPVar.EjP = jSONObjectOptJSONObject.optJSONObject("params");
                        sPVar.HiB = jSONObjectOptJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(sPVar.Sj) && !TextUtils.isEmpty(sPVar.TKC)) {
                    Message messageObtainMessage = this.HiB.obtainMessage(11);
                    messageObtainMessage.obj = sPVar;
                    this.HiB.sendMessage(messageObtainMessage);
                }
            }
        } catch (Exception unused2) {
        }
    }

    private void RiZ() {
        com.bytedance.sdk.openadsdk.aa.Ym ym2 = this.Yf;
        if (ym2 == null) {
            return;
        }
        ym2.sP();
    }

    private boolean RiZ(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", sP(this.fF));
        } catch (Exception unused) {
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Sj(String str, String str2) {
        if (com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.dNu)) {
            return PushConstants.PUSH_SERVICE_TYPE_SHOW.equals(str2) ? Mts.Sj(this.Fmk) : "aggregate_page";
        }
        if (com.bytedance.sdk.openadsdk.core.model.uP.HiB(this.dNu)) {
            return this.vS;
        }
        if (this.LqL != null) {
            return Mts.Sj(this.Fmk);
        }
        return this.RiZ == null ? Mts.sP(this.Fmk) : str;
    }

    private void Sj(final sP sPVar, final JSONObject jSONObject) {
        if (sPVar == null) {
            return;
        }
        try {
            Sj(sPVar.EjP, new com.bytedance.sdk.openadsdk.aa.EjP() { // from class: com.bytedance.sdk.openadsdk.core.Yf.6
                @Override // com.bytedance.sdk.openadsdk.aa.EjP
                public void Sj(boolean z10, List<com.bytedance.sdk.openadsdk.core.model.sU> list) {
                    if (!z10) {
                        Yf.this.sP(sPVar.sP, jSONObject);
                        return;
                    }
                    try {
                        jSONObject.put("creatives", Yf.sP(list));
                        Yf.this.sP(sPVar.sP, jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, boolean z10) {
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(dNu.Sj(), sUVar, str, this.Fmk);
        sj2.Sj(com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(dNu.Sj(), sUVar, str));
        if (!z10) {
            sj2.Sj(false);
        }
        sj2.onClick(null);
    }

    private void Sj(String str, boolean z10) {
        if (this.FPG == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z10) {
            this.FPG.Sj(str);
        } else {
            this.FPG.sP(str);
        }
    }

    public static void Sj(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.sU sUVar) throws Exception {
        String strAZ = sUVar.aZ();
        if (!TextUtils.isEmpty(strAZ)) {
            jSONObject.put(BidResponsedEx.KEY_CID, strAZ);
        }
        String strMZN = sUVar.mZN();
        if (!TextUtils.isEmpty(strMZN)) {
            jSONObject.put("log_extra", strMZN);
        }
        String strLip = sUVar.Lip();
        if (!TextUtils.isEmpty(strLip)) {
            jSONObject.put("download_url", strLip);
        }
        jSONObject.put("dc", TextUtils.isEmpty(dNu.EjP().FPG()) ? dNu.EjP().FPG() : "TX");
        jSONObject.put(TmcConstants.KEY_LANGUAGE, aa.sP());
        jSONObject.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().EZ());
    }

    private void Sj(JSONObject jSONObject, boolean z10, String str) {
        com.bytedance.sdk.openadsdk.core.widget.HiB hiB;
        if (z10) {
            try {
                String strOptString = jSONObject.optString("ad_extra_data");
                if (TextUtils.isEmpty(strOptString) || new JSONObject(strOptString).optInt("agg_request_type", -1) != 1 || !"click".equals(str) || (hiB = this.Jcg) == null) {
                    return;
                }
                hiB.Sj();
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.AndroidObject", "callAggClickListener faile", th2);
            }
        }
    }

    private boolean Sj(String str, int i11, com.bytedance.sdk.openadsdk.core.model.sef sefVar) {
        HashMap<String, TEQ> map;
        if (TextUtils.isEmpty(str) || (map = this.JcM) == null || map.get(str) == null) {
            return false;
        }
        throw null;
    }

    private boolean Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        String strOptString;
        int iOptInt;
        String strOptString2;
        if (jSONObject != null) {
            iOptInt = jSONObject.optInt("landingStyle");
            strOptString = jSONObject.optString("url");
            strOptString2 = jSONObject.optString("fallback_url");
        } else {
            strOptString = null;
            iOptInt = -1;
            strOptString2 = null;
        }
        boolean z10 = false;
        if (iOptInt == 1) {
            if (!com.bytedance.sdk.component.utils.TzV.Sj(strOptString)) {
                try {
                    jSONObject2.put("invalid_url", 1);
                } catch (JSONException e11) {
                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.AndroidObject", "handleUrl, EX1->: ", e11);
                }
            }
            return z10;
        }
        if (iOptInt == 2) {
            try {
                if (TextUtils.isEmpty(strOptString) && TextUtils.isEmpty(strOptString2)) {
                    jSONObject2.put("empty_url", 1);
                } else if (!com.bytedance.sdk.component.utils.TzV.Sj(strOptString2)) {
                    jSONObject2.put("invalid_url", 1);
                }
            } catch (JSONException e12) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.AndroidObject", "handleUrl, EX2->: ", e12);
            }
        }
        return z10;
        z10 = true;
        return z10;
    }

    private void TEQ(JSONObject jSONObject) throws Exception {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.uP.Ym(this.dNu))) {
            return;
        }
        jSONObject.put("playable_style", com.bytedance.sdk.openadsdk.core.model.uP.Ym(this.dNu));
    }

    private JSONObject TKC(com.bytedance.sdk.openadsdk.core.model.sU sUVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("is_ad_event", "1");
        jSONObject2.put(BidResponsedEx.KEY_CID, sUVar.Ci());
        jSONObject2.put("req_id", sUVar.cKW());
        jSONObject2.put("ad_id", sUVar.aZ());
        jSONObject2.put("log_extra", sUVar.mZN());
        jSONObject2.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().EZ());
        jSONObject.put("ad_info", jSONObject2);
        jSONObject.put("endcard_creative", sUVar.tc());
        return jSONObject;
    }

    private void TKC(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            sU(jSONObject2);
        } catch (Exception unused) {
        }
    }

    private void TzV() {
        com.bytedance.sdk.openadsdk.aa.Ym ym2 = this.Yf;
        if (ym2 == null) {
            return;
        }
        ym2.Sj();
    }

    private void TzV(JSONObject jSONObject) {
        if (jSONObject == null || this.zR == null) {
            return;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                this.zR.Sj(false, null);
            } else {
                this.zR.Sj(true, jSONArrayOptJSONArray);
            }
        } catch (Exception unused) {
            this.zR.Sj(false, null);
        }
    }

    private void Ym(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB;
        if (jSONObject == null || (hiB = this.FPG) == null) {
            return;
        }
        hiB.sP(jSONObject);
    }

    private JSONObject Zq() {
        try {
            View view = this.Ym.get();
            com.bytedance.sdk.component.uA.vS vSVar = this.EjP.get();
            if (view != null && vSVar != null) {
                int[] iArrSP = FPG.sP(view);
                int[] iArrSP2 = FPG.sP((View) vSVar);
                if (iArrSP != null && iArrSP2 != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("x", FPG.TKC(dNu.Sj(), iArrSP[0] - iArrSP2[0]));
                    jSONObject.put("y", FPG.TKC(dNu.Sj(), iArrSP[1] - iArrSP2[1]));
                    jSONObject.put("w", FPG.TKC(dNu.Sj(), view.getWidth()));
                    jSONObject.put("h", FPG.TKC(dNu.Sj(), view.getHeight()));
                    jSONObject.put(TmcConstants.KEY_STORAGE_ADD_HOME_IS_EXIST, true);
                    return jSONObject;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private void Zq(JSONObject jSONObject) {
        int i11;
        double dOptDouble;
        double dOptDouble2;
        com.bytedance.sdk.openadsdk.aa.Dq dq2;
        Yf yf2 = this;
        if (yf2.RiZ == null || jSONObject == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = yf2.FPG;
        if (hiB != null) {
            hiB.uvD();
        }
        com.bytedance.sdk.component.adexpress.sP.sef sefVar = new com.bytedance.sdk.component.adexpress.sP.sef();
        sefVar.Sj(1);
        try {
            boolean zOptBoolean = jSONObject.optBoolean("isRenderSuc");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("AdSize");
            if (jSONObjectOptJSONObject != null) {
                dOptDouble = jSONObjectOptJSONObject.optDouble("width");
                dOptDouble2 = jSONObjectOptJSONObject.optDouble("height");
            } else {
                dOptDouble = 0.0d;
                dOptDouble2 = 0.0d;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("videoInfo");
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    double dOptDouble3 = jSONObjectOptJSONObject2.optDouble("x");
                    double dOptDouble4 = jSONObjectOptJSONObject2.optDouble("y");
                    double dOptDouble5 = jSONObjectOptJSONObject2.optDouble("width");
                    double dOptDouble6 = jSONObjectOptJSONObject2.optDouble("height");
                    if (yf2.uvD(jSONObjectOptJSONObject2)) {
                        sefVar.Sj((float) jSONObjectOptJSONObject2.optDouble("borderRadiusTopLeft"));
                        sefVar.sP((float) jSONObjectOptJSONObject2.optDouble("borderRadiusTopRight"));
                        sefVar.TKC((float) jSONObjectOptJSONObject2.optDouble("borderRadiusBottomLeft"));
                        sefVar.EjP((float) jSONObjectOptJSONObject2.optDouble("borderRadiusBottomRight"));
                    }
                    sefVar.TKC(dOptDouble3);
                    sefVar.EjP(dOptDouble4);
                    sefVar.HiB(dOptDouble5);
                    sefVar.vS(dOptDouble6);
                } catch (Exception unused) {
                    i11 = 101;
                    yf2 = this;
                }
            } else {
                dOptDouble2 = dOptDouble2;
            }
            try {
                String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE, Dq.Sj(101));
                int iOptInt = jSONObject.optInt("code", 101);
                try {
                    sefVar.Sj(zOptBoolean);
                    sefVar.Sj(dOptDouble);
                    sefVar.sP(dOptDouble2);
                    sefVar.Sj(strOptString);
                    sefVar.sP(iOptInt);
                    yf2 = this;
                    yf2.RiZ.Sj(sefVar);
                    if (jSONObjectOptJSONObject2 == null || (dq2 = yf2.HpB) == null) {
                        return;
                    }
                    dq2.Sj(sefVar);
                    return;
                } catch (Exception unused2) {
                    yf2 = this;
                }
            } catch (Exception unused3) {
                yf2 = this;
                i11 = 101;
            }
        } catch (Exception unused4) {
        }
        i11 = 101;
        sefVar.sP(i11);
        sefVar.Sj(Dq.Sj(i11));
        yf2.RiZ.Sj(sefVar);
    }

    private void aa(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.aa.TKC tkc = this.LqL;
        if (tkc == null || jSONObject == null) {
            return;
        }
        tkc.Sj(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE, ""));
    }

    private Context dNu() {
        WeakReference<com.bytedance.sdk.component.uA.vS> weakReference = this.EjP;
        Activity activitySj = (weakReference == null || weakReference.get() == null) ? null : com.bytedance.sdk.component.utils.sP.Sj(this.EjP.get());
        return activitySj == null ? this.qRN : activitySj;
    }

    private void dNu(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Uri uri = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(uri.getScheme().toLowerCase())) {
                com.bytedance.sdk.openadsdk.utils.TzV.Sj(uri, this);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject dx(JSONObject jSONObject) {
        if (this.Sj != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String strOptString = jSONObject.optString("ad_extra_data", null);
                if (strOptString != null) {
                    jSONObject2 = new JSONObject(strOptString);
                }
                for (Map.Entry<String, Object> entry : this.Sj.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.sP(e11.toString(), new Object[0]);
            }
        }
        return jSONObject;
    }

    private void dx() {
        if (this.qRN == null || TextUtils.isEmpty(dNu.EjP().JcM())) {
            return;
        }
        TTWebsiteActivity.Sj(this.qRN, this.dNu, this.Fm);
    }

    private boolean ib() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
        if (sUVar == null || sUVar.nP() == null || com.bytedance.sdk.openadsdk.core.model.uP.sP(this.dNu) || this.WMZ || this.dNu.nP().optInt("parent_type") != 2) {
            return false;
        }
        int iDKa = this.dNu.DKa();
        if (iDKa != 8 && iDKa != 7) {
            return false;
        }
        this.WMZ = true;
        return true;
    }

    private void kF() {
        if (this.uA == null) {
            this.uA = com.bytedance.sdk.openadsdk.TEQ.Sj.Sj(this, this.dNu);
        }
    }

    public static JSONArray sP(List<com.bytedance.sdk.openadsdk.core.model.sU> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            jSONArray.put(list.get(i11).SP());
        }
        return jSONArray;
    }

    public static JSONObject sP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        int iIf;
        JSONObject jSONObject = new JSONObject();
        if (dNu.EjP() == null) {
            return jSONObject;
        }
        int i11 = 0;
        if (sUVar != null) {
            try {
                iIf = sUVar.If();
            } catch (Exception unused) {
            }
        } else {
            iIf = 0;
        }
        int iDKa = sUVar != null ? sUVar.DKa() : 0;
        int iTEQ = (sUVar == null || sUVar.sP() < 0) ? dNu.EjP().TEQ(String.valueOf(iIf)) : sUVar.sP();
        int iRiZ = (sUVar == null || sUVar.Sj() < 0) ? dNu.EjP().RiZ(String.valueOf(iIf)) : sUVar.Sj();
        boolean zVS = dNu.EjP().vS(String.valueOf(iIf));
        boolean z10 = dNu.EjP().Fmk(String.valueOf(iIf)) == 1;
        jSONObject.put("voice_control", (iDKa == 7 || iDKa == 8) ? dNu.EjP().dNu(String.valueOf(iIf)) : dNu.EjP().TKC(String.valueOf(iIf)));
        jSONObject.put("rv_skip_time", iTEQ);
        jSONObject.put("fv_skip_show", zVS);
        jSONObject.put("iv_skip_time", iRiZ);
        jSONObject.put("show_dislike", sUVar != null && sUVar.RrR());
        jSONObject.put("video_adaptation", sUVar != null ? sUVar.Mts() : 0);
        if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(sUVar)) {
            jSONObject.put("skip_change_to_close", true);
        } else {
            jSONObject.put("skip_change_to_close", z10);
        }
        if (sUVar.tR() && com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI()) {
            i11 = 1;
        }
        jSONObject.put("bar_render_platform", i11);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sP(com.bytedance.sdk.openadsdk.core.Dq.sef sefVar, JSONObject jSONObject) {
        if (sefVar == null || jSONObject == null) {
            return;
        }
        try {
            sefVar.Sj(jSONObject.optBoolean(CampaignEx.JSON_NATIVE_VIDEO_MUTE, false), !jSONObject.has(CampaignEx.JSON_NATIVE_VIDEO_MUTE) ? "jsb_def" : "jsb_web");
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            sU(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public static void sP(JSONObject jSONObject) throws Exception {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = uvD().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        jSONObject.put(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, com.bytedance.sdk.openadsdk.common.sP.Sj());
        jSONObject.put("innerAppName", com.bytedance.sdk.openadsdk.common.sP.HiB());
        jSONObject.put("aid", com.bytedance.sdk.openadsdk.common.sP.sP());
        jSONObject.put("sdkEdition", com.bytedance.sdk.openadsdk.common.sP.TKC());
        jSONObject.put(TmcStartParams.KEY_APP_VERSION, com.bytedance.sdk.openadsdk.common.sP.EjP());
        jSONObject.put("netType", com.bytedance.sdk.openadsdk.common.sP.vS());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.bytedance.sdk.openadsdk.common.sP.Sj(dNu.Sj()));
        if (DeviceUtils.sP(dNu.Sj())) {
            jSONObject.put("device_platform", "Android_Pad");
        } else {
            jSONObject.put("device_platform", "Android");
        }
        jSONObject.put("device_type", Build.VERSION.RELEASE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sU() {
        com.bytedance.sdk.openadsdk.core.Dq.sef sefVar = this.sU;
        if (sefVar != null) {
            sefVar.Sj();
        }
    }

    private void sU(JSONObject jSONObject) {
        WebView webViewSef;
        if (jSONObject == null || (webViewSef = sef()) == null) {
            return;
        }
        com.bytedance.sdk.component.utils.sef.Sj(webViewSef, "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject + ")");
    }

    private WebView sef() {
        com.bytedance.sdk.component.uA.vS vSVar;
        WeakReference<com.bytedance.sdk.component.uA.vS> weakReference = this.EjP;
        if (weakReference == null || (vSVar = weakReference.get()) == null) {
            return null;
        }
        return vSVar.getWebView();
    }

    private boolean sef(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.Dq.sef sefVar = this.sU;
        if (sefVar != null && jSONObject != null) {
            double dTKC = sefVar.TKC();
            int iEjP = this.sU.EjP();
            try {
                jSONObject.put("currentTime", dTKC / 1000.0d);
                jSONObject.put("state", iEjP);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private void uA(String str) {
        int iIndexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    WebView webViewSef = sef();
                    if (webViewSef != null) {
                        com.bytedance.sdk.component.utils.sef.Sj(webViewSef, "javascript:ToutiaoJSBridge._fetchQueue()");
                        return;
                    }
                    return;
                }
                if (!str.startsWith("bytedance://private/setresult/") || (iIndexOf = str.indexOf(38, 30)) <= 0) {
                    return;
                }
                String strSubstring = str.substring(30, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                if (!strSubstring.equals("SCENE_FETCHQUEUE") || strSubstring2.length() <= 0) {
                    return;
                }
                Jcg(strSubstring2);
            } catch (Exception unused) {
            }
        }
    }

    private void uA(JSONObject jSONObject) throws Exception {
        if (this.f21035db) {
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
            if ((sUVar instanceof com.bytedance.sdk.openadsdk.core.model.dx) && ((com.bytedance.sdk.openadsdk.core.model.dx) sUVar).Qne()) {
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("adInfos", jSONArray);
                for (com.bytedance.sdk.openadsdk.core.model.sU sUVar2 : ((com.bytedance.sdk.openadsdk.core.model.dx) this.dNu).GhY()) {
                    JSONObject jSONObject2 = new JSONObject();
                    Sj(jSONObject2, sUVar2);
                    jSONArray.put(jSONObject2);
                }
                return;
            }
        }
        Sj(jSONObject, this.dNu);
    }

    private static List<String> uvD() {
        return Arrays.asList(TmcConstants.EXTRA_APPINFO, "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    private boolean uvD(@NonNull JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    private JSONObject zR() {
        return sP(this.dNu);
    }

    public void Dq() {
        com.bytedance.sdk.openadsdk.core.Dq.sef sefVar = this.sU;
        if (sefVar != null) {
            sefVar.sP();
        }
    }

    public void Dq(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.Sj sjCBE;
        if (jSONObject == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("index");
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
        if (!(sUVar instanceof com.bytedance.sdk.openadsdk.core.model.dx) || (sjCBE = ((com.bytedance.sdk.openadsdk.core.model.dx) sUVar).CBE()) == null) {
            return;
        }
        List<com.bytedance.sdk.openadsdk.core.model.sU> listEjP = sjCBE.EjP();
        if (iOptInt < 0 || iOptInt >= listEjP.size()) {
            return;
        }
        Sj(listEjP.get(iOptInt), this.Fm, false);
        com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar = this.UHs;
        if (sPVar != null) {
            sPVar.EjP();
        }
    }

    public Yf EjP(String str) {
        this.f21034aa = str;
        return this;
    }

    public com.bytedance.sdk.openadsdk.core.model.sU EjP() {
        return this.dNu;
    }

    public void EjP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("zoom_type", 1);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("videoInfo");
        com.bytedance.sdk.component.adexpress.sP.sef sefVar = new com.bytedance.sdk.component.adexpress.sP.sef();
        if (jSONObjectOptJSONObject != null) {
            double dOptDouble = jSONObjectOptJSONObject.optDouble("x");
            double dOptDouble2 = jSONObjectOptJSONObject.optDouble("y");
            double dOptDouble3 = jSONObjectOptJSONObject.optDouble("width");
            double dOptDouble4 = jSONObjectOptJSONObject.optDouble("height");
            sefVar.TKC(dOptDouble);
            sefVar.EjP(dOptDouble2);
            sefVar.HiB(dOptDouble3);
            sefVar.vS(dOptDouble4);
        }
        com.bytedance.sdk.openadsdk.core.Dq.sef sefVar2 = this.sU;
        if (sefVar2 != null) {
            sefVar2.Sj(iOptInt, sefVar);
        }
    }

    public void EjP(boolean z10) {
        this.f21035db = z10;
    }

    public void Fmk() {
        Sj sj2 = this.dwU;
        if (sj2 != null) {
            sj2.Sj();
        }
    }

    public Yf HiB(String str) {
        this.sef = str;
        return this;
    }

    public void HiB(JSONObject jSONObject) {
        double d11;
        double d12;
        double dOptDouble;
        double d13;
        double d14;
        double d15;
        double d16;
        double d17;
        double d18;
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.component.utils.sU.Sj("TTAD.AndroidObject", "trigger Class1 method1");
        try {
            String strOptString = jSONObject.optString("adId");
            int iOptInt = jSONObject.optInt("areaType", 1);
            String strOptString2 = jSONObject.optString("clickAreaType");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("clickInfo");
            double d19 = 0.0d;
            if (jSONObjectOptJSONObject2 != null) {
                double dOptDouble2 = jSONObjectOptJSONObject2.optDouble("down_x", 0.0d);
                dOptDouble = jSONObjectOptJSONObject2.optDouble("down_y", 0.0d);
                double dOptDouble3 = jSONObjectOptJSONObject2.optDouble("up_x", 0.0d);
                double dOptDouble4 = jSONObjectOptJSONObject2.optDouble("up_y", 0.0d);
                double dOptDouble5 = jSONObjectOptJSONObject2.optDouble("down_time", 0.0d);
                double dOptDouble6 = jSONObjectOptJSONObject2.optDouble("up_time", 0.0d);
                double dOptDouble7 = jSONObjectOptJSONObject2.optDouble("button_x", 0.0d);
                double dOptDouble8 = jSONObjectOptJSONObject2.optDouble("button_y", 0.0d);
                double dOptDouble9 = jSONObjectOptJSONObject2.optDouble("button_width", 0.0d);
                double dOptDouble10 = jSONObjectOptJSONObject2.optDouble("button_height", 0.0d);
                jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("rectInfo");
                d18 = dOptDouble10;
                d19 = dOptDouble2;
                d12 = dOptDouble3;
                d13 = dOptDouble5;
                d14 = dOptDouble6;
                d15 = dOptDouble7;
                d16 = dOptDouble8;
                d17 = dOptDouble9;
                d11 = dOptDouble4;
            } else {
                d11 = 0.0d;
                d12 = 0.0d;
                dOptDouble = 0.0d;
                d13 = 0.0d;
                d14 = 0.0d;
                d15 = 0.0d;
                d16 = 0.0d;
                d17 = 0.0d;
                d18 = 0.0d;
                jSONObjectOptJSONObject = null;
            }
            com.bytedance.sdk.openadsdk.core.model.sef sefVarSj = new com.bytedance.sdk.openadsdk.core.model.sef.Sj().EjP((float) d19).TKC((float) dOptDouble).sP((float) d12).Sj((float) d11).sP((long) d13).Sj((long) d14).TKC((int) d15).EjP((int) d16).HiB((int) d17).vS((int) d18).Sj(strOptString2).Sj((SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj>) null).Sj(true).sP(iOptInt).Sj(jSONObjectOptJSONObject).Sj(jSONObject.optInt("clickAreaCategory", -1)).sP(jSONObjectOptJSONObject2).Sj();
            com.bytedance.sdk.component.adexpress.sP.Ym ym2 = this.RiZ;
            if (ym2 != null) {
                ym2.Sj(null, iOptInt, sefVarSj);
            }
            Sj(strOptString, iOptInt, sefVarSj);
        } catch (Exception unused) {
            com.bytedance.sdk.component.adexpress.sP.Ym ym3 = this.RiZ;
            if (ym3 != null) {
                ym3.Sj(null, -1, null);
            }
        }
    }

    public void HiB(boolean z10) {
        this.ndK = z10;
    }

    public boolean HiB() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
        return sUVar != null && sUVar.Yf();
    }

    public JSONObject Jcg(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
            if (sUVar instanceof com.bytedance.sdk.openadsdk.core.model.dx) {
                List<com.bytedance.sdk.openadsdk.core.model.sU> listEjP = ((com.bytedance.sdk.openadsdk.core.model.dx) sUVar).CBE().EjP();
                for (int i11 = 0; i11 < listEjP.size(); i11++) {
                    jSONArray.put(TKC(listEjP.get(i11)));
                }
            }
            jSONObject2.put("creatives", jSONArray);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public void Jcg() {
        com.bytedance.sdk.openadsdk.aa.TKC tkc;
        if (this.ndK && (tkc = this.LqL) != null) {
            tkc.Sj();
            return;
        }
        Context context = this.qRN;
        if ((context instanceof Activity) && com.bytedance.sdk.openadsdk.utils.dx.Sj((Activity) context)) {
            ((Activity) this.qRN).finish();
        }
    }

    public com.bytedance.sdk.openadsdk.aa.sP Sj() {
        return this.xD;
    }

    public Yf Sj(int i11) {
        this.Zq = i11;
        return this;
    }

    public Yf Sj(View view) {
        this.Ym = new WeakReference<>(view);
        return this;
    }

    public Yf Sj(com.bytedance.sdk.component.adexpress.sP.Ym ym2) {
        this.RiZ = ym2;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        WebView webView;
        if (vSVar == null || (webView = vSVar.getWebView()) == null) {
            return this;
        }
        try {
            com.bytedance.sdk.component.Sj.dNu dnuSP = com.bytedance.sdk.component.Sj.dNu.Sj(webView).Sj(new com.bytedance.sdk.openadsdk.Ym.Sj()).Sj("ToutiaoJSBridge").Sj(new com.bytedance.sdk.component.Sj.aa() { // from class: com.bytedance.sdk.openadsdk.core.Yf.1
                @Override // com.bytedance.sdk.component.Sj.aa
                @NonNull
                public <T> T Sj(@NonNull String str, @NonNull Type type) {
                    return null;
                }

                @Override // com.bytedance.sdk.component.Sj.aa
                @NonNull
                public <T> String Sj(@NonNull T t11) {
                    return null;
                }
            }).Sj(uA.sP().RiZ()).sP(true).Sj().sP();
            this.Wjd = dnuSP;
            com.bytedance.sdk.openadsdk.Ym.Sj.Jcg.Sj(dnuSP, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.Sj.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.sP.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.TKC.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.vS.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.uA.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.aa.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.TEQ.Sj(this.Wjd, vSVar);
            com.bytedance.sdk.openadsdk.Ym.Sj.Dq.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.HiB.Sj(this.Wjd, this.f21036dx);
            com.bytedance.sdk.openadsdk.Ym.Sj.EjP.Sj(this.Wjd, this);
            com.bytedance.sdk.openadsdk.Ym.Sj.Fmk.Sj(this.Wjd, vSVar, this, this.dNu);
            com.bytedance.sdk.openadsdk.Ym.Sj.Ym.Sj(this.Wjd, this, this.dNu);
        } catch (Exception unused) {
        }
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB) {
        this.FPG = hiB;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.Dq dq2) {
        this.HpB = dq2;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.HiB hiB) {
        this.uP = hiB;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.Jcg jcg) {
        this.xhi = jcg;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.Sj sj2) {
        this.f21037ib = sj2;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.TKC tkc) {
        this.LqL = tkc;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.Ym ym2) {
        this.Yf = ym2;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.aa.vS vSVar) {
        this.kF = vSVar;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.core.Dq.sef sefVar) {
        this.sU = sefVar;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        this.dNu = sUVar;
        if (sUVar != null) {
            this.TzV = sUVar.nP();
        }
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.core.sP.EjP ejP) {
        this.ley = ejP;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.core.widget.HiB hiB) {
        this.Jcg = hiB;
        return this;
    }

    public Yf Sj(com.bytedance.sdk.openadsdk.core.widget.Sj.Sj sj2) {
        this.Ei = sj2;
        return this;
    }

    public Yf Sj(List<com.bytedance.sdk.openadsdk.core.model.sU> list) {
        this.fF = list;
        return this;
    }

    public Yf Sj(Map<String, Object> map) {
        this.Sj = map;
        return this;
    }

    public Yf Sj(JSONObject jSONObject) {
        this.f21036dx = jSONObject;
        return this;
    }

    public Yf Sj(boolean z10) {
        this.sP = z10;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:207:0x0346 A[PHI: r3
  0x0346: PHI (r3v21 org.json.JSONObject) = (r3v14 org.json.JSONObject), (r3v22 org.json.JSONObject) binds: [B:224:0x0391, B:206:0x0344] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: switch over string: strings are not added: [[cancel_download_app_ad]] */
    public JSONObject Sj(sP sPVar, int i11) throws Exception {
        JSONObject jSONObjectZq;
        Context context;
        JSONObject jSONObject;
        if (!"call".equals(sPVar.Sj)) {
            return null;
        }
        if (uA.sP().RiZ()) {
            StringBuilder sb2 = new StringBuilder("[JSB-REQ] version:");
            sb2.append(i11);
            sb2.append(" method:");
            sb2.append(sPVar.TKC);
        }
        JSONObject jSONObject2 = new JSONObject();
        String str = sPVar.TKC;
        str.hashCode();
        switch (str) {
            case "subscribe_app_ad":
                kF();
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.dNu, this.Fm, 0, (JSONObject) null);
                Context context2 = this.qRN;
                if (context2 != null) {
                    this.uA.Sj(context2, sPVar.EjP, this.f21034aa, this.Fmk, this.uvD);
                    break;
                } else {
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.dNu, this.Fm, -1, (JSONObject) null);
                    break;
                }
                break;
            case "adInfo":
                uA(jSONObject2);
                break;
            case "pauseWebView":
                TzV();
                break;
            case "changeVideoState":
                Fmk(sPVar.EjP);
                break;
            case "openAdLandPageLinks":
                JSONObject jSONObject3 = sPVar.EjP;
                if (Sj(jSONObject3, jSONObject2)) {
                    TKC(jSONObject3);
                    break;
                }
                break;
            case "webview_time_track":
                Ym(sPVar.EjP);
                break;
            case "clickEvent":
                HiB(sPVar.EjP);
                break;
            case "appInfo":
                sP(jSONObject2);
                break;
            case "getScreenSize":
                com.bytedance.sdk.openadsdk.aa.Sj sj2 = this.f21037ib;
                if (sj2 != null) {
                    int iSP = sj2.sP();
                    int iSj = this.f21037ib.Sj();
                    jSONObject2.put("width", iSP);
                    jSONObject2.put("height", iSj);
                    break;
                }
                break;
            case "openPrivacy":
                dx();
                break;
            case "getMaterialMeta":
                RiZ(jSONObject2);
                break;
            case "send_temai_product_ids":
                TzV(sPVar.EjP);
                break;
            case "getTeMaiAds":
                jSONObjectZq = this.wE;
                if (jSONObjectZq != null) {
                    jSONObject2 = jSONObjectZq;
                    break;
                }
                break;
            case "download_app_ad":
                this.f21038jb = true;
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.dNu, this.Fm, 1, (JSONObject) null);
                com.bytedance.sdk.openadsdk.core.sP.EjP ejP = this.ley;
                if (ejP != null) {
                    ejP.Sj(this.LD);
                    break;
                } else {
                    com.bytedance.sdk.openadsdk.TEQ.TKC tkc = this.uA;
                    if (tkc == null || (context = this.qRN) == null) {
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.dNu, this.Fm, -2, (JSONObject) null);
                    } else {
                        tkc.Sj(context, sPVar.EjP, this.Fm);
                        com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar2 = this.UHs;
                        if (sPVar2 != null) {
                            sPVar2.EjP();
                        }
                    }
                    break;
                }
                break;
            case "close":
                Jcg();
                break;
            case "unsubscribe_app_ad":
                com.bytedance.sdk.openadsdk.TEQ.TKC tkc2 = this.uA;
                if (tkc2 != null) {
                    tkc2.Sj(sPVar.EjP);
                    break;
                }
                break;
            case "getCloseButtonInfo":
                jSONObjectZq = Zq();
                if (jSONObjectZq != null) {
                    jSONObject2 = jSONObjectZq;
                    break;
                }
                break;
            case "isViewable":
                jSONObject2.put("viewStatus", this.Mts ? 1 : 0);
                break;
            case "getNativeSiteCustomData":
                com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
                if (sUVar != null && !TextUtils.isEmpty(sUVar.jb())) {
                    jSONObject2.put("data", this.dNu.jb());
                    break;
                }
                break;
            case "sendReward":
                this.TKC = true;
                com.bytedance.sdk.openadsdk.aa.vS vSVar = this.kF;
                if (vSVar != null) {
                    vSVar.Sj();
                    break;
                }
                break;
            case "dynamicTrack":
                dNu(sPVar.EjP);
                break;
            case "getTemplateInfo":
                JSONObject jSONObject4 = this.f21036dx;
                if (jSONObject4 != null) {
                    jSONObject4.put("setting", zR());
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.dNu;
                    if (sUVar2 != null) {
                        this.f21036dx.put("extension", sUVar2.Grp());
                    }
                }
                jSONObject2 = this.f21036dx;
                break;
            case "getCurrentVideoState":
                sef(jSONObject2);
                break;
            case "getVolume":
                AudioManager audioManager = (AudioManager) dNu.Sj().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
                jSONObject2.put("endcard_mute", (audioManager != null ? audioManager.getStreamVolume(3) : -1) <= 0);
                break;
            case "pauseWebViewTimers":
                RiZ();
                break;
            case "muteVideo":
                sP(this.sU, sPVar.EjP);
                break;
            case "renderDidFinish":
                Zq(sPVar.EjP);
                break;
            case "removeLoading":
                com.bytedance.sdk.openadsdk.aa.HiB hiB = this.uP;
                if (hiB != null) {
                    hiB.Sj();
                    break;
                }
                break;
            case "endcard_load":
                aa(sPVar.EjP);
                break;
            case "getNetworkData":
                Sj(sPVar, jSONObject2);
                break;
            case "playable_style":
                TEQ(jSONObject2);
                break;
            case "sendLog":
                JSONObject jSONObject5 = sPVar.EjP;
                if (jSONObject5 != null && (jSONObject = jSONObject5.getJSONObject("extJson")) != null && jSONObject.has("category") && jSONObject.has("tag") && jSONObject.has("label")) {
                    String strOptString = jSONObject.optString("category");
                    String strOptString2 = jSONObject.optString("tag");
                    String strOptString3 = jSONObject.optString("label");
                    long jOptLong = jSONObject5.optLong(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    long jOptLong2 = jSONObject5.optLong("extValue");
                    try {
                        jSONObject.putOpt("ua_policy", Integer.valueOf(this.Zq));
                        break;
                    } catch (Exception unused) {
                    }
                    if ("click".equals(strOptString3)) {
                        jSONObject = dx(jSONObject);
                    }
                    String strSj = Sj(strOptString2, strOptString3);
                    boolean zHiB = com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.dNu);
                    Sj(jSONObject, zHiB, strOptString3);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.dNu, strOptString, strSj, strOptString3, jOptLong, jOptLong2, jSONObject, zHiB);
                    break;
                }
                break;
            case "skipVideo":
                sU();
                break;
            case "landscape_click":
                Context context3 = this.qRN;
                if (context3 instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.sP) {
                    ((com.bytedance.sdk.openadsdk.core.aa.EjP.sP) context3).EjP();
                    break;
                }
                break;
        }
        if (i11 == 1 && !TextUtils.isEmpty(sPVar.sP)) {
            sP(sPVar.sP, jSONObject2);
            if (uA.sP().RiZ()) {
                StringBuilder sb3 = new StringBuilder("[JSB-RSP] version:");
                sb3.append(i11);
                sb3.append(" data=");
                sb3.append(jSONObject2);
            }
        }
        return jSONObject2;
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        if (message != null && message.what == 11) {
            Object obj = message.obj;
            if (obj instanceof sP) {
                try {
                    Sj((sP) obj, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.aa.sP sPVar) {
        this.xD = sPVar;
    }

    public void Sj(Sj sj2) {
        this.dwU = sj2;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        this.UHs = sPVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    public void Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(EventConstants.KEY_TIME);
            String strOptString = jSONObject.optString("flag");
            com.bytedance.sdk.openadsdk.core.Dq.sef sefVar = this.sU;
            if (sefVar != null) {
                sefVar.Sj(iOptInt, strOptString);
            }
        } catch (JSONException unused) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.AndroidObject", "requestPauseVideo json exception");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TEQ.sP
    public void Sj(String str, JSONObject jSONObject) {
        TKC(str, jSONObject);
    }

    public void Sj(JSONObject jSONObject, final com.bytedance.sdk.openadsdk.aa.EjP ejP) {
        if (ejP == null) {
            return;
        }
        try {
            final com.bytedance.sdk.openadsdk.aa.EjP ejP2 = new com.bytedance.sdk.openadsdk.aa.EjP() { // from class: com.bytedance.sdk.openadsdk.core.Yf.7
                @Override // com.bytedance.sdk.openadsdk.aa.EjP
                public void Sj(final boolean z10, final List<com.bytedance.sdk.openadsdk.core.model.sU> list) {
                    com.bytedance.sdk.openadsdk.utils.JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Yf.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ejP.Sj(z10, list);
                        }
                    });
                }
            };
            if (this.dNu != null && !TextUtils.isEmpty(this.f21034aa)) {
                int iDKa = this.dNu.DKa();
                AdSlot adSlotXD = this.dNu.xD();
                com.bytedance.sdk.openadsdk.core.model.ib ibVar = new com.bytedance.sdk.openadsdk.core.model.ib();
                ibVar.vS = true;
                if (this.dNu.xhi() != null || this.dNu.ndK() != null) {
                    ibVar.Dq = 2;
                }
                JSONObject jSONObject2 = this.TzV;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                if (jSONObject != null) {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObject2.put(next, jSONObject.opt(next));
                    }
                }
                ibVar.Jcg = jSONObject2;
                dNu.TKC().Sj(adSlotXD, ibVar, iDKa, new RiZ.Sj() { // from class: com.bytedance.sdk.openadsdk.core.Yf.8
                    @Override // com.bytedance.sdk.openadsdk.core.RiZ.Sj
                    public void Sj(int i11, String str) {
                        ejP2.Sj(false, null);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.RiZ.Sj
                    public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
                        if (sj2.EjP() == null || sj2.EjP().isEmpty()) {
                            ejP2.Sj(false, null);
                            tkc.Sj(-3);
                            com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                        } else {
                            com.bytedance.sdk.openadsdk.core.model.sU sUVar = sj2.EjP().get(0);
                            if (sUVar != null) {
                                Yf.this.TzV = sUVar.nP();
                            }
                            ejP2.Sj(true, sj2.EjP());
                        }
                    }
                });
                return;
            }
            ejP2.Sj(false, null);
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.AndroidObject", "get ads error", e11);
        }
    }

    public void Sj(JSONObject jSONObject, String str) {
        com.bytedance.sdk.openadsdk.core.Dq.sef sefVar = this.sU;
        if (sefVar != null) {
            sefVar.Sj(str, jSONObject);
            return;
        }
        com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar = this.UHs;
        if (sPVar != null) {
            sPVar.Sj(str, jSONObject);
        }
    }

    public boolean Sj(Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            if (!"bytedance".equals(uri.getScheme())) {
                return false;
            }
            if (Dq.containsKey(uri.getHost())) {
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    boolean TEQ() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
        return sUVar != null && sUVar.qRN() == 1;
    }

    public Yf TKC(String str) {
        this.TEQ = str;
        return this;
    }

    public void TKC() {
        com.bytedance.sdk.component.Sj.dNu dnu = this.Wjd;
        if (dnu == null) {
            return;
        }
        dnu.Sj();
        this.Wjd = null;
    }

    public void TKC(int i11) {
        com.bytedance.sdk.openadsdk.core.Dq.sef sefVar = this.sU;
        if (sefVar != null) {
            sefVar.sP(i11);
        }
    }

    public void TKC(JSONObject jSONObject) {
        TzV.Sj(dNu(), this.qRN instanceof Activity, jSONObject, this.dNu, this.Fm, this.Fmk, sef(), this.Jcg);
    }

    public void TKC(boolean z10) {
        this.TKC = z10;
    }

    public void Ym() {
        ib();
    }

    public void aa() {
        com.bytedance.sdk.openadsdk.TEQ.TKC tkc = this.uA;
        if (tkc != null) {
            tkc.Sj();
        }
        TKC tkc2 = this.sdp;
        if (tkc2 != null) {
            com.bytedance.sdk.openadsdk.utils.JcM.sP(tkc2);
            this.sdp = null;
        }
        this.qRN = null;
        this.UHs = null;
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            uA(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            sP(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void changeVideoState(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Yf.2
                @Override // java.lang.Runnable
                public void run() {
                    Yf.this.Fmk(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void chooseAdResult(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("video_choose");
            long jOptLong = jSONObject.optLong("video_choose_duration");
            com.bytedance.sdk.openadsdk.aa.Dq dq2 = this.HpB;
            if (dq2 != null) {
                dq2.Sj(iOptInt, jOptLong);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void clickEvent(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Yf.3
                @Override // java.lang.Runnable
                public void run() {
                    Yf.this.HiB(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            dNu(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        sef(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public String getData(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.f21036dx.toString();
        }
        try {
            JSONObject jSONObjectSj = com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(this.f21036dx, new JSONObject(str));
            return jSONObjectSj == null ? this.f21036dx.toString() : jSONObjectSj.toString();
        } catch (Exception unused) {
            return this.f21036dx.toString();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public String getTemplateInfo() {
        Sj("getTemplateInfo", true);
        try {
            JSONObject jSONObject = this.f21036dx;
            if (jSONObject != null) {
                jSONObject.put("setting", zR());
                com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.dNu;
                if (sUVar != null) {
                    this.f21036dx.put("extension", sUVar.Grp());
                }
            }
            Sj("getTemplateInfo", false);
            return this.f21036dx.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void initRenderFinish() {
        com.bytedance.sdk.openadsdk.utils.JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Yf.5
            @Override // java.lang.Runnable
            public void run() {
                if (Yf.this.Ei != null) {
                    Yf.this.Ei.Sj();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void muteVideo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            TKC tkc = this.sdp;
            if (tkc != null) {
                com.bytedance.sdk.openadsdk.utils.JcM.sP(tkc);
            }
            TKC tkc2 = new TKC(this.sU, jSONObject);
            this.sdp = tkc2;
            com.bytedance.sdk.openadsdk.utils.JcM.Sj(tkc2);
        } catch (Exception unused) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.AndroidObject", "");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            Zq(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    public com.bytedance.sdk.component.Sj.dNu sP() {
        return this.Wjd;
    }

    public Yf sP(int i11) {
        this.Fmk = i11;
        return this;
    }

    public Yf sP(com.bytedance.sdk.component.uA.vS vSVar) {
        this.EjP = new WeakReference<>(vSVar);
        return this;
    }

    public Yf sP(String str) {
        this.vS = str;
        return this;
    }

    public Yf sP(boolean z10) {
        this.Mts = z10;
        return this;
    }

    public void sP(@NonNull final Uri uri) {
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if ("private".equals(host) || "dispatch_message".equals(host)) {
                    uA(uri.toString());
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("log_event_handleUri") { // from class: com.bytedance.sdk.openadsdk.core.Yf.9
                @Override // java.lang.Runnable
                public void run() {
                    long j11;
                    String strSj;
                    JSONObject jSONObject;
                    String queryParameter = uri.getQueryParameter("category");
                    String queryParameter2 = uri.getQueryParameter("tag");
                    Yf.this.Fm = queryParameter2;
                    String queryParameter3 = uri.getQueryParameter("label");
                    if (Yf.this.Dq(queryParameter3)) {
                        long j12 = 0;
                        try {
                            j11 = Long.parseLong(uri.getQueryParameter(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        } catch (Exception unused) {
                            j11 = 0;
                        }
                        try {
                            j12 = Long.parseLong(uri.getQueryParameter("ext_value"));
                        } catch (Exception unused2) {
                        }
                        long j13 = j12;
                        JSONObject jSONObjectDx = null;
                        try {
                            String queryParameter4 = uri.getQueryParameter("extra");
                            if (!TextUtils.isEmpty(queryParameter4)) {
                                JSONObject jSONObject2 = new JSONObject(queryParameter4);
                                try {
                                    jSONObject2.putOpt("ua_policy", Integer.valueOf(Yf.this.Zq));
                                } catch (Throwable unused3) {
                                }
                                jSONObjectDx = jSONObject2;
                            }
                        } catch (Throwable unused4) {
                        }
                        if ("click".equals(queryParameter3)) {
                            jSONObjectDx = Yf.this.dx(jSONObjectDx);
                        }
                        if ("landing_perf_error".equals(queryParameter3) || "landing_perf_stats".equals(queryParameter3)) {
                            try {
                                JSONObject jSONObject3 = new JSONObject();
                                for (String str : uri.getQueryParameterNames()) {
                                    try {
                                        if ("extra".equals(str)) {
                                            jSONObject3.put("ad_extra_data", new JSONObject(uri.getQueryParameter(str)).optString("ad_extra_data"));
                                        } else {
                                            jSONObject3.put(str, uri.getQueryParameter(str));
                                        }
                                    } catch (Exception unused5) {
                                    }
                                }
                                strSj = Yf.this.vS;
                                jSONObject = jSONObject3;
                            } catch (Exception unused6) {
                                return;
                            }
                        } else {
                            strSj = Yf.this.Sj(queryParameter2, queryParameter3);
                            jSONObject = jSONObjectDx;
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(Yf.this.dNu, queryParameter, strSj, queryParameter3, j11, j13, jSONObject, com.bytedance.sdk.openadsdk.core.model.TzV.HiB(Yf.this.dNu));
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void skipVideo() {
        com.bytedance.sdk.openadsdk.utils.JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Yf.4
            @Override // java.lang.Runnable
            public void run() {
                Yf.this.sU();
            }
        });
    }

    public boolean uA() {
        return this.f21038jb;
    }

    public void vS(String str) {
        this.Fm = str;
    }

    public void vS(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVarSj = com.bytedance.sdk.openadsdk.core.sP.Sj(jSONObject);
        if (sUVarSj != null) {
            boolean zHiB = com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.dNu);
            Sj(sUVarSj, zHiB ? Mts.sP(this.Fmk) : this.Fm, !zHiB);
        }
    }

    public boolean vS() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.sP
    @JavascriptInterface
    public void videoFrameChanged(String str) {
        if (this.xhi == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.component.adexpress.sP.sef sefVar = new com.bytedance.sdk.component.adexpress.sP.sef();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("videoInfo");
            if (jSONObjectOptJSONObject != null) {
                double dOptDouble = jSONObjectOptJSONObject.optDouble("x");
                double dOptDouble2 = jSONObjectOptJSONObject.optDouble("y");
                double dOptDouble3 = jSONObjectOptJSONObject.optDouble("width");
                double dOptDouble4 = jSONObjectOptJSONObject.optDouble("height");
                if (uvD(jSONObjectOptJSONObject)) {
                    sefVar.Sj((float) jSONObjectOptJSONObject.optDouble("borderRadiusTopLeft"));
                    sefVar.sP((float) jSONObjectOptJSONObject.optDouble("borderRadiusTopRight"));
                    sefVar.TKC((float) jSONObjectOptJSONObject.optDouble("borderRadiusBottomLeft"));
                    sefVar.EjP((float) jSONObjectOptJSONObject.optDouble("borderRadiusBottomRight"));
                }
                sefVar.TKC(dOptDouble);
                sefVar.EjP(dOptDouble2);
                sefVar.HiB(dOptDouble3);
                sefVar.vS(dOptDouble4);
            }
            com.bytedance.sdk.openadsdk.aa.Jcg jcg = this.xhi;
            if (jcg != null) {
                jcg.Sj(sefVar);
            }
        } catch (Throwable unused) {
        }
    }
}
