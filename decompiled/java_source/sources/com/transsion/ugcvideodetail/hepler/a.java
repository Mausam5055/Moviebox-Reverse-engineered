package com.transsion.ugcvideodetail.hepler;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.PlayError;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f56294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f56295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f56296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.transsion.player.orplayer.g f56297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private UGCVideo f56298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f56299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f56300g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f56301h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f56302i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f56303j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f56304k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f56305l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f56306m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f56307n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f56308o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f56309p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f56310q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f56311r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Integer f56312s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f56313t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f56314u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f56315v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f56316w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private yj.c f56317x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f56318y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f56319z;

    public a(String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        this.f56294a = pageName;
        this.f56295b = str;
        this.f56296c = a.class.getSimpleName();
        this.f56314u = true;
        this.f56315v = "";
        this.f56316w = -1;
        this.f56318y = "";
    }

    public static /* synthetic */ void d(a aVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        aVar.b(z10);
    }

    private final yj.c e() {
        if (this.f56317x == null) {
            this.f56317x = (yj.c) yj.a.f79022a.a(yj.c.class);
        }
        return this.f56317x;
    }

    private final void q(boolean z10) {
        this.f56299f = 0L;
        this.f56300g = 0L;
        this.f56301h = 0L;
        this.f56302i = 0L;
        this.f56303j = 0L;
        this.f56304k = 0;
        this.f56305l = 0L;
        this.f56306m = 0L;
        this.f56307n = 0L;
        this.f56308o = 0;
        this.f56309p = 0L;
        this.f56310q = 0L;
        this.f56311r = 0L;
        if (z10) {
            return;
        }
        this.f56316w = -1;
        this.f56313t = false;
    }

    public final void a() {
        this.f56300g = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "addSurface", false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f6  */
    public final void b(boolean z10) {
        String ops;
        String strValueOf;
        String strValueOf2;
        if (this.f56299f == 0 && !this.f56313t) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f56296c;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f56313t) {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String TAG2 = this.f56296c;
            Intrinsics.g(TAG2, "TAG");
            lg.a.C0828a.v(c0828a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f56313t = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ep", this.f56318y);
        String strI = this.f56295b;
        if (strI == null) {
            strI = hj.i.f64505a.i();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strI);
        UGCVideo uGCVideo = this.f56298e;
        if (uGCVideo == null || (ops = uGCVideo.getOps()) == null) {
            ops = "";
        }
        linkedHashMap.put("ops", ops);
        int i11 = this.f56319z;
        if (i11 > 0) {
            linkedHashMap.put("subject_type", String.valueOf(i11));
        }
        if (this.f56301h > 0 || (this.f56313t && this.f56307n > 0)) {
            linkedHashMap.put("is_start", "1");
            long j11 = this.f56299f;
            if (j11 > 0) {
                long j12 = this.f56301h;
                if (j12 > 0) {
                    strValueOf = String.valueOf(j12 - j11);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j13 = this.f56300g;
            if (j13 > 0) {
                long j14 = this.f56301h;
                if (j14 > 0) {
                    strValueOf2 = String.valueOf(j14 - j13);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f56302i));
            linkedHashMap.put("buffer_count", String.valueOf(this.f56304k));
            linkedHashMap.put("play_complete", String.valueOf(((this.f56305l / this.f56311r) * 100.0f) + (this.f56308o * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f56307n));
            linkedHashMap.put("pause_duration", String.valueOf(this.f56310q));
            linkedHashMap.put("completeCount", String.valueOf(this.f56308o));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f56299f > 0 ? String.valueOf(System.currentTimeMillis() - this.f56299f) : "0");
            linkedHashMap.put("delay", this.f56300g > 0 ? String.valueOf(System.currentTimeMillis() - this.f56300g) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        linkedHashMap.put("is_preloaded", ORPlayerPreloadManager.f48409i.a().e(this.f56315v) ? "1" : "0");
        linkedHashMap.put("url", this.f56315v);
        long j15 = this.f56311r;
        if (j15 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j15));
        }
        int i12 = this.f56316w;
        if (i12 >= 0) {
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i12));
        }
        Integer num = this.f56312s;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        if (!this.f56313t || this.f56307n > 0 || this.f56314u) {
            if (z10) {
                this.f56314u = false;
            }
            yj.c cVarE = e();
            if (cVarE != null) {
                cVarE.b(this.f56307n);
            }
            hj.i.f64505a.H(this.f56294a, "video_play", this.f56307n, linkedHashMap);
            q(z10);
        }
    }

    public final void c(boolean z10, boolean z11) {
        if (z10) {
            b(z11);
        } else {
            q(z11);
        }
    }

    public final void f() {
        this.f56299f = System.currentTimeMillis();
        this.f56314u = true;
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "initView", false, 4, null);
    }

    public final void g() {
        l(this.f56311r);
    }

    public final void h() {
        this.f56303j = System.currentTimeMillis();
    }

    public final void i() {
        if (this.f56303j > 0) {
            this.f56302i += System.currentTimeMillis() - this.f56303j;
            this.f56304k++;
            this.f56303j = 0L;
        }
    }

    public final void j() {
        this.f56308o++;
        this.f56305l = 0L;
    }

    public final void k(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f56312s = errorInfo.getErrorCode();
    }

    public final void l(long j11) {
        if (this.f56311r <= 0) {
            com.transsion.player.orplayer.g gVar = this.f56297d;
            this.f56311r = gVar != null ? gVar.getDuration() : 0L;
        }
        long j12 = this.f56306m;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 1000) {
            this.f56307n += j11 - j12;
        }
        this.f56306m = j11;
        if (j11 > this.f56305l) {
            this.f56305l = j11;
        }
        yj.c cVarE = e();
        if (cVarE != null) {
            cVarE.a(this.f56307n);
        }
    }

    public final void m() {
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f56301h = System.currentTimeMillis();
    }

    public final void n() {
        this.f56309p = System.currentTimeMillis();
    }

    public final void o() {
        if (this.f56309p != 0) {
            this.f56310q += System.currentTimeMillis() - this.f56309p;
            this.f56309p = 0L;
        }
    }

    public final void p() {
        d(this, false, 1, null);
    }

    public final void r(Integer num) {
        this.f56316w = num != null ? num.intValue() : -1;
    }

    public final void s(UGCVideo uGCVideo) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f56296c;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "setData----->", false, 4, null);
        this.f56298e = uGCVideo;
    }

    public final void t(com.transsion.player.orplayer.g gVar) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f56296c;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "setPlayer----->", false, 4, null);
        this.f56297d = gVar;
    }

    public final void u(String url) {
        Intrinsics.h(url, "url");
        this.f56315v = url;
    }
}
