package z2;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f79176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f79177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f79178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i[] f79179f;

    public d(String str, boolean z10, boolean z11, String[] strArr, i[] iVarArr) {
        super("CTOC");
        this.f79175b = str;
        this.f79176c = z10;
        this.f79177d = z11;
        this.f79178e = strArr;
        this.f79179f = iVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f79176c == dVar.f79176c && this.f79177d == dVar.f79177d && Objects.equals(this.f79175b, dVar.f79175b) && Arrays.equals(this.f79178e, dVar.f79178e) && Arrays.equals(this.f79179f, dVar.f79179f);
    }

    public int hashCode() {
        int i11 = (((527 + (this.f79176c ? 1 : 0)) * 31) + (this.f79177d ? 1 : 0)) * 31;
        String str = this.f79175b;
        return i11 + (str != null ? str.hashCode() : 0);
    }
}
