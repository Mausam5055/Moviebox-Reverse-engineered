package androidx.media3.exoplayer.audio;

import androidx.media3.common.PlaybackException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes2.dex */
public class x0 implements DefaultAudioSink.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f11245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f11246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final int f11247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f11248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final int f11249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11251h;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f11252a = 250000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f11253b = 750000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f11254c = 4;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f11255d = 250000;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f11256e = 50000000;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f11257f = 2;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f11258g = 4;

        public x0 h() {
            return new x0(this);
        }
    }

    protected x0(a aVar) {
        this.f11245b = aVar.f11252a;
        this.f11246c = aVar.f11253b;
        this.f11247d = aVar.f11254c;
        this.f11248e = aVar.f11255d;
        this.f11249f = aVar.f11256e;
        this.f11250g = aVar.f11257f;
        this.f11251h = aVar.f11258g;
    }

    protected static int b(int i11, int i12, int i13) {
        return Ints.d(((((long) i11) * ((long) i12)) * ((long) i13)) / 1000000);
    }

    protected static int d(int i11) {
        if (i11 == 20) {
            return 63750;
        }
        if (i11 == 30) {
            return 2250000;
        }
        switch (i11) {
            case 5:
                return 80000;
            case 6:
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
            default:
                switch (i11) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return RecorderConstants.RECORD_ENCODING_BITRATE_256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.e
    public int a(int i11, int i12, int i13, int i14, int i15, int i16, double d11) {
        return (((Math.max(i11, (int) (((double) c(i11, i12, i13, i14, i15, i16)) * d11)) + i14) - 1) / i14) * i14;
    }

    protected int c(int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i13 == 0) {
            return g(i11, i15, i14);
        }
        if (i13 == 1) {
            return e(i12);
        }
        if (i13 == 2) {
            return f(i12, i16);
        }
        throw new IllegalArgumentException();
    }

    protected int e(int i11) {
        return Ints.d((((long) this.f11249f) * ((long) d(i11))) / 1000000);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013  */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    protected int f(int i11, int i12) {
        int i13;
        int iD;
        int i14 = this.f11248e;
        if (i11 != 5) {
            if (i11 == 8) {
                i13 = this.f11251h;
            }
            if (i12 != -1) {
                iD = com.google.common.math.d.c(i12, 8, RoundingMode.CEILING);
            } else {
                iD = d(i11);
            }
            return Ints.d((((long) i14) * ((long) iD)) / 1000000);
        }
        i13 = this.f11250g;
        i14 *= i13;
        if (i12 != -1) {
            iD = com.google.common.math.d.c(i12, 8, RoundingMode.CEILING);
        } else {
            iD = d(i11);
        }
        return Ints.d((((long) i14) * ((long) iD)) / 1000000);
    }

    protected int g(int i11, int i12, int i13) {
        return androidx.media3.common.util.a1.p(i11 * this.f11247d, b(this.f11245b, i12, i13), b(this.f11246c, i12, i13));
    }
}
