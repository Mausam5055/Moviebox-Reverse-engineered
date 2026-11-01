package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f6113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f6114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f6117e;

    private d0(h hVar, p pVar, int i11, int i12, Object obj) {
        this.f6113a = hVar;
        this.f6114b = pVar;
        this.f6115c = i11;
        this.f6116d = i12;
        this.f6117e = obj;
    }

    public /* synthetic */ d0(h hVar, p pVar, int i11, int i12, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(hVar, pVar, i11, i12, obj);
    }

    public static /* synthetic */ d0 b(d0 d0Var, h hVar, p pVar, int i11, int i12, Object obj, int i13, Object obj2) {
        if ((i13 & 1) != 0) {
            hVar = d0Var.f6113a;
        }
        if ((i13 & 2) != 0) {
            pVar = d0Var.f6114b;
        }
        p pVar2 = pVar;
        if ((i13 & 4) != 0) {
            i11 = d0Var.f6115c;
        }
        int i14 = i11;
        if ((i13 & 8) != 0) {
            i12 = d0Var.f6116d;
        }
        int i15 = i12;
        if ((i13 & 16) != 0) {
            obj = d0Var.f6117e;
        }
        return d0Var.a(hVar, pVar2, i14, i15, obj);
    }

    public final d0 a(h hVar, p pVar, int i11, int i12, Object obj) {
        return new d0(hVar, pVar, i11, i12, obj, null);
    }

    public final h c() {
        return this.f6113a;
    }

    public final int d() {
        return this.f6115c;
    }

    public final p e() {
        return this.f6114b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return Intrinsics.c(this.f6113a, d0Var.f6113a) && Intrinsics.c(this.f6114b, d0Var.f6114b) && n.f(this.f6115c, d0Var.f6115c) && o.h(this.f6116d, d0Var.f6116d) && Intrinsics.c(this.f6117e, d0Var.f6117e);
    }

    public int hashCode() {
        h hVar = this.f6113a;
        int iHashCode = (((((((hVar == null ? 0 : hVar.hashCode()) * 31) + this.f6114b.hashCode()) * 31) + n.g(this.f6115c)) * 31) + o.i(this.f6116d)) * 31;
        Object obj = this.f6117e;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        return "TypefaceRequest(fontFamily=" + this.f6113a + ", fontWeight=" + this.f6114b + ", fontStyle=" + ((Object) n.h(this.f6115c)) + ", fontSynthesis=" + ((Object) o.j(this.f6116d)) + ", resourceLoaderCacheKey=" + this.f6117e + ')';
    }
}
