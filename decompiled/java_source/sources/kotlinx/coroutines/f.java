package kotlinx.coroutines;

import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f {
    public static final Object a(Collection collection, Continuation continuation) {
        return collection.isEmpty() ? CollectionsKt.l() : new e((r0[]) collection.toArray(new r0[0])).c(continuation);
    }
}
