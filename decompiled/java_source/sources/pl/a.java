package pl;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.player.orplayer.PlayError;
import hj.i;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f72464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f72465c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f72467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f72468f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f72469g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f72470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f72471i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f72472j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f72473k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f72474l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Integer f72475m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f72476n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f72463a = "long_video_play";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f72466d = "";

    private final void j() {
        this.f72466d = "";
        this.f72465c = 0L;
        this.f72467e = 0L;
        this.f72468f = 0L;
        this.f72469g = 0L;
        this.f72470h = 0L;
        this.f72471i = 0L;
        this.f72472j = 0L;
        this.f72473k = 0;
        this.f72474l = false;
        this.f72475m = null;
        this.f72476n = null;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:37:0x00dc  */
    public final void a() {
        long j11;
        LinkedHashMap linkedHashMap;
        Object obj;
        Integer num;
        String str;
        long j12 = 0;
        if (this.f72464b == 0 && this.f72466d.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot exitPlay skip: not initialized", false, 4, null);
            return;
        }
        if (this.f72467e > 0) {
            this.f72468f += System.currentTimeMillis() - this.f72467e;
            this.f72467e = 0L;
        }
        if (this.f72469g > 0) {
            this.f72470h += System.currentTimeMillis() - this.f72469g;
            this.f72469g = 0L;
        }
        long jCurrentTimeMillis = this.f72465c;
        boolean z10 = jCurrentTimeMillis > 0;
        if (!z10) {
            if (this.f72464b > 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
                j11 = this.f72464b;
            }
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("content_id", this.f72466d);
            if (z10) {
                obj = "1";
            } else {
                obj = "0";
            }
            linkedHashMap.put("is_start", obj);
            linkedHashMap.put("play_duration", String.valueOf(this.f72468f));
            linkedHashMap.put("pause_duration", String.valueOf(this.f72470h));
            linkedHashMap.put("play_complete", "0");
            linkedHashMap.put("complete_count", "0");
            linkedHashMap.put("delay_v", String.valueOf(j12));
            linkedHashMap.put("buffer_time", String.valueOf(this.f72472j));
            linkedHashMap.put("buffer_count", String.valueOf(this.f72473k));
            linkedHashMap.put("is_load_success", this.f72474l ? "1" : "0");
            num = this.f72475m;
            if (num != null) {
                linkedHashMap.put("error_code", String.valueOf(num.intValue()));
            }
            str = this.f72476n;
            if (str != null) {
                linkedHashMap.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str);
            }
            lg.a.f68839a.c(this.f72463a, "TvLiveDot exitPlay is_start=" + linkedHashMap.get("is_start") + " play_duration=" + this.f72468f + " delay_v=" + j12, true);
            i.f64505a.H("tv_channel_detail", "long_video_play", this.f72468f, linkedHashMap);
            j();
        }
        j11 = this.f72464b;
        j12 = jCurrentTimeMillis - j11;
        linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("content_id", this.f72466d);
        if (z10) {
            obj = "1";
        } else {
            obj = "0";
        }
        linkedHashMap.put("is_start", obj);
        linkedHashMap.put("play_duration", String.valueOf(this.f72468f));
        linkedHashMap.put("pause_duration", String.valueOf(this.f72470h));
        linkedHashMap.put("play_complete", "0");
        linkedHashMap.put("complete_count", "0");
        linkedHashMap.put("delay_v", String.valueOf(j12));
        linkedHashMap.put("buffer_time", String.valueOf(this.f72472j));
        linkedHashMap.put("buffer_count", String.valueOf(this.f72473k));
        linkedHashMap.put("is_load_success", this.f72474l ? "1" : "0");
        num = this.f72475m;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num.intValue()));
        }
        str = this.f72476n;
        if (str != null) {
            linkedHashMap.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str);
        }
        lg.a.f68839a.c(this.f72463a, "TvLiveDot exitPlay is_start=" + linkedHashMap.get("is_start") + " play_duration=" + this.f72468f + " delay_v=" + j12, true);
        i.f64505a.H("tv_channel_detail", "long_video_play", this.f72468f, linkedHashMap);
        j();
    }

    public final void b() {
        this.f72464b = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot initView", false, 4, null);
    }

    public final void c() {
        this.f72471i = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onLoadingBegin", false, 4, null);
    }

    public final void d() {
        if (this.f72471i > 0) {
            this.f72472j += System.currentTimeMillis() - this.f72471i;
            this.f72473k++;
            this.f72471i = 0L;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onLoadingEnd", false, 4, null);
    }

    public final void e(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f72475m = errorInfo.getErrorCode();
        String errorMessage = errorInfo.getErrorMessage();
        this.f72476n = errorMessage;
        this.f72474l = false;
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onPlayError code=" + this.f72475m + " msg=" + errorMessage, false, 4, null);
    }

    public final void f(String url) {
        Intrinsics.h(url, "url");
        this.f72466d = url;
        this.f72465c = 0L;
        this.f72467e = 0L;
        this.f72468f = 0L;
        this.f72469g = 0L;
        this.f72470h = 0L;
        this.f72471i = 0L;
        this.f72472j = 0L;
        this.f72473k = 0;
        this.f72474l = false;
        this.f72475m = null;
        this.f72476n = null;
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onPlayStream url=" + url, false, 4, null);
    }

    public final void g() {
        this.f72465c = System.currentTimeMillis();
        this.f72474l = true;
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onRenderFirstFrame", false, 4, null);
    }

    public final void h() {
        if (this.f72467e > 0) {
            this.f72468f += System.currentTimeMillis() - this.f72467e;
            this.f72467e = 0L;
        }
        this.f72469g = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onVideoPause", false, 4, null);
    }

    public final void i() {
        if (this.f72469g > 0) {
            this.f72470h += System.currentTimeMillis() - this.f72469g;
            this.f72469g = 0L;
        }
        if (!this.f72474l) {
            this.f72474l = true;
        }
        this.f72467e = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.f72463a, "TvLiveDot onVideoStart", false, 4, null);
    }
}
