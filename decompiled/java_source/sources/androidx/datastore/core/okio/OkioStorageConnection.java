package androidx.datastore.core.okio;

import androidx.datastore.core.k;
import androidx.datastore.core.t;
import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.g;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
public final class OkioStorageConnection implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileSystem f8617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f8618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f8619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f8620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function0 f8621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f8622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlinx.coroutines.sync.a f8623g;

    public OkioStorageConnection(FileSystem fileSystem, Path path, b serializer, k coordinator, Function0 onClose) {
        Intrinsics.h(fileSystem, "fileSystem");
        Intrinsics.h(path, "path");
        Intrinsics.h(serializer, "serializer");
        Intrinsics.h(coordinator, "coordinator");
        Intrinsics.h(onClose, "onClose");
        this.f8617a = fileSystem;
        this.f8618b = path;
        this.f8619c = serializer;
        this.f8620d = coordinator;
        this.f8621e = onClose;
        this.f8622f = new a(false);
        this.f8623g = g.b(false, 1, null);
    }

    private final void f() {
        if (this.f8622f.a()) {
            throw new IllegalStateException("StorageConnection has already been disposed.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00cf A[Catch: all -> 0x00df, IOException -> 0x00e2, TRY_ENTER, TryCatch #2 {IOException -> 0x00e2, blocks: (B:37:0x00cf, B:39:0x00d7, B:48:0x00ef, B:55:0x00fe, B:54:0x00fb), top: B:72:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7 A[Catch: all -> 0x00df, IOException -> 0x00e2, TRY_LEAVE, TryCatch #2 {IOException -> 0x00e2, blocks: (B:37:0x00cf, B:39:0x00d7, B:48:0x00ef, B:55:0x00fe, B:54:0x00fb), top: B:72:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ef A[Catch: all -> 0x00df, IOException -> 0x00e2, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x00e2, blocks: (B:37:0x00cf, B:39:0x00d7, B:48:0x00ef, B:55:0x00fe, B:54:0x00fb), top: B:72:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r0v5, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r10v19, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r10v23, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r11v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [okio.Path] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [okio.Path] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, okio.Path] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r5v4, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.datastore.core.okio.OkioStorageConnection, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.datastore.core.t
    public Object b(Function2 function2, Continuation continuation) throws Throwable {
        OkioStorageConnection$writeScope$1 okioStorageConnection$writeScope$1;
        ?? r11;
        ?? r12;
        ?? Resolve;
        Path pathParent;
        OkioWriteScope okioWriteScope;
        Throwable th2;
        androidx.datastore.core.b bVar;
        ?? r13;
        ?? r14;
        ?? r15;
        if (continuation instanceof OkioStorageConnection$writeScope$1) {
            okioStorageConnection$writeScope$1 = (OkioStorageConnection$writeScope$1) continuation;
            int i11 = okioStorageConnection$writeScope$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                okioStorageConnection$writeScope$1.label = i11 - Integer.MIN_VALUE;
            } else {
                okioStorageConnection$writeScope$1 = new OkioStorageConnection$writeScope$1(this, continuation);
            }
        } else {
            okioStorageConnection$writeScope$1 = new OkioStorageConnection$writeScope$1(this, continuation);
        }
        Object obj = okioStorageConnection$writeScope$1.result;
        Object objF = IntrinsicsKt.f();
        ?? r16 = okioStorageConnection$writeScope$1.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (r16 == 0) {
                                ResultKt.b(obj);
                                f();
                                pathParent = this.f8618b.parent();
                                if (pathParent == null) {
                                    throw new IllegalStateException("must have a parent path");
                                }
                                this.f8617a.createDirectories(pathParent, false);
                                kotlinx.coroutines.sync.a aVar = this.f8623g;
                                okioStorageConnection$writeScope$1.L$0 = this;
                                okioStorageConnection$writeScope$1.L$1 = function2;
                                okioStorageConnection$writeScope$1.L$2 = pathParent;
                                okioStorageConnection$writeScope$1.L$3 = aVar;
                                okioStorageConnection$writeScope$1.label = 1;
                                if (aVar.h(null, okioStorageConnection$writeScope$1) == objF) {
                                    return objF;
                                }
                                r12 = this;
                                r11 = aVar;
                            } else {
                                if (r16 != 1) {
                                    if (r16 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    bVar = (androidx.datastore.core.b) okioStorageConnection$writeScope$1.L$3;
                                    Path path = (Path) okioStorageConnection$writeScope$1.L$2;
                                    kotlinx.coroutines.sync.a aVar2 = (kotlinx.coroutines.sync.a) okioStorageConnection$writeScope$1.L$1;
                                    OkioStorageConnection okioStorageConnection = (OkioStorageConnection) okioStorageConnection$writeScope$1.L$0;
                                    try {
                                        ResultKt.b(obj);
                                        r14 = okioStorageConnection;
                                        r13 = path;
                                        r15 = aVar2;
                                        Unit unit = Unit.f67061a;
                                        try {
                                            bVar.close();
                                            th = null;
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                        if (th == null) {
                                            throw th;
                                        }
                                        if (r14.f8617a.exists(r13)) {
                                            r14.f8617a.atomicMove(r13, r14.f8618b);
                                        }
                                        Unit unit2 = Unit.f67061a;
                                        r15.unlock(null);
                                        return Unit.f67061a;
                                    } catch (Throwable th4) {
                                        th2 = th4;
                                        try {
                                            bVar.close();
                                        } catch (Throwable th5) {
                                            ExceptionsKt.a(th2, th5);
                                        }
                                        throw th2;
                                    }
                                }
                                kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) okioStorageConnection$writeScope$1.L$3;
                                pathParent = (Path) okioStorageConnection$writeScope$1.L$2;
                                Function2 function3 = (Function2) okioStorageConnection$writeScope$1.L$1;
                                OkioStorageConnection okioStorageConnection2 = (OkioStorageConnection) okioStorageConnection$writeScope$1.L$0;
                                ResultKt.b(obj);
                                r11 = aVar3;
                                function2 = function3;
                                r12 = okioStorageConnection2;
                            }
                            okioStorageConnection$writeScope$1.L$0 = r12;
                            okioStorageConnection$writeScope$1.L$1 = r11;
                            okioStorageConnection$writeScope$1.L$2 = Resolve;
                            okioStorageConnection$writeScope$1.L$3 = okioWriteScope;
                            okioStorageConnection$writeScope$1.label = 2;
                            if (function2.invoke(okioWriteScope, okioStorageConnection$writeScope$1) == objF) {
                                return objF;
                            }
                            r13 = Resolve;
                            bVar = okioWriteScope;
                            r14 = r12;
                            r15 = r11;
                            Unit unit3 = Unit.f67061a;
                            bVar.close();
                            th = null;
                            if (th == null) {
                                throw th;
                            }
                            if (r14.f8617a.exists(r13)) {
                                r14.f8617a.atomicMove(r13, r14.f8618b);
                            }
                            Unit unit4 = Unit.f67061a;
                            r15.unlock(null);
                            return Unit.f67061a;
                        } catch (Throwable th6) {
                            th2 = th6;
                            bVar = okioWriteScope;
                            bVar.close();
                            throw th2;
                        }
                        r12.f8617a.delete(Resolve, false);
                        okioWriteScope = new OkioWriteScope(r12.f8617a, Resolve, r12.f8619c);
                    } catch (IOException e11) {
                        e = e11;
                        if (r12.f8617a.exists(Resolve)) {
                            try {
                                r12.f8617a.delete(Resolve);
                            } catch (IOException unused) {
                            }
                        }
                        throw e;
                    }
                    Resolve = pathParent.resolve(r12.f8618b.name() + ".tmp");
                } catch (Throwable th7) {
                    th = th7;
                    r11.unlock(null);
                    throw th;
                }
            } catch (IOException e12) {
                e = e12;
                r12 = okioStorageConnection$writeScope$1;
                r11 = r16;
                Resolve = objF;
            }
        } catch (Throwable th8) {
            th = th8;
            r11 = r16;
            r11.unlock(null);
            throw th;
        }
    }

    @Override // androidx.datastore.core.b
    public void close() {
        this.f8622f.b(true);
        this.f8621e.invoke();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0075 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x007d A[Catch: all -> 0x007e, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x007e, blocks: (B:31:0x007d, B:40:0x008e, B:39:0x008b, B:36:0x0086), top: B:54:0x0022, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0096  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.okio.OkioStorageConnection$readScope$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.jvm.functions.Function3] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v9 */
    @Override // androidx.datastore.core.t
    public Object d(Function3 function3, Continuation continuation) throws Throwable {
        ?? okioStorageConnection$readScope$1;
        androidx.datastore.core.b bVar;
        Throwable th2;
        ?? r11;
        ?? r12;
        if (continuation instanceof OkioStorageConnection$readScope$1) {
            OkioStorageConnection$readScope$1 okioStorageConnection$readScope$2 = (OkioStorageConnection$readScope$1) continuation;
            int i11 = okioStorageConnection$readScope$2.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                okioStorageConnection$readScope$2.label = i11 - Integer.MIN_VALUE;
                okioStorageConnection$readScope$1 = okioStorageConnection$readScope$2;
            } else {
                okioStorageConnection$readScope$1 = new OkioStorageConnection$readScope$1(this, continuation);
            }
        } else {
            okioStorageConnection$readScope$1 = new OkioStorageConnection$readScope$1(this, continuation);
        }
        Object obj = okioStorageConnection$readScope$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = okioStorageConnection$readScope$1.label;
        try {
            if (i12 != 0) {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function3 = okioStorageConnection$readScope$1.Z$0;
                bVar = (androidx.datastore.core.b) okioStorageConnection$readScope$1.L$1;
                okioStorageConnection$readScope$1 = (OkioStorageConnection) okioStorageConnection$readScope$1.L$0;
                try {
                    ResultKt.b(obj);
                    r11 = okioStorageConnection$readScope$1;
                    r12 = function3;
                    try {
                        bVar.close();
                        th = null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    if (th == null) {
                        throw th;
                    }
                    if (r12 != 0) {
                        kotlinx.coroutines.sync.a.C0814a.c(r11.f8623g, null, 1, null);
                    }
                    return obj;
                } catch (Throwable th4) {
                    th2 = th4;
                    try {
                        bVar.close();
                    } catch (Throwable th5) {
                        ExceptionsKt.a(th2, th5);
                    }
                    throw th2;
                }
            }
            ResultKt.b(obj);
            f();
            boolean zB = kotlinx.coroutines.sync.a.C0814a.b(this.f8623g, null, 1, null);
            try {
                OkioReadScope okioReadScope = new OkioReadScope(this.f8617a, this.f8618b, this.f8619c);
                try {
                    Boolean boolA = Boxing.a(zB);
                    okioStorageConnection$readScope$1.L$0 = this;
                    okioStorageConnection$readScope$1.L$1 = okioReadScope;
                    okioStorageConnection$readScope$1.Z$0 = zB;
                    okioStorageConnection$readScope$1.label = 1;
                    Object objInvoke = function3.invoke(okioReadScope, boolA, okioStorageConnection$readScope$1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    r11 = this;
                    bVar = okioReadScope;
                    obj = objInvoke;
                    r12 = zB;
                    bVar.close();
                    th = null;
                    if (th == null) {
                        throw th;
                    }
                    if (r12 != 0) {
                        kotlinx.coroutines.sync.a.C0814a.c(r11.f8623g, null, 1, null);
                    }
                    return obj;
                } catch (Throwable th6) {
                    okioStorageConnection$readScope$1 = this;
                    bVar = okioReadScope;
                    th2 = th6;
                    function3 = zB;
                    bVar.close();
                    throw th2;
                }
            } catch (Throwable th7) {
                okioStorageConnection$readScope$1 = this;
                th = th7;
                function3 = zB;
                if (function3 != 0) {
                    kotlinx.coroutines.sync.a.C0814a.c(okioStorageConnection$readScope$1.f8623g, null, 1, null);
                }
                throw th;
            }
        } catch (Throwable th8) {
            th = th8;
            if (function3 != 0) {
                kotlinx.coroutines.sync.a.C0814a.c(okioStorageConnection$readScope$1.f8623g, null, 1, null);
            }
            throw th;
        }
    }

    @Override // androidx.datastore.core.t
    public k e() {
        return this.f8620d;
    }
}
