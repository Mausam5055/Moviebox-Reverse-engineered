package androidx.media3.exoplayer.audio;

import android.media.AudioAttributes;
import android.media.AudioTrack;

/* JADX INFO: loaded from: classes2.dex */
public class z0 implements DefaultAudioSink.f {
    private AudioTrack b(AudioSink.a aVar, androidx.media3.common.c cVar, int i11) {
        return new AudioTrack(e(cVar, aVar.f11004d), androidx.media3.common.util.a1.L(aVar.f11002b, aVar.f11003c, aVar.f11001a), aVar.f11006f, 1, i11);
    }

    private AudioTrack c(AudioSink.a aVar, androidx.media3.common.c cVar, int i11) {
        AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(e(cVar, aVar.f11004d)).setAudioFormat(androidx.media3.common.util.a1.L(aVar.f11002b, aVar.f11003c, aVar.f11001a)).setTransferMode(1).setBufferSizeInBytes(aVar.f11006f).setSessionId(i11);
        if (androidx.media3.common.util.a1.f10350a >= 29) {
            g(sessionId, aVar.f11005e);
        }
        return d(sessionId).build();
    }

    private AudioAttributes e(androidx.media3.common.c cVar, boolean z10) {
        return z10 ? f() : cVar.a().f9919a;
    }

    private AudioAttributes f() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    private void g(AudioTrack.Builder builder, boolean z10) {
        builder.setOffloadedPlayback(z10);
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.f
    public final AudioTrack a(AudioSink.a aVar, androidx.media3.common.c cVar, int i11) {
        return androidx.media3.common.util.a1.f10350a >= 23 ? c(aVar, cVar, i11) : b(aVar, cVar, i11);
    }

    protected AudioTrack.Builder d(AudioTrack.Builder builder) {
        return builder;
    }
}
