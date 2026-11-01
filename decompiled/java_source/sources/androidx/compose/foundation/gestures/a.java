package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.w;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class a implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2715a = new a();

    private a() {
    }

    @Override // androidx.compose.foundation.gestures.j
    public long a(o0.e eVar, androidx.compose.ui.input.pointer.o oVar, long j11) {
        List listB = oVar.b();
        y.g gVarD = y.g.d(y.g.f78470b.c());
        int size = listB.size();
        for (int i11 = 0; i11 < size; i11++) {
            gVarD = y.g.d(y.g.r(gVarD.v(), ((w) listB.get(i11)).m()));
        }
        return y.g.s(gVarD.v(), -eVar.E0(o0.i.g(64)));
    }
}
