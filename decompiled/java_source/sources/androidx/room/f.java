package androidx.room;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends j0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(RoomDatabase database) {
        super(database);
        Intrinsics.h(database, "database");
    }

    protected abstract void j(a4.h hVar, Object obj);

    public final int k(Object obj) {
        a4.h hVarB = b();
        try {
            j(hVarB, obj);
            return hVarB.F();
        } finally {
            h(hVarB);
        }
    }

    public final int l(Iterable entities) {
        Intrinsics.h(entities, "entities");
        a4.h hVarB = b();
        try {
            Iterator it = entities.iterator();
            int iF = 0;
            while (it.hasNext()) {
                j(hVarB, it.next());
                iF += hVarB.F();
            }
            h(hVarB);
            return iF;
        } catch (Throwable th2) {
            h(hVarB);
            throw th2;
        }
    }
}
