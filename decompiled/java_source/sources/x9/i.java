package x9;

import android.net.Uri;
import com.google.android.exoplayer2.util.n0;

/* JADX INFO: loaded from: classes4.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f78106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f78107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f78108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78109d;

    public i(String str, long j11, long j12) {
        this.f78108c = str == null ? "" : str;
        this.f78106a = j11;
        this.f78107b = j12;
    }

    public i a(i iVar, String str) {
        String strC = c(str);
        if (iVar != null && strC.equals(iVar.c(str))) {
            long j11 = this.f78107b;
            if (j11 != -1) {
                long j12 = this.f78106a;
                if (j12 + j11 == iVar.f78106a) {
                    long j13 = iVar.f78107b;
                    return new i(strC, j12, j13 != -1 ? j11 + j13 : -1L);
                }
            }
            long j14 = iVar.f78107b;
            if (j14 != -1) {
                long j15 = iVar.f78106a;
                if (j15 + j14 == this.f78106a) {
                    return new i(strC, j15, j11 != -1 ? j14 + j11 : -1L);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return n0.e(str, this.f78108c);
    }

    public String c(String str) {
        return n0.d(str, this.f78108c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f78106a == iVar.f78106a && this.f78107b == iVar.f78107b && this.f78108c.equals(iVar.f78108c);
    }

    public int hashCode() {
        if (this.f78109d == 0) {
            this.f78109d = ((((527 + ((int) this.f78106a)) * 31) + ((int) this.f78107b)) * 31) + this.f78108c.hashCode();
        }
        return this.f78109d;
    }

    public String toString() {
        String str = this.f78108c;
        long j11 = this.f78106a;
        long j12 = this.f78107b;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 81);
        sb2.append("RangedUri(referenceUri=");
        sb2.append(str);
        sb2.append(", start=");
        sb2.append(j11);
        sb2.append(", length=");
        sb2.append(j12);
        sb2.append(")");
        return sb2.toString();
    }
}
