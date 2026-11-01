package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    private static String A = "SplashLoadManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f37468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f37469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.splash.middle.b f37470e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MBSplashView f37472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private l f37473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f37474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f37475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f37476k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f37477l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f37478m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f37479n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f37480o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile boolean f37481p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f37482q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private H5DownLoadManager.ZipDownloadListener f37483r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f37484s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f37485t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f37487v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List<CampaignEx> f37488w;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f37486u = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f37489x = "";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Handler f37490y = new c(Looper.getMainLooper());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Runnable f37491z = new d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f37471f = com.mbridge.msdk.foundation.controller.c.m().d();

    class a implements com.mbridge.msdk.splash.manager.g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f37493b;

        a(CampaignEx campaignEx, int i11) {
            this.f37492a = campaignEx;
            this.f37493b = i11;
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void a() {
            if (this.f37492a.isHasMBTplMark()) {
                return;
            }
            e.this.g(this.f37492a, this.f37493b);
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void a(int i11) throws Throwable {
            if (i11 == 1) {
                e.this.g(this.f37492a, this.f37493b);
            } else {
                e.this.a("readyState 2", this.f37493b, this.f37492a);
            }
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void onError(String str) throws Throwable {
            e.this.a(str, this.f37493b, this.f37492a);
        }
    }

    class b implements com.mbridge.msdk.videocommon.listener.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37495a;

        b(CampaignEx campaignEx) {
            this.f37495a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            e.this.f37472g.setVideoReady(true);
            Message messageObtain = Message.obtain();
            messageObtain.obj = this.f37495a;
            messageObtain.what = 3;
            e.this.f37490y.sendMessage(messageObtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) throws Throwable {
            e.this.f37472g.setVideoReady(false);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880004);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.f37478m, e.this.f37479n, this.f37495a);
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f37495a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
            messageObtain.obj = bundle;
            messageObtain.what = 2;
            e.this.f37490y.sendMessage(messageObtain);
        }
    }

    class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) throws Throwable {
            int i11;
            super.handleMessage(message);
            int i12 = message.what;
            if (i12 == 1) {
                Object obj = message.obj;
                int i13 = message.arg1;
                if (obj instanceof CampaignEx) {
                    CampaignEx campaignEx = (CampaignEx) obj;
                    e.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip()), campaignEx, i13);
                    return;
                }
                return;
            }
            if (i12 != 2) {
                if (i12 != 3) {
                    return;
                }
                Object obj2 = message.obj;
                if (obj2 instanceof CampaignEx) {
                    e eVar = e.this;
                    eVar.h((CampaignEx) obj2, eVar.f37479n);
                    return;
                }
                return;
            }
            Object obj3 = message.obj;
            try {
                if (obj3 instanceof Bundle) {
                    int i14 = ((Bundle) obj3).getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                    String string = ((Bundle) obj3).getString(NotificationCompat.CATEGORY_MESSAGE);
                    CampaignEx campaignEx2 = (CampaignEx) ((Bundle) obj3).getSerializable("campaignex");
                    if (i14 == 1) {
                        i11 = 880004;
                    } else {
                        i11 = i14 == 2 ? 880006 : 880027;
                    }
                    com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i11);
                    bVar.c(string);
                    e eVar2 = e.this;
                    eVar2.a(bVar, eVar2.f37478m, e.this.f37479n, campaignEx2);
                }
            } catch (Exception e11) {
                com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880024);
                bVar2.a((Throwable) e11);
                e eVar3 = e.this;
                eVar3.a(bVar2, eVar3.f37478m, e.this.f37479n, (CampaignEx) null);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            e eVar = e.this;
            eVar.a(bVar, eVar.f37478m, e.this.f37479n, (CampaignEx) null);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.splash.manager.e$e, reason: collision with other inner class name */
    class C0543e extends com.mbridge.msdk.splash.request.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f37499e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f37500f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0543e(int i11, String str, int i12) {
            super(i11);
            this.f37499e = str;
            this.f37500f = i12;
        }

        @Override // com.mbridge.msdk.splash.request.b
        public void a(CampaignUnit campaignUnit, int i11) throws Throwable {
            try {
                e eVar = e.this;
                eVar.a(campaignUnit, i11, eVar.f37466a, this.f37499e);
                e.this.f37486u = campaignUnit.getRequestId();
                e.this.f37488w = campaignUnit.getAds();
            } catch (Exception e11) {
                e11.printStackTrace();
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) e11);
                e.this.a(bVar, this.f37499e, i11, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
                e.this.f();
            }
        }

        @Override // com.mbridge.msdk.splash.request.b
        public void b(int i11, String str) throws Throwable {
            o0.b(e.A, str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.c(str);
            e.this.a(bVar, this.f37499e, this.f37500f, (CampaignEx) null);
            e.this.f();
        }
    }

    class f extends com.mbridge.msdk.foundation.same.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37502a;

        f(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f37502a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.splash.report.a.a(str, cVar, this.f37502a, e.this.f37471f, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37504a;

        g(CampaignEx campaignEx) {
            this.f37504a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(e.this.f37471f)).a();
            w.a(e.this.f37471f, this.f37504a);
        }
    }

    class h implements com.mbridge.msdk.splash.view.nativeview.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37506a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f37507b;

        h(CampaignEx campaignEx, int i11) {
            this.f37506a = campaignEx;
            this.f37507b = i11;
        }

        @Override // com.mbridge.msdk.splash.view.nativeview.a
        public void a() {
            if (this.f37506a.isDynamicView() && e.this.f37472g != null) {
                e.this.f37472g.setImageReady(true);
                e.this.f(this.f37506a, this.f37507b);
            }
            e.this.h(this.f37506a, this.f37507b);
        }

        @Override // com.mbridge.msdk.splash.view.nativeview.a
        public void b() throws Throwable {
            if (!this.f37506a.isDynamicView() || e.this.f37472g == null) {
                return;
            }
            e.this.f37472g.setImageReady(false);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
            e eVar = e.this;
            eVar.a(bVar, eVar.f37478m, this.f37507b, this.f37506a);
        }
    }

    class i implements x.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37509a;

        i(CampaignEx campaignEx) {
            this.f37509a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, DownloadError downloadError) {
            String message = "";
            if (downloadError != null) {
                try {
                    if (downloadError.getException() != null) {
                        message = downloadError.getException().getMessage();
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            e.this.a(this.f37509a, str, false, message);
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, String str2, String str3, String str4, boolean z10) {
            if (z10) {
                return;
            }
            e.this.a(this.f37509a, str, true, "");
        }
    }

    class j implements H5DownLoadManager.ZipDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f37512b;

        j(CampaignEx campaignEx, int i11) {
            this.f37511a = campaignEx;
            this.f37512b = i11;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880006);
            e eVar = e.this;
            eVar.a(bVar, eVar.f37478m, this.f37512b, this.f37511a);
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f37511a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            messageObtain.obj = bundle;
            e.this.f37490y.sendMessage(messageObtain);
            e.this.a(this.f37511a, str2, false, str);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = this.f37511a;
            messageObtain.arg1 = this.f37512b;
            e.this.f37490y.sendMessage(messageObtain);
            if (z10) {
                return;
            }
            CampaignEx campaignEx = this.f37511a;
            e.this.a(this.f37511a, campaignEx != null ? campaignEx.getAdZip() : "", true, "");
        }
    }

    class k implements com.mbridge.msdk.splash.inter.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f37515b;

        k(CampaignEx campaignEx, int i11) {
            this.f37514a = campaignEx;
            this.f37515b = i11;
        }

        @Override // com.mbridge.msdk.splash.inter.a
        public void a(View view) {
            if (e.this.f37472g != null) {
                e.this.f37472g.setDynamicView(true);
                e.this.f37472g.setSplashNativeView(view);
                e.this.h(this.f37514a, this.f37515b);
            }
        }

        @Override // com.mbridge.msdk.splash.inter.a
        public void onError(String str) throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880034);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.f37478m, this.f37515b, this.f37514a);
        }
    }

    public e(String str, String str2, long j11) {
        this.f37467b = str;
        this.f37466a = str2;
        this.f37469d = j11;
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f37466a);
        a(campaignEx);
        this.f37484s = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (t0.c(campaignEx)) {
                campaignEx.setRtinsType(t0.c(this.f37471f, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f37471f, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                t0.a(this.f37466a, campaignEx, com.mbridge.msdk.foundation.same.a.f35352x);
                this.f37489x = "APP ALREADY INSTALLED";
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(long j11) {
        this.f37490y.postDelayed(this.f37491z, j11);
    }

    private void a(Context context, String str, int i11) throws Throwable {
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i11, (CampaignEx) null);
                return;
            }
            if (y0.a(this.f37466a)) {
                a(new com.mbridge.msdk.foundation.error.b(880032), str, i11, (CampaignEx) null);
                return;
            }
            MBridgeIds mBridgeIds = new MBridgeIds(this.f37467b, this.f37466a);
            com.mbridge.msdk.splash.request.f fVar = new com.mbridge.msdk.splash.request.f();
            fVar.d(i11);
            fVar.c(this.f37485t);
            fVar.a(this.f37484s);
            fVar.b(this.f37477l);
            fVar.a(this.f37476k);
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarB = com.mbridge.msdk.splash.request.e.b(context, mBridgeIds, fVar);
            if (eVarB == null) {
                a(new com.mbridge.msdk.foundation.error.b(880001), str, i11, (CampaignEx) null);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                eVarB.a("token", str);
            }
            String strD = t0.d(this.f37466a);
            if (!TextUtils.isEmpty(strD)) {
                eVarB.a("j", strD);
            }
            com.mbridge.msdk.splash.request.c cVar = new com.mbridge.msdk.splash.request.c(context);
            C0543e c0543e = new C0543e(i11, str, i11);
            c0543e.a(str);
            c0543e.setUnitId(this.f37466a);
            c0543e.setPlacementId(this.f37467b);
            c0543e.setAdType(297);
            cVar.choiceV3OrV5BySetting(1, eVarB, c0543e, str, com.mbridge.msdk.foundation.same.c.a(this.f37468c, 30000L));
        } catch (Exception e11) {
            o0.b(A, e11.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
            bVar.a((Throwable) e11);
            a(bVar, str, i11, (CampaignEx) null);
            f();
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new g(campaignEx)).start();
    }

    private void a(CampaignEx campaignEx, int i11) throws Throwable {
        this.f37472g.clearResState();
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            e(campaignEx, i11);
        }
        if (campaignEx.isDynamicView()) {
            return;
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            d(campaignEx, i11);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            b(campaignEx, i11);
        }
        if (TextUtils.isEmpty(campaignEx.getImageUrl())) {
            return;
        }
        c(campaignEx, i11);
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f37471f, cVar, new f(campaignEx, aVar));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, boolean z10, String str2) {
        try {
            m mVar = new m();
            mVar.e(2);
            mVar.j("m_download_end");
            if (campaignEx != null) {
                mVar.b(campaignEx.isMraid() ? m.N : m.O);
                mVar.o(campaignEx.getRequestIdNotice());
            }
            mVar.b("url", str);
            mVar.b("scenes", "1");
            if (z10) {
                mVar.d(1);
            } else {
                mVar.d(3);
                mVar.m(str2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, campaignEx);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(A, e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit, int i11, String str, String str2) throws Throwable {
        List<CampaignEx> listA = a(campaignUnit);
        if (listA == null || listA.size() <= 0) {
            a(this.f37489x.contains("INSTALLED") ? new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED") : new com.mbridge.msdk.foundation.error.b(880003), str2, i11, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
            return;
        }
        g();
        CampaignEx campaignEx = listA.get(0);
        if (!TextUtils.isEmpty(campaignEx.getAdZip()) || (!TextUtils.isEmpty(campaignEx.getAdHtml()) && campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
            campaignEx.setHasMBTplMark(true);
            campaignEx.setIsMraid(false);
        } else {
            campaignEx.setHasMBTplMark(false);
            campaignEx.setIsMraid(true);
        }
        i(campaignEx, i11);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i11, CampaignEx campaignEx) {
        if (this.f37481p) {
            return;
        }
        b();
        this.f37481p = true;
        if (bVar != null) {
            bVar.a(campaignEx);
        }
        com.mbridge.msdk.splash.middle.b bVar2 = this.f37470e;
        if (bVar2 != null) {
            bVar2.a(bVar, i11);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i11, String str, CampaignEx campaignEx) throws Throwable {
        CampaignEx campaignExA = com.mbridge.msdk.splash.manager.d.a(this.f37472g, this.f37467b, this.f37466a, str, this.f37474i, this.f37475j, true, false);
        if (campaignExA != null) {
            i(campaignExA, i11);
        } else {
            a(bVar, i11, campaignEx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i11, CampaignEx campaignEx) throws Throwable {
        if (!this.f37480o) {
            a(bVar, i11, campaignEx);
        } else {
            this.f37480o = false;
            a(bVar, i11, str, campaignEx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i11, CampaignEx campaignEx) throws Throwable {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.f37478m, i11, campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx, int i11) {
        com.mbridge.msdk.splash.manager.g.d dVar = new com.mbridge.msdk.splash.manager.g.d();
        dVar.c(this.f37466a);
        dVar.b(this.f37467b);
        dVar.a(campaignEx);
        dVar.a(str);
        dVar.a(this.f37474i);
        dVar.a(this.f37475j);
        com.mbridge.msdk.splash.manager.g.a().a(this.f37472g, dVar, new a(campaignEx, i11));
    }

    private void b() {
        this.f37490y.removeCallbacks(this.f37491z);
    }

    private void b(CampaignEx campaignEx, int i11) {
        this.f37482q = new b(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f37471f, this.f37466a, copyOnWriteArrayList, 297, this.f37482q);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(297, this.f37466a, campaignEx.isBidCampaign())) {
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f37466a);
        } else {
            this.f37472g.setVideoReady(true);
            h(campaignEx, i11);
        }
    }

    private void c(CampaignEx campaignEx, int i11) {
        com.mbridge.msdk.splash.manager.d.a(this.f37472g, campaignEx, new h(campaignEx, i11));
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d3 A[Catch: Exception -> 0x011b, TRY_ENTER, TryCatch #3 {Exception -> 0x011b, blocks: (B:52:0x0117, B:53:0x011a, B:40:0x00d3, B:42:0x00d7, B:44:0x00dd, B:46:0x00e3, B:48:0x00e9, B:49:0x0109, B:32:0x00b4), top: B:58:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd A[Catch: Exception -> 0x011b, TryCatch #3 {Exception -> 0x011b, blocks: (B:52:0x0117, B:53:0x011a, B:40:0x00d3, B:42:0x00d7, B:44:0x00dd, B:46:0x00e3, B:48:0x00e9, B:49:0x0109, B:32:0x00b4), top: B:58:0x000a }] */
    private void d(CampaignEx campaignEx, int i11) throws Throwable {
        File file;
        Exception e11;
        FileOutputStream fileOutputStream;
        Exception e12;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f37466a, PrepareException.ERROR_NO_URL);
                    File file2 = new File(campaignEx.getAdHtml());
                    try {
                        try {
                            if (!file2.exists()) {
                                String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                                String md5 = SameMD5.getMD5(z0.b(campaignEx.getAdHtml()));
                                if (TextUtils.isEmpty(md5)) {
                                    md5 = String.valueOf(System.currentTimeMillis());
                                }
                                file = new File(strB, md5.concat(".html"));
                                try {
                                    if (!file.exists()) {
                                        fileOutputStream = new FileOutputStream(file);
                                        try {
                                            String strA = le.b.a(MBridgeConstans.OMID_JS_SERVICE_CONTENT, "<script>" + com.mbridge.msdk.setting.util.a.a().b() + "</script>" + campaignEx.getAdHtml());
                                            if (campaignEx.isActiveOm()) {
                                                strA = com.mbridge.msdk.omsdk.b.a(strA);
                                            }
                                            fileOutputStream.write(strA.getBytes());
                                            fileOutputStream.flush();
                                            fileOutputStream2 = fileOutputStream;
                                        } catch (Exception e13) {
                                            e11 = e13;
                                            file2 = file;
                                            FileOutputStream fileOutputStream3 = fileOutputStream;
                                            e12 = e11;
                                            fileOutputStream2 = fileOutputStream3;
                                            e12.printStackTrace();
                                            campaignEx.setMraid("");
                                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e12.getMessage(), this.f37466a, PrepareException.ERROR_NO_URL);
                                            if (fileOutputStream2 != null) {
                                                fileOutputStream2.close();
                                            }
                                            file = file2;
                                            if (file.exists()) {
                                            }
                                            a(new com.mbridge.msdk.foundation.error.b(880013), this.f37478m, i11, campaignEx);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } catch (Exception e14) {
                                    e12 = e14;
                                    file2 = file;
                                    e12.printStackTrace();
                                    campaignEx.setMraid("");
                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e12.getMessage(), this.f37466a, PrepareException.ERROR_NO_URL);
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    file = file2;
                                }
                                if (file.exists() || !file.isFile() || !file.canRead()) {
                                    a(new com.mbridge.msdk.foundation.error.b(880013), this.f37478m, i11, campaignEx);
                                }
                                campaignEx.setAdHtml(file.getAbsolutePath());
                                a("file:////" + file.getAbsolutePath(), campaignEx, i11);
                                return;
                            }
                            file = file2;
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f37466a, PrepareException.ERROR_NO_URL);
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                        } catch (Exception e15) {
                            fileOutputStream = fileOutputStream2;
                            e11 = e15;
                            file2 = file;
                            FileOutputStream fileOutputStream4 = fileOutputStream;
                            e12 = e11;
                            fileOutputStream2 = fileOutputStream4;
                            e12.printStackTrace();
                            campaignEx.setMraid("");
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e12.getMessage(), this.f37466a, PrepareException.ERROR_NO_URL);
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                            file = file2;
                        }
                    } catch (Exception e16) {
                        e12 = e16;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (Exception e17) {
                file = null;
                e11 = e17;
                fileOutputStream = null;
            }
            if (file.exists()) {
            }
            a(new com.mbridge.msdk.foundation.error.b(880013), this.f37478m, i11, campaignEx);
        } catch (Exception unused) {
            a(new com.mbridge.msdk.foundation.error.b(880013), this.f37478m, i11, campaignEx);
        }
    }

    private void e(CampaignEx campaignEx, int i11) {
        if (campaignEx.isDynamicView()) {
            x.a(5, "", campaignEx.getAdZip(), new i(campaignEx), campaignEx);
            return;
        }
        this.f37483r = new j(campaignEx, i11);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(297);
        cVar.e(2);
        cVar.a(campaignEx);
        cVar.f(campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getAdZip(), this.f37483r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f37485t = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(CampaignEx campaignEx, int i11) {
        if (campaignEx.isDynamicView()) {
            com.mbridge.msdk.splash.common.c.a aVar = new com.mbridge.msdk.splash.common.c.a();
            aVar.b(this.f37466a).a(this.f37467b).a(this.f37474i).a(campaignEx).c(this.f37475j).f(this.f37487v);
            try {
                if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
                    Uri uri = Uri.parse(campaignEx.getAdZip());
                    String queryParameter = uri.getQueryParameter("hdbtn");
                    String queryParameter2 = uri.getQueryParameter("alecfc");
                    String queryParameter3 = uri.getQueryParameter("hdinfo");
                    String queryParameter4 = uri.getQueryParameter("shake_show");
                    String queryParameter5 = uri.getQueryParameter("shake_strength");
                    String queryParameter6 = uri.getQueryParameter("shake_time");
                    String queryParameter7 = uri.getQueryParameter("n_logo");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        aVar.b(Integer.parseInt(queryParameter));
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        aVar.e(Integer.parseInt(queryParameter2));
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        aVar.a(Integer.parseInt(queryParameter3));
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        aVar.g(Integer.parseInt(queryParameter4));
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        aVar.h(Integer.parseInt(queryParameter5));
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        aVar.i(Integer.parseInt(queryParameter6));
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        aVar.d(Integer.parseInt(queryParameter7) == 0 ? 0 : 1);
                    }
                }
            } catch (Throwable th2) {
                o0.b(A, th2.getMessage());
            }
            com.mbridge.msdk.splash.manager.c.a().a(this.f37472g, aVar.a(), new k(campaignEx, i11));
        }
    }

    private void g() {
        try {
            int i11 = this.f37485t + 1;
            this.f37485t = i11;
            l lVar = this.f37473h;
            if (lVar != null && i11 <= lVar.y()) {
                return;
            }
            this.f37485t = 0;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(CampaignEx campaignEx, int i11) {
        if (this.f37472g.isH5Ready()) {
            return;
        }
        this.f37472g.setH5Ready(true);
        h(campaignEx, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CampaignEx campaignEx, int i11) {
        if (!com.mbridge.msdk.splash.manager.d.a(this.f37472g, campaignEx) || this.f37481p) {
            return;
        }
        b();
        if (this.f37480o) {
            com.mbridge.msdk.splash.manager.d.a(campaignEx, this.f37466a);
        }
        this.f37481p = true;
        com.mbridge.msdk.splash.middle.b bVar = this.f37470e;
        if (bVar != null) {
            bVar.a(campaignEx, i11);
        }
    }

    private void i(CampaignEx campaignEx, int i11) throws Throwable {
        MBSplashView mBSplashView = this.f37472g;
        if (mBSplashView != null) {
            mBSplashView.setDynamicView(false);
        }
        if (campaignEx.isDynamicView()) {
            c(campaignEx, i11);
        } else {
            MBSplashView mBSplashView2 = this.f37472g;
            if (mBSplashView2 != null) {
                mBSplashView2.setSplashWebView();
            }
        }
        if (com.mbridge.msdk.splash.manager.d.a(this.f37472g, campaignEx)) {
            h(campaignEx, i11);
        } else {
            a(campaignEx, i11);
        }
    }

    public void a(int i11) {
        this.f37475j = i11;
    }

    public void a(int i11, int i12) {
        this.f37477l = i11;
        this.f37476k = i12;
    }

    public void a(l lVar) {
        this.f37473h = lVar;
    }

    public void a(com.mbridge.msdk.splash.middle.b bVar) {
        this.f37470e = bVar;
    }

    public void a(MBSplashView mBSplashView) {
        this.f37472g = mBSplashView;
    }

    public void a(String str, int i11) {
        this.f37481p = false;
        this.f37478m = str;
        this.f37479n = i11;
        CampaignEx campaignExA = com.mbridge.msdk.splash.manager.d.a(this.f37472g, this.f37467b, this.f37466a, str, this.f37474i, this.f37475j, false, false);
        long timestamp = campaignExA != null ? campaignExA.getTimestamp() : 0L;
        if (this.f37473h.t() == 1 && i11 != 1 && campaignExA != null) {
            i(campaignExA, i11);
            return;
        }
        this.f37480o = true;
        if (i11 == 1) {
            List<Integer> listC = this.f37473h.c();
            if (listC == null || listC.size() <= 0) {
                this.f37468c = 30000L;
            } else {
                this.f37468c = listC.get(0).intValue() * 1000;
            }
        } else {
            long j11 = this.f37469d;
            if (j11 <= 0) {
                this.f37468c = this.f37473h.E();
            } else {
                this.f37468c = j11;
            }
        }
        if (this.f37473h == null || timestamp <= 0 || !TextUtils.isEmpty(str)) {
            a(this.f37468c);
            a(this.f37471f, str, i11);
            return;
        }
        if (System.currentTimeMillis() - timestamp <= this.f37473h.v() * 1000) {
            i(campaignExA, i11);
        } else {
            a(this.f37468c);
            a(this.f37471f, str, i11);
        }
    }

    public void a(boolean z10) {
        this.f37474i = z10;
    }

    public void b(int i11) {
        this.f37487v = i11;
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.f37488w);
    }

    public String d() {
        return this.f37486u;
    }

    public void e() {
        if (this.f37470e != null) {
            this.f37470e = null;
        }
        if (this.f37482q != null) {
            this.f37482q = null;
        }
        if (this.f37483r != null) {
            this.f37483r = null;
        }
    }
}
