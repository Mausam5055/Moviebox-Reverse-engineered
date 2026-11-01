package in;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f65268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f65269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f65270c;

    public b(boolean z10, String str, int i11) {
        this.f65268a = z10;
        this.f65269b = str;
        this.f65270c = i11;
    }

    public final String a() {
        return this.f65269b;
    }

    public final int b() {
        return this.f65270c;
    }

    public final boolean c() {
        return this.f65268a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f65268a == bVar.f65268a && Intrinsics.c(this.f65269b, bVar.f65269b) && this.f65270c == bVar.f65270c;
    }

    public int hashCode() {
        int iA = e.a(this.f65268a) * 31;
        String str = this.f65269b;
        return ((iA + (str == null ? 0 : str.hashCode())) * 31) + this.f65270c;
    }

    public String toString() {
        return "CommentLikeEvent(result=" + this.f65268a + ", commentId=" + this.f65269b + ", likeCount=" + this.f65270c + ")";
    }
}
