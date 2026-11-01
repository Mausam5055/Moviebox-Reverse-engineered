package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f6452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f6453b;

    public w(v vVar, u uVar) {
        this.f6452a = vVar;
        this.f6453b = uVar;
    }

    public w(boolean z10) {
        this(null, new u(z10));
    }

    public final u a() {
        return this.f6453b;
    }

    public final v b() {
        return this.f6452a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return Intrinsics.c(this.f6453b, wVar.f6453b) && Intrinsics.c(this.f6452a, wVar.f6452a);
    }

    public int hashCode() {
        v vVar = this.f6452a;
        int iHashCode = (vVar != null ? vVar.hashCode() : 0) * 31;
        u uVar = this.f6453b;
        return iHashCode + (uVar != null ? uVar.hashCode() : 0);
    }

    public String toString() {
        return "PlatformTextStyle(spanStyle=" + this.f6452a + ", paragraphSyle=" + this.f6453b + ')';
    }
}
