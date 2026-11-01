package x9;

import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78090c;

    public e(String str, String str2, String str3) {
        this.f78088a = str;
        this.f78089b = str2;
        this.f78090c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return p0.c(this.f78088a, eVar.f78088a) && p0.c(this.f78089b, eVar.f78089b) && p0.c(this.f78090c, eVar.f78090c);
    }

    public int hashCode() {
        int iHashCode = this.f78088a.hashCode() * 31;
        String str = this.f78089b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f78090c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
