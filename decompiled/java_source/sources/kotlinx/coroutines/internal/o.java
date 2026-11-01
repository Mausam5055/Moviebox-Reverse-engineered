package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.a2;

/* JADX INFO: loaded from: classes7.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f67880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a2 f67881b;

    static {
        o oVar = new o();
        f67880a = oVar;
        a0.f("kotlinx.coroutines.fast.service.loader", true);
        f67881b = oVar.a();
    }

    private o() {
    }

    private final a2 a() {
        Object next;
        a2 a2VarE;
        try {
            List listD = SequencesKt.D(SequencesKt.e(ServiceLoader.load(n.class, n.class.getClassLoader()).iterator()));
            Iterator it = listD.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iC = ((n) next).c();
                    do {
                        Object next2 = it.next();
                        int iC2 = ((n) next2).c();
                        if (iC < iC2) {
                            next = next2;
                            iC = iC2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            n nVar = (n) next;
            if (nVar != null && (a2VarE = p.e(nVar, listD)) != null) {
                return a2VarE;
            }
            p.b(null, null, 3, null);
            return null;
        } catch (Throwable th2) {
            p.b(th2, null, 2, null);
            return null;
        }
    }
}
