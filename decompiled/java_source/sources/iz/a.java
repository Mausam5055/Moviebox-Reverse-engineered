package iz;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f65665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f65666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f65667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f65668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f65669f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f65670g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f65671h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f65672i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f65673j;

    public a(int i11, String str, String codecName, String str2, int i12, long j11, String str3, int i13, int i14, String str4) {
        Intrinsics.h(codecName, "codecName");
        this.f65664a = i11;
        this.f65665b = str;
        this.f65666c = codecName;
        this.f65667d = str2;
        this.f65668e = i12;
        this.f65669f = j11;
        this.f65670g = str3;
        this.f65671h = i13;
        this.f65672i = i14;
        this.f65673j = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f65664a == aVar.f65664a && Intrinsics.c(this.f65665b, aVar.f65665b) && Intrinsics.c(this.f65666c, aVar.f65666c) && Intrinsics.c(this.f65667d, aVar.f65667d) && this.f65668e == aVar.f65668e && this.f65669f == aVar.f65669f && Intrinsics.c(this.f65670g, aVar.f65670g) && this.f65671h == aVar.f65671h && this.f65672i == aVar.f65672i && Intrinsics.c(this.f65673j, aVar.f65673j);
    }

    public int hashCode() {
        int i11 = this.f65664a * 31;
        String str = this.f65665b;
        int iHashCode = (((i11 + (str == null ? 0 : str.hashCode())) * 31) + this.f65666c.hashCode()) * 31;
        String str2 = this.f65667d;
        int iHashCode2 = (((((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f65668e) * 31) + s.a(this.f65669f)) * 31;
        String str3 = this.f65670g;
        int iHashCode3 = (((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f65671h) * 31) + this.f65672i) * 31;
        String str4 = this.f65673j;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "AudioStream(index=" + this.f65664a + ", title=" + this.f65665b + ", codecName=" + this.f65666c + ", language=" + this.f65667d + ", disposition=" + this.f65668e + ", bitRate=" + this.f65669f + ", sampleFormat=" + this.f65670g + ", sampleRate=" + this.f65671h + ", channels=" + this.f65672i + ", channelLayout=" + this.f65673j + ")";
    }
}
