package a2;

import android.net.Uri;
import androidx.media3.common.util.r0;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f91a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f92b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f93c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94d;

    public i(String str, long j11, long j12) {
        this.f93c = str == null ? "" : str;
        this.f91a = j11;
        this.f92b = j12;
    }

    public i a(i iVar, String str) {
        String strC = c(str);
        if (iVar != null && strC.equals(iVar.c(str))) {
            long j11 = this.f92b;
            if (j11 != -1) {
                long j12 = this.f91a;
                if (j12 + j11 == iVar.f91a) {
                    long j13 = iVar.f92b;
                    return new i(strC, j12, j13 != -1 ? j11 + j13 : -1L);
                }
            }
            long j14 = iVar.f92b;
            if (j14 != -1) {
                long j15 = iVar.f91a;
                if (j15 + j14 == this.f91a) {
                    return new i(strC, j15, j11 != -1 ? j14 + j11 : -1L);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return r0.f(str, this.f93c);
    }

    public String c(String str) {
        return r0.e(str, this.f93c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f91a == iVar.f91a && this.f92b == iVar.f92b && this.f93c.equals(iVar.f93c);
    }

    public int hashCode() {
        if (this.f94d == 0) {
            this.f94d = ((((527 + ((int) this.f91a)) * 31) + ((int) this.f92b)) * 31) + this.f93c.hashCode();
        }
        return this.f94d;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.f93c + ", start=" + this.f91a + ", length=" + this.f92b + ")";
    }
}
