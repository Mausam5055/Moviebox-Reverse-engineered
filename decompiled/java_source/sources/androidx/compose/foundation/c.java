package androidx.compose.foundation;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.x0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e4 f2616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m1 f2617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z.a f2618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Path f2619d;

    public c() {
        this(null, null, null, null, 15, null);
    }

    public c(e4 e4Var, m1 m1Var, z.a aVar, Path path) {
        this.f2616a = e4Var;
        this.f2617b = m1Var;
        this.f2618c = aVar;
        this.f2619d = path;
    }

    public /* synthetic */ c(e4 e4Var, m1 m1Var, z.a aVar, Path path, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : e4Var, (i11 & 2) != 0 ? null : m1Var, (i11 & 4) != 0 ? null : aVar, (i11 & 8) != 0 ? null : path);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f2616a, cVar.f2616a) && Intrinsics.c(this.f2617b, cVar.f2617b) && Intrinsics.c(this.f2618c, cVar.f2618c) && Intrinsics.c(this.f2619d, cVar.f2619d);
    }

    public final Path g() {
        Path path = this.f2619d;
        if (path != null) {
            return path;
        }
        Path pathA = x0.a();
        this.f2619d = pathA;
        return pathA;
    }

    public int hashCode() {
        e4 e4Var = this.f2616a;
        int iHashCode = (e4Var == null ? 0 : e4Var.hashCode()) * 31;
        m1 m1Var = this.f2617b;
        int iHashCode2 = (iHashCode + (m1Var == null ? 0 : m1Var.hashCode())) * 31;
        z.a aVar = this.f2618c;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        Path path = this.f2619d;
        return iHashCode3 + (path != null ? path.hashCode() : 0);
    }

    public String toString() {
        return "BorderCache(imageBitmap=" + this.f2616a + ", canvas=" + this.f2617b + ", canvasDrawScope=" + this.f2618c + ", borderPath=" + this.f2619d + ')';
    }
}
