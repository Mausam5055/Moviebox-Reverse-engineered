package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f6079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f6080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f6081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x f6082d;

    public a0() {
        this(null, null, null, null, 15, null);
    }

    public a0(x xVar, x xVar2, x xVar3, x xVar4) {
        this.f6079a = xVar;
        this.f6080b = xVar2;
        this.f6081c = xVar3;
        this.f6082d = xVar4;
    }

    public /* synthetic */ a0(x xVar, x xVar2, x xVar3, x xVar4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : xVar, (i11 & 2) != 0 ? null : xVar2, (i11 & 4) != 0 ? null : xVar3, (i11 & 8) != 0 ? null : xVar4);
    }

    public final x a() {
        return this.f6080b;
    }

    public final x b() {
        return this.f6081c;
    }

    public final x c() {
        return this.f6082d;
    }

    public final x d() {
        return this.f6079a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return Intrinsics.c(this.f6079a, a0Var.f6079a) && Intrinsics.c(this.f6080b, a0Var.f6080b) && Intrinsics.c(this.f6081c, a0Var.f6081c) && Intrinsics.c(this.f6082d, a0Var.f6082d);
    }

    public int hashCode() {
        x xVar = this.f6079a;
        int iHashCode = (xVar != null ? xVar.hashCode() : 0) * 31;
        x xVar2 = this.f6080b;
        int iHashCode2 = (iHashCode + (xVar2 != null ? xVar2.hashCode() : 0)) * 31;
        x xVar3 = this.f6081c;
        int iHashCode3 = (iHashCode2 + (xVar3 != null ? xVar3.hashCode() : 0)) * 31;
        x xVar4 = this.f6082d;
        return iHashCode3 + (xVar4 != null ? xVar4.hashCode() : 0);
    }
}
