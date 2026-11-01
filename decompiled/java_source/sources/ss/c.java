package ss;

import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import ao.e;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import hj.i;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import mo.d;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements f {
    private int A;
    private Subject B;
    private String C;
    private String D;
    private int E;
    private int F;
    private boolean G;
    private String H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f75859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ShortTvViewModel f75860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f75861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f75862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f75863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f75864f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f75865g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f75866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f75867i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f75868j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f75869k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f75870l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f75871m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f75872n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f75873o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f75874p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f75875q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Integer f75876r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f75877s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f75878t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f75879u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f75880v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f75881w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f75882x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f75883y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f75884z;

    public c(Fragment fragment, ShortTvViewModel shortTvViewModel) {
        Intrinsics.h(fragment, "fragment");
        this.f75859a = fragment;
        this.f75860b = shortTvViewModel;
        this.f75861c = c.class.getSimpleName();
        this.f75880v = true;
        this.f75881w = "";
        this.f75882x = "";
        this.f75883y = -1;
        this.C = "";
        this.D = "";
        this.H = "postdetail";
    }

    public static /* synthetic */ void f(c cVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        cVar.d(z10);
    }

    private final void i(boolean z10) {
        this.f75863e = 0L;
        this.f75864f = 0L;
        this.f75865g = 0L;
        this.f75866h = 0L;
        this.f75867i = 0L;
        this.f75868j = 0;
        this.f75869k = 0L;
        this.f75870l = 0L;
        this.f75871m = 0L;
        this.f75872n = 0;
        this.f75873o = 0L;
        this.f75874p = 0L;
        this.f75875q = 0L;
        this.f75876r = null;
        this.G = false;
        if (z10) {
            return;
        }
        this.f75883y = -1;
        this.f75879u = false;
    }

    public final void a(int i11, int i12) {
        this.f75864f = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "addSurface", false, 4, null);
    }

    public final void b() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f75861c;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "clickPause", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "pause");
        linkedHashMap.put("content_type", "ugc_video");
        i.f64505a.p(this.H, linkedHashMap);
    }

    public final void c() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f75861c;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "clickPlay", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        linkedHashMap.put("content_type", "ugc_video");
        i.f64505a.p(this.H, linkedHashMap);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x013a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0150  */
    /* JADX WARN: Code duplicated, block: B:92:0x0203  */
    /* JADX WARN: Code duplicated, block: B:94:0x0209  */
    /* JADX WARN: Code duplicated, block: B:95:0x0215  */
    public final void d(boolean z10) {
        String subjectId;
        String strValueOf;
        String strValueOf2;
        qs.a aVarD0;
        String strValueOf3;
        String ops;
        if (this.f75863e == 0 && !this.f75879u) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f75861c;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f75879u) {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String TAG2 = this.f75861c;
            Intrinsics.g(TAG2, "TAG");
            lg.a.C0828a.v(c0828a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f75879u = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("opt_type", this.C);
        Subject subject = this.B;
        String str = "";
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String str2 = this.f75877s;
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("base_post_id", str2);
        linkedHashMap.put("item_type", "7");
        linkedHashMap.put("ep", this.D);
        String str3 = this.f75878t;
        if (str3 == null) {
            str3 = "";
        }
        linkedHashMap.put("base_item_type", str3);
        Subject subject2 = this.B;
        linkedHashMap.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String strI = this.f75881w;
        if (strI.length() == 0) {
            strI = i.f64505a.i();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strI);
        Subject subject3 = this.B;
        if (!TextUtils.isEmpty(subject3 != null ? subject3.getOps() : null)) {
            Subject subject4 = this.B;
            if (subject4 != null && (ops = subject4.getOps()) != null) {
                str = ops;
            }
            linkedHashMap.put("ops", str);
        }
        int i11 = this.E;
        if (i11 > 0) {
            linkedHashMap.put("subject_type", String.valueOf(i11));
        }
        if (this.f75865g > 0 || (this.f75879u && this.f75871m > 0)) {
            linkedHashMap.put("is_start", "1");
            long j11 = this.f75863e;
            if (j11 > 0) {
                long j12 = this.f75865g;
                if (j12 > 0) {
                    strValueOf = String.valueOf(j12 - j11);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j13 = this.f75864f;
            if (j13 > 0) {
                long j14 = this.f75865g;
                if (j14 > 0) {
                    strValueOf2 = String.valueOf(j14 - j13);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f75866h));
            linkedHashMap.put("buffer_count", String.valueOf(this.f75868j));
            linkedHashMap.put("play_complete", String.valueOf(((this.f75869k / this.f75875q) * 100.0f) + (this.f75872n * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f75871m));
            linkedHashMap.put("pause_duration", String.valueOf(this.f75874p));
            linkedHashMap.put("completeCount", String.valueOf(this.f75872n));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f75863e > 0 ? String.valueOf(System.currentTimeMillis() - this.f75863e) : "0");
            linkedHashMap.put("delay", this.f75864f > 0 ? String.valueOf(System.currentTimeMillis() - this.f75864f) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        linkedHashMap.put("url", this.f75882x);
        linkedHashMap.put(OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS, String.valueOf(this.F));
        long j15 = this.f75875q;
        if (j15 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j15));
        }
        int i12 = this.f75883y;
        if (i12 >= 0) {
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i12));
        }
        linkedHashMap.put("player_type", "1");
        Integer num = this.f75876r;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        if (this.F == 0) {
            long j16 = this.f75865g;
            if (j16 > 0) {
                long j17 = this.f75863e;
                if (j17 > 0) {
                    strValueOf3 = String.valueOf(j16 - j17);
                } else if (this.f75863e > 0) {
                    strValueOf3 = String.valueOf(System.currentTimeMillis() - this.f75863e);
                } else {
                    strValueOf3 = "0";
                }
            } else if (this.f75863e > 0) {
                strValueOf3 = String.valueOf(System.currentTimeMillis() - this.f75863e);
            } else {
                strValueOf3 = "0";
            }
            linkedHashMap.put("delay_net_source", strValueOf3);
        }
        linkedHashMap.put("is_first_play", this.G ? "1" : "0");
        if (!this.f75879u || this.f75871m > 0 || this.f75880v) {
            if (z10) {
                this.f75880v = false;
            }
            ShortTvViewModel shortTvViewModel = this.f75860b;
            if (shortTvViewModel != null && (aVarD0 = shortTvViewModel.D0()) != null) {
                aVarD0.b(this.f75871m);
            }
            linkedHashMap.put("video_bitrate", String.valueOf(this.f75884z));
            linkedHashMap.put("audio_bitrate", String.valueOf(this.A));
            i.f64505a.H(this.H, "video_play", this.f75871m, linkedHashMap);
            i(z10);
        }
    }

    public final void e(boolean z10, boolean z11) {
        if (z10) {
            d(z11);
        } else {
            i(z11);
        }
    }

    public final void g(View rootView, boolean z10) {
        Intrinsics.h(rootView, "rootView");
        this.f75863e = System.currentTimeMillis();
        this.f75880v = true;
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "initView", false, 4, null);
    }

    public final void h() {
        f(this, false, 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
    }

    public final void j(String str) {
        this.f75878t = str;
    }

    public final void k(String str) {
        this.f75877s = str;
    }

    public final void l(int i11) {
        this.F = i11;
    }

    public final void m(String str) {
        Intrinsics.h(str, "<set-?>");
        this.D = str;
    }

    public final void n(boolean z10) {
        this.G = z10;
    }

    public final void o(String str) {
        Intrinsics.h(str, "<set-?>");
        this.C = str;
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(e eVar) {
        f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, e eVar) {
        f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(e eVar) {
        f.a.e(this, eVar);
        f.a.z(this, this.f75875q, null, 2, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(e eVar) {
        this.f75867i = System.currentTimeMillis();
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e eVar) {
        if (this.f75867i > 0) {
            this.f75866h += System.currentTimeMillis() - this.f75867i;
            this.f75868j++;
            this.f75867i = 0L;
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, e eVar) {
        f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        this.f75872n++;
        this.f75869k = 0L;
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f75876r = errorInfo.getErrorCode();
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(e eVar) {
        f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(e eVar) {
        f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, e eVar) {
        qs.a aVarD0;
        if (0 == this.f75875q) {
            g gVar = this.f75862d;
            this.f75875q = gVar != null ? gVar.getDuration() : 0L;
        }
        long j12 = this.f75870l;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 1000) {
            this.f75871m += j11 - j12;
        }
        this.f75870l = j11;
        if (j11 > this.f75869k) {
            this.f75869k = j11;
        }
        ShortTvViewModel shortTvViewModel = this.f75860b;
        if (shortTvViewModel == null || (aVarD0 = shortTvViewModel.D0()) == null) {
            return;
        }
        aVarD0.a(this.f75871m);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f75865g = System.currentTimeMillis();
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        this.A = i11;
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        this.f75884z = i11;
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(e eVar) {
        this.f75873o = System.currentTimeMillis();
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e eVar) {
        if (this.f75873o != 0) {
            this.f75874p += System.currentTimeMillis() - this.f75873o;
            this.f75873o = 0L;
        }
    }

    public final void p(g gVar) {
        this.f75862d = gVar;
    }

    public final void q(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.f75881w = pageFrom;
    }

    public final void r(String str) {
        Intrinsics.h(str, "<set-?>");
        this.H = str;
    }

    public final void s(Integer num) {
        this.f75883y = num != null ? num.intValue() : -1;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }

    public final void t(Subject subject) {
        this.B = subject;
    }

    public final void u(int i11) {
        this.E = i11;
    }

    public final void v(String url) {
        Intrinsics.h(url, "url");
        this.f75882x = url;
    }
}
