package androidx.p009lifecycle;

import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import p1.a;

/* JADX INFO: loaded from: classes.dex */
public final class ViewModelLazy implements Lazy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KClass f9568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f9569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function0 f9570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0 f9571d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t0 f9572e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(KClass viewModelClass, Function0 storeProducer, Function0 factoryProducer) {
        this(viewModelClass, storeProducer, factoryProducer, null, 8, null);
        Intrinsics.h(viewModelClass, "viewModelClass");
        Intrinsics.h(storeProducer, "storeProducer");
        Intrinsics.h(factoryProducer, "factoryProducer");
    }

    public ViewModelLazy(KClass viewModelClass, Function0 storeProducer, Function0 factoryProducer, Function0 extrasProducer) {
        Intrinsics.h(viewModelClass, "viewModelClass");
        Intrinsics.h(storeProducer, "storeProducer");
        Intrinsics.h(factoryProducer, "factoryProducer");
        Intrinsics.h(extrasProducer, "extrasProducer");
        this.f9568a = viewModelClass;
        this.f9569b = storeProducer;
        this.f9570c = factoryProducer;
        this.f9571d = extrasProducer;
    }

    public /* synthetic */ ViewModelLazy(KClass kClass, Function0 function0, Function0 function1, Function0 function2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, function0, function1, (i11 & 8) != 0 ? new Function0<a.C0880a>() { // from class: androidx.lifecycle.ViewModelLazy.1
            @Override // kotlin.jvm.functions.Function0
            public final a.C0880a invoke() {
                return a.C0880a.f72270b;
            }
        } : function2);
    }

    @Override // kotlin.Lazy
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public t0 getValue() {
        t0 t0Var = this.f9572e;
        if (t0Var != null) {
            return t0Var;
        }
        t0 t0VarC = v0.f9649b.a((x0) this.f9569b.invoke(), (v0.c) this.f9570c.invoke(), (a) this.f9571d.invoke()).c(this.f9568a);
        this.f9572e = t0VarC;
        return t0VarC;
    }

    @Override // kotlin.Lazy
    public boolean isInitialized() {
        return this.f9572e != null;
    }
}
