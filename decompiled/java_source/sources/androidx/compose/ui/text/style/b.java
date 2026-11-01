package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.y4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class b implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y4 f6359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f6360c;

    public b(y4 y4Var, float f11) {
        this.f6359b = y4Var;
        this.f6360c = f11;
    }

    @Override // androidx.compose.ui.text.style.l
    public long a() {
        return u1.f4658b.e();
    }

    @Override // androidx.compose.ui.text.style.l
    public /* synthetic */ l b(Function0 function0) {
        return TextForegroundStyle$CC.b(this, function0);
    }

    @Override // androidx.compose.ui.text.style.l
    public /* synthetic */ l c(l lVar) {
        return TextForegroundStyle$CC.a(this, lVar);
    }

    @Override // androidx.compose.ui.text.style.l
    public j1 d() {
        return this.f6359b;
    }

    public final y4 e() {
        return this.f6359b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f6359b, bVar.f6359b) && Float.compare(this.f6360c, bVar.f6360c) == 0;
    }

    @Override // androidx.compose.ui.text.style.l
    public float getAlpha() {
        return this.f6360c;
    }

    public int hashCode() {
        return (this.f6359b.hashCode() * 31) + Float.floatToIntBits(this.f6360c);
    }

    public String toString() {
        return "BrushStyle(value=" + this.f6359b + ", alpha=" + this.f6360c + ')';
    }
}
