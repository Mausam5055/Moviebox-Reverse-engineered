package co;

import android.content.Context;
import android.os.Handler;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.x;
import androidx.media3.exoplayer.mediacodec.h0;
import androidx.media3.exoplayer.o;
import androidx.media3.exoplayer.video.i0;
import com.transsion.player.exo.ORExoDecoderType;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class j extends o {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f17597n = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ORExoDecoderType f17598l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f17599m;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f17600a;

        static {
            int[] iArr = new int[ORExoDecoderType.values().length];
            try {
                iArr[ORExoDecoderType.AV1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f17600a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context, ORExoDecoderType videoRendererType) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(videoRendererType, "videoRendererType");
        this.f17598l = videoRendererType;
        this.f17599m = LazyKt.b(new Function0() { // from class: co.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return j.t();
            }
        });
    }

    private final l r() {
        return (l) this.f17599m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l t() {
        return new l();
    }

    @Override // androidx.media3.exoplayer.o
    protected void c(Context context, int i11, h0 mediaCodecSelector, boolean z10, AudioSink audioSink, Handler eventHandler, x eventListener, ArrayList out) {
        Intrinsics.h(context, "context");
        Intrinsics.h(mediaCodecSelector, "mediaCodecSelector");
        Intrinsics.h(audioSink, "audioSink");
        Intrinsics.h(eventHandler, "eventHandler");
        Intrinsics.h(eventListener, "eventListener");
        Intrinsics.h(out, "out");
        super.c(context, i11, mediaCodecSelector, z10, audioSink, eventHandler, eventListener, out);
        oo.e eVar = oo.e.f71074a;
        eVar.e("ORRenderersFactory", "buildAudioRenderers, mode:" + i11, true);
        if (i11 == 0) {
            return;
        }
        int size = out.size();
        if (i11 == 2) {
            size--;
        }
        try {
            out.add(size, new io.github.anilbeesetti.nextlib.media3ext.ffdecoder.b(eventHandler, eventListener, audioSink));
            eVar.e("ORRenderersFactory", "Loaded FfmpegAudioRenderer.", true);
        } catch (Exception e11) {
            e11.printStackTrace();
            oo.e.f71074a.c("ORRenderersFactory", "Error instantiating Ffmpeg extension :" + e11, true);
        }
    }

    @Override // androidx.media3.exoplayer.o
    protected AudioSink d(Context context, boolean z10, boolean z11) {
        Intrinsics.h(context, "context");
        DefaultAudioSink defaultAudioSinkJ = new DefaultAudioSink.g(context).o(z10).n(z11).m(new l[]{r()}).j();
        Intrinsics.g(defaultAudioSinkJ, "build(...)");
        return defaultAudioSinkJ;
    }

    @Override // androidx.media3.exoplayer.o
    protected void k(Context context, int i11, h0 mediaCodecSelector, boolean z10, Handler eventHandler, i0 eventListener, long j11, ArrayList out) {
        Intrinsics.h(context, "context");
        Intrinsics.h(mediaCodecSelector, "mediaCodecSelector");
        Intrinsics.h(eventHandler, "eventHandler");
        Intrinsics.h(eventListener, "eventListener");
        Intrinsics.h(out, "out");
        super.k(context, i11, mediaCodecSelector, z10, eventHandler, eventListener, j11, out);
        oo.e eVar = oo.e.f71074a;
        eVar.e("ORRenderersFactory", "buildVideoRenderers, mode:" + i11, true);
        if (i11 == 0) {
            return;
        }
        int size = out.size();
        if (i11 == 2) {
            size--;
        }
        try {
            out.add(size, b.f17600a[this.f17598l.ordinal()] == 1 ? new androidx.media3.decoder.av1.c(j11, eventHandler, eventListener, 50) : new io.github.anilbeesetti.nextlib.media3ext.ffdecoder.d(j11, eventHandler, eventListener, 50));
            eVar.e("ORRenderersFactory", "Loaded FfmpegVideoRenderer.", true);
        } catch (Exception e11) {
            e11.printStackTrace();
            oo.e.f71074a.c("ORRenderersFactory", "Error instantiating Ffmpeg extension :" + e11, true);
        }
    }

    public void s(float f11) {
        if (f11 > 1.0f) {
            f11 = (2 * f11) - 1.0f;
        }
        r().b(f11);
    }
}
