package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 implements DefaultAudioSink.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f11173b;

    private static final class a {
        public static k a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z10) {
            return !AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes) ? k.f11197d : new k.b().e(true).g(z10).d();
        }
    }

    private static final class b {
        public static k a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z10) {
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            if (playbackOffloadSupport == 0) {
                return k.f11197d;
            }
            return new k.b().e(true).f(androidx.media3.common.util.a1.f10350a > 32 && playbackOffloadSupport == 2).g(z10).d();
        }
    }

    public f0() {
        this(null);
    }

    public f0(Context context) {
        this.f11172a = context;
    }

    private boolean b(Context context) {
        Boolean bool = this.f11173b;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context != null) {
            String parameters = t1.m.c(context).getParameters("offloadVariableRateSupported");
            this.f11173b = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
        } else {
            this.f11173b = Boolean.FALSE;
        }
        return this.f11173b.booleanValue();
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.d
    public k a(androidx.media3.common.r rVar, androidx.media3.common.c cVar) {
        androidx.media3.common.util.a.e(rVar);
        androidx.media3.common.util.a.e(cVar);
        int i11 = androidx.media3.common.util.a1.f10350a;
        if (i11 < 29 || rVar.F == -1) {
            return k.f11197d;
        }
        boolean zB = b(this.f11172a);
        int iF = androidx.media3.common.y.f((String) androidx.media3.common.util.a.e(rVar.f10161o), rVar.f10157k);
        if (iF == 0 || i11 < androidx.media3.common.util.a1.K(iF)) {
            return k.f11197d;
        }
        int iM = androidx.media3.common.util.a1.M(rVar.E);
        if (iM == 0) {
            return k.f11197d;
        }
        try {
            AudioFormat audioFormatL = androidx.media3.common.util.a1.L(rVar.F, iM, iF);
            return i11 >= 31 ? b.a(audioFormatL, cVar.a().f9919a, zB) : a.a(audioFormatL, cVar.a().f9919a, zB);
        } catch (IllegalArgumentException unused) {
            return k.f11197d;
        }
    }
}
