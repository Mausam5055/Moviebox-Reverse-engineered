package com.mbridge.msdk.mbbanner.common.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.out.MBridgeIds;
import com.transsion.gslb.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f36070n = "b";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f36071a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.data.b f36073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.util.a f36074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.b f36075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.d f36076f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36072b = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f36077g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Timer f36078h = new Timer();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile List<String> f36079i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f36080j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f36081k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile boolean f36082l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f36083m = "";

    class a extends TimerTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36085b;

        a(String str, CampaignEx campaignEx) {
            this.f36084a = str;
            this.f36085b = campaignEx;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (b.this.f36077g) {
                return;
            }
            b.this.f36077g = true;
            b.this.a(this.f36084a, -1, "", false, this.f36085b);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.common.manager.b$b, reason: collision with other inner class name */
    class C0500b extends com.mbridge.msdk.mbbanner.common.response.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.data.a f36087c;

        C0500b(com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f36087c = aVar;
        }

        @Override // com.mbridge.msdk.mbbanner.common.response.a
        public void a(int i11, String str) {
            o0.c(b.f36070n, "requestCampaign--> Fail errorCode:" + i11 + " msg:" + str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
            bVar.c(i11 + Utils.SEPARATOR + str);
            bVar.a(new MBridgeIds(this.placementId, this.unitId));
            bVar.b(this.f36087c.b());
            b.this.f36074d.a(b.this.f36075e, bVar);
            b.this.f36076f.a(this.unitId);
        }

        @Override // com.mbridge.msdk.mbbanner.common.response.a
        public void a(CampaignUnit campaignUnit) throws Throwable {
            try {
                o0.c(b.f36070n, "requestCampaign--> Succeed");
                campaignUnit.setLocalRequestId(this.f36087c.b());
                b.this.f36074d.a(b.this.f36075e, campaignUnit, this.unitId);
                b.this.a(this.unitId, this.f36087c.b(), campaignUnit);
            } catch (Exception e11) {
                o0.c(b.f36070n, "requestCampaign--> Fail with exception = " + e11.getMessage());
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880000);
                bVar.a(new MBridgeIds(this.placementId, this.unitId));
                bVar.b(this.f36087c.b());
                bVar.a((campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().isEmpty()) ? null : campaignUnit.getAds().get(0));
                bVar.a((Throwable) e11);
                b.this.f36074d.a(b.this.f36075e, bVar);
                b.this.f36076f.a(this.unitId);
            }
        }
    }

    class c extends com.mbridge.msdk.foundation.same.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f36091c;

        c(String str, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f36089a = str;
            this.f36090b = campaignEx;
            this.f36091c = context;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36089a);
            cVar.a(str, eVar);
            com.mbridge.msdk.mbbanner.common.report.a.a(str, cVar, this.f36090b, this.f36091c, null);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignUnit f36093a;

        d(CampaignUnit campaignUnit) {
            this.f36093a = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.c(b.f36070n, "在单独子线程保存数据库 开始");
            j.a(g.a(b.this.f36071a)).a();
            CampaignUnit campaignUnit = this.f36093a;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.f36093a.getAds().size() > 0) {
                BannerUtils.uisList(b.this.f36071a, this.f36093a.getAds());
            }
            o0.c(b.f36070n, "在单独子线程保存数据库 完成");
        }
    }

    private static class e implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f36095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f36096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CampaignEx f36097c;

        public e(b bVar, String str, CampaignEx campaignEx) {
            this.f36095a = bVar;
            this.f36096b = str;
            this.f36097c = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                o0.c(b.f36070n, "DownloadImageListener campaign image fail");
            }
            b bVar = this.f36095a;
            if (bVar != null) {
                bVar.a(this.f36096b, 1, str2, false, this.f36097c);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36096b, this.f36097c.getCurrentLocalRid());
                cVarA.a(this.f36097c);
                cVarA.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                cVarA.e(10);
                eVar.a("resource_type", 10);
                eVar.a("result", 3);
                eVar.a("url", str2);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_end", cVarA, eVar);
            } catch (Throwable th2) {
                o0.b(b.f36070n, th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (MBridgeConstans.DEBUG) {
                o0.c(b.f36070n, "DownloadImageListener campaign image success");
            }
            b bVar = this.f36095a;
            if (bVar != null) {
                bVar.a(this.f36096b, 1, str, true, this.f36097c);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36096b, this.f36097c.getCurrentLocalRid());
                cVarA.a(this.f36097c);
                cVarA.e(10);
                cVarA.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("resource_type", 10);
                eVar.a("result", 1);
                eVar.a("url", str);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_end", cVarA, eVar);
            } catch (Throwable th2) {
                o0.b(b.f36070n, th2.getMessage());
            }
        }
    }

    public b(Context context, com.mbridge.msdk.mbbanner.common.data.b bVar, com.mbridge.msdk.mbbanner.common.listener.b bVar2, com.mbridge.msdk.mbbanner.common.util.a aVar) {
        this.f36071a = context.getApplicationContext();
        this.f36073c = bVar;
        this.f36075e = bVar2;
        this.f36074d = aVar;
    }

    private int a(String str) {
        try {
            int iC = this.f36073c.c();
            if (iC > this.f36073c.b()) {
                return 0;
            }
            return iC;
        } catch (Exception e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0098  */
    private String a(String str, String str2, CampaignEx campaignEx) throws Throwable {
        File file;
        Throwable th2;
        FileOutputStream fileOutputStream;
        String absolutePath = "";
        if (!TextUtils.isEmpty(str2)) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                        String md5 = SameMD5.getMD5(z0.b(str2));
                        if (TextUtils.isEmpty(md5)) {
                            md5 = String.valueOf(System.currentTimeMillis());
                        }
                        File file2 = new File(strB, md5.concat(".html"));
                        Uri.parse(str2).getPath();
                        fileOutputStream = new FileOutputStream(file2);
                        try {
                            fileOutputStream.write(str2.getBytes());
                            fileOutputStream.flush();
                            absolutePath = file2.getAbsolutePath();
                            fileOutputStream.close();
                        } catch (Exception e11) {
                            e = e11;
                            fileOutputStream2 = fileOutputStream;
                            o0.b(f36070n, e.getMessage());
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            } else {
                                file = new File(absolutePath);
                                if (!file.exists()) {
                                    a(str, 2, str2, false, campaignEx);
                                } else {
                                    a(str, 2, str2, false, campaignEx);
                                }
                            }
                            return absolutePath;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (fileOutputStream == null) {
                                throw th2;
                            }
                            try {
                                fileOutputStream.close();
                                throw th2;
                            } catch (Exception e12) {
                                o0.b(f36070n, e12.getMessage());
                                throw th2;
                            }
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        fileOutputStream = null;
                    }
                } catch (Exception e13) {
                    e = e13;
                }
            } catch (Exception e14) {
                o0.b(f36070n, e14.getMessage());
            }
            file = new File(absolutePath);
            if (!file.exists() && file.isFile() && file.canRead()) {
                a(str, 2, str2, true, campaignEx);
            } else {
                a(str, 2, str2, false, campaignEx);
            }
        }
        return absolutePath;
    }

    private List<CampaignEx> a(String str, CampaignUnit campaignUnit) {
        ArrayList arrayList = new ArrayList();
        if (campaignUnit != null) {
            try {
                if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                    ArrayList<CampaignEx> ads = campaignUnit.getAds();
                    o0.c(f36070n, "getNeedShowList 总共返回的campaign有：" + ads.size());
                    w.a(ads);
                    for (int i11 = 0; i11 < ads.size(); i11++) {
                        CampaignEx campaignEx = ads.get(i11);
                        if (campaignEx != null && campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getBannerUrl()) || !TextUtils.isEmpty(campaignEx.getBannerHtml()) || !TextUtils.isEmpty(campaignEx.getImageUrl()))) {
                            if (t0.c(campaignEx)) {
                                campaignEx.setRtinsType(t0.c(this.f36071a, campaignEx.getPackageName()) ? 1 : 2);
                            }
                            if (com.mbridge.msdk.foundation.same.c.b(this.f36071a, campaignEx)) {
                                arrayList.add(campaignEx);
                            } else {
                                t0.a(str, campaignEx, com.mbridge.msdk.foundation.same.a.f35352x);
                                this.f36083m = "APP ALREADY INSTALLED";
                            }
                            a(campaignEx, this.f36071a, (com.mbridge.msdk.foundation.same.report.metrics.c) null, str, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
                        }
                    }
                    o0.c(f36070n, "getNeedShowList 返回有以下带有视频素材的campaign：" + arrayList.size());
                }
            } catch (Exception e11) {
                o0.b(f36070n, e11.getMessage());
            }
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, context, cVar, new c(str, campaignEx, context, aVar));
        } catch (Exception e11) {
            o0.b(f36070n, e11.getMessage());
        }
    }

    private void a(CampaignUnit campaignUnit) {
        new Thread(new d(campaignUnit)).start();
    }

    private void a(String str, int i11) {
        if (this.f36082l) {
            return;
        }
        if ((this.f36080j || this.f36081k) && this.f36079i.size() == 0) {
            o0.c(f36070n, "在子线程处理业务逻辑 完成");
            this.f36077g = true;
            this.f36082l = true;
            this.f36078h.cancel();
            this.f36074d.a(this.f36075e, str, i11);
            this.f36076f.a(str);
        }
    }

    private void a(String str, int i11, CampaignEx campaignEx) {
        this.f36078h.schedule(new a(str, campaignEx), i11);
    }

    private void a(String str, CampaignEx campaignEx) {
        String str2 = f36070n;
        o0.c(str2, "在子线程处理业务逻辑 完成");
        o0.c(str2, "downloadResource--> Fail");
        this.f36077g = true;
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
        MBridgeIds mBridgeIds = new MBridgeIds();
        mBridgeIds.setUnitId(str);
        bVar.a(mBridgeIds);
        bVar.b(this.f36073c.a());
        bVar.a(campaignEx);
        this.f36074d.b(this.f36075e, bVar);
        this.f36076f.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, CampaignUnit campaignUnit) throws Throwable {
        CampaignEx campaignEx;
        if (campaignUnit == null) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
            MBridgeIds mBridgeIds = new MBridgeIds();
            mBridgeIds.setUnitId(str);
            bVar.a(mBridgeIds);
            bVar.b(str2);
            this.f36074d.a(this.f36075e, bVar);
            this.f36076f.a(str);
            return;
        }
        List<CampaignEx> listA = a(str, campaignUnit);
        a(campaignUnit);
        int i11 = 0;
        if (listA == null || listA.size() == 0) {
            o0.c(f36070n, "tryDownloadOnLoadSuccess 返回的campaign 没有符合下载规则的");
            com.mbridge.msdk.foundation.error.b bVar2 = this.f36083m.contains("INSTALLED") ? new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED") : new com.mbridge.msdk.foundation.error.b(880003);
            MBridgeIds mBridgeIds2 = new MBridgeIds();
            mBridgeIds2.setUnitId(str);
            bVar2.a(mBridgeIds2);
            bVar2.b(str2);
            if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0 && (campaignEx = campaignUnit.getAds().get(0)) != null) {
                bVar2.a(campaignEx);
            }
            this.f36074d.a(this.f36075e, bVar2);
            this.f36076f.a(str);
            return;
        }
        o0.c(f36070n, "在子线程处理业务逻辑 开始");
        CampaignEx campaignEx2 = listA.get(0);
        a(str, 60000, campaignEx2);
        b(campaignUnit.getSessionId());
        a(str, listA);
        String strTrim = campaignEx2.getBannerUrl().trim();
        if (TextUtils.isEmpty(strTrim)) {
            String strTrim2 = campaignEx2.getBannerHtml().trim();
            if (TextUtils.isEmpty(strTrim2)) {
                this.f36081k = true;
                this.f36080j = true;
            } else {
                String strA = a(str, strTrim2, campaignEx2);
                if (listA.size() > 0) {
                    while (i11 < listA.size()) {
                        listA.get(i11).setBannerHtml(strA);
                        listA.get(i11).setHasMBTplMark(strTrim2.contains("<MBTPLMARK>"));
                        i11++;
                    }
                }
            }
        } else {
            b(str, strTrim, campaignEx2);
            if (listA.size() > 0) {
                while (i11 < listA.size()) {
                    listA.get(i11).setBannerUrl(campaignEx2.getBannerUrl());
                    listA.get(i11).setHasMBTplMark(true);
                    i11++;
                }
            }
        }
        b(str, listA);
    }

    private void a(String str, List<CampaignEx> list) {
        int size = this.f36072b;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    size += list.size();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        if (size > this.f36073c.b()) {
            o0.c(f36070n, "saveNextOffset 重置offset为0");
            size = 0;
        }
        o0.c(f36070n, "saveNextOffset 算出 下次的offset是:" + size);
        if (y0.b(str)) {
            this.f36073c.a(size);
        }
    }

    private String b() {
        return this.f36073c.d();
    }

    private void b(String str) {
        this.f36073c.b(str);
    }

    private void b(String str, String str2, CampaignEx campaignEx) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        a(str, 3, str2, true, campaignEx);
    }

    private void b(String str, List<CampaignEx> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                this.f36079i.add(campaignEx.getImageUrl());
                com.mbridge.msdk.foundation.same.image.b.a(this.f36071a).a(campaignEx.getImageUrl(), new e(this, str, campaignEx));
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(str, campaignEx.getCurrentLocalRid());
                cVarA.a(campaignEx);
                cVarA.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("resource_type", 10);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_start", cVarA, eVar);
            }
        }
    }

    public void a(String str, int i11, String str2, boolean z10, CampaignEx campaignEx) {
        if (!z10) {
            if (i11 == -1) {
                o0.b(f36070n, " unitId =" + str + " --> time out!");
            }
            this.f36078h.cancel();
            a(str, campaignEx);
            return;
        }
        if (i11 == 1) {
            o0.c(f36070n, "downloadResource--> Success Image");
            synchronized (this) {
                try {
                    this.f36079i.remove(str2);
                    if (this.f36079i.size() == 0) {
                        a(str, i11);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        if (i11 == 2) {
            o0.c(f36070n, "downloadResource--> Success banner_html");
            this.f36081k = true;
            a(str, i11);
        } else if (i11 == 3) {
            o0.c(f36070n, "downloadResource--> Success banner_url");
            this.f36080j = true;
            a(str, i11);
        }
    }

    public void a(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.d dVar) {
        boolean z10;
        try {
            o0.c(f36070n, "requestCampaign--> started");
            this.f36076f = dVar;
            C0500b c0500b = new C0500b(aVar);
            c0500b.setUnitId(str2);
            c0500b.setPlacementId(str);
            c0500b.setAdType(296);
            com.mbridge.msdk.mbbanner.common.request.a aVar2 = new com.mbridge.msdk.mbbanner.common.request.a(this.f36071a);
            this.f36072b = a(str2);
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarA = com.mbridge.msdk.mbbanner.common.data.c.a(false, this.f36071a, str2, b(), this.f36072b, aVar);
            String strD = t0.d(str2);
            if (!TextUtils.isEmpty(strD)) {
                eVarA.a("j", strD);
            }
            String strA = aVar.a();
            if (TextUtils.isEmpty(strA)) {
                z10 = false;
            } else {
                c0500b.a(strA);
                z10 = true;
            }
            this.f36074d.a(z10);
            aVar2.choiceV3OrV5BySetting(1, eVarA, c0500b, strA, 30000L);
        } catch (Exception e11) {
            o0.b(f36070n, e11.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.a(new MBridgeIds(str, str2));
            this.f36074d.a(this.f36075e, bVar);
            this.f36076f.a(str2);
        }
    }
}
