package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.d0;
import androidx.compose.foundation.lazy.layout.i0;
import androidx.compose.foundation.lazy.layout.x;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class a implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x.b f2941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2942d;

    public a() {
        this(0, 1, null);
    }

    public a(int i11) {
        this.f2939a = i11;
        this.f2940b = -1;
    }

    public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 2 : i11);
    }

    @Override // androidx.compose.foundation.lazy.r
    public void a(d0 d0Var, int i11) {
        int i12 = this.f2939a;
        for (int i13 = 0; i13 < i12; i13++) {
            d0Var.a(i11 + i13);
        }
    }

    @Override // androidx.compose.foundation.lazy.r
    public void b(p pVar, float f11, l lVar) {
        x.b bVar;
        x.b bVar2;
        x.b bVar3;
        if (lVar.h().isEmpty()) {
            return;
        }
        boolean z10 = f11 < 0.0f;
        int index = z10 ? ((j) CollectionsKt.u0(lVar.h())).getIndex() + 1 : ((j) CollectionsKt.i0(lVar.h())).getIndex() - 1;
        if (index < 0 || index >= lVar.d()) {
            return;
        }
        if (index != this.f2940b) {
            if (this.f2942d != z10 && (bVar3 = this.f2941c) != null) {
                bVar3.cancel();
            }
            this.f2942d = z10;
            this.f2940b = index;
            this.f2941c = pVar.a(index);
        }
        if (!z10) {
            if (lVar.g() - ((j) CollectionsKt.i0(lVar.h())).g() >= f11 || (bVar = this.f2941c) == null) {
                return;
            }
            bVar.a();
            return;
        }
        j jVar = (j) CollectionsKt.u0(lVar.h());
        if (((jVar.g() + jVar.getSize()) + lVar.f()) - lVar.c() >= (-f11) || (bVar2 = this.f2941c) == null) {
            return;
        }
        bVar2.a();
    }

    @Override // androidx.compose.foundation.lazy.r
    public /* synthetic */ i0 c() {
        return q.a(this);
    }

    @Override // androidx.compose.foundation.lazy.r
    public void d(p pVar, l lVar) {
        if (this.f2940b == -1 || lVar.h().isEmpty()) {
            return;
        }
        if (this.f2940b != (this.f2942d ? ((j) CollectionsKt.u0(lVar.h())).getIndex() + 1 : ((j) CollectionsKt.i0(lVar.h())).getIndex() - 1)) {
            this.f2940b = -1;
            x.b bVar = this.f2941c;
            if (bVar != null) {
                bVar.cancel();
            }
            this.f2941c = null;
        }
    }
}
