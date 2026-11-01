package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import android.os.Handler;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.common.y;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.d0;
import androidx.media3.exoplayer.audio.x;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends d0 {
    public b() {
        this((Handler) null, (x) null, new AudioProcessor[0]);
    }

    public b(Handler handler, x xVar, AudioSink audioSink) {
        super(handler, xVar, audioSink);
    }

    public b(Handler handler, x xVar, AudioProcessor... audioProcessorArr) {
        this(handler, xVar, new DefaultAudioSink.g().m(audioProcessorArr).j());
    }

    private boolean o0(r rVar) {
        if (!p0(rVar, 2)) {
            return true;
        }
        if (Z(a1.j0(4, rVar.E, rVar.F)) != 2) {
            return false;
        }
        return !MimeTypes.AUDIO_AC3.equals(rVar.f10161o);
    }

    private boolean p0(r rVar, int i11) {
        return j0(a1.j0(i11, rVar.E, rVar.F));
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "FfmpegAudioRenderer";
    }

    @Override // androidx.media3.exoplayer.audio.d0
    protected int k0(r rVar) {
        String str = (String) androidx.media3.common.util.a.e(rVar.f10161o);
        if (!FfmpegLibrary.d() || !y.o(str)) {
            return 0;
        }
        if (!FfmpegLibrary.e(str)) {
            return 1;
        }
        if (p0(rVar, 2) || p0(rVar, 4)) {
            return rVar.N != 0 ? 2 : 4;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.audio.d0
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public FfmpegAudioDecoder T(r rVar, androidx.media3.decoder.b bVar) {
        q0.a("createFfmpegAudioDecoder");
        int i11 = rVar.f10162p;
        if (i11 == -1) {
            i11 = 5760;
        }
        FfmpegAudioDecoder ffmpegAudioDecoder = new FfmpegAudioDecoder(rVar, 16, 16, i11, o0(rVar));
        q0.b();
        return ffmpegAudioDecoder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.audio.d0
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public r Y(FfmpegAudioDecoder ffmpegAudioDecoder) {
        androidx.media3.common.util.a.e(ffmpegAudioDecoder);
        return new r.b().u0(MimeTypes.AUDIO_RAW).R(ffmpegAudioDecoder.y()).v0(ffmpegAudioDecoder.B()).o0(ffmpegAudioDecoder.z()).N();
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.y3
    public int supportsMixedMimeTypeAdaptation() {
        return 8;
    }
}
