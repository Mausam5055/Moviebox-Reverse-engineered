package com.mbridge.msdk.mbbanner.common.communication;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.communication.c;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<Context> f36030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<CampaignEx> f36031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f36032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.a f36035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BannerExpandDialog f36036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36037i = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f36038a;

        a(ArrayList arrayList) {
            this.f36038a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f36038a.iterator();
                while (it.hasNext()) {
                    jVarA.b((String) it.next());
                }
            } catch (Exception e11) {
                o0.b("BannerSignalCommunicationImpl", e11.getMessage());
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f36032d = str;
        this.f36033e = str2;
        this.f36030b = new WeakReference<>(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object, org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.json.JSONObject] */
    public static void a(Object obj, JSONObject jSONObject) {
        ?? r11;
        String str;
        String str2;
        String str3;
        int i11;
        boolean z10;
        String str4;
        String str5;
        ?? jSONObject2 = new JSONObject();
        String str6 = "message";
        String str7 = "code";
        int i12 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e11) {
                o0.a("BannerSignalCommunicationImpl", e11.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put("code", 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray = jSONObject.getJSONArray("resource");
            if (jSONArray == null) {
                str = "code";
                r11 = 1;
                jSONObject2.put(str, 1);
                str5 = "message";
                jSONObject2.put(str5, "resource is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                r11 = str5;
                return;
            }
            try {
                if (jSONArray.length() > 0) {
                    ?? jSONArray2 = new JSONArray();
                    int length = jSONArray.length();
                    int i13 = 0;
                    while (i13 < length) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i13);
                        String strOptString = jSONObject3.optString("ref", "");
                        int i14 = jSONObject3.getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                        ?? jSONObject4 = new JSONObject();
                        JSONArray jSONArray3 = jSONArray;
                        if (i14 != i12 || TextUtils.isEmpty(strOptString)) {
                            str2 = str6;
                            str3 = str7;
                            i11 = length;
                            z10 = false;
                            if (i14 == 2 && !TextUtils.isEmpty(strOptString)) {
                                JSONObject jSONObject5 = new JSONObject();
                                jSONObject5.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                                jSONObject5.put("path", H5DownLoadManager.getInstance().getResAddress(strOptString) == null ? "" : H5DownLoadManager.getInstance().getH5ResAddress(strOptString));
                                jSONObject4.put(strOptString, jSONObject5);
                                jSONArray2.put(jSONObject4);
                            } else if (i14 == 3 && !TextUtils.isEmpty(strOptString)) {
                                try {
                                    File file = new File(strOptString);
                                    if (file.exists() && file.isFile() && file.canRead()) {
                                        o0.a("BannerSignalCommunicationImpl", "getFileInfo Mraid file " + strOptString);
                                        str4 = "file:////" + strOptString;
                                    } else {
                                        str4 = "";
                                    }
                                } catch (Throwable th2) {
                                    if (MBridgeConstans.DEBUG) {
                                        th2.printStackTrace();
                                    }
                                }
                                JSONObject jSONObject6 = new JSONObject();
                                jSONObject6.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                                jSONObject6.put("path", str4);
                                jSONObject4.put(strOptString, jSONObject6);
                                jSONArray2.put(jSONObject4);
                            } else if (i14 == 4 && !TextUtils.isEmpty(strOptString)) {
                                JSONObject jSONObject7 = new JSONObject();
                                jSONObject7.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 4);
                                jSONObject7.put("path", s0.a(strOptString) == null ? "" : s0.a(strOptString));
                                jSONObject4.put(strOptString, jSONObject7);
                                jSONArray2.put(jSONObject4);
                            }
                        } else {
                            JSONObject jSONObject8 = new JSONObject();
                            l lVarB = m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(strOptString);
                            if (lVarB != null) {
                                i11 = length;
                                o0.a("BannerSignalCommunicationImpl", "VideoBean not null");
                                jSONObject8.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                                str2 = str6;
                                try {
                                    jSONObject8.put("videoDataLength", lVarB.d());
                                    String strE = lVarB.e();
                                    str3 = str7;
                                    if (TextUtils.isEmpty(strE)) {
                                        try {
                                            o0.a("BannerSignalCommunicationImpl", "VideoPath null");
                                            jSONObject8.put("path", "");
                                            jSONObject8.put("path4Web", "");
                                        } catch (Throwable th3) {
                                            th = th3;
                                            r11 = str2;
                                            str = str3;
                                            jSONObject2.put(str, 1);
                                            jSONObject2.put(r11, th.getLocalizedMessage());
                                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                                        }
                                    } else {
                                        o0.a("BannerSignalCommunicationImpl", "VideoPath not null");
                                        jSONObject8.put("path", strE);
                                        jSONObject8.put("path4Web", strE);
                                    }
                                    if (lVarB.b() == 5) {
                                        jSONObject8.put("downloaded", 1);
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                        jSONObject8.put("downloaded", 0);
                                    }
                                    jSONObject4.put(strOptString, jSONObject8);
                                    jSONArray2.put(jSONObject4);
                                } catch (Throwable th4) {
                                    th = th4;
                                    str3 = str7;
                                    r11 = str2;
                                    str = str3;
                                    jSONObject2.put(str, 1);
                                    jSONObject2.put(r11, th.getLocalizedMessage());
                                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                                }
                            } else {
                                str2 = str6;
                                str3 = str7;
                                i11 = length;
                                z10 = false;
                                o0.a("BannerSignalCommunicationImpl", "VideoBean null");
                            }
                        }
                        i13++;
                        jSONArray = jSONArray3;
                        length = i11;
                        str6 = str2;
                        str7 = str3;
                        i12 = 1;
                    }
                    str2 = str6;
                    str3 = str7;
                    jSONObject2.put("resource", jSONArray2);
                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                    return;
                }
                str = "code";
                r11 = 1;
                try {
                    try {
                        jSONObject2.put(str, 1);
                        str5 = "message";
                        try {
                            jSONObject2.put(str5, "resource is null");
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            r11 = str5;
                        } catch (JSONException e12) {
                            e = e12;
                            o0.a("BannerSignalCommunicationImpl", e.getMessage());
                            r11 = str5;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (JSONException e13) {
                    e = e13;
                    str5 = "message";
                } catch (Throwable th6) {
                    th = th6;
                    r11 = "message";
                }
                return;
            } catch (Throwable th7) {
                th = th7;
                str2 = str6;
            }
        } catch (Throwable th8) {
            th = th8;
            r11 = "message";
            str = "code";
        }
        try {
            jSONObject2.put(str, 1);
            jSONObject2.put(r11, th.getLocalizedMessage());
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (JSONException e14) {
            o0.a("BannerSignalCommunicationImpl", e14.getMessage());
        }
    }

    public void a() {
        if (this.f36035g != null) {
            this.f36035g = null;
        }
        if (this.f36036h != null) {
            this.f36036h = null;
        }
    }

    public void a(int i11) {
        this.f36034f = i11;
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.a aVar) {
        if (aVar != null) {
            this.f36035g = aVar;
        }
    }

    public void a(List<CampaignEx> list) {
        this.f36031c = list;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void click(Object obj, String str) {
        o0.b("BannerSignalCommunicationImpl", "click");
        try {
            List<CampaignEx> list = this.f36031c;
            if (list == null) {
                return;
            }
            CampaignEx campaignEx = list.size() > 0 ? this.f36031c.get(0) : null;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
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
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "click", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        o0.b("BannerSignalCommunicationImpl", "close");
        try {
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "close", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void d(Object obj, String str) {
        o0.a("BannerSignalCommunicationImpl", "sendImpressions:" + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                String string = jSONArray.getString(i11);
                for (CampaignEx campaignEx : this.f36031c) {
                    if (campaignEx.getId().equals(string)) {
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f36033e, campaignEx, "banner");
                        arrayList.add(string);
                    }
                }
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(arrayList));
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "sendImpressions", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
        Context context;
        try {
            String bannerUrl = "";
            if (getMraidCampaign() != null) {
                if (TextUtils.isEmpty(getMraidCampaign().getBannerHtml())) {
                    bannerUrl = getMraidCampaign().getBannerUrl();
                } else {
                    bannerUrl = "file:////" + getMraidCampaign().getBannerHtml();
                }
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                bannerUrl = str;
            }
            bundle.putString("url", bannerUrl);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f36030b;
            if (weakReference != null && (context = weakReference.get()) != null) {
                BannerExpandDialog bannerExpandDialog = this.f36036h;
                if (bannerExpandDialog != null && bannerExpandDialog.isShowing()) {
                    return;
                }
                BannerExpandDialog bannerExpandDialog2 = new BannerExpandDialog(context, bundle, this.f36035g);
                this.f36036h = bannerExpandDialog2;
                bannerExpandDialog2.setCampaignList(this.f36033e, this.f36031c);
                this.f36036h.show();
            }
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.a(true);
            }
            com.mbridge.msdk.mbbanner.common.report.a.a(this.f36033e, getMraidCampaign(), str);
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "expand", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void getFileInfo(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is empty");
            return;
        }
        try {
            a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.a("BannerSignalCommunicationImpl", th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f36031c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f36031c.get(0);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void init(Object obj, String str) {
        o0.b("BannerSignalCommunicationImpl", "BANNER INIT INVOKE");
        try {
            JSONObject jSONObject = new JSONObject();
            s sVar = new s(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f36034f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", sVar.a());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f36031c));
            com.mbridge.msdk.setting.l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36033e);
            if (lVarE == null) {
                lVarE = com.mbridge.msdk.setting.l.i(this.f36033e);
            }
            if (!TextUtils.isEmpty(this.f36032d)) {
                lVarE.d(this.f36032d);
            }
            jSONObject.put("unitSetting", lVarE.M());
            String strE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("appSetting", new JSONObject(strE));
            }
            jSONObject.put("sdk_info", com.mbridge.msdk.mbsignalcommon.base.d.f36431a);
            o0.b("BannerSignalCommunicationImpl", "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "init", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        o0.b("BannerSignalCommunicationImpl", MRAIDPresenter.OPEN);
        try {
            o0.b("BannerSignalCommunicationImpl", str);
            if (this.f36031c.size() > 1) {
                com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                str = null;
            }
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.a(true, str);
            }
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", MRAIDPresenter.OPEN, th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                f.a().b(obj, d.a(0));
                com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
                if (aVar != null) {
                    aVar.readyStatus(iOptInt);
                }
            } catch (Throwable th2) {
                o0.b("BannerSignalCommunicationImpl", "readyStatus", th2);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void reportUrls(Object obj, String str) {
        o0.a("BannerSignalCommunicationImpl", "reportUrls:" + str);
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
                    List<CampaignEx> list = this.f36031c;
                    com.mbridge.msdk.click.a.a(contextD, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list2 = this.f36031c;
                    com.mbridge.msdk.click.a.a(contextD2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            f.a().b(obj, d.a(0));
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "reportUrls", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void toggleCloseBtn(Object obj, String str) {
        o0.b("BannerSignalCommunicationImpl", "toggleCloseBtn");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.toggleCloseBtn(iOptInt);
            }
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void triggerCloseBtn(Object obj, String str) {
        o0.b("BannerSignalCommunicationImpl", "triggerCloseBtn");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String strOptString = new JSONObject(str).optString("state");
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.triggerCloseBtn(strOptString);
            }
            f.a().b(obj, d.a(0));
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "triggerCloseBtn", th2);
            f.a().b(obj, d.a(-1));
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
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f36035g;
            if (aVar != null) {
                aVar.toggleCloseBtn(i11);
            }
        } catch (Throwable th2) {
            o0.b("BannerSignalCommunicationImpl", "useCustomClose", th2);
        }
    }
}
