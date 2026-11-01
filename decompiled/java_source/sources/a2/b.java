package a2;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f42b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f43c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f44d;

    public b(String str, String str2, int i11, int i12) {
        this.f41a = str;
        this.f42b = str2;
        this.f43c = i11;
        this.f44d = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f43c == bVar.f43c && this.f44d == bVar.f44d && Objects.equals(this.f41a, bVar.f41a) && Objects.equals(this.f42b, bVar.f42b);
    }

    public int hashCode() {
        return Objects.hash(this.f41a, this.f42b, Integer.valueOf(this.f43c), Integer.valueOf(this.f44d));
    }
}
