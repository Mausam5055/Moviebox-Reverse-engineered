package com.google.android.exoplayer2.audio;

import androidx.media3.common.PlaybackException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;

/* JADX INFO: loaded from: classes3.dex */
public class x implements DefaultAudioSink.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f24785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f24786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final int f24787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f24788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final int f24789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f24790g;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f24791a = 250000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f24792b = 750000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f24793c = 4;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f24794d = 250000;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f24795e = 50000000;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f24796f = 2;

        public x g() {
            return new x(this);
        }
    }

    protected x(a aVar) {
        this.f24785b = aVar.f24791a;
        this.f24786c = aVar.f24792b;
        this.f24787d = aVar.f24793c;
        this.f24788e = aVar.f24794d;
        this.f24789f = aVar.f24795e;
        this.f24790g = aVar.f24796f;
    }

    protected static int b(int i11, int i12, int i13) {
        return Ints.d(((((long) i11) * ((long) i12)) * ((long) i13)) / 1000000);
    }

    protected static int d(int i11) {
        switch (i11) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return RecorderConstants.RECORD_ENCODING_BITRATE_192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return DefaultOggSeeker.MATCH_BYTE_RANGE;
            case 11:
                return 16000;
            case 12:
                return PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return RecorderConstants.RECORD_ENCODING_BITRATE_256000;
            case 17:
                return 336000;
        }
    }

    @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.c
    public int a(int i11, int i12, int i13, int i14, int i15, double d11) {
        return (((Math.max(i11, (int) (((double) c(i11, i12, i13, i14, i15)) * d11)) + i14) - 1) / i14) * i14;
    }

    protected int c(int i11, int i12, int i13, int i14, int i15) {
        if (i13 == 0) {
            return g(i11, i15, i14);
        }
        if (i13 == 1) {
            return e(i12);
        }
        if (i13 == 2) {
            return f(i12);
        }
        throw new IllegalArgumentException();
    }

    protected int e(int i11) {
        return Ints.d((((long) this.f24789f) * ((long) d(i11))) / 1000000);
    }

    protected int f(int i11) {
        int i12 = this.f24788e;
        if (i11 == 5) {
            i12 *= this.f24790g;
        }
        return Ints.d((((long) i12) * ((long) d(i11))) / 1000000);
    }

    protected int g(int i11, int i12, int i13) {
        return p0.q(i11 * this.f24787d, b(this.f24785b, i12, i13), b(this.f24786c, i12, i13));
    }
}
