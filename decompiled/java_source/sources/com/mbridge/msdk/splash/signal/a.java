package com.mbridge.msdk.splash.signal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.base.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a implements com.mbridge.msdk.mbsignalcommon.mraid.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<Context> f37606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<CampaignEx> f37607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f37608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37609e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f37611g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f37613i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.mbridge.msdk.splash.middle.a f37614j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private SplashExpandDialog f37615k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f37605a = "SplashSignalCommunicationImpl";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37612h = 5;

    /* JADX INFO: renamed from: com.mbridge.msdk.splash.signal.a$a, reason: collision with other inner class name */
    class RunnableC0545a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f37616a;

        RunnableC0545a(ArrayList arrayList) {
            this.f37616a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f37616a.iterator();
                while (it.hasNext()) {
                    jVarA.b((String) it.next());
                }
            } catch (Exception unused) {
                o0.b(a.this.f37605a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.f37609e = str;
        this.f37608d = str2;
        this.f37606b = new WeakReference<>(context);
    }

    public com.mbridge.msdk.splash.middle.a a() {
        return this.f37614j;
    }

    public void a(int i11) {
        this.f37611g = i11;
    }

    public void a(Context context) {
        this.f37606b = new WeakReference<>(context);
    }

    public void a(com.mbridge.msdk.splash.middle.a aVar) {
        if (aVar != null) {
            this.f37614j = aVar;
        }
    }

    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i11 = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
            if (aVar != null) {
                aVar.a(i11);
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public void a(List<CampaignEx> list) {
        this.f37607c = list;
    }

    public List<CampaignEx> b() {
        return this.f37607c;
    }

    public void b(int i11) {
        this.f37612h = i11;
    }

    public void c(int i11) {
        this.f37613i = i11;
    }

    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b);
            }
        } catch (Throwable th2) {
            o0.b(this.f37605a, "onJSBridgeConnect", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        o0.b(this.f37605a, "close");
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            o0.b(this.f37605a, "close", th2);
        }
    }

    public void d(Object obj, String str) {
        o0.a(this.f37605a, "sendImpressions:" + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                String string = jSONArray.getString(i11);
                for (CampaignEx campaignEx : this.f37607c) {
                    if (campaignEx.getId().equals(string)) {
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f37608d, campaignEx, "splash");
                        arrayList.add(string);
                    }
                }
            }
            new Thread(new RunnableC0545a(arrayList)).start();
        } catch (Throwable th2) {
            o0.b(this.f37605a, "sendImpressions", th2);
        }
    }

    public void e(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", 0);
            jSONObject.put("message", "Call pause count down success.");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("countdown", this.f37613i);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            o0.b(this.f37605a, e11.getMessage());
        }
        com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
        if (aVar != null) {
            aVar.a(1, -1);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f37606b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            SplashExpandDialog splashExpandDialog = this.f37615k;
            if (splashExpandDialog == null || !splashExpandDialog.isShowing()) {
                SplashExpandDialog splashExpandDialog2 = new SplashExpandDialog(this.f37606b.get(), bundle, this.f37614j);
                this.f37615k = splashExpandDialog2;
                splashExpandDialog2.setCampaignList(this.f37608d, this.f37607c);
                this.f37615k.show();
                com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
                if (aVar != null) {
                    aVar.a(true);
                }
                com.mbridge.msdk.splash.report.a.a(this.f37608d, getMraidCampaign(), str);
            }
        } catch (Throwable th2) {
            o0.b(this.f37605a, "expand", th2);
        }
    }

    public void f(Object obj, String str) {
        int i11 = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                int iOptInt = new JSONObject(str).optInt("countdown");
                try {
                    f.a().b(obj, c.a(0));
                    i11 = iOptInt;
                } catch (Exception e11) {
                    e = e11;
                    i11 = iOptInt;
                    o0.b(this.f37605a, e.getMessage());
                }
            } catch (Exception e12) {
                e = e12;
            }
        }
        com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
        if (aVar != null) {
            aVar.a(2, i11);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f37607c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f37607c.get(0);
    }

    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.splash.common.b bVar = new com.mbridge.msdk.splash.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f37610f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f37607c));
            l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37608d);
            if (lVarE == null) {
                lVarE = l.i(this.f37608d);
            }
            if (!TextUtils.isEmpty(this.f37609e)) {
                lVarE.d(this.f37609e);
            }
            lVarE.e(this.f37608d);
            lVarE.j(this.f37612h);
            lVarE.a(this.f37611g);
            jSONObject.put("unitSetting", lVarE.M());
            String strE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("appSetting", new JSONObject(strE));
            }
            jSONObject.put("sdk_info", d.f36431a);
            o0.b(this.f37605a, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b(this.f37605a, "init", th2);
        }
    }

    public void install(Object obj, String str) {
        o0.b(this.f37605a, "install");
        try {
            List<CampaignEx> list = this.f37607c;
            if (list == null) {
                return;
            }
            CampaignEx campaignEx = list.size() > 0 ? this.f37607c.get(0) : null;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectCampaignToJsonObject.put(next, jSONObject.getString(next));
                }
                CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject);
                String strOptString = jSONObjectCampaignToJsonObject.optString("unitId");
                if (!TextUtils.isEmpty(strOptString)) {
                    campaignWithBackData.setCampaignUnitId(strOptString);
                }
                campaignEx = campaignWithBackData;
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b(this.f37605a, "click", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        o0.b(this.f37605a, "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (contextD == null) {
            try {
                if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b) != null) {
                    contextD = windVaneWebView.getContext();
                }
            } catch (Exception e11) {
                o0.b(this.f37605a, e11.getMessage());
            }
        }
        if (contextD == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (iOptInt == 1) {
                com.mbridge.msdk.click.c.c(contextD, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.c.e(contextD, strOptString);
            }
        } catch (JSONException e12) {
            o0.b(this.f37605a, e12.getMessage());
        } catch (Throwable th2) {
            o0.b(this.f37605a, th2.getMessage());
        }
    }

    public void reportUrls(Object obj, String str) {
        o0.a(this.f37605a, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i11);
                int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                String strA = t0.a(jSONObject.optString("url"), "&tun=", k0.y() + "");
                int iOptInt2 = jSONObject.optInt("report");
                if (iOptInt2 == 0) {
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list = this.f37607c;
                    com.mbridge.msdk.click.a.a(contextD, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list2 = this.f37607c;
                    com.mbridge.msdk.click.a.a(contextD2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            f.a().b(obj, c.a(0));
        } catch (Throwable th2) {
            o0.b(this.f37605a, "reportUrls", th2);
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
            if (aVar != null) {
                aVar.toggleCloseBtn(iOptInt);
            }
        } catch (Throwable th2) {
            o0.b(this.f37605a, "toggleCloseBtn", th2);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
        if (aVar != null) {
            aVar.triggerCloseBtn(obj, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        int i11 = z10 ? 2 : 1;
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.f37614j;
            if (aVar != null) {
                aVar.toggleCloseBtn(i11);
            }
        } catch (Throwable th2) {
            o0.b(this.f37605a, "useCustomClose", th2);
        }
    }
}
