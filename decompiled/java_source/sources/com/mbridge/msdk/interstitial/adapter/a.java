package com.mbridge.msdk.interstitial.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f35896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f35900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f35901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f35902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.interstitial.controller.a.b f35903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private l f35904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f35905j;

    /* JADX INFO: renamed from: com.mbridge.msdk.interstitial.adapter.a$a, reason: collision with other inner class name */
    class HandlerC0497a extends Handler {
        HandlerC0497a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            Object obj2;
            try {
                int i11 = message.what;
                if (i11 != 3) {
                    if (i11 == 4 && a.this.f35903h != null && (obj2 = message.obj) != null && (obj2 instanceof String)) {
                        a.this.f35903h.a(a.this.f35900e, (String) obj2);
                    }
                } else if (a.this.f35903h != null && (obj = message.obj) != null && (obj instanceof String)) {
                    a.this.f35903h.b(a.this.f35900e, (String) obj);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class b extends com.mbridge.msdk.interstitial.request.b {
        b() {
        }

        @Override // com.mbridge.msdk.interstitial.request.b
        public void a(CampaignUnit campaignUnit) {
            try {
                a.this.a(campaignUnit);
            } catch (Exception e11) {
                e11.printStackTrace();
                a.this.b("can't show because unknow error");
                a.this.m();
            }
        }

        @Override // com.mbridge.msdk.interstitial.request.b
        public void b(int i11, String str) {
            o0.b("IntersAdapter", str);
            a.this.b(str);
            a.this.m();
        }
    }

    class c extends com.mbridge.msdk.foundation.same.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f35908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f35909b;

        c(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f35908a = campaignEx;
            this.f35909b = context;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(str, cVar, this.f35908a, this.f35909b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f35911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f35912b;

        d(List list, List list2) {
            this.f35911a = list;
            this.f35912b = list2;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f35911a;
            if (list == null || list.size() <= 0) {
                a.this.b("no ads available");
            } else {
                a aVar = a.this;
                aVar.a(aVar.f35897b, (List<CampaignEx>) a.this.a((List<CampaignEx>) this.f35911a));
                CampaignEx campaignEx = (CampaignEx) this.f35911a.get(0);
                a.this.c(campaignEx != null ? campaignEx.getRequestId() : "");
            }
            j.a(g.a(a.this.f35896a)).a();
            List list2 = this.f35912b;
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            a.this.c((List<CampaignEx>) this.f35912b);
        }
    }

    public a(Context context, String str, String str2, String str3, boolean z10) {
        this.f35896a = context;
        this.f35897b = str;
        this.f35898c = str2;
        this.f35902g = str3;
        this.f35900e = z10;
        l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
        this.f35904i = lVarE;
        if (lVarE == null) {
            this.f35904i = l.h(this.f35897b);
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<CampaignEx> a(List<CampaignEx> list) throws Throwable {
        FileOutputStream fileOutputStream;
        ArrayList arrayList = new ArrayList(list.size());
        for (CampaignEx campaignEx : list) {
            if (campaignEx.isMraid() && !TextUtils.isEmpty(campaignEx.getMraid())) {
                com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f35897b, "5");
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        String strB = e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                        String md5 = SameMD5.getMD5(z0.b(campaignEx.getMraid()));
                        if (TextUtils.isEmpty(md5)) {
                            md5 = String.valueOf(System.currentTimeMillis());
                        }
                        File file = new File(strB, md5.concat(".html"));
                        fileOutputStream = new FileOutputStream(file);
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            String strB2 = com.mbridge.msdk.setting.util.a.a().b();
                            if (!TextUtils.isEmpty(strB2)) {
                                sb2.append("<script>");
                                sb2.append(strB2);
                                sb2.append("</script>");
                            }
                            sb2.append(campaignEx.getMraid());
                            fileOutputStream.write(sb2.toString().getBytes());
                            fileOutputStream.flush();
                            campaignEx.setMraid(file.getAbsolutePath());
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f35897b, "5");
                            try {
                                fileOutputStream.close();
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        } catch (Exception e12) {
                            e = e12;
                            fileOutputStream2 = fileOutputStream;
                            e.printStackTrace();
                            campaignEx.setMraid("");
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e.getMessage(), this.f35897b, "5");
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e13) {
                                    e13.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e14) {
                        e = e14;
                    }
                    File file2 = new File(campaignEx.getMraid());
                    if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                        b("mraid resource write fail");
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            }
            arrayList.add(campaignEx);
        }
        return arrayList;
    }

    private void a() {
        try {
            if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
                com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = h.b().a();
                }
                com.mbridge.msdk.interstitial.cache.a.a().a(gVarD.Z() * 1000, this.f35897b);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f35896a, cVar, new c(campaignEx, context, aVar));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
            b("no server ads available");
            return;
        }
        ArrayList<CampaignEx> ads = campaignUnit.getAds();
        List<CampaignEx> listB = b(ads);
        a(campaignUnit.getSessionId());
        n();
        a(ads, listB);
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        o0.c("IntersAdapter", "onload sessionId:" + str);
        com.mbridge.msdk.interstitial.controller.a.f35917o = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list) {
        if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
            com.mbridge.msdk.interstitial.cache.a.a().a(str, list);
        }
    }

    private void a(List<CampaignEx> list, List<CampaignEx> list2) {
        new Thread(new d(list2, list)).start();
    }

    private int b() {
        int i11 = 0;
        try {
            int iA = !TextUtils.isEmpty(this.f35897b) ? com.mbridge.msdk.interstitial.controller.a.a(this.f35897b) : 0;
            if (iA <= g()) {
                i11 = iA;
            }
            o0.c("IntersAdapter", "getCurrentOffset:" + i11);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return i11;
    }

    private List<CampaignEx> b(List<CampaignEx> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int iE = this.f35904i.e();
                    for (int i11 = 0; i11 < list.size() && i11 < this.f35901f && arrayList.size() < iE; i11++) {
                        CampaignEx campaignEx = list.get(i11);
                        int i12 = 1;
                        if ((campaignEx == null || campaignEx.getOfferType() != 1 || !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) && campaignEx != null && ((!TextUtils.isEmpty(campaignEx.getHtmlUrl()) || campaignEx.isMraid()) && campaignEx.getOfferType() != 99)) {
                            if (t0.c(campaignEx)) {
                                if (!t0.c(this.f35896a, campaignEx.getPackageName())) {
                                    i12 = 2;
                                }
                                campaignEx.setRtinsType(i12);
                            }
                            if (com.mbridge.msdk.foundation.same.c.b(this.f35896a, campaignEx)) {
                                arrayList.add(campaignEx);
                            } else {
                                t0.a(this.f35897b, campaignEx, com.mbridge.msdk.foundation.same.a.f35352x);
                            }
                            a(campaignEx, null, this.f35896a, null);
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (this.f35905j != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 4;
                this.f35905j.sendMessage(messageObtain);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private String c() {
        String strA = "";
        try {
            JSONArray jSONArrayB = t0.b(this.f35896a, this.f35897b);
            strA = jSONArrayB.length() > 0 ? t0.a(jSONArrayB) : "";
            o0.c("IntersAdapter", "get excludes:" + strA);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return strA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f35905j != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = str;
            messageObtain.what = 3;
            this.f35905j.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<CampaignEx> list) {
        if (this.f35896a == null || list == null || list.size() == 0) {
            return;
        }
        j jVarA = j.a(g.a(this.f35896a));
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx = list.get(i11);
            if (campaignEx != null && jVarA != null && !jVarA.a(campaignEx.getId())) {
                com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                gVar.a(campaignEx.getId());
                gVar.b(campaignEx.getFca());
                gVar.c(campaignEx.getFcb());
                gVar.a(0);
                gVar.d(0);
                gVar.a(System.currentTimeMillis());
                jVarA.b(gVar);
            }
        }
    }

    private List<CampaignEx> e() {
        try {
            if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
                return com.mbridge.msdk.interstitial.cache.a.a().a(this.f35897b, 1);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return null;
    }

    private int g() {
        try {
            Map<String, Integer> map = com.mbridge.msdk.interstitial.controller.a.f35919q;
            int iIntValue = (TextUtils.isEmpty(this.f35897b) || map == null || !map.containsKey(this.f35897b)) ? 1 : map.get(this.f35897b).intValue();
            if (iIntValue <= 0) {
                return 1;
            }
            return iIntValue;
        } catch (Exception e11) {
            e11.printStackTrace();
            return 1;
        }
    }

    private String h() {
        try {
            if (!TextUtils.isEmpty(com.mbridge.msdk.interstitial.controller.a.f35917o)) {
                return com.mbridge.msdk.interstitial.controller.a.f35917o;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return "";
    }

    private void i() {
        this.f35905j = new HandlerC0497a(Looper.getMainLooper());
    }

    private com.mbridge.msdk.foundation.same.net.wrapper.e l() {
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        int i11 = this.f35900e ? 3 : 2;
        this.f35901f = 1;
        if (this.f35904i.e() > 0) {
            this.f35901f = this.f35904i.e();
        }
        int iF = this.f35904i.f() > 0 ? this.f35904i.f() : 1;
        String strA = com.mbridge.msdk.foundation.same.buffer.b.a(this.f35897b, com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL);
        this.f35899d = b();
        String strH = h();
        if (TextUtils.isEmpty(this.f35902g)) {
            this.f35902g = "0";
        }
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", strB);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.f35897b);
        if (!TextUtils.isEmpty(this.f35898c)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, this.f35898c);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TmcConstants.EXTRA_APP_DEV_TOKEN, md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "category", this.f35902g);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", i11 + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", iF + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", this.f35901f + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f35501h, c());
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f35502i, strH);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", "279");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "offset", this.f35899d + "");
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            if (TextUtils.isEmpty(this.f35897b)) {
                return;
            }
            com.mbridge.msdk.interstitial.controller.a.a(this.f35897b, 0);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void n() {
        try {
            this.f35899d += this.f35901f;
            if (this.f35899d > g()) {
                this.f35899d = 0;
            }
            if (TextUtils.isEmpty(this.f35897b)) {
                return;
            }
            com.mbridge.msdk.interstitial.controller.a.a(this.f35897b, this.f35899d);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(com.mbridge.msdk.interstitial.controller.a.b bVar) {
        this.f35903h = bVar;
    }

    public CampaignEx d() {
        try {
            if (TextUtils.isEmpty(this.f35897b)) {
                return null;
            }
            a();
            List<CampaignEx> listE = e();
            if (listE != null && listE.size() > 0) {
                for (int i11 = 0; i11 < listE.size(); i11++) {
                    CampaignEx campaignEx = listE.get(i11);
                    if (campaignEx != null && (!TextUtils.isEmpty(campaignEx.getHtmlUrl()) || !TextUtils.isEmpty(campaignEx.getMraid()))) {
                        return campaignEx;
                    }
                }
            }
            return null;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return null;
    }

    public boolean f() {
        return this.f35900e;
    }

    public void j() {
        if (this.f35896a == null) {
            b("context is null");
            return;
        }
        if (TextUtils.isEmpty(this.f35897b)) {
            b("unitid is null");
            return;
        }
        l lVar = this.f35904i;
        if (lVar == null) {
            b("unitSetting is null please call load");
            return;
        }
        if (lVar.f() <= 0) {
            b("controller don't request ad");
            return;
        }
        a();
        List<CampaignEx> listE = e();
        if (listE == null || listE.size() <= 0) {
            k();
        } else {
            CampaignEx campaignEx = listE.get(0);
            c(campaignEx != null ? campaignEx.getRequestId() : "");
        }
    }

    public void k() {
        try {
            if (this.f35896a == null) {
                b("context is null");
                return;
            }
            if (TextUtils.isEmpty(this.f35897b)) {
                b("unitid is null");
                return;
            }
            if (this.f35904i == null) {
                b("unitSetting is null please call load");
                return;
            }
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarL = l();
            if (eVarL == null) {
                b("request parameter is null");
                return;
            }
            String strD = t0.d(this.f35897b);
            if (!TextUtils.isEmpty(strD)) {
                eVarL.a("j", strD);
            }
            com.mbridge.msdk.interstitial.request.a aVar = new com.mbridge.msdk.interstitial.request.a(this.f35896a);
            b bVar = new b();
            bVar.setUnitId(this.f35897b);
            bVar.setPlacementId(this.f35898c);
            bVar.setAdType(279);
            aVar.choiceV3OrV5BySetting(1, eVarL, bVar, "", 30000L);
        } catch (Exception e11) {
            e11.printStackTrace();
            b("can't show because unknow error");
            m();
        }
    }
}
