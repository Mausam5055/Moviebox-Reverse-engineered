package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadProgress;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.DownloadStatus;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.OnProgressStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.download.utils.Objects;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import java.io.File;
import java.io.Serializable;
import java.net.URL;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class a implements Serializable {
    private int A;
    private File B;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private com.mbridge.msdk.setting.l H;
    private com.mbridge.msdk.videocommon.setting.c I;
    private com.mbridge.msdk.setting.l J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f39875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f39876c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f39880g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f39881h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CampaignEx f39882i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f39883j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f39884k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f39885l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f39886m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f39887n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f39889p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f39891r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private m f39894u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f39896w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private DownloadRequest f39897x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f39898y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f39899z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f39874a = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f39877d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile int f39878e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CopyOnWriteArrayList<c> f39879f = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f39888o = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f39890q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f39892s = 100;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f39893t = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f39895v = false;
    private int C = 1;
    private boolean K = false;
    private boolean L = false;
    private boolean M = false;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private boolean Q = false;
    private OnDownloadStateListener R = new C0574a();
    private OnProgressStateListener S = new b();

    /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.download.a$a, reason: collision with other inner class name */
    class C0574a implements OnDownloadStateListener {
        C0574a() {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            String str;
            try {
                o0.b("CampaignDownLoadTask", "onDownloadComplete callback : " + a.this.f39888o + "    " + a.this.f39885l);
                if (a.this.f39894u == null) {
                    a.this.f39894u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                }
                a.this.f39894u.a(a.this.f39886m, a.this.f39888o, 5);
                if (downloadMessage != null) {
                    try {
                        str = (String) downloadMessage.getExtra("responseHeaders");
                    } catch (Throwable th2) {
                        o0.b("CampaignDownLoadTask", th2.getMessage());
                        str = "";
                    }
                } else {
                    str = "";
                }
                a aVar = a.this;
                aVar.a(aVar.f39888o, true, str);
                a.this.f39894u.a(a.this.f39886m, a.this.f39888o, 5);
                a aVar2 = a.this;
                aVar2.a(aVar2.f39888o, true, "");
                a.this.a(1, true, "");
            } catch (Exception e11) {
                o0.b("CampaignDownLoadTask", e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            if (a.this.f39897x == null || a.this.f39897x.getStatus() == DownloadStatus.CANCELLED) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", a.this.f39897x.get("cache", "2"));
            a aVar = a.this;
            aVar.a(aVar.f39882i, eVar);
            String message = (downloadError == null || downloadError.getException() == null) ? "Video Download Error" : downloadError.getException().getMessage();
            a.this.m();
            a.this.a(3, message, "");
            a.this.b(message);
            a aVar2 = a.this;
            aVar2.a(3, aVar2.f39899z, message);
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage downloadMessage) {
            a.this.f39878e = 1;
            if (a.this.f39894u == null) {
                a.this.f39894u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            }
            a.this.f39894u.a(a.this.f39882i, a.this.f39885l, a.this.f39889p, a.this.f39878e);
        }
    }

    class b implements OnProgressStateListener {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.download.OnProgressStateListener
        public void onProgress(DownloadMessage downloadMessage, DownloadProgress downloadProgress) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", a.this.f39897x.get("cache", "2"));
                a aVar = a.this;
                aVar.a(aVar.f39882i, eVar);
                a.this.f39888o = downloadProgress.getCurrent();
                a.this.f39885l = downloadProgress.getTotal();
                a.this.f39898y = downloadProgress.getCurrentDownloadRate();
                if (a.this.f39892s != 100 && downloadProgress.getCurrentDownloadRate() >= a.this.f39892s) {
                    o0.b("CampaignDownLoadTask", "Rate : " + downloadProgress.getCurrentDownloadRate() + " ReadyRate & cdRate = " + a.this.f39892s + " " + a.this.f39876c);
                    if (a.this.f39877d) {
                        return;
                    }
                    a.this.f39877d = true;
                    if (!a.this.f39899z) {
                        a.this.a(1, true, "");
                        a.this.a(downloadProgress.getCurrent(), false, "");
                    }
                    if (a.this.f39897x == null || a.this.C != 2 || a.this.f39899z) {
                        return;
                    }
                    a.this.f39897x.cancel(downloadMessage);
                }
            } catch (Exception e11) {
                o0.b("CampaignDownLoadTask", e11.getMessage());
            }
        }
    }

    public a(Context context, CampaignEx campaignEx, String str, int i11) {
        this.f39875b = 1;
        this.G = false;
        if (context == null && campaignEx == null) {
            return;
        }
        com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarB != null) {
            this.G = gVarB.D0();
        }
        this.D = com.mbridge.msdk.foundation.same.a.f35349u;
        this.E = com.mbridge.msdk.foundation.same.a.f35350v;
        this.F = com.mbridge.msdk.foundation.same.a.f35348t;
        this.f39891r = System.currentTimeMillis();
        this.f39884k = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f39882i = campaignEx;
        this.f39883j = str;
        this.f39875b = i11;
        if (campaignEx != null) {
            this.f39886m = campaignEx.getVideoUrlEncode();
        }
        this.f39896w = m0.d(this.f39886m);
        this.f39887n = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_VC) + File.separator;
        this.f39889p = this.f39887n + this.f39896w;
        o0.c("CampaignDownLoadTask", this.f39882i.getAppName() + " videoLocalPath:" + this.f39889p + " videoUrl: " + this.f39882i.getVideoUrlEncode() + " " + this.f39892s);
        l();
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
            } catch (Throwable th2) {
                o0.b("CampaignDownLoadTask", th2.getMessage());
            }
        }
        return 0;
    }

    private DownloadRequest<?> a(DownloadMessage downloadMessage, OnDownloadStateListener onDownloadStateListener, OnProgressStateListener onProgressStateListener, String str) {
        return MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout(this.D).withConnectTimeout(this.F).withWriteTimeout(this.E).withDownloadPriority(DownloadPriority.HIGH).withHttpRetryCounter(1).withDirectoryPathInternal(this.f39887n).withDownloadStateListener(onDownloadStateListener).withProgressStateListener(onProgressStateListener).withTimeout(60000L).with("do_us_fi_re", Boolean.toString(this.G)).with("download_scene", "download_video").with(CampaignEx.JSON_KEY_READY_RATE, String.valueOf(this.f39892s)).with("scenes", str).build();
    }

    private void a() {
        if (this.f39894u == null) {
            this.f39894u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        try {
            try {
                this.f39894u.a(this.f39886m);
                if (!q0.a().a("r_d_v_b_l", true)) {
                    File file = new File(this.f39889p);
                    if (file.exists() && file.isFile()) {
                        file.delete();
                    }
                }
                this.f39878e = 0;
            } catch (Throwable unused) {
                o0.b("CampaignDownLoadTask", "del DB or file failed");
            }
        } finally {
            this.f39878e = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, String str, String str2) {
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m(this.f39884k, this.f39882i, i11, Long.toString(this.f39891r != 0 ? System.currentTimeMillis() - this.f39891r : 0L), this.f39885l, this.A);
        mVar.b(this.f39882i.getId());
        mVar.v(this.f39882i.getVideoUrlEncode());
        mVar.m(str);
        mVar.n(this.f39882i.getRequestId());
        mVar.k(this.f39882i.getCurrentLocalRid());
        mVar.o(this.f39882i.getRequestIdNotice());
        mVar.u(this.f39883j);
        mVar.q(str2);
        mVar.b(CampaignEx.JSON_KEY_READY_RATE, String.valueOf(this.f39892s));
        mVar.b("url", this.f39882i.getVideoUrlEncode());
        mVar.e(4);
        DownloadRequest downloadRequest = this.f39897x;
        if (downloadRequest != null) {
            mVar.b("scenes", downloadRequest.get("scenes", ""));
            mVar.b("resumed_breakpoint", this.f39897x.get("resumed_breakpoint", ""));
        }
        int i12 = this.A;
        if (i12 == 94 || i12 == 287) {
            return;
        }
        n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, boolean z10, String str) {
        if (this.P) {
            return;
        }
        try {
            this.P = true;
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            DownloadRequest downloadRequest = this.f39897x;
            if (downloadRequest != null) {
                eVar.a("scenes", downloadRequest.get("scenes", ""));
                eVar.a("url", this.f39886m);
                eVar.a("resumed_breakpoint", this.f39897x.get("resumed_breakpoint", ""));
                eVar.a("h3c", "");
            }
            eVar.a("resource_type", 4);
            eVar.a("file_size", Long.valueOf(this.f39885l));
            eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(this.f39892s));
            eVar.a("result", Integer.valueOf(i11));
            eVar.a("reason", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_end", this.f39882i, eVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    private void a(long j11, int i11) {
        this.f39888o = j11;
        int i12 = this.f39892s;
        if (100 * j11 >= ((long) i12) * this.f39885l && !this.f39893t && i11 != 4) {
            if (i12 == 100 && i11 != 5) {
                this.f39878e = 5;
                return;
            }
            this.f39893t = true;
            o0.b("CampaignDownLoadTask", "UpdateListener : state: " + i11 + " progress : " + j11);
            String strF = f();
            if (TextUtils.isEmpty(strF)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.f39880g;
                if (aVar != null) {
                    aVar.a(this.f39886m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39881h;
                if (aVar2 != null) {
                    aVar2.a(this.f39886m);
                }
            } else {
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f39880g;
                if (aVar3 != null) {
                    aVar3.a("file is not effective " + strF, this.f39886m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar4 = this.f39881h;
                if (aVar4 != null) {
                    aVar4.a("file is not effective " + strF, this.f39886m);
                }
            }
        }
        if (!this.f39874a && j11 > 0) {
            this.f39874a = true;
            if (this.f39894u == null) {
                this.f39894u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            }
            this.f39894u.a(this.f39886m, j11, this.f39878e);
        }
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f39879f;
        if (copyOnWriteArrayList != null) {
            for (c cVar : copyOnWriteArrayList) {
                if (cVar != null) {
                    cVar.onProgress(j11, i11);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (this.O || campaignEx == null || eVar == null) {
            return;
        }
        this.O = true;
        try {
            eVar.a("resource_type", 4);
            DownloadRequest downloadRequest = this.f39897x;
            if (downloadRequest != null) {
                eVar.a("scenes", downloadRequest.get("scenes", "1"));
                eVar.a("resumed_breakpoint", this.f39897x.get("resumed_breakpoint", "2"));
            } else {
                eVar.a("scenes", "1");
                eVar.a("resumed_breakpoint", "1");
            }
            eVar.a("url", campaignEx.getVideoUrlEncode());
            eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(c(campaignEx)));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
        } catch (Exception e11) {
            o0.b("CampaignDownLoadTask", e11.getMessage());
        }
    }

    private int b(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.setting.l lVar = this.J;
            if (lVar != null) {
                return lVar.C();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CampaignDownLoadTask", e11.getMessage());
            }
        }
        return 100;
    }

    private int c(CampaignEx campaignEx) {
        int iD;
        if (campaignEx == null) {
            return 100;
        }
        if (campaignEx.getReady_rate() != -1) {
            iD = campaignEx.getReady_rate();
            o0.a("CampaignDownLoadTask", "ready_rate(campaign): " + iD);
        } else {
            iD = d(campaignEx);
            o0.a("CampaignDownLoadTask", "ready_rate(reward_unit_setting): " + iD);
        }
        try {
            return Math.max(iD, 0);
        } catch (Exception unused) {
            return 100;
        }
    }

    private int d(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 100;
        }
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.H == null) {
                    this.H = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39883j);
                }
                return this.H.C();
            }
            if (campaignEx.getAdType() == 42) {
                if (this.J == null) {
                    this.J = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39883j);
                }
                return b((CampaignEx) null);
            }
            if (this.I == null) {
                this.I = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39883j, false);
            }
            return this.I.w();
        } catch (Throwable th2) {
            o0.b("CampaignDownLoadTask", th2.getMessage(), th2);
            return 100;
        }
    }

    private void l() {
        File file;
        File file2;
        try {
            if (TextUtils.isEmpty(this.f39886m)) {
                return;
            }
            if (TextUtils.isEmpty(this.f39887n)) {
                file = null;
            } else {
                file = new File(this.f39887n);
                if (!file.exists()) {
                    file.mkdirs();
                }
            }
            if (file != null && file.exists() && ((file2 = this.B) == null || !file2.exists())) {
                File file3 = new File(file + "/.nomedia");
                this.B = file3;
                if (!file3.exists()) {
                    this.B.createNewFile();
                }
            }
            u();
            a(this.f39886m);
        } catch (Exception e11) {
            o0.c("CampaignDownLoadTask", e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            t0.a(this.f39883j, this.f39882i, com.mbridge.msdk.foundation.same.a.f35352x);
        } catch (Exception e11) {
            o0.b("CampaignDownLoadTask", e11.getMessage());
        }
    }

    private void u() {
        m mVarA = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        com.mbridge.msdk.foundation.entity.l lVarB = mVarA.b(this.f39886m, "");
        if (lVarB != null) {
            this.f39888o = lVarB.c();
            if (this.f39878e != 2) {
                this.f39878e = lVarB.b();
            }
            if (this.f39878e == 1) {
                this.f39878e = 2;
            }
            this.f39885l = lVarB.d();
            if (lVarB.a() > 0) {
                this.f39891r = lVarB.a();
            }
            if (this.f39878e == 5) {
                if (Objects.exists(new File(this.f39887n + this.f39896w), this.f39887n, this.f39896w)) {
                    this.f39889p = this.f39887n + this.f39896w;
                } else {
                    a();
                }
            } else if (this.f39878e != 0) {
                this.f39889p = this.f39887n + this.f39896w;
            }
        } else {
            mVarA.a(this.f39886m, this.f39891r);
        }
        try {
            long j11 = this.f39885l;
            if (j11 <= 0 || this.f39888o * 100 < j11 * ((long) c(this.f39882i))) {
                return;
            }
            if (c(this.f39882i) != 100 && this.f39878e != 5) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            a(this.f39882i, eVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(int i11) {
        this.A = i11;
    }

    public void a(int i11, int i12) {
        this.f39878e = i11;
        if (this.f39894u == null) {
            this.f39894u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        this.f39894u.a(this.f39886m, i12, i11);
    }

    public void a(long j11, boolean z10, String str) {
        m mVar;
        o0.b("CampaignDownLoadTask", "setStateToDone 下载完成  ： mProgressSize" + this.f39888o + "  progressSize " + j11 + "  " + this.f39898y + "%   FileSize : " + this.f39885l + "  " + this.f39882i.getAppName());
        if (this.f39892s != 100 || this.f39875b == 3 || j11 == this.f39885l || z10) {
            this.f39878e = 5;
            if (j11 == this.f39885l) {
                a(1, "", str);
            }
            long j12 = this.f39885l;
            if (j12 != 0 && (mVar = this.f39894u) != null) {
                mVar.b(this.f39886m, j12);
            }
            this.f39874a = false;
            a(j11, this.f39878e);
            return;
        }
        File file = new File(this.f39889p);
        o0.b("CampaignDownLoadTask", "progressSize = " + j11 + " fileSize = " + this.f39885l + " " + z10 + " absFileSize = " + (Objects.exists(file, this.f39887n, this.f39896w) ? file.length() : 0L));
        b("File size is not match witch download size.");
    }

    public void a(c cVar) {
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f39879f;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.add(cVar);
        }
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f39880g = aVar;
    }

    public void a(String str) {
        int iC;
        if (TextUtils.isEmpty(str)) {
            this.f39881h.a("VideoUrl is NULL, Please check it.", "");
            return;
        }
        if (this.f39878e == 1) {
            o0.a("CampaignDownLoadTask", "Run : Task is RUNNING, Will return.");
            return;
        }
        if (this.f39878e == 5 && Utils.getDownloadRate(this.f39885l, this.f39888o) >= this.f39892s) {
            o0.a("CampaignDownLoadTask", "Run : Video Done, Will callback.");
            com.mbridge.msdk.videocommon.listener.a aVar = this.f39880g;
            if (aVar != null) {
                aVar.a(this.f39886m);
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39881h;
            if (aVar2 != null) {
                aVar2.a(this.f39886m);
            }
            try {
                File file = new File(this.f39889p);
                if (Objects.exists(file, this.f39887n, this.f39896w) && file.isFile()) {
                    file.setLastModified(System.currentTimeMillis());
                }
            } catch (Exception e11) {
                o0.b("CampaignDownLoadTask", e11.getMessage());
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            a(this.f39882i, eVar);
            return;
        }
        if (this.f39875b == 3) {
            o0.a("CampaignDownLoadTask", "Run : Dlnet is 3, Will callback.");
            a(0L, false, "");
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("cache", 1);
            a(this.f39882i, eVar2);
            return;
        }
        try {
            iC = c(this.f39882i);
        } catch (Exception unused) {
            iC = 100;
        }
        d(iC);
        if (iC == 0) {
            com.mbridge.msdk.videocommon.listener.a aVar3 = this.f39880g;
            if (aVar3 != null) {
                aVar3.a(this.f39886m);
            }
            com.mbridge.msdk.videocommon.listener.a aVar4 = this.f39881h;
            if (aVar4 != null) {
                aVar4.a(this.f39886m);
            }
        }
        DownloadMessage downloadMessage = new DownloadMessage(this.f39882i, str, this.f39896w, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
        downloadMessage.setUseCronetDownload(a(this.f39882i));
        downloadMessage.addExtra("resource_type", 4);
        this.f39897x = a(downloadMessage, this.R, this.S, "1");
    }

    public void a(boolean z10) {
        this.K = z10;
    }

    public void b() {
        try {
            a();
            CampaignEx campaignEx = this.f39882i;
            if (campaignEx == null || campaignEx.getPlayable_ads_without_video() != 2) {
                com.mbridge.msdk.videocommon.cache.a aVarA = com.mbridge.msdk.videocommon.cache.a.a();
                if (aVarA != null) {
                    aVarA.a(this.f39882i);
                }
            }
        } catch (Exception unused) {
            o0.b("CampaignDownLoadTask", "del file is failed");
        } finally {
            this.f39878e = 0;
        }
    }

    public void b(int i11) {
        this.f39876c = i11;
    }

    public void b(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f39881h = aVar;
    }

    public void b(String str) {
        com.mbridge.msdk.videocommon.listener.a aVar = this.f39880g;
        if (aVar != null) {
            aVar.a(str, this.f39886m);
        }
        com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39881h;
        if (aVar2 != null) {
            aVar2.a(str, this.f39886m);
        }
        o0.b("CampaignDownLoadTask", "Video download stop : " + str);
        if (this.f39878e == 4 || this.f39878e == 2 || this.f39878e == 5) {
            return;
        }
        this.f39878e = 4;
        CampaignEx campaignEx = this.f39882i;
        if (campaignEx == null || campaignEx.getRsIgnoreCheckRule() == null || this.f39882i.getRsIgnoreCheckRule().size() <= 0 || !this.f39882i.getRsIgnoreCheckRule().contains(0)) {
            a(this.f39888o, this.f39878e);
        } else {
            o0.c("CampaignDownLoadTask", "Is not check video download status");
        }
    }

    public void b(boolean z10) {
        this.f39895v = z10;
    }

    public CampaignEx c() {
        return this.f39882i;
    }

    public void c(int i11) {
        this.f39875b = i11;
    }

    public void c(String str) {
        m();
        a(2, str, "");
        this.f39878e = 4;
    }

    public void c(boolean z10) {
        this.L = z10;
    }

    public String d() {
        return this.f39886m;
    }

    public void d(int i11) {
        o0.a("CampaignDownLoadTask", "set ready rate: " + i11);
        this.f39892s = i11;
    }

    public void d(boolean z10) {
        this.f39890q = z10;
    }

    public long e() {
        return this.f39885l;
    }

    public void e(int i11) {
        this.C = i11;
    }

    public void e(CampaignEx campaignEx) {
        this.f39882i = campaignEx;
    }

    public void e(boolean z10) {
        this.N = z10;
    }

    public String f() {
        String message = "";
        if (this.f39875b == 3) {
            return "";
        }
        String str = this.f39887n + this.f39896w;
        File file = new File(str);
        try {
            if (!Objects.exists(file, this.f39887n, this.f39896w)) {
                message = "file is not exist ";
            } else if (!file.isFile()) {
                message = "file is not file ";
            } else if (!file.canRead()) {
                message = "file can not read ";
            } else if (file.length() > 0) {
                this.f39889p = str;
            } else {
                message = "file length is 0 ";
            }
        } catch (Throwable th2) {
            o0.b("CampaignDownLoadTask", th2.getMessage());
            message = th2.getMessage();
        }
        if (this.f39878e == 5 && !TextUtils.isEmpty(message)) {
            a();
        }
        return message;
    }

    public void f(boolean z10) {
        this.M = z10;
    }

    public String g() {
        if (this.Q) {
            try {
                File file = new File(this.f39889p);
                return (file.exists() && file.isFile()) ? this.f39889p : this.f39886m;
            } catch (Exception e11) {
                o0.b("CampaignDownLoadTask", e11.getMessage());
                return this.f39886m;
            }
        }
        try {
            File file2 = new File(this.f39889p);
            if (Objects.exists(file2, this.f39887n, this.f39896w) && file2.isFile()) {
                return this.f39889p;
            }
        } catch (Exception e12) {
            o0.b("CampaignDownLoadTask", e12.getMessage());
        }
        return this.f39886m;
    }

    public long h() {
        return this.f39888o;
    }

    public long i() {
        return this.f39891r;
    }

    public int j() {
        return this.f39878e;
    }

    public String k() {
        return this.f39889p;
    }

    public boolean n() {
        return this.K;
    }

    public boolean o() {
        return this.f39895v;
    }

    public boolean p() {
        return this.L;
    }

    public boolean q() {
        return this.Q;
    }

    public boolean r() {
        return this.N;
    }

    public boolean s() {
        return this.M;
    }

    public void t() {
        if (this.f39879f != null) {
            this.f39879f = null;
        }
    }

    public void v() {
        if (this.Q) {
            return;
        }
        try {
            this.f39899z = true;
            if (this.C == 1) {
                o0.b("CampaignDownLoadTask", "Can not call resume(), because videoCtnType = " + this.C);
                return;
            }
            if (this.f39875b == 3) {
                o0.b("CampaignDownLoadTask", "Can not call resume(), because dlnet = " + this.f39875b);
                return;
            }
            o0.b("CampaignDownLoadTask", "resume()");
            this.O = false;
            this.P = false;
            DownloadMessage downloadMessage = new DownloadMessage(new Object(), this.f39886m, this.f39896w, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
            downloadMessage.setUseCronetDownload(a(this.f39882i));
            DownloadRequest<?> downloadRequestA = a(downloadMessage, this.R, this.S, "2");
            this.f39897x = downloadRequestA;
            downloadRequestA.start();
        } catch (Exception e11) {
            o0.b("CampaignDownLoadTask", e11.getMessage());
        }
    }

    public void w() {
        o0.b("CampaignDownLoadTask", "start()");
        try {
            if (TextUtils.isEmpty(this.f39886m)) {
                return;
            }
            if (d() != null) {
                o0.b("CampaignDownLoadTask", new URL(d()).getPath());
            }
            if (this.f39892s == 0 && this.C == 2) {
                o0.b("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                return;
            }
            DownloadRequest downloadRequest = this.f39897x;
            if (downloadRequest != null) {
                downloadRequest.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f39880g;
            if (aVar != null) {
                aVar.a("VideoUrl is not illegal, Please check it.", "");
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39881h;
            if (aVar2 != null) {
                aVar2.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    public void x() {
        o0.b("CampaignDownLoadTask", "startForLoadRefactor()");
        try {
            if (TextUtils.isEmpty(this.f39886m)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.f39880g;
                if (aVar != null) {
                    aVar.a(this.f39886m);
                    return;
                }
                return;
            }
            if (d() != null) {
                o0.b("CampaignDownLoadTask", new URL(d()).getPath());
            }
            if (this.f39875b == 3) {
                o0.b("CampaignDownLoadTask", "startForLoadRefactor: Dlnet is 3, Will callback.");
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39880g;
                if (aVar2 != null) {
                    aVar2.a(this.f39886m);
                    return;
                }
                return;
            }
            if (this.f39892s == 0 && this.C == 2) {
                o0.b("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f39880g;
                if (aVar3 != null) {
                    aVar3.a(this.f39886m);
                    return;
                }
                return;
            }
            try {
                if (this.f39878e == 5 && Utils.getDownloadRate(this.f39885l, this.f39888o) >= this.f39892s) {
                    if (Objects.exists(new File(this.f39887n + this.f39896w), this.f39887n, this.f39896w)) {
                        this.f39889p = this.f39887n + this.f39896w;
                        com.mbridge.msdk.videocommon.listener.a aVar4 = this.f39880g;
                        if (aVar4 != null) {
                            aVar4.a(this.f39886m);
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e11) {
                o0.b("CampaignDownLoadTask", "startForLoadRefactor: " + e11.getMessage());
            }
            DownloadRequest downloadRequest = this.f39897x;
            if (downloadRequest != null) {
                downloadRequest.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar5 = this.f39880g;
            if (aVar5 != null) {
                aVar5.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }
}
