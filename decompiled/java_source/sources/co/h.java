package co;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.collection.s;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.a0;
import androidx.media3.common.e0;
import androidx.media3.common.f0;
import androidx.media3.common.g0;
import androidx.media3.common.h0;
import androidx.media3.common.i0;
import androidx.media3.common.m0;
import androidx.media3.common.r;
import androidx.media3.common.t;
import androidx.media3.common.v;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.common.z;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.rtmp.RtmpDataSource;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.b4;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.source.b0;
import androidx.media3.exoplayer.u2;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.transsion.player.exo.ORExoDecoderType;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.render.RenderScaleMode;
import com.transsion.player.ui.render.SurfaceRenderView;
import com.transsion.player.ui.render.TextureRenderView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class h implements com.transsion.player.orplayer.g {
    public static final b M = new b(null);
    private long A;
    private final LinkedHashMap B;
    private final List C;
    private long D;
    private long E;
    private final a0.d F;
    private b4 G;
    private CopyOnWriteArrayList H;
    private u2 I;
    private final Handler J;
    private final Runnable K;
    private ScaleMode L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f17553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f17554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f17555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SurfaceRenderView f17556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextureRenderView f17557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.transsion.player.orplayer.c f17558g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Double f17559h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ao.e f17560i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Float f17561j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f17562k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f17563l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f17564m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f17565n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f17566o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f17567p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f17568q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.transsion.player.orplayer.e f17569r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ExoPlayer f17570s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Boolean f17571t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f17572u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final long f17573v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final long f17574w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f17575x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ORExoDecoderType f17576y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f17577z;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f17578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f17579b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f17580c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Double f17581d;

        public a(long j11, long j12, long j13, Double d11) {
            this.f17578a = j11;
            this.f17579b = j12;
            this.f17580c = j13;
            this.f17581d = d11;
        }

        public final long a() {
            return this.f17580c;
        }

        public final long b() {
            return this.f17578a;
        }

        public final long c() {
            return this.f17579b;
        }

        public final Double d() {
            return this.f17581d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f17578a == aVar.f17578a && this.f17579b == aVar.f17579b && this.f17580c == aVar.f17580c && Intrinsics.c(this.f17581d, aVar.f17581d);
        }

        public int hashCode() {
            int iA = ((((s.a(this.f17578a) * 31) + s.a(this.f17579b)) * 31) + s.a(this.f17580c)) * 31;
            Double d11 = this.f17581d;
            return iA + (d11 == null ? 0 : d11.hashCode());
        }

        public String toString() {
            return "BandwidthStats(downloadBytesAll=" + this.f17578a + ", downloadBytesMediaOnly=" + this.f17579b + ", consumedBytesEstimated=" + this.f17580c + ", redundancyRate=" + this.f17581d + ")";
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f17582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f17583b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f17584c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f17585d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f17586e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f17587f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f17588g;

        public c(String key, String uri, int i11, int i12, long j11, long j12, long j13) {
            Intrinsics.h(key, "key");
            Intrinsics.h(uri, "uri");
            this.f17582a = key;
            this.f17583b = uri;
            this.f17584c = i11;
            this.f17585d = i12;
            this.f17586e = j11;
            this.f17587f = j12;
            this.f17588g = j13;
        }

        public final long a() {
            return this.f17586e;
        }

        public final int b() {
            return this.f17584c;
        }

        public final long c() {
            return this.f17588g;
        }

        public final long d() {
            return this.f17587f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f17582a, cVar.f17582a) && Intrinsics.c(this.f17583b, cVar.f17583b) && this.f17584c == cVar.f17584c && this.f17585d == cVar.f17585d && this.f17586e == cVar.f17586e && this.f17587f == cVar.f17587f && this.f17588g == cVar.f17588g;
        }

        public int hashCode() {
            return (((((((((((this.f17582a.hashCode() * 31) + this.f17583b.hashCode()) * 31) + this.f17584c) * 31) + this.f17585d) * 31) + s.a(this.f17586e)) * 31) + s.a(this.f17587f)) * 31) + s.a(this.f17588g);
        }

        public String toString() {
            return "SegmentStat(key=" + this.f17582a + ", uri=" + this.f17583b + ", dataType=" + this.f17584c + ", trackType=" + this.f17585d + ", bytesLoaded=" + this.f17586e + ", mediaStartMs=" + this.f17587f + ", mediaEndMs=" + this.f17588g + ")";
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f17589a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f17590b;

        public d(long j11, long j12) {
            this.f17589a = j11;
            this.f17590b = j12;
        }

        public final long a() {
            return this.f17590b;
        }

        public final long b() {
            return this.f17589a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f17589a == dVar.f17589a && this.f17590b == dVar.f17590b;
        }

        public int hashCode() {
            return (s.a(this.f17589a) * 31) + s.a(this.f17590b);
        }

        public String toString() {
            return "WatchRange(startMs=" + this.f17589a + ", endMs=" + this.f17590b + ")";
        }
    }

    public /* synthetic */ class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f17591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f17592b;

        static {
            int[] iArr = new int[PlayMimeType.values().length];
            try {
                iArr[PlayMimeType.DASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PlayMimeType.HLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f17591a = iArr;
            int[] iArr2 = new int[ScaleMode.values().length];
            try {
                iArr2[ScaleMode.SCALE_TO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f17592b = iArr2;
        }
    }

    public static final class f extends androidx.media3.exoplayer.util.a {
        f() {
            super("ORExoPlayer");
        }

        @Override // androidx.media3.exoplayer.util.a, y1.c
        public void I(y1.c.a eventTime, g2.i loadEventInfo, g2.j mediaLoadData) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(loadEventInfo, "loadEventInfo");
            Intrinsics.h(mediaLoadData, "mediaLoadData");
            super.I(eventTime, loadEventInfo, mediaLoadData);
            Uri uri = loadEventInfo.f63210c;
            String string = uri != null ? uri.toString() : null;
            if (string == null) {
                string = "";
            }
            String strV = h.this.V(mediaLoadData.f63215a);
            int i11 = mediaLoadData.f63215a;
            String strO0 = h.this.o0(mediaLoadData.f63216b);
            int i12 = mediaLoadData.f63216b;
            long j11 = mediaLoadData.f63220f;
            long j12 = mediaLoadData.f63221g;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("exo-load-start uri=");
            sb2.append(string);
            sb2.append(", dataType=");
            sb2.append(strV);
            sb2.append("(");
            sb2.append(i11);
            sb2.append("), trackType=");
            sb2.append(strO0);
            sb2.append("(");
            sb2.append(i12);
            sb2.append("), mediaRange=[");
            sb2.append(j11);
            sb2.append(",");
            sb2.append(j12);
            sb2.append("]");
        }

        @Override // androidx.media3.exoplayer.util.a, y1.c
        public void R(y1.c.a eventTime, String decoderName, long j11, long j12) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(decoderName, "decoderName");
            super.R(eventTime, decoderName, j11, j12);
            oo.e.f71074a.h("ORExoPlayer", "onExoAudioDecoderInitialize, decoderName:" + decoderName, true);
        }

        @Override // androidx.media3.exoplayer.util.a, y1.c
        public void q(y1.c.a eventTime, String decoderName, long j11, long j12) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(decoderName, "decoderName");
            super.q(eventTime, decoderName, j11, j12);
            oo.e.f71074a.h("ORExoPlayer", "onExoVideoDecoderInitialize, decoderName:" + decoderName, true);
        }

        @Override // androidx.media3.exoplayer.util.a, y1.c
        public void x0(y1.c.a eventTime, g2.i loadEventInfo, g2.j mediaLoadData) {
            g2.j jVar;
            long j11;
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(loadEventInfo, "loadEventInfo");
            Intrinsics.h(mediaLoadData, "mediaLoadData");
            super.x0(eventTime, loadEventInfo, mediaLoadData);
            Uri uri = loadEventInfo.f63210c;
            String string = uri != null ? uri.toString() : null;
            if (string == null) {
                string = "";
            }
            long j12 = loadEventInfo.f63214g;
            h.this.f17577z += j12;
            if (h.this.b0(mediaLoadData.f63215a)) {
                h.this.A += j12;
            }
            if (string.length() <= 0 || !h.this.b0(mediaLoadData.f63215a)) {
                jVar = mediaLoadData;
                j11 = j12;
            } else {
                h hVar = h.this;
                int i11 = mediaLoadData.f63215a;
                int i12 = mediaLoadData.f63216b;
                long j13 = mediaLoadData.f63220f;
                long j14 = mediaLoadData.f63221g;
                w1.h hVar2 = loadEventInfo.f63209b;
                String strQ = hVar.Q(string, i11, i12, j13, j14, hVar2.f77517g, hVar2.f77518h);
                c cVar = (c) h.this.B.get(strQ);
                if (cVar == null || j12 > cVar.a()) {
                    jVar = mediaLoadData;
                    j11 = j12;
                    h.this.B.put(strQ, new c(strQ, string, jVar.f63215a, jVar.f63216b, j12, jVar.f63220f, jVar.f63221g));
                } else {
                    j11 = j12;
                    jVar = mediaLoadData;
                }
            }
            String strV = h.this.V(jVar.f63215a);
            int i13 = jVar.f63215a;
            String strO0 = h.this.o0(jVar.f63216b);
            int i14 = jVar.f63216b;
            long j15 = jVar.f63220f;
            long j16 = jVar.f63221g;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("exo-load-complete uri=");
            sb2.append(string);
            sb2.append(", bytes=");
            sb2.append(j11);
            sb2.append(", dataType=");
            sb2.append(strV);
            sb2.append("(");
            sb2.append(i13);
            sb2.append("), trackType=");
            sb2.append(strO0);
            sb2.append("(");
            sb2.append(i14);
            sb2.append("), mediaRange=[");
            sb2.append(j15);
            sb2.append(",");
            sb2.append(j16);
            sb2.append("]");
        }

        @Override // androidx.media3.exoplayer.util.a, y1.c
        public void y(y1.c.a eventTime, i0 tracks) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(tracks, "tracks");
            super.y(eventTime, tracks);
            h.this.h0(eventTime, tracks);
        }
    }

    public static final class g implements a0.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f17594a = 1;

        g() {
        }

        @Override // androidx.media3.common.a0.d
        public void onAudioSessionIdChanged(int i11) {
        }

        @Override // androidx.media3.common.a0.d
        public void onAvailableCommandsChanged(a0.b availableCommands) {
            Intrinsics.h(availableCommands, "availableCommands");
        }

        @Override // androidx.media3.common.a0.d
        public void onCues(List cues) {
            Intrinsics.h(cues, "cues");
        }

        @Override // androidx.media3.common.a0.d
        public void onCues(u1.b cueGroup) {
            Intrinsics.h(cueGroup, "cueGroup");
        }

        @Override // androidx.media3.common.a0.d
        public void onDeviceInfoChanged(androidx.media3.common.m deviceInfo) {
            Intrinsics.h(deviceInfo, "deviceInfo");
        }

        @Override // androidx.media3.common.a0.d
        public void onDeviceVolumeChanged(int i11, boolean z10) {
        }

        @Override // androidx.media3.common.a0.d
        public void onEvents(a0 player, a0.c events) {
            Intrinsics.h(player, "player");
            Intrinsics.h(events, "events");
        }

        @Override // androidx.media3.common.a0.d
        public void onIsLoadingChanged(boolean z10) {
        }

        @Override // androidx.media3.common.a0.d
        public void onIsPlayingChanged(boolean z10) {
            com.transsion.player.orplayer.c cVar = h.this.f17558g;
            if (cVar != null) {
                cVar.f(z10);
            }
            for (com.transsion.player.orplayer.f fVar : h.this.H) {
                if (fVar != null) {
                    fVar.onIsPlayingChanged(z10);
                }
            }
            ExoPlayer exoPlayer = h.this.f17570s;
            long currentPosition = exoPlayer != null ? exoPlayer.getCurrentPosition() : 0L;
            h.this.E = currentPosition;
            if (z10) {
                h.this.m0(currentPosition);
                CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList = h.this.H;
                h hVar = h.this;
                for (com.transsion.player.orplayer.f fVar2 : copyOnWriteArrayList) {
                    if (fVar2 != null) {
                        fVar2.onVideoStart(hVar.f17560i);
                    }
                }
                h.this.J.post(h.this.K);
            } else {
                h.this.S(currentPosition);
                ExoPlayer exoPlayer2 = h.this.f17570s;
                if (exoPlayer2 == null || !exoPlayer2.getPlayWhenReady()) {
                    CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList2 = h.this.H;
                    h hVar2 = h.this;
                    for (com.transsion.player.orplayer.f fVar3 : copyOnWriteArrayList2) {
                        if (fVar3 != null) {
                            fVar3.onVideoPause(hVar2.f17560i);
                        }
                    }
                }
                h.this.J.removeCallbacks(h.this.K);
                ExoPlayer exoPlayer3 = h.this.f17570s;
                long duration = exoPlayer3 != null ? exoPlayer3.getDuration() : 0L;
                ExoPlayer exoPlayer4 = h.this.f17570s;
                if (Math.abs(duration - (exoPlayer4 != null ? exoPlayer4.getCurrentPosition() : 0L)) < 2000) {
                    Log.e("ORExoPlayer", "onIsPlayingChanged onCompletion");
                    if (!h.this.f17568q) {
                        h.this.f17568q = true;
                        CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList3 = h.this.H;
                        h hVar3 = h.this;
                        for (com.transsion.player.orplayer.f fVar4 : copyOnWriteArrayList3) {
                            if (fVar4 != null) {
                                fVar4.onCompletion(hVar3.f17560i);
                            }
                        }
                    }
                }
            }
            Log.e("ORExoPlayer", "onIsPlayingChanged:" + z10);
        }

        @Override // androidx.media3.common.a0.d
        public void onLoadingChanged(boolean z10) {
        }

        @Override // androidx.media3.common.a0.d
        public void onMediaItemTransition(t tVar, int i11) {
            t.h hVar;
            Log.e("ORExoPlayer", "onMediaItemTransition  reason:" + i11 + " ");
            if (i11 == 0 || i11 == 1) {
                for (com.transsion.player.orplayer.f fVar : h.this.H) {
                    if (fVar != null) {
                        fVar.onMediaItemTransition((tVar == null || (hVar = tVar.f10211b) == null) ? null : hVar.f10307e);
                    }
                }
            }
        }

        @Override // androidx.media3.common.a0.d
        public void onMediaMetadataChanged(v mediaMetadata) {
            Intrinsics.h(mediaMetadata, "mediaMetadata");
        }

        @Override // androidx.media3.common.a0.d
        public void onMetadata(x metadata) {
            Intrinsics.h(metadata, "metadata");
        }

        @Override // androidx.media3.common.a0.d
        public void onPlayWhenReadyChanged(boolean z10, int i11) {
        }

        @Override // androidx.media3.common.a0.d
        public void onPlaybackParametersChanged(z playbackParameters) {
            Intrinsics.h(playbackParameters, "playbackParameters");
        }

        @Override // androidx.media3.common.a0.d
        public void onPlaybackStateChanged(int i11) {
            Log.e("ORExoPlayer", "onPlaybackStateChanged  playbackState:" + i11 + " ");
            if (i11 == 2) {
                Log.e("ORExoPlayer", "onPlaybackStateChanged STATE_BUFFERING");
                CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList = h.this.H;
                h hVar = h.this;
                for (com.transsion.player.orplayer.f fVar : copyOnWriteArrayList) {
                    if (fVar != null) {
                        fVar.onLoadingBegin(hVar.f17560i);
                    }
                }
            } else if (i11 == 3) {
                if (!h.this.f17554c) {
                    h.this.f17554c = true;
                    h.l(h.this);
                    CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList2 = h.this.H;
                    h hVar2 = h.this;
                    for (com.transsion.player.orplayer.f fVar2 : copyOnWriteArrayList2) {
                        if (fVar2 != null) {
                            fVar2.onPrepare(hVar2.f17560i);
                        }
                    }
                    h.this.i0();
                }
                if (this.f17594a == 2) {
                    for (com.transsion.player.orplayer.f fVar3 : h.this.H) {
                        if (fVar3 != null) {
                            com.transsion.player.orplayer.f.a.l(fVar3, null, 1, null);
                        }
                    }
                }
            } else if (i11 == 4 && !h.this.f17568q) {
                h.this.f17568q = true;
                CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList3 = h.this.H;
                h hVar3 = h.this;
                for (com.transsion.player.orplayer.f fVar4 : copyOnWriteArrayList3) {
                    if (fVar4 != null) {
                        fVar4.onCompletion(hVar3.f17560i);
                    }
                }
            }
            this.f17594a = i11;
        }

        @Override // androidx.media3.common.a0.d
        public void onPlaybackSuppressionReasonChanged(int i11) {
        }

        @Override // androidx.media3.common.a0.d
        public void onPlayerError(PlaybackException error) {
            ao.e eVar;
            Throwable cause;
            Intrinsics.h(error, "error");
            h.this.f17554c = false;
            if ((error instanceof ExoPlaybackException) && (cause = error.getCause()) != null) {
                h hVar = h.this;
                if ((cause instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) cause).responseCode == 404) {
                    long duration = hVar.getDuration();
                    long currentPosition = hVar.getCurrentPosition();
                    if (currentPosition > 0 && duration > 0 && (currentPosition * 1.0f) / duration > 0.99f) {
                        if (hVar.f17568q) {
                            return;
                        }
                        hVar.f17568q = true;
                        for (com.transsion.player.orplayer.f fVar : hVar.H) {
                            if (fVar != null) {
                                fVar.onCompletion(hVar.f17560i);
                            }
                        }
                        return;
                    }
                }
            }
            oo.e eVar2 = oo.e.f71074a;
            eVar2.c("ORExoPlayer", "exo onPlayerError，MimeType:" + h.this.f17575x + ", code:" + error.errorCode + ",msg:" + error.getMessage() + ", cause:" + error.getCause(), true);
            if (h.this.f17576y != ORExoDecoderType.HARDWARE || (eVar = h.this.f17560i) == null || eVar.m() || (error.getCause() instanceof HttpDataSource.InvalidResponseCodeException)) {
                PlayError playError = new PlayError(Integer.valueOf(error.errorCode), error.getMessage() + "|" + error.getCause());
                playError.setExoCause(error.getCause());
                h.l(h.this);
                for (com.transsion.player.orplayer.f fVar2 : h.this.H) {
                    if (fVar2 != null) {
                        com.transsion.player.orplayer.f.a.r(fVar2, playError, null, 2, null);
                    }
                }
                return;
            }
            eVar2.c("ORExoPlayer", "exo 硬解失败，切换到软解，MimeType:" + h.this.f17575x + ", code:" + error.errorCode + ",msg:" + error.getMessage(), true);
            ao.e eVarR = h.this.R();
            if (eVarR != null) {
                h hVar2 = h.this;
                hVar2.setDataSource(eVarR);
                hVar2.prepare();
            }
        }

        @Override // androidx.media3.common.a0.d
        public void onPlayerErrorChanged(PlaybackException playbackException) {
        }

        @Override // androidx.media3.common.a0.d
        public void onPlayerStateChanged(boolean z10, int i11) {
        }

        @Override // androidx.media3.common.a0.d
        public void onPositionDiscontinuity(int i11) {
        }

        @Override // androidx.media3.common.a0.d
        public void onPositionDiscontinuity(a0.e oldPosition, a0.e newPosition, int i11) {
            Intrinsics.h(oldPosition, "oldPosition");
            Intrinsics.h(newPosition, "newPosition");
            int i12 = newPosition.f9807c;
            long j11 = newPosition.f9811g;
            h.this.E = j11;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onPositionDiscontinuity: currentWindowIndex=");
            sb2.append(i12);
            sb2.append(", currentPositionMs=");
            sb2.append(j11);
            sb2.append(", reason=");
            sb2.append(i11);
            if (i11 == 1 || i11 == 2) {
                h.this.S(j11);
                ExoPlayer exoPlayer = h.this.f17570s;
                if (exoPlayer != null && exoPlayer.isPlaying()) {
                    h.this.m0(j11);
                }
                for (com.transsion.player.orplayer.f fVar : h.this.H) {
                    if (fVar != null) {
                        fVar.setOnSeekCompleteListener();
                    }
                }
            }
            CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList = h.this.H;
            h hVar = h.this;
            for (com.transsion.player.orplayer.f fVar2 : copyOnWriteArrayList) {
                if (fVar2 != null) {
                    fVar2.onProgress(j11, hVar.f17560i);
                }
            }
        }

        @Override // androidx.media3.common.a0.d
        public void onRenderedFirstFrame() {
            if (h.this.f17555d) {
                return;
            }
            h.this.f17555d = true;
            Log.e("ORExoPlayer", "onRenderedFirstFrame:");
            for (com.transsion.player.orplayer.f fVar : h.this.H) {
                if (fVar != null) {
                    fVar.onRenderFirstFrame();
                }
            }
        }

        @Override // androidx.media3.common.a0.d
        public void onRepeatModeChanged(int i11) {
        }

        @Override // androidx.media3.common.a0.d
        public void onShuffleModeEnabledChanged(boolean z10) {
        }

        @Override // androidx.media3.common.a0.d
        public void onSkipSilenceEnabledChanged(boolean z10) {
        }

        @Override // androidx.media3.common.a0.d
        public void onSurfaceSizeChanged(int i11, int i12) {
        }

        @Override // androidx.media3.common.a0.d
        public void onTimelineChanged(e0 timeline, int i11) {
            Intrinsics.h(timeline, "timeline");
        }

        @Override // androidx.media3.common.a0.d
        public void onTrackSelectionParametersChanged(h0 parameters) {
            Intrinsics.h(parameters, "parameters");
        }

        @Override // androidx.media3.common.a0.d
        public void onTracksChanged(i0 tracks) {
            int iC;
            Intrinsics.h(tracks, "tracks");
            CopyOnWriteArrayList<com.transsion.player.orplayer.f> copyOnWriteArrayList = h.this.H;
            h hVar = h.this;
            for (com.transsion.player.orplayer.f fVar : copyOnWriteArrayList) {
                if (fVar != null) {
                    fVar.onTracksChange(mo.a.c(tracks));
                }
                mo.c cVarC = mo.a.c(tracks);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("changeTrackSelection 所有的分辨率为：");
                sb2.append(cVarC);
                mo.d dVar = null;
                int i11 = -1;
                boolean z10 = false;
                int i12 = 0;
                for (mo.d dVar2 : cVarC.a()) {
                    if (dVar2.e() == 2) {
                        mo.b[] bVarArrB = dVar2.b();
                        int length = bVarArrB.length;
                        int i13 = 0;
                        int i14 = 0;
                        while (i13 < length) {
                            mo.b bVar = bVarArrB[i13];
                            int i15 = i14 + 1;
                            if (!Intrinsics.c(hVar.f17571t, Boolean.FALSE)) {
                                if (bVar.c() >= hVar.f17572u && bVar.c() > i12) {
                                    iC = bVar.c();
                                    i12 = iC;
                                    i11 = i14;
                                }
                                z10 = true;
                            } else if (bVar.c() < hVar.f17572u) {
                                if (bVar.c() > i12) {
                                    iC = bVar.c();
                                    i12 = iC;
                                    i11 = i14;
                                }
                                z10 = true;
                            }
                            i13++;
                            i14 = i15;
                        }
                        dVar = dVar2;
                    }
                }
                if (Intrinsics.c(hVar.f17571t, Boolean.FALSE)) {
                    if (z10) {
                        if (dVar != null && fVar != null) {
                            fVar.canNonSubscriberPlay(true, i12, i11, dVar);
                        }
                    } else if (dVar != null && fVar != null) {
                        fVar.canNonSubscriberPlay(false, 0, i11, dVar);
                    }
                } else if (dVar != null && fVar != null) {
                    fVar.canNonSubscriberPlay(true, i12, i11, dVar);
                }
            }
        }

        @Override // androidx.media3.common.a0.d
        public void onVideoSizeChanged(m0 videoSize) {
            Intrinsics.h(videoSize, "videoSize");
            SurfaceRenderView surfaceRenderView = h.this.f17556e;
            if (surfaceRenderView != null) {
                surfaceRenderView.setVideoRotation(videoSize.f10117c);
            }
            TextureRenderView textureRenderView = h.this.f17557f;
            if (textureRenderView != null) {
                textureRenderView.setVideoRotation(videoSize.f10117c);
            }
            SurfaceRenderView surfaceRenderView2 = h.this.f17556e;
            if (surfaceRenderView2 != null) {
                surfaceRenderView2.setVideoSize(videoSize.f10115a, videoSize.f10116b);
            }
            TextureRenderView textureRenderView2 = h.this.f17557f;
            if (textureRenderView2 != null) {
                textureRenderView2.setVideoSize(videoSize.f10115a, videoSize.f10116b);
            }
            for (com.transsion.player.orplayer.f fVar : h.this.H) {
                if (fVar != null) {
                    fVar.onVideoSizeChanged(videoSize.f10115a, videoSize.f10116b);
                }
            }
            Log.e("ORExoPlayer", "onVideoSizeChanged width:" + videoSize.f10115a + "  height:" + videoSize.f10116b);
        }

        @Override // androidx.media3.common.a0.d
        public void onVolumeChanged(float f11) {
        }
    }

    /* JADX INFO: renamed from: co.h$h, reason: collision with other inner class name */
    public static final class C0171h implements com.transsion.player.orplayer.d {
        C0171h() {
        }

        @Override // com.transsion.player.orplayer.d
        public boolean isMute() {
            ExoPlayer exoPlayer = h.this.f17570s;
            if (exoPlayer != null) {
                return exoPlayer.W();
            }
            return false;
        }

        @Override // com.transsion.player.orplayer.d
        public void pause() {
            ExoPlayer exoPlayer = h.this.f17570s;
            if (exoPlayer != null) {
                exoPlayer.pause();
            }
        }

        @Override // com.transsion.player.orplayer.d
        public void play() {
            ExoPlayer exoPlayer = h.this.f17570s;
            if (exoPlayer != null) {
                exoPlayer.play();
            }
        }

        @Override // com.transsion.player.orplayer.d
        public void setVolume(float f11) {
            ExoPlayer exoPlayer = h.this.f17570s;
            if (exoPlayer != null) {
                exoPlayer.setVolume(f11);
            }
        }
    }

    public h(Context context, m config, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(config, "config");
        this.f17552a = context;
        this.f17553b = config;
        this.f17565n = 1.0f;
        this.f17571t = Boolean.FALSE;
        this.f17572u = 720;
        this.f17573v = DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
        this.f17574w = 500L;
        ORExoDecoderType oRExoDecoderType = ORExoDecoderType.HARDWARE;
        this.f17576y = oRExoDecoderType;
        this.B = new LinkedHashMap();
        this.C = new ArrayList();
        this.D = -1L;
        this.F = new g();
        if (z10) {
            X();
        }
        U(oRExoDecoderType);
        this.H = new CopyOnWriteArrayList();
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.J = new Handler(looperMyLooper);
        this.K = new Runnable() { // from class: co.e
            @Override // java.lang.Runnable
            public final void run() {
                h.n0(this.f17550a);
            }
        };
        this.L = ScaleMode.SCALE_TO_FILL;
    }

    public /* synthetic */ h(Context context, m mVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? n.a() : mVar, (i11 & 4) != 0 ? true : z10);
    }

    private final void N(ao.e eVar) {
        androidx.media3.datasource.a.InterfaceC0091a factory = new RtmpDataSource.Factory();
        oo.e.f71074a.a("ORExoPlayer", "addRtmpDataSource ", true);
        b0 b0VarD = new b0.b(factory).d(t.b(eVar.k()));
        Intrinsics.g(b0VarD, "createMediaSource(...)");
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.U(b0VarD);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.media3.exoplayer.drm.t P(t tVar) {
        return androidx.media3.exoplayer.drm.t.f11612a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String Q(String str, int i11, int i12, long j11, long j12, long j13, long j14) {
        return str + "|" + i11 + "|" + i12 + "|" + j11 + "|" + j12 + "|" + j13 + "|" + j14;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ao.e R() {
        ao.e eVar = this.f17560i;
        String str = this.f17575x;
        a0();
        ORExoDecoderType oRExoDecoderType = Intrinsics.c(str, "video/av01") ? ORExoDecoderType.AV1 : ORExoDecoderType.FFMPEG;
        this.f17576y = oRExoDecoderType;
        oo.e.f71074a.a("ORExoPlayer", "重新创建播放器切换编码, DecoderType:" + oRExoDecoderType + ",MimeTyp:" + str, true);
        U(this.f17576y);
        Z();
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S(long j11) {
        long j12 = this.D;
        if (j12 < 0) {
            return;
        }
        long jG = RangesKt.g(j11, j12);
        if (jG > j12) {
            this.C.add(new d(j12, jG));
        }
        this.D = -1L;
    }

    private final long T(List list) {
        Iterator it;
        h hVar = this;
        Iterator it2 = hVar.B.values().iterator();
        double dA = 0.0d;
        while (it2.hasNext()) {
            Object next = it2.next();
            Intrinsics.g(next, "next(...)");
            c cVar = (c) next;
            if (!hVar.b0(cVar.b())) {
                hVar = this;
            } else if (cVar.b() == 2) {
                dA += cVar.a();
            } else {
                long jD = cVar.d();
                long jC = cVar.c();
                if (jD == C.TIME_UNSET || jC == C.TIME_UNSET || jC <= jD) {
                    it = it2;
                    dA += cVar.a();
                } else {
                    double d11 = jC - jD;
                    Iterator it3 = list.iterator();
                    long jJ0 = 0;
                    while (it3.hasNext()) {
                        d dVar = (d) it3.next();
                        jJ0 += j0(jD, jC, dVar.b(), dVar.a());
                        d11 = d11;
                        it2 = it2;
                    }
                    it = it2;
                    dA += cVar.a() * RangesKt.k(jJ0 / d11, 0.0d, 1.0d);
                }
                hVar = this;
                it2 = it;
            }
        }
        return (long) dA;
    }

    private final void U(ORExoDecoderType oRExoDecoderType) {
        Integer numA = this.f17553b.a();
        Intrinsics.e(numA);
        int iIntValue = numA.intValue() > 0 ? this.f17553b.a().intValue() : 20000;
        oo.e.f71074a.a("ORExoPlayer", "createPlayer, DecoderType:" + oRExoDecoderType, true);
        this.I = new androidx.media3.exoplayer.m.b().b(5000, iIntValue, 500, 1000).d(-1).c(true).a();
        this.G = co.a.b(this.f17552a, oRExoDecoderType);
        ExoPlayer.b bVarQ = new ExoPlayer.b(this.f17552a).q(new androidx.media3.exoplayer.source.i(this.f17552a).q(co.a.d(this.f17552a)));
        b4 b4Var = this.G;
        Intrinsics.e(b4Var);
        ExoPlayer.b bVarR = bVarQ.r(b4Var);
        u2 u2Var = this.I;
        Intrinsics.e(u2Var);
        ExoPlayer exoPlayerH = bVarR.p(u2Var).h();
        exoPlayerH.setPlayWhenReady(false);
        exoPlayerH.M(this.F);
        exoPlayerH.D(new f());
        this.f17570s = exoPlayerH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String V(int i11) {
        switch (i11) {
            case 1:
                return PermissionConstants.MEDIA;
            case 2:
                return "MEDIA_INIT";
            case 3:
                return "DRM";
            case 4:
                return "MANIFEST";
            case 5:
                return "TIME_SYNC";
            case 6:
                return "AD";
            default:
                return NetworkUtil.NETWORK_TYPE_UNKNOWN;
        }
    }

    private final void X() {
        this.f17558g = new com.transsion.player.orplayer.c(new C0171h(), new Function1() { // from class: co.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.Y(this.f17551a, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(h hVar, boolean z10) {
        Iterator it = hVar.H.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onFocusChange(z10);
        }
        return Unit.f67061a;
    }

    private final void Z() {
        setMute(this.f17564m);
        Float f11 = this.f17561j;
        if (f11 != null) {
            setVolume(f11.floatValue());
        }
        setLooping(this.f17563l);
        setAutoPlay(this.f17562k);
        setSpeed(this.f17565n);
        SurfaceRenderView surfaceRenderView = this.f17556e;
        if (surfaceRenderView != null) {
            setSurfaceView(surfaceRenderView);
        }
        TextureRenderView textureRenderView = this.f17557f;
        if (textureRenderView != null) {
            setTextureView(textureRenderView);
        }
        setScaleMode(this.L);
    }

    private final void a0() {
        this.f17554c = false;
        this.f17568q = false;
        this.f17555d = false;
        Log.e("ORExoPlayer", "innerRelease");
        if (ko.m0.f66984a.a(this)) {
            ExoPlayer exoPlayer = this.f17570s;
            if (exoPlayer != null) {
                exoPlayer.release();
                return;
            }
            return;
        }
        ExoPlayer exoPlayer2 = this.f17570s;
        if (exoPlayer2 != null) {
            exoPlayer2.stop();
        }
        ExoPlayer exoPlayer3 = this.f17570s;
        if (exoPlayer3 != null) {
            exoPlayer3.B();
        }
        ExoPlayer exoPlayer4 = this.f17570s;
        if (exoPlayer4 != null) {
            exoPlayer4.clearVideoSurface();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b0(int i11) {
        return i11 == 1 || i11 == 2;
    }

    private final boolean c0(ao.e eVar) {
        PlayMimeType playMimeTypeJ = eVar.j();
        PlayMimeType playMimeType = PlayMimeType.RTMP;
        if (playMimeTypeJ == playMimeType) {
            return true;
        }
        String lowerCase = eVar.k().toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (!StringsKt.W(lowerCase, "rtmp://", false, 2, null)) {
            return false;
        }
        eVar.u(playMimeType);
        return true;
    }

    private final boolean d0(ao.e eVar) {
        PlayMimeType playMimeTypeJ = eVar.j();
        PlayMimeType playMimeType = PlayMimeType.DASH;
        if (playMimeTypeJ != playMimeType) {
            PlayMimeType playMimeTypeJ2 = eVar.j();
            PlayMimeType playMimeType2 = PlayMimeType.HLS;
            if (playMimeTypeJ2 != playMimeType2) {
                if (StringsKt.c0(eVar.k(), ".mpd", false, 2, null)) {
                    eVar.u(playMimeType);
                    return true;
                }
                if (!StringsKt.c0(eVar.k(), ".m3u8", false, 2, null)) {
                    return false;
                }
                eVar.u(playMimeType2);
                return true;
            }
        }
        return true;
    }

    private final void e0(String str) {
        String str2;
        a aVarW = W();
        Double d11 = aVarW.d();
        if (d11 != null) {
            double dDoubleValue = d11.doubleValue();
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            str2 = String.format("%.4f", Arrays.copyOf(new Object[]{Double.valueOf(dDoubleValue)}, 1));
            Intrinsics.g(str2, "format(...)");
        } else {
            str2 = "null";
        }
        long jB = aVarW.b();
        long jC = aVarW.c();
        long jA = aVarW.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bw-stats scene=");
        sb2.append(str);
        sb2.append(", downloadAll=");
        sb2.append(jB);
        sb2.append(", downloadMedia=");
        sb2.append(jC);
        sb2.append(", consumedEstimated=");
        sb2.append(jA);
        sb2.append(", redundancyRate=");
        sb2.append(str2);
    }

    private final void f0() {
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer == null) {
            return;
        }
        long jG = RangesKt.g(exoPlayer.getCurrentPosition(), 0L);
        long jG2 = RangesKt.g(exoPlayer.getBufferedPosition(), jG);
        long jG3 = RangesKt.g(jG2 - jG, 0L);
        double dK = RangesKt.k((jG3 * 100.0d) / this.f17573v, 0.0d, 100.0d);
        this.f17559h = Double.valueOf(dK);
        boolean z10 = jG3 >= this.f17573v - this.f17574w;
        String str = String.format("%.1f", Arrays.copyOf(new Object[]{Double.valueOf(dK)}, 1));
        Intrinsics.g(str, "format(...)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("exo-buffer-pool scene=release, current=");
        sb2.append(jG);
        sb2.append(", bufferedPosition=");
        sb2.append(jG2);
        sb2.append(", bufferedMs=");
        sb2.append(jG3);
        sb2.append(", poolPercent=");
        sb2.append(str);
        sb2.append(", isPoolFull=");
        sb2.append(z10);
    }

    private final void g0() {
        this.J.removeCallbacks(this.K);
        this.J.postDelayed(this.K, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void h0(y1.c.a aVar, i0 i0Var) {
        int size = i0Var.a().size();
        for (int i11 = 0; i11 < size; i11++) {
            E e11 = i0Var.a().get(i11);
            Intrinsics.g(e11, "get(...)");
            i0.a aVar2 = (i0.a) e11;
            int i12 = aVar2.f10091a;
            for (int i13 = 0; i13 < i12; i13++) {
                r rVarB = aVar2.b(i13);
                Intrinsics.g(rVarB, "getTrackFormat(...)");
                oo.e eVar = oo.e.f71074a;
                oo.e.i(eVar, "ORExoPlayer", "onGetTracksInfo  MimeType:" + rVarB.f10161o + "， bitrate：" + rVarB.f10156j, false, 4, null);
                String str = rVarB.f10161o;
                if (str != null && StringsKt.c0(str, "video", false, 2, null)) {
                    String str2 = rVarB.f10161o;
                    this.f17575x = str2;
                    oo.e.f(eVar, "ORExoPlayer", "--------onGetTracksInfo curVideoMimeType:" + str2, false, 4, null);
                }
            }
        }
        if (this.f17576y == ORExoDecoderType.AV1 || !Intrinsics.c(this.f17575x, "video/av01") || Build.VERSION.SDK_INT > 29) {
            return;
        }
        oo.e.f71074a.c("ORExoPlayer", "exo av1，强制切换到软解， MimeType:" + this.f17575x, true);
        ao.e eVarR = R();
        if (eVarR != null) {
            setDataSource(eVarR);
            prepare();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void i0() {
        i0 currentTracks;
        ExoPlayer exoPlayer;
        r rVarR;
        r rVarI;
        ExoPlayer exoPlayer2 = this.f17570s;
        if (exoPlayer2 == null || (currentTracks = exoPlayer2.getCurrentTracks()) == null) {
            return;
        }
        int size = currentTracks.a().size();
        for (int i11 = 0; i11 < size; i11++) {
            E e11 = currentTracks.a().get(i11);
            Intrinsics.g(e11, "get(...)");
            i0.a aVar = (i0.a) e11;
            int i12 = aVar.f10091a;
            for (int i13 = 0; i13 < i12; i13++) {
                r rVarB = aVar.b(i13);
                Intrinsics.g(rVarB, "getTrackFormat(...)");
                if (y.t(rVarB.f10161o)) {
                    ExoPlayer exoPlayer3 = this.f17570s;
                    if (exoPlayer3 != null && (rVarI = exoPlayer3.I()) != null) {
                        int i14 = rVarI.f10156j;
                        int i15 = rVarB.f10156j;
                        if (i14 == i15) {
                            this.f17566o = i15;
                            oo.e.b(oo.e.f71074a, "ORExoPlayer", "--onPrepare2GetBitrate  MimeType:" + rVarB.f10161o + "，videoBitrate：" + i15, false, 4, null);
                            Iterator it = this.H.iterator();
                            while (it.hasNext()) {
                                ((com.transsion.player.orplayer.f) it.next()).onTracksVideoBitrateChange(this.f17566o);
                            }
                        }
                    }
                } else if (y.o(rVarB.f10161o) && (exoPlayer = this.f17570s) != null && (rVarR = exoPlayer.R()) != null) {
                    int i16 = rVarR.f10156j;
                    int i17 = rVarB.f10156j;
                    if (i16 == i17) {
                        this.f17567p = i17;
                        oo.e.b(oo.e.f71074a, "ORExoPlayer", "--onPrepare2GetBitrate  MimeType:" + rVarB.f10161o + "，audioBitrate：" + i17, false, 4, null);
                        Iterator it2 = this.H.iterator();
                        while (it2.hasNext()) {
                            ((com.transsion.player.orplayer.f) it2.next()).onTracksAudioBitrateChange(this.f17567p);
                        }
                    }
                }
            }
        }
    }

    private final long j0(long j11, long j12, long j13, long j14) {
        return RangesKt.g(Math.min(j12, j14) - Math.max(j11, j13), 0L);
    }

    private final void k0() {
        this.f17577z = 0L;
        this.A = 0L;
        this.B.clear();
        this.C.clear();
        this.D = -1L;
        this.E = 0L;
    }

    public static final /* synthetic */ ko.e0 l(h hVar) {
        hVar.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m0(long j11) {
        if (this.D < 0) {
            this.D = RangesKt.g(j11, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(h hVar) {
        ExoPlayer exoPlayer = hVar.f17570s;
        if (exoPlayer == null || exoPlayer.isPlaying()) {
            ExoPlayer exoPlayer2 = hVar.f17570s;
            long currentPosition = exoPlayer2 != null ? exoPlayer2.getCurrentPosition() : 0L;
            hVar.E = currentPosition;
            Iterator it = hVar.H.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onProgress(currentPosition, hVar.f17560i);
            }
            hVar.g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String o0(int i11) {
        if (i11 == 0) {
            return "DEFAULT";
        }
        if (i11 == 1) {
            return "AUDIO";
        }
        if (i11 == 2) {
            return "VIDEO";
        }
        if (i11 != 3) {
            return i11 != 5 ? NetworkUtil.NETWORK_TYPE_UNKNOWN : "METADATA";
        }
        return "TEXT";
    }

    public final boolean O(ao.e mediaSource) {
        androidx.media3.exoplayer.source.r.a factory;
        Intrinsics.h(mediaSource, "mediaSource");
        String strH = mediaSource.h();
        if (strH == null) {
            strH = mediaSource.k();
        }
        t tVarA = new t.c().j(strH).d(String.valueOf(mediaSource.l())).b(mediaSource.g()).h(mediaSource.e()).a();
        Intrinsics.g(tVarA, "build(...)");
        androidx.media3.datasource.a.InterfaceC0091a interfaceC0091aA = StringsKt.W(strH, "http", false, 2, null) ? co.d.f17547a.a(mediaSource.f(), mediaSource.d()) : new androidx.media3.datasource.b.a(this.f17552a);
        PlayMimeType playMimeTypeJ = mediaSource.j();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("dash addStreamDataSource, mimeType:");
        sb2.append(playMimeTypeJ);
        int i11 = e.f17591a[mediaSource.j().ordinal()];
        if (i11 == 1) {
            factory = new DashMediaSource.Factory(interfaceC0091aA);
        } else {
            if (i11 != 2) {
                return false;
            }
            factory = new HlsMediaSource.Factory(interfaceC0091aA);
        }
        androidx.media3.exoplayer.source.r rVarD = factory.e(new w() { // from class: co.f
            @Override // androidx.media3.exoplayer.drm.w
            public final androidx.media3.exoplayer.drm.t a(t tVar) {
                return h.P(tVar);
            }
        }).d(tVarA);
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.U(rVarD);
        }
        this.f17560i = mediaSource;
        return true;
    }

    public final a W() {
        Double dValueOf;
        List listU0 = CollectionsKt.U0(this.C);
        if (this.D >= 0) {
            ExoPlayer exoPlayer = this.f17570s;
            long currentPosition = exoPlayer != null ? exoPlayer.getCurrentPosition() : this.E;
            long j11 = this.D;
            if (currentPosition > j11) {
                listU0.add(new d(j11, currentPosition));
            }
        }
        long jT = T(listU0);
        if (jT <= 0) {
            dValueOf = null;
        } else {
            long j12 = this.f17577z;
            dValueOf = Double.valueOf((j12 - jT) / j12);
        }
        if (dValueOf != null && dValueOf.doubleValue() < 0.0d) {
            dValueOf = Double.valueOf(0.0d);
        }
        return new a(this.f17577z, this.A, jT, dValueOf);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean addDataSource(ao.e eVar) {
        return com.transsion.player.orplayer.g.b.a(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void addPlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        com.transsion.player.orplayer.g.b.b(this, listener);
        if (this.H.contains(listener)) {
            return;
        }
        this.H.add(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public void changeTrackSelection(mo.d mediaTrackGroup, int i11) {
        i0 currentTracks;
        f0 f0VarA;
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        int length = mediaTrackGroup.b().length;
        if (i11 < 0 || i11 >= length) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f17566o = mediaTrackGroup.b()[i11].a();
            Iterator it = this.H.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onTracksVideoBitrateChange(this.f17566o);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        int i12 = this.f17566o;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("changeTrackSelection  mediaTrackGroup:");
        sb2.append(mediaTrackGroup);
        sb2.append("  index:");
        sb2.append(i11);
        sb2.append(", videoBitrate:");
        sb2.append(i12);
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer == null || (currentTracks = exoPlayer.getCurrentTracks()) == null || (f0VarA = mo.a.a(currentTracks, mediaTrackGroup)) == null) {
            return;
        }
        ExoPlayer exoPlayer2 = this.f17570s;
        Intrinsics.e(exoPlayer2);
        ExoPlayer exoPlayer3 = this.f17570s;
        Intrinsics.e(exoPlayer3);
        exoPlayer2.V(exoPlayer3.l().a().L(new g0(f0VarA, i11)).F());
    }

    @Override // com.transsion.player.orplayer.g
    public void clearScreen() {
    }

    @Override // com.transsion.player.orplayer.g
    public void clearSurfaceOnly() {
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceView(null);
        }
        ExoPlayer exoPlayer2 = this.f17570s;
        if (exoPlayer2 != null) {
            exoPlayer2.setVideoTextureView(null);
        }
        this.f17556e = null;
        this.f17557f = null;
    }

    @Override // com.transsion.player.orplayer.g
    public ao.e currentMediaSource() {
        return this.f17560i;
    }

    @Override // com.transsion.player.orplayer.g
    public void enableHardwareDecoder(boolean z10) {
        if (!z10 && this.f17576y == ORExoDecoderType.HARDWARE) {
            oo.e.f71074a.a("ORExoPlayer", "1-硬解切到软解，重新创建设置", true);
            R();
        } else if (z10) {
            ORExoDecoderType oRExoDecoderType = this.f17576y;
            ORExoDecoderType oRExoDecoderType2 = ORExoDecoderType.HARDWARE;
            if (oRExoDecoderType != oRExoDecoderType2) {
                this.f17576y = oRExoDecoderType2;
                oo.e.f71074a.a("ORExoPlayer", "2-软解切换到硬解，重新创建设置", true);
                U(this.f17576y);
                Z();
            }
        }
    }

    @Override // com.transsion.player.orplayer.g
    public Pair getBitrate() {
        return new Pair(Integer.valueOf(this.f17566o), Integer.valueOf(this.f17567p));
    }

    @Override // com.transsion.player.orplayer.g
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            return exoPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.c getCurrentTracks() {
        i0 currentTracks;
        mo.c cVarC;
        ExoPlayer exoPlayer = this.f17570s;
        return (exoPlayer == null || (currentTracks = exoPlayer.getCurrentTracks()) == null || (cVarC = mo.a.c(currentTracks)) == null) ? new mo.c(null, 1, null) : cVarC;
    }

    @Override // com.transsion.player.orplayer.g
    public mo.b getCurrentVideoFormat() {
        r rVarI;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer == null || (rVarI = exoPlayer.I()) == null) {
            return null;
        }
        return mo.a.b(rVarI);
    }

    @Override // com.transsion.player.orplayer.g
    public Object getDownloadBitrate() {
        return com.transsion.player.orplayer.g.b.j(this);
    }

    @Override // com.transsion.player.orplayer.g
    public long getDuration() {
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            return exoPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoHeight() {
        return com.transsion.player.orplayer.g.b.k(this);
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoWidth() {
        return com.transsion.player.orplayer.g.b.l(this);
    }

    @Override // com.transsion.player.orplayer.g
    public Float getVolume() {
        return this.f17561j;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isComplete() {
        ExoPlayer exoPlayer = this.f17570s;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 4;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isLoading() {
        return com.transsion.player.orplayer.g.b.m(this);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isMute() {
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            return exoPlayer.W();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            return exoPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPrepared() {
        ExoPlayer exoPlayer = this.f17570s;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 3;
    }

    public final void l0(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f17569r = listener;
    }

    @Override // com.transsion.player.orplayer.g
    public void pause() {
        com.transsion.player.orplayer.c cVar = this.f17558g;
        if (cVar != null) {
            cVar.g(true);
        }
        Log.e("ORExoPlayer", "pause");
        ExoPlayer exoPlayer = this.f17570s;
        S(exoPlayer != null ? exoPlayer.getCurrentPosition() : this.E);
        e0("pause");
        ExoPlayer exoPlayer2 = this.f17570s;
        if (exoPlayer2 != null) {
            exoPlayer2.pause();
        }
        ExoPlayer exoPlayer3 = this.f17570s;
        if (exoPlayer3 != null) {
            exoPlayer3.getPlayWhenReady();
        }
        com.transsion.player.orplayer.c cVar2 = this.f17558g;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void play() {
        ExoPlayer exoPlayer;
        Log.e("ORExoPlayer", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        ExoPlayer exoPlayer2 = this.f17570s;
        if ((exoPlayer2 != null ? exoPlayer2.c() : null) != null && (exoPlayer = this.f17570s) != null) {
            exoPlayer.prepare();
        }
        ExoPlayer exoPlayer3 = this.f17570s;
        if (exoPlayer3 != null) {
            exoPlayer3.play();
        }
        com.transsion.player.orplayer.c cVar = this.f17558g;
        if (cVar != null) {
            cVar.g(false);
        }
        com.transsion.player.orplayer.c cVar2 = this.f17558g;
        if (cVar2 != null) {
            cVar2.e();
        }
        this.f17568q = false;
    }

    @Override // com.transsion.player.orplayer.g
    public void prepare() {
        Log.e("ORExoPlayer", "prepare");
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.prepare();
        }
        this.f17568q = false;
    }

    @Override // com.transsion.player.orplayer.g
    public void release() {
        f0();
        ExoPlayer exoPlayer = this.f17570s;
        S(exoPlayer != null ? exoPlayer.getCurrentPosition() : this.E);
        e0("release");
        this.f17554c = false;
        this.f17568q = false;
        this.f17555d = false;
        Log.e("ORExoPlayer", "release");
        if (ko.m0.f66984a.a(this)) {
            ExoPlayer exoPlayer2 = this.f17570s;
            if (exoPlayer2 != null) {
                exoPlayer2.release();
            }
        } else {
            ExoPlayer exoPlayer3 = this.f17570s;
            if (exoPlayer3 != null) {
                exoPlayer3.stop();
            }
            ExoPlayer exoPlayer4 = this.f17570s;
            if (exoPlayer4 != null) {
                exoPlayer4.B();
            }
            ExoPlayer exoPlayer5 = this.f17570s;
            if (exoPlayer5 != null) {
                exoPlayer5.clearVideoSurface();
            }
        }
        for (com.transsion.player.orplayer.f fVar : this.H) {
            if (fVar != null) {
                fVar.onPlayerRelease(this.f17560i);
            }
        }
        a aVarW = W();
        com.transsion.player.orplayer.e eVar = this.f17569r;
        if (eVar != null) {
            eVar.a(aVarW.d(), aVarW.b(), aVarW.a(), this.f17559h);
        }
        com.transsion.player.orplayer.c cVar = this.f17558g;
        if (cVar != null) {
            cVar.b();
        }
        this.f17575x = null;
        this.f17576y = ORExoDecoderType.HARDWARE;
        this.f17560i = null;
    }

    @Override // com.transsion.player.orplayer.g
    public void release(String str) {
        com.transsion.player.orplayer.g.b.o(this, str);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean removeDataSource(ao.e eVar) {
        return com.transsion.player.orplayer.g.b.p(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void removePlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        com.transsion.player.orplayer.g.b.q(this, listener);
        this.H.remove(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean requestForce() {
        return com.transsion.player.orplayer.g.b.r(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void reset() {
        Log.e("ORExoPlayer", "reset    ");
        ExoPlayer exoPlayer = this.f17570s;
        S(exoPlayer != null ? exoPlayer.getCurrentPosition() : this.E);
        e0("reset");
        this.f17554c = false;
        this.f17568q = false;
        this.f17555d = false;
        ExoPlayer exoPlayer2 = this.f17570s;
        if (exoPlayer2 != null) {
            exoPlayer2.stop();
        }
        ExoPlayer exoPlayer3 = this.f17570s;
        if (exoPlayer3 != null) {
            exoPlayer3.B();
        }
        this.f17576y = ORExoDecoderType.HARDWARE;
        this.f17560i = null;
        for (com.transsion.player.orplayer.f fVar : this.H) {
            if (fVar != null) {
                fVar.onPlayerReset();
            }
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(long j11) {
        ExoPlayer exoPlayer;
        Log.e("ORExoPlayer", "seekTo    mills:" + j11);
        this.f17568q = false;
        ExoPlayer exoPlayer2 = this.f17570s;
        if ((exoPlayer2 != null ? exoPlayer2.c() : null) != null && (exoPlayer = this.f17570s) != null) {
            exoPlayer.prepare();
        }
        ExoPlayer exoPlayer3 = this.f17570s;
        if (exoPlayer3 != null) {
            exoPlayer3.seekTo(j11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(String uuid, long j11) {
        ExoPlayer exoPlayer;
        t tVarO;
        t.h hVar;
        Intrinsics.h(uuid, "uuid");
        com.transsion.player.orplayer.g.b.s(this, uuid, j11);
        this.f17568q = false;
        ExoPlayer exoPlayer2 = this.f17570s;
        int iF = exoPlayer2 != null ? exoPlayer2.F() : 0;
        for (int i11 = 0; i11 < iF; i11++) {
            ExoPlayer exoPlayer3 = this.f17570s;
            if (Intrinsics.c((exoPlayer3 == null || (tVarO = exoPlayer3.O(i11)) == null || (hVar = tVarO.f10211b) == null) ? null : hVar.f10307e, uuid)) {
                ExoPlayer exoPlayer4 = this.f17570s;
                if ((exoPlayer4 != null ? exoPlayer4.c() : null) != null) {
                    prepare();
                }
                ExoPlayer exoPlayer5 = this.f17570s;
                if (exoPlayer5 == null || exoPlayer5.t() != i11) {
                    Log.e("ORExoPlayer", "seekTo  index:" + i11 + " uuid:" + uuid);
                    ExoPlayer exoPlayer6 = this.f17570s;
                    if (exoPlayer6 != null) {
                        exoPlayer6.seekTo(i11, j11);
                    }
                } else {
                    if (isComplete() && (exoPlayer = this.f17570s) != null) {
                        exoPlayer.seekTo(j11);
                    }
                    Log.e("ORExoPlayer", "seekTo   uuid:" + uuid + " mills:" + j11 + "  是当前视频直接播放");
                }
                play();
                return;
            }
        }
        Log.e("ORExoPlayer", "seekTo   uuid:" + uuid + " mills:" + j11 + "  没有找到");
        pause();
    }

    @Override // com.transsion.player.orplayer.g
    public void setAutoPlay(boolean z10) {
        this.f17562k = z10;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(z10);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setDataSource(ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        k0();
        oo.e.f71074a.a("ORExoPlayer", "setDataSource url:" + mediaSource.k(), true);
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onSetDataSource();
        }
        if (d0(mediaSource)) {
            O(mediaSource);
            return;
        }
        if (c0(mediaSource)) {
            N(mediaSource);
            return;
        }
        t tVarA = new t.c().j(mediaSource.k()).d(String.valueOf(mediaSource.l())).b(mediaSource.g()).a();
        Intrinsics.g(tVarA, "build(...)");
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.H(tVarA);
        }
        this.f17560i = mediaSource;
    }

    @Override // com.transsion.player.orplayer.g
    public void setLooping(boolean z10) {
        this.f17563l = z10;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.setRepeatMode(z10 ? 1 : 0);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setMute(boolean z10) {
        this.f17564m = z10;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.A(z10, 1);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerConfig(bo.d dVar) {
        com.transsion.player.orplayer.g.b.w(this, dVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerListener(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        addPlayerListener(listener);
    }

    @Override // com.transsion.player.orplayer.g
    public void setScaleMode(ScaleMode scaleMode) {
        RenderScaleMode renderScaleMode;
        Intrinsics.h(scaleMode, "scaleMode");
        com.transsion.player.orplayer.g.b.x(this, scaleMode);
        this.L = scaleMode;
        int i11 = e.f17592b[scaleMode.ordinal()];
        if (i11 == 1) {
            renderScaleMode = RenderScaleMode.SCREEN_SCALE_MATCH_PARENT;
        } else if (i11 == 2) {
            renderScaleMode = RenderScaleMode.SCREEN_SCALE_DEFAULT;
        } else {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            renderScaleMode = RenderScaleMode.SCREEN_SCALE_CENTER_CROP;
        }
        TextureRenderView textureRenderView = this.f17557f;
        if (textureRenderView != null) {
            textureRenderView.setScaleType(renderScaleMode);
        }
        SurfaceRenderView surfaceRenderView = this.f17556e;
        if (surfaceRenderView != null) {
            surfaceRenderView.setScaleType(renderScaleMode);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSpeed(float f11) {
        this.f17565n = f11;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.a(f11);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f17556e = surfaceView instanceof SurfaceRenderView ? (SurfaceRenderView) surfaceView : null;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceView(surfaceView);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setTextureView(TextureView textureView) {
        this.f17557f = textureView instanceof TextureRenderView ? (TextureRenderView) textureView : null;
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.setVideoTextureView(textureView);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setVipResolution(boolean z10, int i11) {
        this.f17571t = Boolean.valueOf(z10);
        this.f17572u = i11;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LongVideoView 非会员可以播放 vipResolution :");
        sb2.append(i11);
    }

    @Override // com.transsion.player.orplayer.g
    public void setVolume(float f11) {
        float fL = RangesKt.l(f11, 0.0f, 2.0f);
        b4 b4Var = this.G;
        j jVar = b4Var instanceof j ? (j) b4Var : null;
        if (jVar != null) {
            jVar.s(fL);
        }
        ExoPlayer exoPlayer = this.f17570s;
        if (exoPlayer != null) {
            exoPlayer.setVolume(fL);
        }
        this.f17561j = Float.valueOf(fL);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setVolume  volume:");
        sb2.append(f11);
    }

    @Override // com.transsion.player.orplayer.g
    public void stop() {
        Log.e("ORExoPlayer", "stop    ");
        ExoPlayer exoPlayer = this.f17570s;
        S(exoPlayer != null ? exoPlayer.getCurrentPosition() : this.E);
        e0("stop");
        com.transsion.player.orplayer.c cVar = this.f17558g;
        if (cVar != null) {
            cVar.g(true);
        }
        ExoPlayer exoPlayer2 = this.f17570s;
        if (exoPlayer2 != null) {
            exoPlayer2.stop();
        }
        this.f17554c = false;
        this.f17568q = false;
        this.f17555d = false;
        com.transsion.player.orplayer.c cVar2 = this.f17558g;
        if (cVar2 != null) {
            cVar2.b();
        }
    }
}
