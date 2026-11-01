package q;

import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;
import y.i;
import y.l;
import y.n;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends a {
    public f(b bVar, b bVar2, b bVar3, b bVar4) {
        super(bVar, bVar2, bVar3, bVar4);
    }

    @Override // q.a
    public k4 b(long j11, float f11, float f12, float f13, float f14, LayoutDirection layoutDirection) {
        if (f11 + f12 + f13 + f14 == 0.0f) {
            return new k4.b(n.c(j11));
        }
        i iVarC = n.c(j11);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        return new k4.c(l.b(iVarC, y.b.b(layoutDirection == layoutDirection2 ? f11 : f12, 0.0f, 2, null), y.b.b(layoutDirection == layoutDirection2 ? f12 : f11, 0.0f, 2, null), y.b.b(layoutDirection == layoutDirection2 ? f13 : f14, 0.0f, 2, null), y.b.b(layoutDirection == layoutDirection2 ? f14 : f13, 0.0f, 2, null)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.c(f(), fVar.f()) && Intrinsics.c(e(), fVar.e()) && Intrinsics.c(c(), fVar.c()) && Intrinsics.c(d(), fVar.d());
    }

    public int hashCode() {
        return (((((f().hashCode() * 31) + e().hashCode()) * 31) + c().hashCode()) * 31) + d().hashCode();
    }

    public String toString() {
        return "RoundedCornerShape(topStart = " + f() + ", topEnd = " + e() + ", bottomEnd = " + c() + ", bottomStart = " + d() + ')';
    }
}
