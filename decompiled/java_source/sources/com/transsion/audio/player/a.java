package com.transsion.audio.player;

import android.text.TextUtils;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.PlayError;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AudioBean f42900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f42901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f42902c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42903d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f42904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f42905f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f42906g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f42907h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f42908i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f42909j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f42910k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f42911l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f42912m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Integer f42913n;

    public a(AudioBean audioBean) {
        Intrinsics.h(audioBean, "audioBean");
        this.f42901b = a.class.getSimpleName();
        this.f42900a = audioBean;
        this.f42902c = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "initView", false, 4, null);
    }

    private final void a() {
        String postId;
        String subjectId;
        Long duration;
        String ops;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AudioBean audioBean = this.f42900a;
        String str = "";
        if (audioBean == null || (postId = audioBean.getPostId()) == null) {
            postId = "";
        }
        linkedHashMap.put("post_id", postId);
        AudioBean audioBean2 = this.f42900a;
        if (audioBean2 == null || (subjectId = audioBean2.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        AudioBean audioBean3 = this.f42900a;
        if (!TextUtils.isEmpty(audioBean3 != null ? audioBean3.getOps() : null)) {
            AudioBean audioBean4 = this.f42900a;
            if (audioBean4 != null && (ops = audioBean4.getOps()) != null) {
                str = ops;
            }
            linkedHashMap.put("ops", str);
        }
        if (this.f42903d > 0) {
            linkedHashMap.put("is_start", "1");
            linkedHashMap.put("delay_v", String.valueOf(this.f42903d - this.f42902c));
            linkedHashMap.put("buffer_time", String.valueOf(this.f42904e));
            linkedHashMap.put("buffer_count", String.valueOf(this.f42906g));
            float f11 = this.f42907h;
            AudioBean audioBean5 = this.f42900a;
            linkedHashMap.put("play_complete", String.valueOf(((f11 / ((audioBean5 == null || (duration = audioBean5.getDuration()) == null) ? 1L : duration.longValue())) * 100.0f) + (this.f42910k * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f42909j));
            linkedHashMap.put("pause_duration", String.valueOf(this.f42912m));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", String.valueOf(System.currentTimeMillis() - this.f42902c));
        }
        Integer num = this.f42913n;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        hj.i.f64505a.H("postdetail", "audio_play", this.f42909j, linkedHashMap);
    }

    public final void b() {
        a();
    }

    public final void c() {
        if (this.f42903d > 0) {
            this.f42905f = System.currentTimeMillis();
        }
    }

    public final void d() {
        if (this.f42905f > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f42905f;
            this.f42905f = jCurrentTimeMillis;
            this.f42904e += jCurrentTimeMillis;
            this.f42906g++;
        }
    }

    public final void e(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f42913n = errorInfo.getErrorCode();
    }

    public final void f(long j11) {
        long j12 = this.f42908i;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 1000) {
            this.f42909j += j11 - j12;
        }
        this.f42908i = j11;
        if (j11 > this.f42907h) {
            this.f42907h = j11;
        }
    }

    public final void g() {
        lg.a.C0828a.f(lg.a.f68839a, "video_play", "onRenderFirstFrame", false, 4, null);
        if (this.f42903d > 0) {
            return;
        }
        this.f42903d = System.currentTimeMillis();
    }

    public final void h() {
        this.f42911l = System.currentTimeMillis();
    }

    public final void i() {
        if (this.f42911l != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f42911l;
            this.f42911l = jCurrentTimeMillis;
            this.f42912m += jCurrentTimeMillis;
        }
    }
}
