package androidx.datastore.core.okio;

import androidx.datastore.core.w;
import java.io.Closeable;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
public final class OkioWriteScope extends OkioReadScope implements w {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkioWriteScope(FileSystem fileSystem, Path path, b serializer) {
        super(fileSystem, path, serializer);
        Intrinsics.h(fileSystem, "fileSystem");
        Intrinsics.h(path, "path");
        Intrinsics.h(serializer, "serializer");
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.okio.OkioWriteScope$writeData$1, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object, okio.FileHandle] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [okio.FileHandle] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.datastore.core.okio.b] */
    @Override // androidx.datastore.core.w
    public Object a(Object obj, Continuation continuation) throws Throwable {
        ?? okioWriteScope$writeData$1;
        ?? OpenReadWrite;
        Unit unit;
        Throwable th2;
        Closeable closeable;
        ?? r11;
        Throwable th3;
        Unit unit2;
        if (continuation instanceof OkioWriteScope$writeData$1) {
            OkioWriteScope$writeData$1 okioWriteScope$writeData$2 = (OkioWriteScope$writeData$1) continuation;
            int i11 = okioWriteScope$writeData$2.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                okioWriteScope$writeData$2.label = i11 - Integer.MIN_VALUE;
                okioWriteScope$writeData$1 = okioWriteScope$writeData$2;
            } else {
                okioWriteScope$writeData$1 = new OkioWriteScope$writeData$1(this, continuation);
            }
        } else {
            okioWriteScope$writeData$1 = new OkioWriteScope$writeData$1(this, continuation);
        }
        Object obj2 = okioWriteScope$writeData$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = okioWriteScope$writeData$1.label;
        Throwable th4 = null;
        try {
            if (i12 == 0) {
                ResultKt.b(obj2);
                f();
                OpenReadWrite = g().openReadWrite(h());
                try {
                    BufferedSink bufferedSinkBuffer = Okio.buffer(FileHandle.sink$default(OpenReadWrite, 0L, 1, null));
                    try {
                        ?? I = i();
                        okioWriteScope$writeData$1.L$0 = OpenReadWrite;
                        okioWriteScope$writeData$1.L$1 = OpenReadWrite;
                        okioWriteScope$writeData$1.L$2 = bufferedSinkBuffer;
                        okioWriteScope$writeData$1.label = 1;
                        if (I.b(obj, bufferedSinkBuffer, okioWriteScope$writeData$1) == objF) {
                            return objF;
                        }
                        ?? r12 = OpenReadWrite;
                        r11 = r12;
                        closeable = bufferedSinkBuffer;
                        okioWriteScope$writeData$1 = r12;
                    } catch (Throwable th5) {
                        okioWriteScope$writeData$1 = OpenReadWrite;
                        th2 = th5;
                        closeable = bufferedSinkBuffer;
                        if (closeable != null) {
                            closeable.close();
                        }
                        th3 = th2;
                        unit2 = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (OpenReadWrite != 0) {
                        try {
                            OpenReadWrite.close();
                        } catch (Throwable th7) {
                            ExceptionsKt.a(th, th7);
                        }
                    }
                    th4 = th;
                    unit = null;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                closeable = (Closeable) okioWriteScope$writeData$1.L$2;
                FileHandle fileHandle = (FileHandle) okioWriteScope$writeData$1.L$1;
                okioWriteScope$writeData$1 = (Closeable) okioWriteScope$writeData$1.L$0;
                try {
                    ResultKt.b(obj2);
                    okioWriteScope$writeData$1 = okioWriteScope$writeData$1;
                    r11 = fileHandle;
                } catch (Throwable th8) {
                    th2 = th8;
                    if (closeable != null) {
                        try {
                            closeable.close();
                        } catch (Throwable th9) {
                            ExceptionsKt.a(th2, th9);
                        }
                    }
                    th3 = th2;
                    unit2 = null;
                }
            }
            r11.flush();
            unit2 = Unit.f67061a;
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th10) {
                    th3 = th10;
                }
            }
            th3 = null;
            if (th3 != null) {
                throw th3;
            }
            Intrinsics.e(unit2);
            unit = Unit.f67061a;
            if (okioWriteScope$writeData$1 != 0) {
                try {
                    okioWriteScope$writeData$1.close();
                } catch (Throwable th11) {
                    th4 = th11;
                }
            }
            if (th4 != null) {
                throw th4;
            }
            Intrinsics.e(unit);
            return Unit.f67061a;
        } catch (Throwable th12) {
            th = th12;
            OpenReadWrite = okioWriteScope$writeData$1;
        }
    }
}
