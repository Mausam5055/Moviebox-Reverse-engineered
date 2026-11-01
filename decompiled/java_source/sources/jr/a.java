package jr;

import com.transsion.share.bean.ShareType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ShareType f66254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66256c;

    public a(ShareType shareType, int i11, String shareName) {
        Intrinsics.h(shareType, "shareType");
        Intrinsics.h(shareName, "shareName");
        this.f66254a = shareType;
        this.f66255b = i11;
        this.f66256c = shareName;
    }

    public final int a() {
        return this.f66255b;
    }

    public final String b() {
        return this.f66256c;
    }

    public final ShareType c() {
        return this.f66254a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f66254a == aVar.f66254a && this.f66255b == aVar.f66255b && Intrinsics.c(this.f66256c, aVar.f66256c);
    }

    public int hashCode() {
        return (((this.f66254a.hashCode() * 31) + this.f66255b) * 31) + this.f66256c.hashCode();
    }

    public String toString() {
        return "ShareData(shareType=" + this.f66254a + ", shareIconId=" + this.f66255b + ", shareName=" + this.f66256c + ")";
    }
}
