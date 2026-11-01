package l2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.a1;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f68501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f68502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f68503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f68504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f68505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f68506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f68507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f68508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f68509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f68510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f68511k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.common.x f68512l;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f68513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f68514b;

        public a(long[] jArr, long[] jArr2) {
            this.f68513a = jArr;
            this.f68514b = jArr2;
        }
    }

    private b0(int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j11, a aVar, androidx.media3.common.x xVar) {
        this.f68501a = i11;
        this.f68502b = i12;
        this.f68503c = i13;
        this.f68504d = i14;
        this.f68505e = i15;
        this.f68506f = j(i15);
        this.f68507g = i16;
        this.f68508h = i17;
        this.f68509i = e(i17);
        this.f68510j = j11;
        this.f68511k = aVar;
        this.f68512l = xVar;
    }

    public b0(byte[] bArr, int i11) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(bArr);
        i0Var.p(i11 * 8);
        this.f68501a = i0Var.h(16);
        this.f68502b = i0Var.h(16);
        this.f68503c = i0Var.h(24);
        this.f68504d = i0Var.h(24);
        int iH = i0Var.h(20);
        this.f68505e = iH;
        this.f68506f = j(iH);
        this.f68507g = i0Var.h(3) + 1;
        int iH2 = i0Var.h(5) + 1;
        this.f68508h = iH2;
        this.f68509i = e(iH2);
        this.f68510j = i0Var.j(36);
        this.f68511k = null;
        this.f68512l = null;
    }

    private static int e(int i11) {
        if (i11 == 8) {
            return 1;
        }
        if (i11 == 12) {
            return 2;
        }
        if (i11 == 16) {
            return 4;
        }
        if (i11 == 20) {
            return 5;
        }
        if (i11 != 24) {
            return i11 != 32 ? -1 : 7;
        }
        return 6;
    }

    private static int j(int i11) {
        switch (i11) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case RecorderConstants.RECORD_SAMPLE_RATE_22050 /* 22050 */:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case RecorderConstants.RECORD_SAMPLE_RATE_44100 /* 44100 */:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case RecorderConstants.RECORD_ENCODING_BITRATE_96000 /* 96000 */:
                return 11;
            case 176400:
                return 2;
            case RecorderConstants.RECORD_ENCODING_BITRATE_192000 /* 192000 */:
                return 3;
            default:
                return -1;
        }
    }

    public b0 a(List list) {
        return new b0(this.f68501a, this.f68502b, this.f68503c, this.f68504d, this.f68505e, this.f68507g, this.f68508h, this.f68510j, this.f68511k, h(new androidx.media3.common.x(list)));
    }

    public b0 b(a aVar) {
        return new b0(this.f68501a, this.f68502b, this.f68503c, this.f68504d, this.f68505e, this.f68507g, this.f68508h, this.f68510j, aVar, this.f68512l);
    }

    public b0 c(List list) {
        return new b0(this.f68501a, this.f68502b, this.f68503c, this.f68504d, this.f68505e, this.f68507g, this.f68508h, this.f68510j, this.f68511k, h(v0.d(list)));
    }

    public long d() {
        long j11;
        long j12;
        int i11 = this.f68504d;
        if (i11 > 0) {
            j11 = (((long) i11) + ((long) this.f68503c)) / 2;
            j12 = 1;
        } else {
            int i12 = this.f68501a;
            j11 = ((((i12 != this.f68502b || i12 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i12) * ((long) this.f68507g)) * ((long) this.f68508h)) / 8;
            j12 = 64;
        }
        return j11 + j12;
    }

    public long f() {
        long j11 = this.f68510j;
        return j11 == 0 ? C.TIME_UNSET : (j11 * 1000000) / ((long) this.f68505e);
    }

    public androidx.media3.common.r g(byte[] bArr, androidx.media3.common.x xVar) {
        bArr[4] = -128;
        int i11 = this.f68504d;
        if (i11 <= 0) {
            i11 = -1;
        }
        return new androidx.media3.common.r.b().u0(MimeTypes.AUDIO_FLAC).k0(i11).R(this.f68507g).v0(this.f68505e).o0(a1.i0(this.f68508h)).g0(Collections.singletonList(bArr)).n0(h(xVar)).N();
    }

    public androidx.media3.common.x h(androidx.media3.common.x xVar) {
        androidx.media3.common.x xVar2 = this.f68512l;
        return xVar2 == null ? xVar : xVar2.b(xVar);
    }

    public long i(long j11) {
        return a1.q((j11 * ((long) this.f68505e)) / 1000000, 0L, this.f68510j - 1);
    }
}
