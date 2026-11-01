package com.mbridge.msdk.video.signal.communication;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.buffer.b;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.bt.component.d;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.impl.j;
import com.mbridge.msdk.video.signal.impl.k;
import com.transsion.api.gateway.utils.SafeStringUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class BaseVideoCommunication extends AbsFeedBackForH5 implements IVideoCommunication {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected IJSFactory f39500g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FastKV f39501h = null;

    private String a(int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b("JS-Video-Brigde", "code to string is error");
        }
        return "";
    }

    private void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", 1);
                jSONObject.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Exception e11) {
            o0.a("JS-Video-Brigde", e11.getMessage());
        }
    }

    private String b(int i11) {
        switch (i11) {
            case 1:
                return "sdk_info";
            case 2:
                return MBridgeConstans.PROPERTIES_UNIT_ID;
            case 3:
                return "appSetting";
            case 4:
                return "unitSetting";
            case 5:
                return "device";
            case 6:
                return "sdkSetting";
            default:
                return "";
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendSubView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "appendSubView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendViewTo(Object obj, String str) {
        a(obj, str);
        try {
            d.c().b(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "appendViewTo error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void bringViewToFront(Object obj, String str) {
        a(obj, str);
        try {
            d.c().c(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "bringViewToFront error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void broadcast(Object obj, String str) {
        a(obj, str);
        try {
            d.c().d(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "broadcast error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void cai(Object obj, String str) {
        o0.a("JS-Video-Brigde", "cai:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                String strOptString = new JSONObject(str).optString("packageName");
                if (TextUtils.isEmpty(strOptString)) {
                    com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "packageName is empty");
                }
                int i11 = t0.c(c.m().d(), strOptString) ? 1 : 2;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", com.mbridge.msdk.mbsignalcommon.communication.d.f36496b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i11);
                    jSONObject.put("data", jSONObject2);
                    f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, e11.getMessage());
                    o0.a("JS-Video-Brigde", e11.getMessage());
                }
            } catch (Throwable th2) {
                com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "exception: " + th2.getLocalizedMessage());
                o0.b("JS-Video-Brigde", "cai", th2);
            }
        } catch (JSONException e12) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "exception: " + e12.getLocalizedMessage());
            o0.b("JS-Video-Brigde", "cai", e12);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void clearAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.controller.d.a().e() && this.f39501h == null) {
            try {
                this.f39501h = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "MBridgeH5CacheSP").build();
            } catch (Exception unused) {
                this.f39501h = null;
            }
        }
        FastKV fastKV = this.f39501h;
        if (fastKV != null) {
            try {
                try {
                    fastKV.clear();
                } catch (Exception unused2) {
                }
                if (obj != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", 0);
                    jSONObject.put("message", "Success");
                    f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                }
                return;
            } catch (Throwable th2) {
                o0.b("JS-Video-Brigde", "getAllCache error " + th2);
                return;
            }
        }
        try {
            c.m().d().getSharedPreferences("MBridgeH5CacheSP", 0).edit().clear().apply();
            if (obj != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 0);
                jSONObject2.put("message", "Success");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            }
        } catch (Throwable th3) {
            o0.b("JS-Video-Brigde", "getAllCache error " + th3);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void click(Object obj, String str) {
        String strOptString;
        int iOptInt;
        k kVar;
        o0.c("JS-Video-Brigde", "click");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                strOptString = jSONObject.optString("pt");
            } catch (JSONException e11) {
                strOptString = "";
                e11.printStackTrace();
                iOptInt = 1;
            }
            IJSFactory iJSFactory = this.f39500g;
            if (iJSFactory != null) {
                iJSFactory.getJSCommon().click(iOptInt, strOptString);
                return;
            }
            if (obj != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                if (!(aVar.f36541b.getObject() instanceof k) || (kVar = (k) aVar.f36541b.getObject()) == null) {
                    return;
                }
                kVar.click(iOptInt, strOptString);
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "click error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeAd(Object obj, String str) {
        a(obj, str);
        try {
            d.c().e(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "closeAd error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeVideoOperte(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("close");
            int iOptInt2 = jSONObject.optInt("view_visible");
            o0.c("JS-Video-Brigde", "closeVideoOperte,close:" + iOptInt + ",viewVisible:" + iOptInt2);
            this.f39500g.getJSVideoModule().closeVideoOperate(iOptInt, iOptInt2);
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "closeOperte error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeWeb(Object obj, String str) {
        o0.b("JS-Video-Brigde", NativeComponentConstants.KEY_COMPONENT_TYPE + str);
        try {
            if (TextUtils.isEmpty(str) || this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt(NotificationCompat.CATEGORY_STATUS);
            this.f39500g.getJSContainerModule().hideAlertWebview();
            this.f39500g.getJSVideoModule().hideAlertView(iOptInt);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "closeWeb", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createNativeEC(Object obj, String str) {
        a(obj, str);
        try {
            d.c().f(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "createNativeEC error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createPlayerView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().g(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "createPlayerView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createSubPlayTemplateView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().h(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "createSubPlayTemplateView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().i(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "createView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createWebview(Object obj, String str) {
        a(obj, str);
        try {
            d.c().j(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "createWebview error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void destroyComponent(Object obj, String str) {
        a(obj, str);
        try {
            d.c().k(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "destroyComponent error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAllCache(Object obj, String str) {
        String str2;
        JSONObject jSONObject;
        Throwable th2;
        JSONObject jSONObject2 = null;
        Map<String, Object> all = null;
        jSONObject2 = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e() && this.f39501h == null) {
            try {
                this.f39501h = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "MBridgeH5CacheSP").build();
            } catch (Exception unused) {
                this.f39501h = null;
            }
        }
        if (this.f39501h != null) {
            try {
                jSONObject = new JSONObject();
                try {
                    try {
                        all = this.f39501h.getAll();
                    } catch (Exception unused2) {
                    }
                    if (all != null) {
                        for (Map.Entry<String, Object> entry : all.entrySet()) {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    jSONObject2 = jSONObject;
                    o0.b("JS-Video-Brigde", "getAllCache error " + th2);
                    str2 = "getAllCache Error, reason is : " + th2.getMessage();
                }
            } catch (Throwable th4) {
                th2 = th4;
            }
        } else {
            try {
                SharedPreferences sharedPreferences = c.m().d().getSharedPreferences("MBridgeH5CacheSP", 0);
                JSONObject jSONObject3 = new JSONObject();
                try {
                    for (Map.Entry<String, ?> entry2 : sharedPreferences.getAll().entrySet()) {
                        jSONObject3.put(entry2.getKey(), entry2.getValue());
                    }
                    jSONObject = jSONObject3;
                } catch (Throwable th5) {
                    th = th5;
                    jSONObject2 = jSONObject3;
                    o0.b("JS-Video-Brigde", "getAllCache error " + th);
                    str2 = "getAllCache Error, reason is : " + th.getMessage();
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
        jSONObject2 = jSONObject;
        str2 = "getAllCache Success";
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("code", 0);
            jSONObject4.put("message", str2);
            if (jSONObject2 != null) {
                jSONObject4.put("data", jSONObject2);
            } else {
                jSONObject4.put("data", "{}");
            }
            if (obj != null) {
                f.a().b(obj, Base64.encodeToString(jSONObject4.toString().getBytes(), 2));
            }
        } catch (Throwable th7) {
            o0.b("JS-Video-Brigde", "getAllCache error " + th7);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAppSetting(Object obj, String str) {
        JSONObject jSONObject;
        try {
            String strOptString = new JSONObject(str).optString(SafeStringUtils.SP_APPID, "");
            JSONObject jSONObject2 = new JSONObject();
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "Get App Setting error, because must give a appId.");
            } else {
                String strE = h.b().e(strOptString);
                if (TextUtils.isEmpty(strE)) {
                    jSONObject = new JSONObject(h.b().a().L0());
                } else {
                    jSONObject = new JSONObject(strE);
                    jSONObject.put("isDefault", 0);
                }
                if (obj != null) {
                    jSONObject2.put("code", 0);
                    jSONObject2.put("message", "Success");
                    jSONObject2.put("data", jSONObject);
                } else {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("message", "Get App Setting error, plz try again later.");
                }
            }
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getAppSetting error : " + th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getComponentOptions(Object obj, String str) {
        a(obj, str);
        try {
            d.c().l(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getComponentOptions error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCurrentProgress(Object obj, String str) {
        try {
            IJSFactory iJSFactory = this.f39500g;
            if (iJSFactory != null) {
                String currentProgress = iJSFactory.getJSVideoModule().getCurrentProgress();
                o0.c("JS-Video-Brigde", "getCurrentProgress:" + currentProgress);
                if (!TextUtils.isEmpty(currentProgress)) {
                    currentProgress = Base64.encodeToString(currentProgress.getBytes(), 2);
                }
                f.a().b(obj, currentProgress);
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getCurrentProgress error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCutout(Object obj, String str) {
        try {
            String strE = this.f39500g.getJSCommon().e();
            o0.b("JS-Video-Brigde", strE);
            if (obj == null || TextUtils.isEmpty(strE)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", 1);
                jSONObject.put("message", "No notch data, plz try again later.");
                f.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } else {
                f.a().b(obj, Base64.encodeToString(strE.getBytes(), 2));
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getCutout error : " + th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getEncryptPrice(Object obj, String str) {
        String str2;
        try {
            String str3 = "not replaced";
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            int i11 = 1;
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject3 = new JSONObject(str);
                String strOptString = jSONObject3.optString("unitid", "");
                String strOptString2 = jSONObject3.optString("requestId", "");
                if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
                    str2 = "params parsing exception";
                } else {
                    com.mbridge.msdk.foundation.entity.d dVarB = b.b(strOptString, strOptString2);
                    if (dVarB != null && dVarB.c() == 1) {
                        str3 = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
                        jSONObject2.put("encrypt_p", dVarB.b());
                        jSONObject2.put(com.mbridge.msdk.foundation.entity.b.KEY_IRLFA, 1);
                        i11 = 0;
                    }
                }
                jSONObject.put("code", i11);
                jSONObject.put("message", str3);
                jSONObject.put("data", jSONObject2);
                f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
            str2 = "params is null";
            str3 = str2;
            jSONObject.put("code", i11);
            jSONObject.put("message", str3);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getEncryptPrice error : " + th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getFileInfo(Object obj, String str) {
        a(obj, str);
        try {
            d.c().m(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getFileInfo error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getMuteStatus(Object obj, String str) {
        o0.c("JS-Video-Brigde", "getMuteStatus");
        IJSFactory iJSFactory = this.f39500g;
        if (iJSFactory != null) {
            String strG = iJSFactory.getJSCommon().g();
            if (!TextUtils.isEmpty(strG)) {
                strG = Base64.encodeToString(strG.getBytes(), 2);
            }
            f.a().b(obj, strG);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardSetting(Object obj, String str) {
        try {
            JSONObject jSONObjectK = com.mbridge.msdk.videocommon.setting.b.b().c().k();
            JSONObject jSONObject = new JSONObject();
            if (obj == null || jSONObjectK == null) {
                jSONObject.put("code", 1);
                jSONObject.put("message", "Get Reward Setting error, plz try again later.");
            } else {
                jSONObject.put("code", 0);
                jSONObject.put("message", "Success");
                jSONObject.put("data", jSONObjectK);
            }
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getRewardSetting error : " + th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardUnitSetting(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString(SafeStringUtils.SP_APPID, "");
            String strOptString2 = jSONObject.optString("unitid", "");
            JSONObject jSONObject2 = new JSONObject();
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "Get reward unit Setting error, because must give appId and unitId.");
            } else {
                JSONObject jSONObjectH = com.mbridge.msdk.videocommon.setting.b.b().c(strOptString, strOptString2).H();
                if (obj == null || jSONObjectH == null) {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("message", "Get Reward Unit Setting error, plz try again later.");
                } else {
                    jSONObject2.put("code", 0);
                    jSONObject2.put("message", "Success");
                    jSONObject2.put("data", jSONObjectH);
                }
            }
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getRewardUnitSetting error : " + th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getSDKInfo(Object obj, String str) {
        o0.c("JS-Video-Brigde", "getSDKInfo");
        try {
            if (TextUtils.isEmpty(str)) {
                f.a().a(obj, "params is null");
                return;
            }
            JSONArray jSONArray = new JSONObject(str).getJSONArray(NativeComponentConstants.KEY_COMPONENT_TYPE);
            JSONObject jSONObject = new JSONObject();
            int i11 = 0;
            if (this.f39500g != null) {
                while (i11 < jSONArray.length()) {
                    int i12 = jSONArray.getInt(i11);
                    jSONObject.put(b(i12), this.f39500g.getJSCommon().f(i12));
                    i11++;
                }
            } else if (obj != null) {
                while (i11 < jSONArray.length()) {
                    int i13 = jSONArray.getInt(i11);
                    com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                    if (aVar.f36541b.getObject() instanceof k) {
                        jSONObject.put(b(i13), ((k) aVar.f36541b.getObject()).f(i13));
                    }
                    i11++;
                }
            }
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getSDKInfo error", th2);
            f.a().a(obj, "exception");
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getUnitSetting(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", 1);
            jSONObject.put("message", "Get Unit Setting error, RV/IV can not support this method.");
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "getUnitSetting error : " + th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handleNativeObject(Object obj, String str) {
        a(obj, str);
        try {
            com.mbridge.msdk.video.bt.component.c.a().a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "handleNativeObject error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handlerH5Exception(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            o0.c("JS-Video-Brigde", "handlerH5Exception,params:" + str);
            this.f39500g.getJSCommon().handlerH5Exception(jSONObject.optInt("code", -999), jSONObject.optString("message", "h5 error"));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "handlerH5Exception", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void hideView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().n(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "hideView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void increaseOfferFrequence(Object obj, String str) {
        a(obj, str);
        try {
            d.c().o(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "increaseOfferFrequence error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void init(Object obj, String str) {
        o0.c("JS-Video-Brigde", "init");
        try {
            IJSFactory iJSFactory = this.f39500g;
            int i11 = 1;
            if (iJSFactory != null) {
                String strC = iJSFactory.getJSCommon().c();
                if (!TextUtils.isEmpty(strC)) {
                    strC = Base64.encodeToString(strC.getBytes(), 2);
                }
                f.a().b(obj, strC);
                this.f39500g.getJSCommon().b(true);
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt("showTransparent");
                int iOptInt2 = jSONObject.optInt(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
                int iOptInt3 = jSONObject.optInt("closeType");
                int iOptInt4 = jSONObject.optInt("orientationType");
                int iOptInt5 = jSONObject.optInt("webfront");
                int iOptInt6 = jSONObject.optInt("showAlertRole");
                this.f39500g.getJSCommon().a(iOptInt == 1);
                this.f39500g.getJSCommon().e(iOptInt2);
                this.f39500g.getJSCommon().b(iOptInt3);
                this.f39500g.getJSCommon().c(iOptInt4);
                this.f39500g.getJSCommon().setWebViewFront(iOptInt5);
                com.mbridge.msdk.video.signal.d jSCommon = this.f39500g.getJSCommon();
                if (iOptInt6 != 0) {
                    i11 = iOptInt6;
                }
                jSCommon.d(i11);
                return;
            }
            if (obj != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                if (aVar.f36541b.getObject() instanceof k) {
                    k kVar = (k) aVar.f36541b.getObject();
                    String strC2 = kVar.c();
                    if (!TextUtils.isEmpty(str)) {
                        JSONObject jSONObject2 = new JSONObject(str);
                        int iOptInt7 = jSONObject2.optInt("showTransparent");
                        int iOptInt8 = jSONObject2.optInt(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
                        int iOptInt9 = jSONObject2.optInt("closeType");
                        int iOptInt10 = jSONObject2.optInt("orientationType");
                        int iOptInt11 = jSONObject2.optInt("webfront");
                        int iOptInt12 = jSONObject2.optInt("showAlertRole");
                        kVar.a(iOptInt7 == 1);
                        kVar.e(iOptInt8);
                        kVar.b(iOptInt9);
                        kVar.c(iOptInt10);
                        kVar.setWebViewFront(iOptInt11);
                        if (iOptInt12 != 0) {
                            i11 = iOptInt12;
                        }
                        kVar.d(i11);
                        o0.c("JS-Video-Brigde", "init jsCommon.setIsShowingTransparent = " + iOptInt7);
                    }
                    f.a().b(obj, Base64.encodeToString(strC2.getBytes(), 2));
                }
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "init error", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        super.initialize(obj, windVaneWebView);
        if (obj instanceof IJSFactory) {
            this.f39500g = (IJSFactory) obj;
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewAbove(Object obj, String str) {
        a(obj, str);
        try {
            d.c().a(obj, new JSONObject(str), true);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "insertViewAbove error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewBelow(Object obj, String str) {
        a(obj, str);
        try {
            d.c().b(obj, new JSONObject(str), true);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "insertViewBelow error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void isSystemResume(Object obj, String str) {
        try {
            if (this.f39500g != null) {
                o0.c("JS-Video-Brigde", "isSystemResume,params:" + str);
                f.a().b(obj, a(this.f39500g.getActivityProxy().a()));
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "isSystemResume", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void ivRewardAdsWithoutVideo(Object obj, String str) {
        o0.b("JS-Video-Brigde", "ivRewardAdsWithoutVideo ： params" + str);
        try {
            if (TextUtils.isEmpty(str) || this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39500g.getJSContainerModule().ivRewardAdsWithoutVideo(str);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "ivRewardAdsWithoutVideo", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadads(Object obj, String str) {
        String str2;
        String str3;
        int i11;
        int iOptInt;
        o0.c("JS-Video-Brigde", "loadads");
        try {
            if (TextUtils.isEmpty(str)) {
                str2 = "";
                str3 = str2;
                i11 = 1;
                iOptInt = 1;
            } else {
                JSONObject jSONObject = new JSONObject(str);
                String strOptString = jSONObject.optString(MBridgeConstans.PLACEMENT_ID);
                String strOptString2 = jSONObject.optString("unitId");
                int iOptInt2 = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                if (iOptInt2 > 2) {
                    iOptInt2 = 1;
                }
                iOptInt = jSONObject.optInt("adtype", 1);
                str3 = strOptString2;
                i11 = iOptInt2;
                str2 = strOptString;
            }
            if (TextUtils.isEmpty(str3)) {
                f.a().b(obj, a(1));
                return;
            }
            if (obj != null) {
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b;
                if ((windVaneWebView instanceof WindVaneWebView) && windVaneWebView.getWebViewListener() != null) {
                    ((com.mbridge.msdk.mbsignalcommon.listener.a) windVaneWebView.getWebViewListener()).a(windVaneWebView, str2, str3, i11, iOptInt);
                }
            }
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "loadads error", th2);
            f.a().b(obj, a(1));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadingResourceStatus(Object obj, String str) {
        a(obj, str);
        if (obj != null) {
            try {
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().b(windVaneWebView, iOptInt);
            } catch (Throwable th2) {
                o0.b("JS-Video-Brigde", "loadingResourceStatus error " + th2);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            o0.c("JS-Video-Brigde", "notifyCloseBtn,result:" + iOptInt);
            this.f39500g.getJSVideoModule().notifyCloseBtn(iOptInt);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "notifyCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendSubView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().p(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "appendSubView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendViewTo(Object obj, String str) {
        a(obj, str);
        try {
            d.c().q(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "appendViewTo error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewAbove(Object obj, String str) {
        a(obj, str);
        try {
            d.c().r(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "insertViewAbove error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewBelow(Object obj, String str) {
        a(obj, str);
        try {
            d.c().b(obj, new JSONObject(str), false);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "insertViewBelow error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void openURL(Object obj, String str) {
        o0.b("JS-Video-Brigde", "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (iOptInt == 1) {
                com.mbridge.msdk.click.c.c(this.f36564a, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.c.e(this.f36564a, strOptString);
            }
        } catch (JSONException e11) {
            o0.b("JS-Video-Brigde", e11.getMessage());
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playVideoFinishOperate(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str) || this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            o0.c("JS-Video-Brigde", "playVideoFinishOperate,type: " + iOptInt);
            this.f39500g.getJSCommon().a(iOptInt);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playVideoFinishOperate error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerGetMuteState(Object obj, String str) {
        a(obj, str);
        try {
            d.c().s(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerGetMuteState error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerMute(Object obj, String str) {
        a(obj, str);
        try {
            d.c().t(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerMute error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPause(Object obj, String str) {
        a(obj, str);
        try {
            d.c().u(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerPause error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPlay(Object obj, String str) {
        a(obj, str);
        try {
            d.c().v(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerPlay error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerResume(Object obj, String str) {
        a(obj, str);
        try {
            d.c().w(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerResume error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetRenderType(Object obj, String str) {
        a(obj, str);
        try {
            d.c().x(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerSetRenderType error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetSource(Object obj, String str) {
        a(obj, str);
        try {
            d.c().y(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerSetSource error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerStop(Object obj, String str) {
        a(obj, str);
        try {
            d.c().z(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerStop error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUnmute(Object obj, String str) {
        a(obj, str);
        try {
            d.c().A(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerUnmute error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUpdateFrame(Object obj, String str) {
        a(obj, str);
        try {
            d.c().B(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "playerUpdateFrame error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void preloadSubPlayTemplateView(Object obj, String str) {
        a(obj, str);
        try {
            if (this.f39500g != null) {
                d.c().C(obj, new JSONObject(str));
            } else {
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b;
                if (windVaneWebView instanceof WindVaneWebView) {
                    if (windVaneWebView.getWebViewListener() != null) {
                        ((com.mbridge.msdk.mbsignalcommon.listener.a) windVaneWebView.getWebViewListener()).a(obj, str);
                        o0.a("JS-Video-Brigde", "preloadSubPlayTemplateView: RVWebViewListener");
                    } else {
                        o0.a("JS-Video-Brigde", "preloadSubPlayTemplateView: failed");
                    }
                }
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "preloadSubPlayTemplateView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressBarOperate(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39500g.getJSVideoModule().progressBarOperate(new JSONObject(str).optInt("view_visible"));
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "progressOperate error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressOperate(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_PROGRESS);
            int iOptInt2 = jSONObject.optInt("view_visible");
            o0.c("JS-Video-Brigde", "progressOperate,progress:" + iOptInt + ",viewVisible:" + iOptInt2);
            this.f39500g.getJSVideoModule().progressOperate(iOptInt, iOptInt2);
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "progressOperate error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reactDeveloper(Object obj, String str) {
        o0.a("JS-Video-Brigde", "reactDeveloper");
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                f.a().a(obj, a(1));
            } else {
                this.f39500g.getJSBTModule().reactDeveloper(obj, str);
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "reactDeveloper error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                if (aVar.f36541b.getObject() instanceof k) {
                    ((k) aVar.f36541b.getObject()).h(iOptInt);
                }
                WindVaneWebView windVaneWebView = aVar.f36541b;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().a(windVaneWebView, iOptInt);
            } catch (Throwable th2) {
                o0.b("JS-Video-Brigde", "readyStatus", th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00a7  */
    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeCacheItem(Object obj, String str) {
        String str2;
        if (com.mbridge.msdk.foundation.controller.d.a().e() && this.f39501h == null) {
            try {
                this.f39501h = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "MBridgeH5CacheSP").build();
            } catch (Exception unused) {
                this.f39501h = null;
            }
        }
        int i11 = 0;
        if (this.f39501h != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    str2 = "";
                } else {
                    String string = new JSONObject(str).getString("key");
                    if (!TextUtils.isEmpty(string)) {
                        try {
                            this.f39501h.remove(string);
                        } catch (Exception unused2) {
                        }
                    }
                    i11 = 1;
                    str2 = "Delete Success";
                }
            } catch (Throwable th2) {
                o0.b("JS-Video-Brigde", "removeCacheItem error " + th2);
                str2 = "Delete Error, reason is : " + th2.getMessage();
            }
        } else {
            try {
                SharedPreferences sharedPreferences = c.m().d().getSharedPreferences("MBridgeH5CacheSP", 0);
                if (TextUtils.isEmpty(str)) {
                    str2 = "";
                } else {
                    String string2 = new JSONObject(str).getString("key");
                    if (!TextUtils.isEmpty(string2)) {
                        sharedPreferences.edit().remove(string2).apply();
                    }
                    i11 = 1;
                    str2 = "Delete Success";
                }
            } catch (Throwable th3) {
                o0.b("JS-Video-Brigde", "removeCacheItem error " + th3);
                str2 = "Delete Error, reason is : " + th3.getMessage();
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11 ^ 1);
            jSONObject.put("message", str2);
            if (obj == null || i11 == 0) {
                f.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } else {
                f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Throwable unused3) {
            o0.b("JS-Video-Brigde", "removeCacheItem error ");
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeFromSuperView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().D(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "removeFromSuperView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reportData(Object obj, String str) {
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reportUrls(Object obj, String str) {
        o0.a("JS-Video-Brigde", "reportUrls");
        try {
            if (TextUtils.isEmpty(str)) {
                f.a().a(obj, a(1));
            } else {
                IJSFactory iJSFactory = this.f39500g;
                if (iJSFactory == null || iJSFactory.getJSBTModule() == null || !(this.f39500g.getJSBTModule() instanceof j)) {
                    d.c().c(obj, str);
                } else {
                    this.f39500g.getJSBTModule().reportUrls(obj, str);
                }
            }
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "reportUrls error " + th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00bd  */
    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setCacheItem(Object obj, String str) {
        String str2;
        if (com.mbridge.msdk.foundation.controller.d.a().e() && this.f39501h == null) {
            try {
                this.f39501h = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "MBridgeH5CacheSP").build();
            } catch (Exception unused) {
                this.f39501h = null;
            }
        }
        int i11 = 0;
        if (this.f39501h != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    str2 = "";
                } else {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString("key");
                    String string2 = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                        try {
                            this.f39501h.putString(string, string2);
                        } catch (Exception unused2) {
                        }
                    }
                    i11 = 1;
                    str2 = "Save Success";
                }
            } catch (Throwable th2) {
                o0.b("JS-Video-Brigde", "setCacheItem error " + th2);
                str2 = "Save Error, reason is : " + th2.getMessage();
            }
        } else {
            try {
                SharedPreferences sharedPreferences = c.m().d().getSharedPreferences("MBridgeH5CacheSP", 0);
                if (TextUtils.isEmpty(str)) {
                    str2 = "";
                } else {
                    JSONObject jSONObject2 = new JSONObject(str);
                    String string3 = jSONObject2.getString("key");
                    String string4 = jSONObject2.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    if (!TextUtils.isEmpty(string3) && !TextUtils.isEmpty(string4)) {
                        sharedPreferences.edit().putString(string3, string4).apply();
                    }
                    i11 = 1;
                    str2 = "Save Success";
                }
            } catch (Throwable th3) {
                o0.b("JS-Video-Brigde", "setCacheItem error " + th3);
                str2 = "Save Error, reason is : " + th3.getMessage();
            }
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("code", i11 ^ 1);
            jSONObject3.put("message", str2);
            if (obj == null || i11 == 0) {
                f.a().a(obj, Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } else {
                f.a().b(obj, Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            }
        } catch (Throwable unused3) {
            o0.b("JS-Video-Brigde", "setCacheItem error ");
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setScaleFitXY(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("fitxy");
            o0.c("JS-Video-Brigde", "setScaleFitXY,type:" + iOptInt);
            this.f39500g.getJSVideoModule().setScaleFitXY(iOptInt);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "showVideoClickView error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setSubPlayTemplateInfo(Object obj, String str) {
        o0.b("JS-Video-Brigde", "setSubPlayTemplateInfo : " + str);
        a(obj, str);
        try {
            d.c().E(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "setSubPlayTemplateInfo error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewAlpha(Object obj, String str) {
        a(obj, str);
        try {
            d.c().F(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "setViewAlpha error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewBgColor(Object obj, String str) {
        a(obj, str);
        try {
            d.c().G(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "setViewBgColor error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewRect(Object obj, String str) {
        a(obj, str);
        try {
            d.c().H(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "setViewRect error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewScale(Object obj, String str) {
        a(obj, str);
        try {
            d.c().I(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "setViewScale error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showAlertView(Object obj, String str) {
        o0.c("JS-Video-Brigde", "showAlertView");
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39500g.getJSVideoModule().showIVRewardAlertView(str);
            f.a().a(obj, "showAlertView", "");
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "showAlertView", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoClickView(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            o0.c("JS-Video-Brigde", "showVideoClickView,type:" + iOptInt);
            this.f39500g.getJSContainerModule().showVideoClickView(iOptInt);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "showVideoClickView error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoLocation(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("margin_top", 0);
            int iOptInt2 = jSONObject.optInt("margin_left", 0);
            int iOptInt3 = jSONObject.optInt("view_width", 0);
            int iOptInt4 = jSONObject.optInt("view_height", 0);
            int iOptInt5 = jSONObject.optInt("radius", 0);
            int iOptInt6 = jSONObject.optInt("border_top", 0);
            int iOptInt7 = jSONObject.optInt("border_left", 0);
            int iOptInt8 = jSONObject.optInt("border_width", 0);
            int iOptInt9 = jSONObject.optInt("border_height", 0);
            o0.c("JS-Video-Brigde", "showVideoLocation,margin_top:" + iOptInt + ",marginLeft:" + iOptInt2 + ",viewWidth:" + iOptInt3 + ",viewHeight:" + iOptInt4 + ",radius:" + iOptInt5 + ",borderTop: " + iOptInt6 + ",borderLeft: " + iOptInt7 + ",borderWidth: " + iOptInt8 + ",borderHeight: " + iOptInt9);
            this.f39500g.getJSVideoModule().showVideoLocation(iOptInt, iOptInt2, iOptInt3, iOptInt4, iOptInt5, iOptInt6, iOptInt7, iOptInt8, iOptInt9);
            this.f39500g.getJSCommon().h();
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "showVideoLocation error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showView(Object obj, String str) {
        a(obj, str);
        try {
            d.c().J(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "showView error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void soundOperate(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
            int iOptInt2 = jSONObject.optInt("view_visible");
            String strOptString = jSONObject.optString("pt", "");
            o0.c("JS-Video-Brigde", "soundOperate,mute:" + iOptInt + ",viewVisible:" + iOptInt2 + ",pt:" + strOptString);
            if (TextUtils.isEmpty(strOptString)) {
                this.f39500g.getJSVideoModule().soundOperate(iOptInt, iOptInt2);
            } else {
                this.f39500g.getJSVideoModule().soundOperate(iOptInt, iOptInt2, strOptString);
            }
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "soundOperate error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void statistics(Object obj, String str) {
        o0.c("JS-Video-Brigde", "statistics,params:" + str);
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            this.f39500g.getJSCommon().a(jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE), jSONObject.optString("data"));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "statistics error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            o0.c("JS-Video-Brigde", "toggleCloseBtn,result:" + iOptInt);
            int i11 = 2;
            if (iOptInt != 1) {
                i11 = iOptInt == 2 ? 1 : 0;
            }
            this.f39500g.getJSVideoModule().closeVideoOperate(0, i11);
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void triggerCloseBtn(Object obj, String str) {
        o0.c("JS-Video-Brigde", "triggerCloseBtn");
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str) || !new JSONObject(str).optString("state").equals("click")) {
                return;
            }
            this.f39500g.getJSVideoModule().closeVideoOperate(1, -1);
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "triggerCloseBtn error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void videoOperate(Object obj, String str) {
        try {
            if (this.f39500g == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("pause_or_resume");
            o0.c("JS-Video-Brigde", "videoOperate,pauseOrResume:" + iOptInt);
            this.f39500g.getJSVideoModule().videoOperate(iOptInt);
            f.a().b(obj, a(0));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "videoOperate error", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewFireEvent(Object obj, String str) {
        a(obj, str);
        try {
            d.c().K(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "setSubPlayTemplateInfo error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoBack(Object obj, String str) {
        a(obj, str);
        try {
            d.c().L(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "webviewGoBack error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoForward(Object obj, String str) {
        a(obj, str);
        try {
            d.c().M(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "webviewGoForward error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewLoad(Object obj, String str) {
        a(obj, str);
        try {
            d.c().N(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "webviewLoad error " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewReload(Object obj, String str) {
        a(obj, str);
        try {
            d.c().O(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.b("JS-Video-Brigde", "webviewReload error " + th2);
        }
    }
}
