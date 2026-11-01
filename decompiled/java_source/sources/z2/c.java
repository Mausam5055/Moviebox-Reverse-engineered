package z2;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f79170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f79171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f79172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f79173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final i[] f79174g;

    public c(String str, int i11, int i12, long j11, long j12, i[] iVarArr) {
        super("CHAP");
        this.f79169b = str;
        this.f79170c = i11;
        this.f79171d = i12;
        this.f79172e = j11;
        this.f79173f = j12;
        this.f79174g = iVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f79170c == cVar.f79170c && this.f79171d == cVar.f79171d && this.f79172e == cVar.f79172e && this.f79173f == cVar.f79173f && Objects.equals(this.f79169b, cVar.f79169b) && Arrays.equals(this.f79174g, cVar.f79174g);
    }

    public int hashCode() {
        int i11 = (((((((527 + this.f79170c) * 31) + this.f79171d) * 31) + ((int) this.f79172e)) * 31) + ((int) this.f79173f)) * 31;
        String str = this.f79169b;
        return i11 + (str != null ? str.hashCode() : 0);
    }
}
