package g2;

import androidx.media3.common.e0;

/* JADX INFO: loaded from: classes2.dex */
public final class x extends androidx.media3.exoplayer.source.m {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.common.t f63263f;

    public x(e0 e0Var, androidx.media3.common.t tVar) {
        super(e0Var);
        this.f63263f = tVar;
    }

    @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
    public e0.c o(int i11, e0.c cVar, long j11) {
        super.o(i11, cVar, j11);
        androidx.media3.common.t tVar = this.f63263f;
        cVar.f9953c = tVar;
        androidx.media3.common.t.h hVar = tVar.f10211b;
        cVar.f9952b = hVar != null ? hVar.f10310h : null;
        return cVar;
    }
}
