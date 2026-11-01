package com.mbridge.msdk.advanced.signal;

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
import com.mbridge.msdk.mbsignalcommon.communication.c;
import com.mbridge.msdk.mbsignalcommon.communication.d;
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
public class b extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<Context> f34231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CampaignEx> f34232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f34234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34235g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34236h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.a f34238j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private NativeAdvancedExpandDialog f34239k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34230b = "NativeAdvancedJSBridgeImpl";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f34237i = 5;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f34240a;

        a(ArrayList arrayList) {
            this.f34240a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f34240a.iterator();
                while (it.hasNext()) {
                    jVarA.b((String) it.next());
                }
            } catch (Exception unused) {
                o0.b(b.this.f34230b, "campain can't insert db");
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f34234f = str;
        this.f34233e = str2;
        this.f34231c = new WeakReference<>(context);
    }

    public List<CampaignEx> a() {
        return this.f34232d;
    }

    public void a(int i11) {
        this.f34236h = i11;
    }

    public void a(com.mbridge.msdk.advanced.middle.a aVar) {
        if (aVar != null) {
            this.f34238j = aVar;
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.b
    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i11 = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
            if (aVar != null) {
                aVar.a(i11);
            }
        } catch (JSONException e11) {
            o0.b(this.f34230b, "resetCountdown", e11);
        }
    }

    public void a(List<CampaignEx> list) {
        this.f34232d = list;
    }

    public void b(int i11) {
        this.f34237i = i11;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.b
    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b);
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "onSignalCommunicationConnect", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void click(Object obj, String str) {
        try {
            List<CampaignEx> list = this.f34232d;
            CampaignEx campaignEx = (list == null || list.size() <= 0) ? null : this.f34232d.get(0);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = campaignEx != null ? CampaignEx.campaignToJsonObject(campaignEx) : new JSONObject();
                JSONObject jSONObject = new JSONObject(str).getJSONObject("pt");
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
                o0.b(this.f34230b, e11.getMessage());
            }
            com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "click", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        o0.b(this.f34230b, "close");
        try {
            com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "close", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void d(Object obj, String str) {
        o0.a(this.f34230b, "sendImpressions:" + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                String string = jSONArray.getString(i11);
                for (CampaignEx campaignEx : this.f34232d) {
                    if (campaignEx.getId().equals(string)) {
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f34233e, campaignEx, "h5_native");
                        arrayList.add(string);
                    }
                }
            }
            new Thread(new a(arrayList)).start();
        } catch (Throwable th2) {
            o0.b(this.f34230b, "sendImpressions", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f34231c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            NativeAdvancedExpandDialog nativeAdvancedExpandDialog = this.f34239k;
            if (nativeAdvancedExpandDialog == null || !nativeAdvancedExpandDialog.isShowing()) {
                NativeAdvancedExpandDialog nativeAdvancedExpandDialog2 = new NativeAdvancedExpandDialog(this.f34231c.get(), bundle, this.f34238j);
                this.f34239k = nativeAdvancedExpandDialog2;
                nativeAdvancedExpandDialog2.setCampaignList(this.f34233e, this.f34232d);
                this.f34239k.show();
                com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
                if (aVar != null) {
                    aVar.a(true);
                }
                com.mbridge.msdk.advanced.report.a.a(this.f34233e, getMraidCampaign(), str);
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "expand", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void getFileInfo(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is empty");
            return;
        }
        try {
            com.mbridge.msdk.advanced.signal.a.a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.a(this.f34230b, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f34232d;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.f34232d.get(0);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.advanced.common.b bVar = new com.mbridge.msdk.advanced.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f34235g);
            jSONObject2.put("customURLScheme", 1);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f34232d));
            l lVarA = h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f34233e);
            if (lVarA == null) {
                lVarA = l.k(this.f34233e);
            }
            if (!TextUtils.isEmpty(this.f34234f)) {
                lVarA.d(this.f34234f);
            }
            lVarA.e(this.f34233e);
            lVarA.j(this.f34237i);
            lVarA.a(this.f34236h);
            jSONObject.put("unitSetting", lVarA.M());
            String strE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("appSetting", new JSONObject(strE));
            }
            jSONObject.put("sdk_info", com.mbridge.msdk.mbsignalcommon.base.d.f36431a);
            o0.b(this.f34230b, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b(this.f34230b, "init", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.b
    public void install(Object obj, String str) {
        o0.b(this.f34230b, "install");
        try {
            List<CampaignEx> list = this.f34232d;
            CampaignEx campaignEx = (list == null || list.size() <= 0) ? null : this.f34232d.get(0);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = campaignEx != null ? CampaignEx.campaignToJsonObject(campaignEx) : new JSONObject();
                JSONObject jSONObject = new JSONObject(str).getJSONObject("pt");
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
            com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "install", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void readyStatus(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        try {
            if (!(obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) || (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b) == null) {
                return;
            }
            try {
                windVaneWebView.getWebViewListener().a(windVaneWebView, new JSONObject(str).getInt("isReady"));
            } catch (Exception unused) {
                windVaneWebView.getWebViewListener().a(windVaneWebView, 2);
            }
        } catch (Throwable th2) {
            o0.a(this.f34230b, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void reportUrls(Object obj, String str) {
        o0.a(this.f34230b, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
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
                    List<CampaignEx> list = this.f34232d;
                    com.mbridge.msdk.click.a.a(contextD, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list2 = this.f34232d;
                    com.mbridge.msdk.click.a.a(contextD2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            f.a().b(obj, d.a(0));
        } catch (Throwable th2) {
            o0.b(this.f34230b, "reportUrls", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
            if (aVar != null) {
                aVar.toggleCloseBtn(iOptInt);
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void triggerCloseBtn(Object obj, String str) {
        if (this.f34238j != null) {
            com.mbridge.msdk.advanced.signal.a.a(obj);
            this.f34238j.triggerCloseBtn(obj, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        try {
            if (this.f34236h == -1) {
                int i11 = z10 ? 2 : 1;
                com.mbridge.msdk.advanced.middle.a aVar = this.f34238j;
                if (aVar != null) {
                    aVar.toggleCloseBtn(i11);
                }
            }
        } catch (Throwable th2) {
            o0.b(this.f34230b, "useCustomClose", th2);
        }
    }
}
