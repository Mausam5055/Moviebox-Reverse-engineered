package com.transsion.videofloat.manager;

import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final px.a f57936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f57937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f57938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f57939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f57940e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f57941f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f57942g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f57943h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f57944i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f57945j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f57946k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f57947l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f57948m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f57949n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f57950o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Integer f57951p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f57952q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f57953r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f57954s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private yj.c f57955t;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57956a;

        static {
            int[] iArr = new int[FloatPlayType.values().length];
            try {
                iArr[FloatPlayType.SHORT_TV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FloatPlayType.STREAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FloatPlayType.LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57956a = iArr;
        }
    }

    public d(px.a floatBean, boolean z10) {
        Intrinsics.h(floatBean, "floatBean");
        this.f57936a = floatBean;
        this.f57937b = z10;
        this.f57952q = "";
        if (z10) {
            q(floatBean.f().getDuration());
        }
    }

    private final yj.c c() {
        if (this.f57955t == null) {
            this.f57955t = (yj.c) yj.a.f79022a.a(yj.c.class);
        }
        return this.f57955t;
    }

    private final void o() {
        this.f57938c = 0L;
        this.f57939d = 0L;
        this.f57940e = 0L;
        this.f57941f = 0L;
        this.f57942g = 0L;
        this.f57943h = 0;
        this.f57944i = 0L;
        this.f57945j = 0L;
        this.f57946k = 0L;
        this.f57947l = 0;
        this.f57948m = 0L;
        this.f57949n = 0L;
        this.f57950o = 0L;
        this.f57953r = null;
    }

    public final void a() {
        this.f57939d = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "addSurface", false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0137  */
    public final void b() {
        String strValueOf;
        String str;
        String str2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("is_positive", String.valueOf(this.f57936a.w()));
        String strM = this.f57936a.m();
        if (strM == null) {
            strM = "";
        }
        linkedHashMap.put("post_id", strM);
        linkedHashMap.put("subject_id", this.f57936a.r());
        String str3 = this.f57954s;
        linkedHashMap.put("play_type", str3 != null ? str3 : "");
        linkedHashMap.put("opt_type", "float");
        if (this.f57936a.q() > 0) {
            linkedHashMap.put("se", String.valueOf(this.f57936a.q()));
        }
        if (this.f57936a.c() > 0) {
            linkedHashMap.put("ep", String.valueOf(this.f57936a.c()));
        }
        String strG = this.f57936a.g();
        if (strG != null && strG.length() != 0) {
            String strG2 = this.f57936a.g();
            Intrinsics.e(strG2);
            linkedHashMap.put(WebConstants.PAGE_FROM, strG2);
        }
        String strE = this.f57936a.e();
        if (strE != null && strE.length() != 0) {
            String strE2 = this.f57936a.e();
            Intrinsics.e(strE2);
            linkedHashMap.put("ops", strE2);
        }
        if (this.f57936a.s() != null) {
            linkedHashMap.put("subject_type", String.valueOf(this.f57936a.s()));
        }
        if (this.f57940e > 0 || this.f57937b) {
            linkedHashMap.put("is_start", "1");
            long j11 = this.f57940e;
            if (j11 > 0) {
                long j12 = this.f57938c;
                linkedHashMap.put("delay_v", (j12 <= 0 || j11 <= 0) ? "0" : String.valueOf(j11 - j12));
                long j13 = this.f57939d;
                if (j13 > 0) {
                    long j14 = this.f57940e;
                    if (j14 > 0) {
                        strValueOf = String.valueOf(j14 - j13);
                    } else {
                        strValueOf = "0";
                    }
                } else {
                    strValueOf = "0";
                }
                linkedHashMap.put("delay", strValueOf);
            }
            linkedHashMap.put("buffer_time", String.valueOf(this.f57941f));
            linkedHashMap.put("buffer_count", String.valueOf(this.f57943h));
            linkedHashMap.put("play_complete", String.valueOf(((this.f57944i / this.f57950o) * 100.0f) + (this.f57947l * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f57946k));
            linkedHashMap.put("pause_duration", String.valueOf(this.f57949n));
            linkedHashMap.put("completeCount", String.valueOf(this.f57947l));
            linkedHashMap.put("play_duration_float", String.valueOf(this.f57946k));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f57938c > 0 ? String.valueOf(System.currentTimeMillis() - this.f57938c) : "0");
            linkedHashMap.put("delay", this.f57939d > 0 ? String.valueOf(System.currentTimeMillis() - this.f57939d) : "0");
        }
        String str4 = this.f57953r;
        if (str4 != null) {
            linkedHashMap.put("is_preloaded", str4);
        }
        linkedHashMap.put("url", this.f57952q);
        linkedHashMap.put("builtin", this.f57936a.a() ? "1" : "0");
        long j15 = this.f57950o;
        if (j15 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j15));
        }
        linkedHashMap.put("player_type", "1");
        Integer num = this.f57951p;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        yj.c cVarC = c();
        if (cVarC != null) {
            cVarC.b(this.f57946k);
        }
        int i11 = a.f57956a[this.f57936a.i().ordinal()];
        if (i11 != 1) {
            str2 = "long_video_play";
            if (i11 == 2) {
                str = "stream_detail";
            } else if (i11 != 3) {
                return;
            } else {
                str = "local_video_detail";
            }
        } else {
            str = "minitv_play";
            str2 = "video_play";
        }
        hj.i.f64505a.H(str, str2, this.f57946k, linkedHashMap);
        o();
    }

    public final void d() {
        this.f57938c = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "initView", false, 4, null);
    }

    public final void e() {
        h(this.f57950o);
    }

    public final void f() {
        this.f57942g = System.currentTimeMillis();
    }

    public final void g() {
        if (this.f57942g > 0) {
            this.f57941f += System.currentTimeMillis() - this.f57942g;
            this.f57943h++;
            this.f57942g = 0L;
        }
    }

    public final void h(long j11) {
        long j12 = this.f57945j;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 1000) {
            this.f57946k += j11 - j12;
        }
        this.f57945j = j11;
        if (j11 > this.f57944i) {
            this.f57944i = j11;
        }
        yj.c cVarC = c();
        if (cVarC != null) {
            cVarC.a(this.f57946k);
        }
    }

    public final void i() {
        q(this.f57936a.f().getDuration());
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f57940e = System.currentTimeMillis();
    }

    public final void j() {
        this.f57948m = System.currentTimeMillis();
    }

    public final void k() {
        if (this.f57948m != 0) {
            this.f57949n += System.currentTimeMillis() - this.f57948m;
            this.f57948m = 0L;
        }
    }

    public final void l() {
        HashMap map = new HashMap();
        map.put("subject_id", this.f57936a.r());
        map.put(EventConstants.KEY_ACTION, "float_back_to_detail");
        String strE = this.f57936a.e();
        if (strE == null) {
            strE = "";
        }
        map.put("ops", strE);
        hj.i.f64505a.p(this.f57936a.h(), map);
    }

    public final void m() {
        HashMap map = new HashMap();
        map.put("subject_id", this.f57936a.r());
        map.put(EventConstants.KEY_ACTION, "float_close");
        String strE = this.f57936a.e();
        if (strE == null) {
            strE = "";
        }
        map.put("ops", strE);
        hj.i.f64505a.p(this.f57936a.h(), map);
    }

    public final void n() {
        HashMap map = new HashMap();
        map.put("subject_id", this.f57936a.r());
        map.put(EventConstants.KEY_ACTION, "float_show");
        map.put("is_positive", String.valueOf(this.f57936a.w()));
        String strE = this.f57936a.e();
        if (strE == null) {
            strE = "";
        }
        map.put("ops", strE);
        hj.i.f64505a.D(this.f57936a.h(), map);
    }

    public final void p(String type) {
        Intrinsics.h(type, "type");
        this.f57954s = type;
    }

    public final void q(long j11) {
        this.f57950o = j11;
    }

    public final void r(String url) {
        Intrinsics.h(url, "url");
        this.f57952q = url;
    }
}
