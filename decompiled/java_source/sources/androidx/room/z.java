package androidx.room;

import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class z {
    public static final void a(RoomDatabase roomDatabase, c cVar) {
        a0.a(roomDatabase, cVar);
    }

    public static final void b(Set set, Set set2) {
        a0.b(set, set2);
    }

    public static final void c(RoomDatabase roomDatabase, c cVar) {
        a0.c(roomDatabase, cVar);
    }

    public static final Object d(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        return RoomDatabaseKt__RoomDatabase_androidKt.d(roomDatabase, function1, continuation);
    }
}
