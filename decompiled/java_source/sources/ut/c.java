package ut;

import androidx.fragment.app.Fragment;
import ao.e;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import hj.i;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import mo.d;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements f {
    private ShorttvModel.UGCVideo A;
    private String B;
    private String C;
    private String D;
    private String E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f76894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ShortTvViewModel f76895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f76896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f76897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f76898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f76899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f76900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f76901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f76902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f76903j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f76904k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f76905l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f76906m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f76907n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f76908o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f76909p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f76910q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private PlayError f76911r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f76912s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f76913t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f76914u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f76915v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f76916w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f76917x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f76918y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f76919z;

    public c(Fragment fragment, ShortTvViewModel shortTvViewModel) {
        Intrinsics.h(fragment, "fragment");
        this.f76894a = fragment;
        this.f76895b = shortTvViewModel;
        this.f76896c = c.class.getSimpleName();
        this.f76917x = true;
        this.f76918y = "";
        this.B = "";
        this.C = "";
        this.D = "";
        this.E = "postdetail";
    }

    public static /* synthetic */ void f(c cVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        cVar.d(z10);
    }

    private final void j(boolean z10) {
        this.f76898e = 0L;
        this.f76899f = 0L;
        this.f76900g = 0L;
        this.f76901h = 0L;
        this.f76902i = 0L;
        this.f76903j = 0;
        this.f76904k = 0L;
        this.f76905l = 0L;
        this.f76906m = 0L;
        this.f76907n = 0;
        this.f76908o = 0L;
        this.f76909p = 0L;
        this.f76910q = 0L;
        this.f76919z = 0;
        if (z10) {
            return;
        }
        this.f76916w = false;
    }

    public final void a() {
        this.f76899f = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "addSurface", false, 4, null);
    }

    public final void b() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f76896c;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "clickPause", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "pause");
        i.f64505a.p(this.E, linkedHashMap);
    }

    public final void c() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f76896c;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "clickPlay", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        i.f64505a.p(this.E, linkedHashMap);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:49:0x0104  */
    public final void d(boolean z10) {
        String subjectId;
        String strValueOf;
        String strValueOf2;
        String playUrl;
        String ugcVideoId;
        String collectionId;
        List<ShorttvModel.StreamInfo> streams;
        ShorttvModel.StreamInfo streamInfo;
        String resolutions;
        ShorttvModel.UGCVideoCollection belongToCollection;
        if (this.f76898e == 0 && !this.f76916w) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f76896c;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f76916w) {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String TAG2 = this.f76896c;
            Intrinsics.g(TAG2, "TAG");
            lg.a.C0828a.v(c0828a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f76916w = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("opt_type", this.C);
        ShorttvModel.UGCVideo uGCVideo = this.A;
        String str = "";
        if (uGCVideo == null || (subjectId = uGCVideo.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("refer_subject_id", subjectId);
        linkedHashMap.put("item_type", "7");
        linkedHashMap.put("episode", this.D);
        String strI = this.f76918y;
        if (strI.length() == 0) {
            strI = i.f64505a.i();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strI);
        ShorttvModel.UGCVideo uGCVideo2 = this.A;
        if (uGCVideo2 != null) {
            uGCVideo2.getOps();
        }
        if (this.f76900g > 0 || (this.f76916w && this.f76906m > 0)) {
            linkedHashMap.put("is_start", "1");
            long j11 = this.f76898e;
            if (j11 > 0) {
                long j12 = this.f76900g;
                if (j12 > 0) {
                    strValueOf = String.valueOf(j12 - j11);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j13 = this.f76899f;
            if (j13 > 0) {
                long j14 = this.f76900g;
                if (j14 > 0) {
                    strValueOf2 = String.valueOf(j14 - j13);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f76901h));
            linkedHashMap.put("buffer_count", String.valueOf(this.f76903j));
            linkedHashMap.put("play_complete", String.valueOf(((this.f76904k / this.f76910q) * 100.0f) + (this.f76907n * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f76906m));
            linkedHashMap.put("pause_duration", String.valueOf(this.f76909p));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f76898e > 0 ? String.valueOf(System.currentTimeMillis() - this.f76898e) : "0");
            linkedHashMap.put("delay", this.f76899f > 0 ? String.valueOf(System.currentTimeMillis() - this.f76899f) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        ShorttvModel.UGCVideo uGCVideo3 = this.A;
        if (uGCVideo3 == null || (playUrl = uGCVideo3.getPlayUrl()) == null) {
            playUrl = "";
        }
        linkedHashMap.put("url", playUrl);
        linkedHashMap.put("seek_count", String.valueOf(this.f76919z));
        PlayError playError = this.f76911r;
        if (playError != null) {
            linkedHashMap.put("player_error_code", String.valueOf(playError.getErrorCode()));
            linkedHashMap.put("player_error_msg", String.valueOf(playError.getErrorMessage()));
        }
        if (!this.f76916w || this.f76906m > 0 || this.f76917x) {
            if (z10) {
                this.f76917x = false;
            }
            ShorttvModel.UGCVideo uGCVideo4 = this.A;
            if (uGCVideo4 == null || (ugcVideoId = uGCVideo4.getUgcVideoId()) == null) {
                ugcVideoId = "";
            }
            linkedHashMap.put("content_id", ugcVideoId);
            ShorttvModel.UGCVideo uGCVideo5 = this.A;
            if (uGCVideo5 == null || (belongToCollection = uGCVideo5.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            linkedHashMap.put("belong_to_collection_id", collectionId);
            linkedHashMap.put("ops", this.B);
            linkedHashMap.put("content_type", "ugc_video");
            linkedHashMap.put("video_bitrate", String.valueOf(this.f76912s));
            linkedHashMap.put("audio_bitrate", String.valueOf(this.f76913t));
            ShorttvModel.UGCVideo uGCVideo6 = this.A;
            if (uGCVideo6 != null && (streams = uGCVideo6.getStreams()) != null && (streamInfo = (ShorttvModel.StreamInfo) CollectionsKt.k0(streams)) != null && (resolutions = streamInfo.getResolutions()) != null) {
                str = resolutions;
            }
            linkedHashMap.put("resolutions", str);
            i.f64505a.H(this.E, "video_play", this.f76906m, linkedHashMap);
            j(z10);
        }
    }

    public final void e(boolean z10, boolean z11) {
        if (z10) {
            d(z11);
        } else {
            j(z11);
        }
    }

    public final void g() {
        this.f76898e = System.currentTimeMillis();
        this.f76917x = true;
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "initView", false, 4, null);
    }

    public final void h() {
        this.f76919z++;
    }

    public final void i() {
        f(this, false, 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
    }

    public final void k(String str) {
        this.f76915v = str;
    }

    public final void l(String str) {
        this.f76914u = str;
    }

    public final void m(String str) {
        Intrinsics.h(str, "<set-?>");
        this.D = str;
    }

    public final void n(String str) {
        Intrinsics.h(str, "<set-?>");
        this.B = str;
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
        f.a.z(this, this.f76910q, null, 2, null);
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
        this.f76902i = System.currentTimeMillis();
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e eVar) {
        if (this.f76902i > 0) {
            this.f76901h += System.currentTimeMillis() - this.f76902i;
            this.f76903j++;
            this.f76902i = 0L;
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, e eVar) {
        f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        this.f76907n++;
        this.f76904k = 0L;
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f76911r = errorInfo;
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
        st.a aVarQ;
        if (0 == this.f76910q) {
            g gVar = this.f76897d;
            this.f76910q = gVar != null ? gVar.getDuration() : 0L;
        }
        long j12 = this.f76905l;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 1000) {
            this.f76906m += j11 - j12;
        }
        this.f76905l = j11;
        if (j11 > this.f76904k) {
            this.f76904k = j11;
        }
        ShortTvViewModel shortTvViewModel = this.f76895b;
        if (shortTvViewModel == null || (aVarQ = shortTvViewModel.Q()) == null) {
            return;
        }
        aVarQ.a(this.f76906m);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f76900g = System.currentTimeMillis();
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        this.f76913t = i11;
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        this.f76912s = i11;
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(e eVar) {
        this.f76908o = System.currentTimeMillis();
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e eVar) {
        if (this.f76908o != 0) {
            this.f76909p += System.currentTimeMillis() - this.f76908o;
            this.f76908o = 0L;
        }
    }

    public final void p(g gVar) {
        this.f76897d = gVar;
    }

    public final void q(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.f76918y = pageFrom;
    }

    public final void r(String str) {
        Intrinsics.h(str, "<set-?>");
        this.E = str;
    }

    public final void s(ShorttvModel.UGCVideo uGCVideo) {
        this.A = uGCVideo;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }
}
