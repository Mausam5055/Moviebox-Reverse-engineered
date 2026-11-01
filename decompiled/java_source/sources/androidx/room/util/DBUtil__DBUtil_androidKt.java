package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.k0;
import androidx.room.z;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class DBUtil__DBUtil_androidKt {
    public static final void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        b.b(new androidx.room.driver.a(db2));
    }

    public static final Object b(RoomDatabase roomDatabase, boolean z10, Continuation continuation) {
        ContinuationInterceptor continuationInterceptorC;
        CoroutineContext coroutineContextPlus;
        if (!roomDatabase.K()) {
            return roomDatabase.x().getCoroutineContext();
        }
        k0 k0Var = (k0) continuation.getContext().get(k0.f14706c);
        if (k0Var == null || (continuationInterceptorC = k0Var.c()) == null || (coroutineContextPlus = roomDatabase.A().plus(continuationInterceptorC)) == null) {
            return z10 ? roomDatabase.H() : roomDatabase.A();
        }
        return coroutineContextPlus;
    }

    public static final Object c(RoomDatabase db2, boolean z10, boolean z11, Function1 block) {
        Intrinsics.h(db2, "db");
        Intrinsics.h(block, "block");
        db2.i();
        db2.j();
        return RunBlockingUninterruptible_androidKt.a(new DBUtil__DBUtil_androidKt$performBlocking$1(db2, z11, z10, block, null));
    }

    public static final Object d(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        return roomDatabase.K() ? z.d(roomDatabase, new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2(roomDatabase, function1, null), continuation) : kotlinx.coroutines.i.g(roomDatabase.x().getCoroutineContext(), new DBUtil__DBUtil_androidKt$performInTransactionSuspending$3(roomDatabase, function1, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public static final Object e(RoomDatabase roomDatabase, boolean z10, boolean z11, Function1 function1, Continuation continuation) throws Throwable {
        DBUtil__DBUtil_androidKt$performSuspending$1 dBUtil__DBUtil_androidKt$performSuspending$1;
        Function1 function2;
        boolean z12;
        RoomDatabase roomDatabase2;
        boolean z13;
        if (continuation instanceof DBUtil__DBUtil_androidKt$performSuspending$1) {
            dBUtil__DBUtil_androidKt$performSuspending$1 = (DBUtil__DBUtil_androidKt$performSuspending$1) continuation;
            int i11 = dBUtil__DBUtil_androidKt$performSuspending$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dBUtil__DBUtil_androidKt$performSuspending$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dBUtil__DBUtil_androidKt$performSuspending$1 = new DBUtil__DBUtil_androidKt$performSuspending$1(continuation);
            }
        } else {
            dBUtil__DBUtil_androidKt$performSuspending$1 = new DBUtil__DBUtil_androidKt$performSuspending$1(continuation);
        }
        DBUtil__DBUtil_androidKt$performSuspending$1 dBUtil__DBUtil_androidKt$performSuspending$2 = dBUtil__DBUtil_androidKt$performSuspending$1;
        Object objF0 = dBUtil__DBUtil_androidKt$performSuspending$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dBUtil__DBUtil_androidKt$performSuspending$2.label;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    boolean z14 = dBUtil__DBUtil_androidKt$performSuspending$2.Z$1;
                    boolean z15 = dBUtil__DBUtil_androidKt$performSuspending$2.Z$0;
                    Function1 function3 = (Function1) dBUtil__DBUtil_androidKt$performSuspending$2.L$1;
                    RoomDatabase roomDatabase3 = (RoomDatabase) dBUtil__DBUtil_androidKt$performSuspending$2.L$0;
                    ResultKt.b(objF0);
                    z12 = z14;
                    z13 = z15;
                    function2 = function3;
                    roomDatabase2 = roomDatabase3;
                    DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(null, roomDatabase2, z13, z12, function2);
                    dBUtil__DBUtil_androidKt$performSuspending$2.L$0 = null;
                    dBUtil__DBUtil_androidKt$performSuspending$2.L$1 = null;
                    dBUtil__DBUtil_androidKt$performSuspending$2.label = 3;
                    objF0 = kotlinx.coroutines.i.g((CoroutineContext) objF0, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1, dBUtil__DBUtil_androidKt$performSuspending$2);
                    if (objF0 == objF) {
                        return objF;
                    }
                } else if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            ResultKt.b(objF0);
        } else {
            ResultKt.b(objF0);
            if (roomDatabase.K() && roomDatabase.T() && roomDatabase.L()) {
                DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(z11, z10, roomDatabase, null, function1);
                dBUtil__DBUtil_androidKt$performSuspending$2.label = 1;
                objF0 = roomDatabase.f0(z10, dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1, dBUtil__DBUtil_androidKt$performSuspending$2);
                if (objF0 == objF) {
                    return objF;
                }
            } else {
                dBUtil__DBUtil_androidKt$performSuspending$2.L$0 = roomDatabase;
                dBUtil__DBUtil_androidKt$performSuspending$2.L$1 = function1;
                dBUtil__DBUtil_androidKt$performSuspending$2.Z$0 = z10;
                dBUtil__DBUtil_androidKt$performSuspending$2.Z$1 = z11;
                dBUtil__DBUtil_androidKt$performSuspending$2.label = 2;
                Object objC = b.c(roomDatabase, z11, dBUtil__DBUtil_androidKt$performSuspending$2);
                if (objC == objF) {
                    return objF;
                }
                function2 = function1;
                z12 = z11;
                objF0 = objC;
                roomDatabase2 = roomDatabase;
                z13 = z10;
                DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$2 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(null, roomDatabase2, z13, z12, function2);
                dBUtil__DBUtil_androidKt$performSuspending$2.L$0 = null;
                dBUtil__DBUtil_androidKt$performSuspending$2.L$1 = null;
                dBUtil__DBUtil_androidKt$performSuspending$2.label = 3;
                objF0 = kotlinx.coroutines.i.g((CoroutineContext) objF0, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$2, dBUtil__DBUtil_androidKt$performSuspending$2);
                if (objF0 == objF) {
                    return objF;
                }
            }
        }
        return objF0;
    }

    public static final Cursor f(RoomDatabase db2, a4.g sqLiteQuery, boolean z10, CancellationSignal cancellationSignal) {
        Intrinsics.h(db2, "db");
        Intrinsics.h(sqLiteQuery, "sqLiteQuery");
        Cursor cursorW = db2.W(sqLiteQuery, cancellationSignal);
        if (!z10 || !(cursorW instanceof AbstractWindowedCursor)) {
            return cursorW;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) cursorW;
        int count = abstractWindowedCursor.getCount();
        return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? a.a(cursorW) : cursorW;
    }

    public static final int g(File databaseFile) {
        Intrinsics.h(databaseFile, "databaseFile");
        FileChannel channel = new FileInputStream(databaseFile).getChannel();
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i11 = byteBufferAllocate.getInt();
            CloseableKt.a(channel, null);
            return i11;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(channel, th2);
                throw th3;
            }
        }
    }
}
