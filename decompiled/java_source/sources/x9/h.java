package x9;

import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f78104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f78105e;

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f78101a = str;
        this.f78102b = str2;
        this.f78103c = str3;
        this.f78104d = str4;
        this.f78105e = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return p0.c(this.f78101a, hVar.f78101a) && p0.c(this.f78102b, hVar.f78102b) && p0.c(this.f78103c, hVar.f78103c) && p0.c(this.f78104d, hVar.f78104d) && p0.c(this.f78105e, hVar.f78105e);
    }

    public int hashCode() {
        String str = this.f78101a;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f78102b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f78103c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f78104d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f78105e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
