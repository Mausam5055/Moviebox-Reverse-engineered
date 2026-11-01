package q;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.unit.LayoutDirection;
import y.m;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements a5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f73035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f73036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f73037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f73038d;

    public a(b bVar, b bVar2, b bVar3, b bVar4) {
        this.f73035a = bVar;
        this.f73036b = bVar2;
        this.f73037c = bVar3;
        this.f73038d = bVar4;
    }

    @Override // androidx.compose.ui.graphics.a5
    public final k4 a(long j11, LayoutDirection layoutDirection, o0.e eVar) {
        float fA = this.f73035a.a(j11, eVar);
        float fA2 = this.f73036b.a(j11, eVar);
        float fA3 = this.f73037c.a(j11, eVar);
        float fA4 = this.f73038d.a(j11, eVar);
        float fH = m.h(j11);
        float f11 = fA + fA4;
        if (f11 > fH) {
            float f12 = fH / f11;
            fA *= f12;
            fA4 *= f12;
        }
        float f13 = fA4;
        float f14 = fA2 + fA3;
        if (f14 > fH) {
            float f15 = fH / f14;
            fA2 *= f15;
            fA3 *= f15;
        }
        if (fA >= 0.0f && fA2 >= 0.0f && fA3 >= 0.0f && f13 >= 0.0f) {
            return b(j11, fA, fA2, fA3, f13, layoutDirection);
        }
        throw new IllegalArgumentException(("Corner size in Px can't be negative(topStart = " + fA + ", topEnd = " + fA2 + ", bottomEnd = " + fA3 + ", bottomStart = " + f13 + ")!").toString());
    }

    public abstract k4 b(long j11, float f11, float f12, float f13, float f14, LayoutDirection layoutDirection);

    public final b c() {
        return this.f73037c;
    }

    public final b d() {
        return this.f73038d;
    }

    public final b e() {
        return this.f73036b;
    }

    public final b f() {
        return this.f73035a;
    }
}
