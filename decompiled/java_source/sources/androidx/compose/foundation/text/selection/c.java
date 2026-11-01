package androidx.compose.foundation.text.selection;

import y.g;
import y.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i f3344a = new i(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final boolean a(i iVar, long j11) {
        float f11 = iVar.f();
        float fG = iVar.g();
        float fM = g.m(j11);
        if (f11 <= fM && fM <= fG) {
            float fI = iVar.i();
            float fC = iVar.c();
            float fN = g.n(j11);
            if (fI <= fN && fN <= fC) {
                return true;
            }
        }
        return false;
    }
}
