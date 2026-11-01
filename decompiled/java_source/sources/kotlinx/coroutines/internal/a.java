package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final z f67847a = new z("CLOSED");

    public static final b b(b bVar) {
        while (true) {
            Object objG = bVar.g();
            if (objG == f67847a) {
                return bVar;
            }
            b bVar2 = (b) objG;
            if (bVar2 != null) {
                bVar = bVar2;
            } else if (bVar.m()) {
                return bVar;
            }
        }
    }

    public static final Object c(w wVar, long j11, Function2 function2) {
        while (true) {
            if (wVar.f67887c >= j11 && !wVar.k()) {
                return x.a(wVar);
            }
            Object objG = wVar.g();
            if (objG == f67847a) {
                return x.a(f67847a);
            }
            w wVar2 = (w) ((b) objG);
            if (wVar2 == null) {
                wVar2 = (w) function2.invoke(Long.valueOf(wVar.f67887c + 1), wVar);
                if (wVar.o(wVar2)) {
                    if (wVar.k()) {
                        wVar.n();
                    }
                }
            }
            wVar = wVar2;
        }
    }
}
