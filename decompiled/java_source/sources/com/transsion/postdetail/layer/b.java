package com.transsion.postdetail.layer;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.g;
import com.transsion.web.api.WebConstants;
import hj.i;
import java.util.LinkedHashMap;
import ko.l0;
import kotlin.jvm.internal.Intrinsics;
import yj.c;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    private c C;
    private int F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f48906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f48907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PostSubjectItem f48908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f48909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f48910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f48911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f48912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f48913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f48914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Double f48915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f48916l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f48917m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f48918n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f48919o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f48920p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f48921q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Double f48922r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f48923s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Integer f48924t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f48925u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f48926v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f48927w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f48928x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48905a = b.class.getSimpleName();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f48929y = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f48930z = "";
    private String A = "";
    private int B = -1;
    private String D = "";
    private String E = "";
    private String G = "postdetail";

    public static /* synthetic */ void e(b bVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        bVar.d(z10);
    }

    private final c f() {
        if (this.C == null) {
            this.C = (c) yj.a.f79022a.a(c.class);
        }
        return this.C;
    }

    private final void q(boolean z10) {
        this.f48909e = 0L;
        this.f48910f = 0L;
        this.f48911g = 0L;
        this.f48912h = 0L;
        this.f48913i = 0L;
        this.f48914j = 0;
        this.f48916l = 0L;
        this.f48917m = 0L;
        this.f48918n = 0L;
        this.f48919o = 0;
        this.f48920p = 0L;
        this.f48921q = 0L;
        this.f48923s = 0L;
        if (z10) {
            return;
        }
        this.B = -1;
        this.f48928x = false;
    }

    public final void A(String url) {
        Intrinsics.h(url, "url");
        this.A = url;
    }

    public final void a(int i11, int i12) {
        this.f48910f = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "addSurface", false, 4, null);
    }

    public final void b() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48905a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "clickPause", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "pause");
        i.f64505a.s(this.G, "module_name", linkedHashMap);
    }

    public final void c() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48905a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "clickPlay", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        i.f64505a.s(this.G, "module_name", linkedHashMap);
    }

    /* JADX WARN: Code duplicated, block: B:90:0x017c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0192  */
    public final void d(boolean z10) {
        String postId;
        String subjectId;
        String itemType;
        String strValueOf;
        String strValueOf2;
        String rec_ops;
        Subject subject;
        Subject subject2;
        if (this.f48909e == 0 && !this.f48928x) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f48905a;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f48928x) {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String TAG2 = this.f48905a;
            Intrinsics.g(TAG2, "TAG");
            lg.a.C0828a.v(c0828a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f48928x = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PostSubjectItem postSubjectItem = this.f48908d;
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
            postId = "";
        }
        linkedHashMap.put("post_id", postId);
        linkedHashMap.put("opt_type", this.D);
        PostSubjectItem postSubjectItem2 = this.f48908d;
        if (postSubjectItem2 == null || (subject2 = postSubjectItem2.getSubject()) == null || (subjectId = subject2.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String str = this.f48925u;
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("base_post_id", str);
        PostSubjectItem postSubjectItem3 = this.f48908d;
        if (postSubjectItem3 == null || (itemType = postSubjectItem3.getItemType()) == null) {
            itemType = "";
        }
        linkedHashMap.put("item_type", itemType);
        linkedHashMap.put("ep", this.E);
        String str2 = this.f48926v;
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("base_item_type", str2);
        PostSubjectItem postSubjectItem4 = this.f48908d;
        linkedHashMap.put("has_resource", String.valueOf((postSubjectItem4 == null || (subject = postSubjectItem4.getSubject()) == null) ? null : subject.getHasResource()));
        String strI = this.f48930z;
        if (strI.length() == 0) {
            strI = i.f64505a.i();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strI);
        PostSubjectItem postSubjectItem5 = this.f48908d;
        if (!TextUtils.isEmpty(postSubjectItem5 != null ? postSubjectItem5.getRec_ops() : null)) {
            PostSubjectItem postSubjectItem6 = this.f48908d;
            if (postSubjectItem6 == null || (rec_ops = postSubjectItem6.getRec_ops()) == null) {
                rec_ops = "";
            }
            linkedHashMap.put("ops", rec_ops);
        }
        if (l0.f66968a.i()) {
            String str3 = this.f48927w;
            if (str3 != null && str3.length() != 0) {
                String str4 = this.f48927w;
                linkedHashMap.put("subpage_name", str4 != null ? str4 : "");
            }
            int i11 = this.F;
            if (i11 > 0) {
                linkedHashMap.put("subject_type", String.valueOf(i11));
            }
        }
        if (this.f48911g > 0 || (this.f48928x && this.f48918n > 0)) {
            linkedHashMap.put("is_start", "1");
            long j11 = this.f48909e;
            if (j11 > 0) {
                long j12 = this.f48911g;
                if (j12 > 0) {
                    strValueOf = String.valueOf(j12 - j11);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j13 = this.f48910f;
            if (j13 > 0) {
                long j14 = this.f48911g;
                if (j14 > 0) {
                    strValueOf2 = String.valueOf(j14 - j13);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f48912h));
            linkedHashMap.put("buffer_count", String.valueOf(this.f48914j));
            linkedHashMap.put("play_complete", String.valueOf(((this.f48916l / this.f48923s) * 100.0f) + (this.f48919o * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f48918n));
            linkedHashMap.put("pause_duration", String.valueOf(this.f48921q));
            linkedHashMap.put("completeCount", String.valueOf(this.f48919o));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f48909e > 0 ? String.valueOf(System.currentTimeMillis() - this.f48909e) : "0");
            linkedHashMap.put("delay", this.f48910f > 0 ? String.valueOf(System.currentTimeMillis() - this.f48910f) : "0");
        }
        Double d11 = this.f48915k;
        if (d11 != null && d11.doubleValue() > 0.0d) {
            linkedHashMap.put("redundancyRate", String.valueOf(this.f48915k));
        }
        Double d12 = this.f48922r;
        if (d12 != null && d12.doubleValue() > 0.0d) {
            linkedHashMap.put("poolPercentDouble", String.valueOf(this.f48922r));
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        linkedHashMap.put("is_preloaded", ORPlayerPreloadManager.f48409i.a().e(this.A) ? "1" : "0");
        linkedHashMap.put("url", this.A);
        PostSubjectItem postSubjectItem7 = this.f48908d;
        linkedHashMap.put("builtin", (postSubjectItem7 == null || !postSubjectItem7.getBuiltIn()) ? "0" : "1");
        long j15 = this.f48923s;
        if (j15 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j15));
        }
        int i12 = this.B;
        if (i12 >= 0) {
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i12));
        }
        Integer num = this.f48924t;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        if (!this.f48928x || this.f48918n > 0 || this.f48929y) {
            if (z10) {
                this.f48929y = false;
            }
            c cVarF = f();
            if (cVarF != null) {
                cVarF.b(this.f48918n);
            }
            i.f64505a.H(this.G, "video_play", this.f48918n, linkedHashMap);
            q(z10);
        }
    }

    public final void g() {
        this.f48909e = System.currentTimeMillis();
        this.f48929y = true;
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "initView", false, 4, null);
    }

    public final void h() {
        this.f48913i = System.currentTimeMillis();
    }

    public final void i() {
        if (this.f48913i > 0) {
            this.f48912h += System.currentTimeMillis() - this.f48913i;
            this.f48914j++;
            this.f48913i = 0L;
        }
    }

    public final void j() {
        this.f48919o++;
        this.f48916l = 0L;
    }

    public final void k(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f48924t = errorInfo.getErrorCode();
    }

    public final void l(long j11) {
        g gVar = this.f48906b;
        this.f48923s = gVar != null ? gVar.getDuration() : 0L;
        long j12 = this.f48917m;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 1000) {
            this.f48918n += j11 - j12;
        }
        this.f48917m = j11;
        if (j11 > this.f48916l) {
            this.f48916l = j11;
        }
        c cVarF = f();
        if (cVarF != null) {
            cVarF.a(this.f48918n);
        }
    }

    public final void m() {
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f48911g = System.currentTimeMillis();
    }

    public final void n() {
        this.f48920p = System.currentTimeMillis();
    }

    public final void o() {
        if (this.f48920p != 0) {
            this.f48921q += System.currentTimeMillis() - this.f48920p;
            this.f48920p = 0L;
        }
    }

    public final void p() {
        e(this, false, 1, null);
    }

    public final void r(String str) {
        this.f48926v = str;
    }

    public final void s(String str) {
        this.f48925u = str;
    }

    public final void t(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.f48930z = pageFrom;
    }

    public final void u(String str) {
        Intrinsics.h(str, "<set-?>");
        this.G = str;
    }

    public final void v(g orPlayer) {
        Intrinsics.h(orPlayer, "orPlayer");
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48905a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "setPlayer----->", false, 4, null);
        this.f48906b = orPlayer;
    }

    public final void w(Integer num) {
        this.B = num != null ? num.intValue() : -1;
    }

    public final void x(String str, PostSubjectItem postSubjectItem) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48905a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "setPostData----->", false, 4, null);
        this.f48907c = str;
        this.f48908d = postSubjectItem;
    }

    public final void y(int i11) {
        this.F = i11;
    }

    public final void z(String subpageName) {
        Intrinsics.h(subpageName, "subpageName");
        this.f48927w = subpageName;
    }
}
