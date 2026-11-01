package androidx.room.util;

import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.RoomDatabase;
import java.io.File;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final void a(a4.d dVar) {
        DBUtil__DBUtil_androidKt.a(dVar);
    }

    public static final void b(z3.b bVar) {
        c.a(bVar);
    }

    public static final Object c(RoomDatabase roomDatabase, boolean z10, Continuation continuation) {
        return DBUtil__DBUtil_androidKt.b(roomDatabase, z10, continuation);
    }

    public static final Object d(RoomDatabase roomDatabase, boolean z10, boolean z11, Function1 function1) {
        return DBUtil__DBUtil_androidKt.c(roomDatabase, z10, z11, function1);
    }

    public static final Object e(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        return DBUtil__DBUtil_androidKt.d(roomDatabase, function1, continuation);
    }

    public static final Object f(RoomDatabase roomDatabase, boolean z10, boolean z11, Function1 function1, Continuation continuation) {
        return DBUtil__DBUtil_androidKt.e(roomDatabase, z10, z11, function1, continuation);
    }

    public static final Cursor g(RoomDatabase roomDatabase, a4.g gVar, boolean z10, CancellationSignal cancellationSignal) {
        return DBUtil__DBUtil_androidKt.f(roomDatabase, gVar, z10, cancellationSignal);
    }

    public static final int h(File file) {
        return DBUtil__DBUtil_androidKt.g(file);
    }
}
