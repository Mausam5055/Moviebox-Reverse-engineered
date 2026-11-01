package w2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements x.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final r f77551g = new r.b().u0(MimeTypes.APPLICATION_ID3).N();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final r f77552h = new r.b().u0(MimeTypes.APPLICATION_SCTE35).N();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f77553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f77554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f77555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f77556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f77557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f77558f;

    public a(String str, String str2, long j11, long j12, byte[] bArr) {
        this.f77553a = str;
        this.f77554b = str2;
        this.f77555c = j11;
        this.f77556d = j12;
        this.f77557e = bArr;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f77555c == aVar.f77555c && this.f77556d == aVar.f77556d && Objects.equals(this.f77553a, aVar.f77553a) && Objects.equals(this.f77554b, aVar.f77554b) && Arrays.equals(this.f77557e, aVar.f77557e);
    }

    @Override // androidx.media3.common.x.a
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.f77557e;
        }
        return null;
    }

    @Override // androidx.media3.common.x.a
    public r getWrappedMetadataFormat() {
        String str = this.f77553a;
        str.hashCode();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f77552h;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return f77551g;
            default:
                return null;
        }
    }

    public int hashCode() {
        if (this.f77558f == 0) {
            String str = this.f77553a;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f77554b;
            int iHashCode2 = str2 != null ? str2.hashCode() : 0;
            long j11 = this.f77555c;
            int i11 = (((iHashCode + iHashCode2) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f77556d;
            this.f77558f = ((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + Arrays.hashCode(this.f77557e);
        }
        return this.f77558f;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f77553a + ", id=" + this.f77556d + ", durationMs=" + this.f77555c + ", value=" + this.f77554b;
    }
}
