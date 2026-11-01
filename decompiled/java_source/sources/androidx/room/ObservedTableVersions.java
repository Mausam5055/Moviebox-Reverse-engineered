package androidx.room;

import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes2.dex */
public final class ObservedTableVersions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y0 f14488a;

    public ObservedTableVersions(int i11) {
        this.f14488a = j1.a(new int[i11]);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) throws Throwable {
        ObservedTableVersions$collect$1 observedTableVersions$collect$1;
        if (continuation instanceof ObservedTableVersions$collect$1) {
            observedTableVersions$collect$1 = (ObservedTableVersions$collect$1) continuation;
            int i11 = observedTableVersions$collect$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                observedTableVersions$collect$1.label = i11 - Integer.MIN_VALUE;
            } else {
                observedTableVersions$collect$1 = new ObservedTableVersions$collect$1(this, continuation);
            }
        } else {
            observedTableVersions$collect$1 = new ObservedTableVersions$collect$1(this, continuation);
        }
        Object obj = observedTableVersions$collect$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = observedTableVersions$collect$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            y0 y0Var = this.f14488a;
            observedTableVersions$collect$1.label = 1;
            if (y0Var.a(cVar, observedTableVersions$collect$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(Set tableIds) {
        Object value;
        int[] iArr;
        Intrinsics.h(tableIds, "tableIds");
        if (tableIds.isEmpty()) {
            return;
        }
        y0 y0Var = this.f14488a;
        do {
            value = y0Var.getValue();
            int[] iArr2 = (int[]) value;
            int length = iArr2.length;
            iArr = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11] = tableIds.contains(Integer.valueOf(i11)) ? iArr2[i11] + 1 : iArr2[i11];
            }
        } while (!y0Var.e(value, iArr));
    }
}
