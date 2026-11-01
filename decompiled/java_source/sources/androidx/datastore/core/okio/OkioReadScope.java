package androidx.datastore.core.okio;

import androidx.datastore.core.p;
import java.io.Closeable;
import java.io.FileNotFoundException;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
public class OkioReadScope implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileSystem f8605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f8606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f8607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f8608d;

    public OkioReadScope(FileSystem fileSystem, Path path, b serializer) {
        Intrinsics.h(fileSystem, "fileSystem");
        Intrinsics.h(path, "path");
        Intrinsics.h(serializer, "serializer");
        this.f8605a = fileSystem;
        this.f8606b = path;
        this.f8607c = serializer;
        this.f8608d = new a(false);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0090 A[Catch: FileNotFoundException -> 0x008a, TryCatch #8 {FileNotFoundException -> 0x008a, blocks: (B:46:0x0090, B:47:0x0094, B:42:0x0086, B:39:0x0081), top: B:82:0x0081, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0094 A[Catch: FileNotFoundException -> 0x008a, TRY_LEAVE, TryCatch #8 {FileNotFoundException -> 0x008a, blocks: (B:46:0x0090, B:47:0x0094, B:42:0x0086, B:39:0x0081), top: B:82:0x0081, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x009f  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:82:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static /* synthetic */ Object j(OkioReadScope okioReadScope, Continuation continuation) throws Throwable {
        OkioReadScope$readData$1 okioReadScope$readData$1;
        OkioReadScope okioReadScope2;
        Closeable closeable;
        Throwable th2;
        BufferedSource bufferedSourceBuffer;
        Throwable th3;
        Closeable closeable2;
        Object objA;
        Throwable th4;
        if (continuation instanceof OkioReadScope$readData$1) {
            okioReadScope$readData$1 = (OkioReadScope$readData$1) continuation;
            int i11 = okioReadScope$readData$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                okioReadScope$readData$1.label = i11 - Integer.MIN_VALUE;
            } else {
                okioReadScope$readData$1 = new OkioReadScope$readData$1(okioReadScope, continuation);
            }
        } else {
            okioReadScope$readData$1 = new OkioReadScope$readData$1(okioReadScope, continuation);
        }
        Object obj = okioReadScope$readData$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = okioReadScope$readData$1.label;
        Throwable th5 = null;
        if (i12 == 0) {
            ResultKt.b(obj);
            okioReadScope.f();
            try {
                BufferedSource bufferedSourceBuffer2 = Okio.buffer(okioReadScope.f8605a.source(okioReadScope.f8606b));
                try {
                    b bVar = okioReadScope.f8607c;
                    okioReadScope$readData$1.L$0 = okioReadScope;
                    okioReadScope$readData$1.L$1 = bufferedSourceBuffer2;
                    okioReadScope$readData$1.label = 1;
                    Object objA2 = bVar.a(bufferedSourceBuffer2, okioReadScope$readData$1);
                    if (objA2 == objF) {
                        return objF;
                    }
                    closeable = bufferedSourceBuffer2;
                    obj = objA2;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th4 = null;
                    if (th4 == null) {
                        throw th4;
                    }
                    Intrinsics.e(obj);
                    return obj;
                } catch (Throwable th6) {
                    okioReadScope2 = okioReadScope;
                    closeable = bufferedSourceBuffer2;
                    th2 = th6;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th4 = th2;
                    obj = null;
                }
            } catch (FileNotFoundException unused) {
                if (okioReadScope.f8605a.exists(okioReadScope.f8606b)) {
                    return okioReadScope.f8607c.c();
                }
                bufferedSourceBuffer = Okio.buffer(okioReadScope.f8605a.source(okioReadScope.f8606b));
                b bVar2 = okioReadScope.f8607c;
                okioReadScope$readData$1.L$0 = bufferedSourceBuffer;
                okioReadScope$readData$1.L$1 = null;
                okioReadScope$readData$1.label = 2;
                objA = bVar2.a(bufferedSourceBuffer, okioReadScope$readData$1);
                if (objA == objF) {
                    return objF;
                }
                obj = objA;
                closeable2 = bufferedSourceBuffer;
                if (closeable2 != null) {
                    closeable2.close();
                }
                if (th5 != null) {
                    throw th5;
                }
                Intrinsics.e(obj);
                return obj;
            }
        } else {
            if (i12 == 1) {
                closeable = (Closeable) okioReadScope$readData$1.L$1;
                okioReadScope2 = (OkioReadScope) okioReadScope$readData$1.L$0;
                try {
                    ResultKt.b(obj);
                    if (closeable != null) {
                        try {
                            closeable.close();
                        } catch (Throwable th7) {
                            th4 = th7;
                        }
                    }
                    th4 = null;
                } catch (Throwable th8) {
                    th2 = th8;
                    if (closeable != null) {
                        try {
                            try {
                                closeable.close();
                            } catch (Throwable th9) {
                                ExceptionsKt.a(th2, th9);
                            }
                        } catch (FileNotFoundException unused2) {
                            okioReadScope = okioReadScope2;
                            if (okioReadScope.f8605a.exists(okioReadScope.f8606b)) {
                                return okioReadScope.f8607c.c();
                            }
                            bufferedSourceBuffer = Okio.buffer(okioReadScope.f8605a.source(okioReadScope.f8606b));
                            try {
                                b bVar3 = okioReadScope.f8607c;
                                okioReadScope$readData$1.L$0 = bufferedSourceBuffer;
                                okioReadScope$readData$1.L$1 = null;
                                okioReadScope$readData$1.label = 2;
                                objA = bVar3.a(bufferedSourceBuffer, okioReadScope$readData$1);
                                if (objA == objF) {
                                    return objF;
                                }
                                obj = objA;
                                closeable2 = bufferedSourceBuffer;
                                if (closeable2 != null) {
                                    closeable2.close();
                                }
                                if (th5 != null) {
                                    throw th5;
                                }
                                Intrinsics.e(obj);
                                return obj;
                            } catch (Throwable th10) {
                                th3 = th10;
                                closeable2 = bufferedSourceBuffer;
                                if (closeable2 != null) {
                                    closeable2.close();
                                }
                                th5 = th3;
                                obj = null;
                            }
                        }
                    }
                    th4 = th2;
                    obj = null;
                }
                if (th4 == null) {
                    throw th4;
                }
                Intrinsics.e(obj);
                return obj;
            }
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeable2 = (Closeable) okioReadScope$readData$1.L$0;
            try {
                ResultKt.b(obj);
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Throwable th11) {
                        th5 = th11;
                    }
                }
            } catch (Throwable th12) {
                th3 = th12;
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Throwable th13) {
                        ExceptionsKt.a(th3, th13);
                    }
                }
                th5 = th3;
                obj = null;
            }
        }
        if (th5 != null) {
            throw th5;
        }
        Intrinsics.e(obj);
        return obj;
    }

    @Override // androidx.datastore.core.p
    public Object c(Continuation continuation) {
        return j(this, continuation);
    }

    @Override // androidx.datastore.core.b
    public void close() {
        this.f8608d.b(true);
    }

    protected final void f() {
        if (this.f8608d.a()) {
            throw new IllegalStateException("This scope has already been closed.");
        }
    }

    protected final FileSystem g() {
        return this.f8605a;
    }

    protected final Path h() {
        return this.f8606b;
    }

    protected final b i() {
        return this.f8607c;
    }
}
