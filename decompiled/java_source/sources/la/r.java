package la;

import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f68800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a3[] f68801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.exoplayer2.trackselection.h[] f68802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p3 f68803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f68804e;

    public r(a3[] a3VarArr, com.google.android.exoplayer2.trackselection.h[] hVarArr, p3 p3Var, Object obj) {
        this.f68801b = a3VarArr;
        this.f68802c = (com.google.android.exoplayer2.trackselection.h[]) hVarArr.clone();
        this.f68803d = p3Var;
        this.f68804e = obj;
        this.f68800a = a3VarArr.length;
    }

    public boolean a(r rVar) {
        if (rVar == null || rVar.f68802c.length != this.f68802c.length) {
            return false;
        }
        for (int i11 = 0; i11 < this.f68802c.length; i11++) {
            if (!b(rVar, i11)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(r rVar, int i11) {
        return rVar != null && p0.c(this.f68801b[i11], rVar.f68801b[i11]) && p0.c(this.f68802c[i11], rVar.f68802c[i11]);
    }

    public boolean c(int i11) {
        return this.f68801b[i11] != null;
    }
}
