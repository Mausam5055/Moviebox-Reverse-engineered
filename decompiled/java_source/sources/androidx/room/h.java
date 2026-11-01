package androidx.room;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends j0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(RoomDatabase database) {
        super(database);
        Intrinsics.h(database, "database");
    }

    protected abstract void j(a4.h hVar, Object obj);

    public final void k(Iterable entities) {
        Intrinsics.h(entities, "entities");
        a4.h hVarB = b();
        try {
            Iterator it = entities.iterator();
            while (it.hasNext()) {
                j(hVarB, it.next());
                hVarB.R();
            }
            h(hVarB);
        } catch (Throwable th2) {
            h(hVarB);
            throw th2;
        }
    }

    public final void l(Object obj) {
        a4.h hVarB = b();
        try {
            j(hVarB, obj);
            hVarB.R();
        } finally {
            h(hVarB);
        }
    }

    public final long m(Object obj) {
        a4.h hVarB = b();
        try {
            j(hVarB, obj);
            return hVarB.R();
        } finally {
            h(hVarB);
        }
    }
}
