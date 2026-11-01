package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class k extends l {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Activity f39837t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f39838u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f39839v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CampaignEx f39841x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List<CampaignEx> f39842y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f39843z;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f39840w = 0;
    private String A = "";
    private String B = "";
    private boolean C = false;
    private boolean D = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f39844a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39845b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f39846c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f39847d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f39848e;

        a(String str, String str2, String str3, String str4, int i11) {
            this.f39844a = str;
            this.f39845b = str2;
            this.f39846c = str3;
            this.f39847d = str4;
            this.f39848e = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(k.this.f39837t.getApplication())).a(new com.mbridge.msdk.foundation.entity.m("2000039", this.f39844a, this.f39845b, this.f39846c, this.f39847d, k.this.f39841x.getId(), this.f39848e, k0.a(k.this.f39837t.getApplication(), this.f39848e)));
        }
    }

    public k(Activity activity, CampaignEx campaignEx) {
        this.f39837t = activity;
        this.f39841x = campaignEx;
    }

    public k(Activity activity, CampaignEx campaignEx, List<CampaignEx> list) {
        this.f39837t = activity;
        this.f39841x = campaignEx;
        this.f39842y = list;
    }

    private String A() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f39821j);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("instanceId", this.A);
            jSONObject2.put("rootViewInstanceId", this.B);
            jSONObject2.put("isRootTemplateWebView", this.C);
            jSONObject.put("sdk_info", "MAL_16.9.71,3.0.1");
            jSONObject2.put("playVideoMute", this.f39825n);
            jSONObject.put("sdkSetting", jSONObject2);
            a(jSONObject);
            JSONArray jSONArray = new JSONArray();
            List<CampaignEx> list = this.f39842y;
            if (list == null || list.size() <= 0) {
                jSONArray.put(CampaignEx.campaignToJsonObject(this.f39841x));
            } else {
                for (CampaignEx campaignEx : this.f39842y) {
                    jSONArray.put(CampaignEx.campaignToJsonObject(campaignEx, campaignEx.isReady(), b(campaignEx)));
                }
            }
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", x());
            String strE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                JSONObject jSONObject3 = new JSONObject(strE);
                c(jSONObject3);
                String strC = com.mbridge.msdk.setting.h.b().c(this.f39821j);
                if (!TextUtils.isEmpty(strC)) {
                    jSONObject3.put("ivreward", new JSONObject(strC));
                }
                jSONObject.put("appSetting", jSONObject3);
            }
            jSONObject.put("rewardSetting", w());
            if (!TextUtils.isEmpty(this.f39821j)) {
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f39821j);
            }
            jSONObject.put("rw_plus", this.D ? "1" : "0");
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return jSONObject.toString();
    }

    private JSONObject B() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f39821j)) {
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f39821j);
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject C() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.mbridge.msdk.videocommon.setting.c cVar = this.f39822k;
            if (cVar != null) {
                jSONObject.put("unitSetting", cVar.H());
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    private CampaignEx a(String str, CampaignEx campaignEx) {
        String strValueOf;
        String strValueOf2;
        if (TextUtils.isEmpty(str)) {
            return campaignEx;
        }
        if (TextUtils.isEmpty(str) && campaignEx == null) {
            return null;
        }
        if (str.contains("notice")) {
            try {
                JSONObject jSONObjectCampaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                JSONObject jSONObject = new JSONObject(str);
                b(jSONObject);
                try {
                    if (!jSONObject.has(CampaignEx.JSON_KEY_DEEP_LINK_URL)) {
                        jSONObjectCampaignToJsonObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, "");
                    }
                } catch (Exception unused) {
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectCampaignToJsonObject.put(next, jSONObject.getString(next));
                }
                CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject);
                a(jSONObjectCampaignToJsonObject, campaignWithBackData);
                return campaignWithBackData;
            } catch (JSONException e11) {
                e11.printStackTrace();
                return campaignEx;
            }
        }
        try {
            JSONObject jSONObjectCampaignToJsonObject2 = CampaignEx.campaignToJsonObject(campaignEx);
            CampaignEx campaignWithBackData2 = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject2);
            if (campaignWithBackData2 == null) {
                campaignWithBackData2 = campaignEx;
            }
            if (!TextUtils.isEmpty(str)) {
                a(jSONObjectCampaignToJsonObject2, campaignWithBackData2);
                JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(com.mbridge.msdk.foundation.same.a.f35338j);
                if (jSONObjectOptJSONObject != null) {
                    strValueOf = String.valueOf(t0.a(this.f39837t, Integer.valueOf(jSONObjectOptJSONObject.getString(com.mbridge.msdk.foundation.same.a.f35336h)).intValue()));
                    strValueOf2 = String.valueOf(t0.a(this.f39837t, Integer.valueOf(jSONObjectOptJSONObject.getString(com.mbridge.msdk.foundation.same.a.f35337i)).intValue()));
                } else {
                    strValueOf = "-999";
                    strValueOf2 = "-999";
                }
                campaignWithBackData2.setClickURL(com.mbridge.msdk.click.c.a(campaignWithBackData2.getClickURL(), strValueOf, strValueOf2));
                String noticeUrl = campaignWithBackData2.getNoticeUrl();
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                    StringBuilder sb2 = new StringBuilder();
                    while (itKeys2.hasNext()) {
                        sb2.append(UrlUtils.AND_MARK);
                        String next2 = itKeys2.next();
                        String strOptString = jSONObjectOptJSONObject.optString(next2);
                        if (com.mbridge.msdk.foundation.same.a.f35336h.equals(next2) || com.mbridge.msdk.foundation.same.a.f35337i.equals(next2)) {
                            strOptString = String.valueOf(t0.a(this.f39837t, Integer.valueOf(strOptString).intValue()));
                        }
                        sb2.append(next2);
                        sb2.append(UrlUtils.EQUAL_MARK);
                        sb2.append(strOptString);
                    }
                    campaignWithBackData2.setNoticeUrl(noticeUrl + ((Object) sb2));
                }
            }
            return campaignWithBackData2;
        } catch (JSONException e12) {
            e12.printStackTrace();
            return campaignEx;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return campaignEx;
        }
    }

    private void a(CampaignEx campaignEx) {
        try {
            int i11 = this.f39840w;
            if (i11 == 3) {
                campaignEx.setClickTempSource(2);
                if (campaignEx.getTriggerClickSource() == 0) {
                    campaignEx.setTriggerClickSource(2);
                    return;
                }
                return;
            }
            if (i11 != 1 || campaignEx.getClickTempSource() == 2) {
                return;
            }
            campaignEx.setClickTempSource(1);
        } catch (Exception e11) {
            o0.b("DefaultJSCommon", e11.getMessage());
        }
    }

    private void b(String str) {
        List<CampaignEx> list;
        if (this.f39841x == null || (list = this.f39842y) == null || list.size() == 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.f39841x = this.f39842y.get(jSONObject.getInt("camp_position"));
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    private boolean b(CampaignEx campaignEx) {
        com.mbridge.msdk.setting.g gVarD;
        try {
            String strB = com.mbridge.msdk.foundation.controller.c.m().b();
            long jA0 = (TextUtils.isEmpty(strB) || (gVarD = com.mbridge.msdk.setting.h.b().d(strB)) == null) ? 0L : gVarD.a0() * 1000;
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            long jE = aVarC != null ? aVarC.e() : 0L;
            if (campaignEx != null) {
                return campaignEx.isSpareOffer(jE, jA0);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private void c(JSONObject jSONObject) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            String string = w0.a(contextD, "MBridge_ConfirmTitle" + this.f39821j, "").toString();
            String string2 = w0.a(contextD, "MBridge_ConfirmContent" + this.f39821j, "").toString();
            String string3 = w0.a(contextD, "MBridge_CancelText" + this.f39821j, "").toString();
            String string4 = w0.a(contextD, "MBridge_ConfirmText" + this.f39821j, "").toString();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put("confirm_title", string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put("confirm_description", string2);
            }
            if (!TextUtils.isEmpty(string3)) {
                jSONObject.put("confirm_t", string3);
            }
            if (!TextUtils.isEmpty(string4)) {
                jSONObject.put("confirm_c_play", string4);
            }
            if (TextUtils.isEmpty(string4)) {
                return;
            }
            jSONObject.put("confirm_c_rv", string4);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            String strE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("appSetting", new JSONObject(strE));
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.f39825n);
            jSONObject.put("sdkSetting", jSONObject2);
            a(jSONObject);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(CampaignEx.campaignToJsonObject(this.f39841x));
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", x());
            String strE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                JSONObject jSONObject3 = new JSONObject(strE);
                c(jSONObject3);
                String strC = com.mbridge.msdk.setting.h.b().c(this.f39821j);
                if (!TextUtils.isEmpty(strC)) {
                    jSONObject3.put("ivreward", strC);
                }
                jSONObject.put("appSetting", jSONObject3.toString());
            }
            jSONObject.put("rewardSetting", w());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject u() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
        return aVarC != null ? aVarC.k() : jSONObject;
    }

    private JSONObject x() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.videocommon.setting.c cVar = this.f39822k;
        return cVar != null ? cVar.H() : jSONObject;
    }

    private JSONObject y() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_info", "MAL_16.9.71,3.0.1");
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject z() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.f39825n);
            jSONObject2.put("instanceId", this.A);
            jSONObject.put("sdkSetting", jSONObject2);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void a(int i11, String str) {
        super.a(i11, str);
        if (i11 != 2) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            a aVar = new a(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, NotificationCompat.CATEGORY_EVENT), jSONObject.optString("template", TmcConstants.COLD_OPEN_TYPE), jSONObject.optString(TtmlNode.TAG_LAYOUT, TmcConstants.COLD_OPEN_TYPE), jSONObject.optString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f39821j), k0.s(this.f39837t.getApplication()));
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
            } else {
                aVar.run();
            }
        } catch (Throwable th2) {
            o0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f39839v = str;
    }

    public void a(List<CampaignEx> list) {
        this.f39842y = list;
    }

    public void a(JSONObject jSONObject, CampaignEx campaignEx) {
        try {
            String strOptString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            campaignEx.setCampaignUnitId(strOptString);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String c() {
        this.f39824m.onInitSuccess();
        this.f39812a = true;
        if (TextUtils.isEmpty(this.f39838u)) {
            this.f39838u = A();
        } else {
            this.f39838u = t0.b(this.f39838u, "tun", k0.y() + "");
        }
        return this.f39838u;
    }

    public void c(CampaignEx campaignEx) {
        this.f39841x = campaignEx;
    }

    public void c(String str) {
        this.A = str;
    }

    public void c(boolean z10) {
        this.C = z10;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.e
    public void click(int i11, String str) {
        AppletsModel appletsModel;
        List<CampaignEx> list;
        int i12;
        super.click(i11, str);
        CampaignEx campaignEx = this.f39841x;
        if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
            b(str);
        }
        try {
            if (i11 != 1) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        return;
                    }
                    this.f39824m.a(true);
                    return;
                }
                CampaignEx campaignEx2 = this.f39841x;
                if (campaignEx2 == null || campaignEx2.getCbd() <= -2) {
                    com.mbridge.msdk.videocommon.setting.c cVar = this.f39822k;
                    i12 = cVar != null ? cVar.i() : 1;
                } else {
                    i12 = this.f39841x.getCbd();
                }
                if (i12 == -1) {
                    a(new com.mbridge.msdk.video.signal.impl.a.b(this, this.f39824m));
                }
                this.f39840w = i11;
                click(1, str);
                return;
            }
            if (this.f39841x == null && (list = this.f39842y) != null && list.size() > 0) {
                this.f39841x = this.f39842y.get(0);
            }
            CampaignEx campaignEx3 = this.f39841x;
            if (campaignEx3 == null) {
                return;
            }
            CampaignEx campaignExA = a(str, campaignEx3);
            if (this.f39840w != 3) {
                this.f39840w = i11;
            }
            a(campaignExA);
            if (campaignExA != null && (appletsModel = AppletModelManager.getInstance().get(campaignExA)) != null) {
                appletsModel.setUserClick(true);
                AppletModelManager.getInstance().replace(appletsModel, campaignExA);
            }
            a(campaignExA, this.f39837t);
        } catch (Throwable th2) {
            o0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    public void d(String str) {
        this.B = str;
    }

    public void d(boolean z10) {
        this.D = z10;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String e() {
        o0.a("DefaultJSCommon", "getNotchArea");
        return this.f39839v;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String f(int i11) {
        switch (i11) {
            case 1:
                return y().toString();
            case 2:
                return B().toString();
            case 3:
                return s().toString();
            case 4:
                return C().toString();
            case 5:
                return u().toString();
            case 6:
                return z().toString();
            default:
                return t().toString();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void f() {
        super.f();
        try {
            Activity activity = this.f39837t;
            if (activity != null) {
                activity.finish();
            }
        } catch (Throwable th2) {
            o0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playVideoMute", this.f39825n);
            jSONObject.put("userVideoMute", this.f39826o);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void h() {
        super.h();
        com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39824m;
        if (interfaceC0570a != null) {
            interfaceC0570a.a();
        }
    }

    public void h(int i11) {
        this.f39843z = i11;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.e
    public void handlerH5Exception(int i11, String str) {
        super.handlerH5Exception(i11, str);
        try {
            this.f39824m.a(i11, str);
        } catch (Throwable th2) {
            o0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    public void r() {
        this.f39838u = "";
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void setActivity(Activity activity) {
        this.f39837t = activity;
    }

    public int v() {
        return this.f39843z;
    }
}
