package androidx.datastore.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class DataMigrationInitializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8557a = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:27:0x0071  */
        /* JADX WARN: Code duplicated, block: B:37:0x009a  */
        /* JADX WARN: Code duplicated, block: B:39:0x009d  */
        /* JADX WARN: Code duplicated, block: B:43:0x0083 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:25:0x006b->B:45:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v3, types: [T, java.lang.Throwable] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0088 -> B:25:0x006b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x008b -> B:25:0x006b). Please report as a decompilation issue!!! */
        public final Object c(List list, j jVar, Continuation continuation) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            Ref.ObjectRef objectRef;
            Iterator it;
            Throwable th2;
            Function1 function1;
            if (continuation instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) continuation;
                int i11 = dataMigrationInitializer$Companion$runMigrations$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, continuation);
                }
            } else {
                dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, continuation);
            }
            Object obj = dataMigrationInitializer$Companion$runMigrations$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = dataMigrationInitializer$Companion$runMigrations$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) dataMigrationInitializer$Companion$runMigrations$1.L$1;
                    objectRef = (Ref.ObjectRef) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    try {
                        ResultKt.b(obj);
                    } catch (Throwable th3) {
                        T t11 = objectRef.element;
                        if (t11 == 0) {
                            objectRef.element = th3;
                        } else {
                            Intrinsics.e(t11);
                            ExceptionsKt.a((Throwable) t11, th3);
                        }
                    }
                }
                while (it.hasNext()) {
                    function1 = (Function1) it.next();
                    dataMigrationInitializer$Companion$runMigrations$1.L$0 = objectRef;
                    dataMigrationInitializer$Companion$runMigrations$1.L$1 = it;
                    dataMigrationInitializer$Companion$runMigrations$1.label = 2;
                    if (function1.invoke(dataMigrationInitializer$Companion$runMigrations$1) == objF) {
                        return objF;
                    }
                }
                th2 = (Throwable) objectRef.element;
                if (th2 == null) {
                    return Unit.f67061a;
                }
                throw th2;
            }
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            Function2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(list, arrayList, null);
            dataMigrationInitializer$Companion$runMigrations$1.L$0 = arrayList;
            dataMigrationInitializer$Companion$runMigrations$1.label = 1;
            if (jVar.a(dataMigrationInitializer$Companion$runMigrations$2, dataMigrationInitializer$Companion$runMigrations$1) == objF) {
                return objF;
            }
            list2 = arrayList;
            objectRef = new Ref.ObjectRef();
            it = list2.iterator();
            while (it.hasNext()) {
                function1 = (Function1) it.next();
                dataMigrationInitializer$Companion$runMigrations$1.L$0 = objectRef;
                dataMigrationInitializer$Companion$runMigrations$1.L$1 = it;
                dataMigrationInitializer$Companion$runMigrations$1.label = 2;
                if (function1.invoke(dataMigrationInitializer$Companion$runMigrations$1) == objF) {
                    return objF;
                }
            }
            th2 = (Throwable) objectRef.element;
            if (th2 == null) {
                return Unit.f67061a;
            }
            throw th2;
        }

        public final Function2 b(List migrations) {
            Intrinsics.h(migrations, "migrations");
            return new DataMigrationInitializer$Companion$getInitializer$1(migrations, null);
        }
    }
}
