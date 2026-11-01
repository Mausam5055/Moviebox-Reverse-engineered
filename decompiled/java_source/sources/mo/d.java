package mo;

import androidx.compose.foundation.e;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f69669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f69671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f69672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b[] f69673e;

    public d(int i11, String str, int i12, boolean z10, b[] formats) {
        Intrinsics.h(formats, "formats");
        this.f69669a = i11;
        this.f69670b = str;
        this.f69671c = i12;
        this.f69672d = z10;
        this.f69673e = formats;
    }

    public final boolean a() {
        return this.f69672d;
    }

    public final b[] b() {
        return this.f69673e;
    }

    public final String c() {
        return this.f69670b;
    }

    public final int d() {
        return this.f69669a;
    }

    public final int e() {
        return this.f69671c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f69669a == dVar.f69669a && Intrinsics.c(this.f69670b, dVar.f69670b) && this.f69671c == dVar.f69671c && this.f69672d == dVar.f69672d && Intrinsics.c(this.f69673e, dVar.f69673e);
    }

    public int hashCode() {
        int i11 = this.f69669a * 31;
        String str = this.f69670b;
        return ((((((i11 + (str == null ? 0 : str.hashCode())) * 31) + this.f69671c) * 31) + e.a(this.f69672d)) * 31) + Arrays.hashCode(this.f69673e);
    }

    public String toString() {
        return "TnTracksGroup(length=" + this.f69669a + ", id=" + this.f69670b + ", type=" + this.f69671c + ", adaptiveSupported=" + this.f69672d + ", formats=" + Arrays.toString(this.f69673e) + ")";
    }
}
