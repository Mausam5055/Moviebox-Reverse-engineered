package g9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f63459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f63460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f63461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f63462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f63463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f63464f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f63465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f63466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f63467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f63468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f63469k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Metadata f63470l;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f63471a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f63472b;

        public a(long[] jArr, long[] jArr2) {
            this.f63471a = jArr;
            this.f63472b = jArr2;
        }
    }

    private v(int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j11, a aVar, Metadata metadata) {
        this.f63459a = i11;
        this.f63460b = i12;
        this.f63461c = i13;
        this.f63462d = i14;
        this.f63463e = i15;
        this.f63464f = j(i15);
        this.f63465g = i16;
        this.f63466h = i17;
        this.f63467i = e(i17);
        this.f63468j = j11;
        this.f63469k = aVar;
        this.f63470l = metadata;
    }

    public v(byte[] bArr, int i11) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bArr);
        c0Var.p(i11 * 8);
        this.f63459a = c0Var.h(16);
        this.f63460b = c0Var.h(16);
        this.f63461c = c0Var.h(24);
        this.f63462d = c0Var.h(24);
        int iH = c0Var.h(20);
        this.f63463e = iH;
        this.f63464f = j(iH);
        this.f63465g = c0Var.h(3) + 1;
        int iH2 = c0Var.h(5) + 1;
        this.f63466h = iH2;
        this.f63467i = e(iH2);
        this.f63468j = c0Var.j(36);
        this.f63469k = null;
        this.f63470l = null;
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
        if (i11 != 20) {
            return i11 != 24 ? -1 : 6;
        }
        return 5;
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

    public v a(List list) {
        return new v(this.f63459a, this.f63460b, this.f63461c, this.f63462d, this.f63463e, this.f63465g, this.f63466h, this.f63468j, this.f63469k, h(new Metadata((List<? extends Metadata.Entry>) list)));
    }

    public v b(a aVar) {
        return new v(this.f63459a, this.f63460b, this.f63461c, this.f63462d, this.f63463e, this.f63465g, this.f63466h, this.f63468j, aVar, this.f63470l);
    }

    public v c(List list) {
        return new v(this.f63459a, this.f63460b, this.f63461c, this.f63462d, this.f63463e, this.f63465g, this.f63466h, this.f63468j, this.f63469k, h(h0.c(list)));
    }

    public long d() {
        long j11;
        long j12;
        int i11 = this.f63462d;
        if (i11 > 0) {
            j11 = (((long) i11) + ((long) this.f63461c)) / 2;
            j12 = 1;
        } else {
            int i12 = this.f63459a;
            j11 = ((((i12 != this.f63460b || i12 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i12) * ((long) this.f63465g)) * ((long) this.f63466h)) / 8;
            j12 = 64;
        }
        return j11 + j12;
    }

    public long f() {
        long j11 = this.f63468j;
        return j11 == 0 ? C.TIME_UNSET : (j11 * 1000000) / ((long) this.f63463e);
    }

    public o1 g(byte[] bArr, Metadata metadata) {
        bArr[4] = -128;
        int i11 = this.f63462d;
        if (i11 <= 0) {
            i11 = -1;
        }
        return new o1.b().e0(MimeTypes.AUDIO_FLAC).W(i11).H(this.f63465g).f0(this.f63463e).T(Collections.singletonList(bArr)).X(h(metadata)).E();
    }

    public Metadata h(Metadata metadata) {
        Metadata metadata2 = this.f63470l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }

    public long i(long j11) {
        return p0.r((j11 * ((long) this.f63463e)) / 1000000, 0L, this.f63468j - 1);
    }
}
