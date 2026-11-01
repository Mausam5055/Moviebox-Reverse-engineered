package androidx.room;

import java.util.ArrayList;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/c;", "", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1", f = "InvalidationTracker.kt", l = {233, 233, 237}, m = "invokeSuspend")
final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $resolvedTableNames;
    final /* synthetic */ int[] $tableIds;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1", f = "InvalidationTracker.kt", l = {233}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
                this.label = 1;
                if (triggerBasedInvalidationTracker.x(this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, reason: invalid class name */
    static final class AnonymousClass2 implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f14553a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f14554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.c f14555c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String[] f14556d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int[] f14557e;

        AnonymousClass2(Ref.ObjectRef objectRef, boolean z10, kotlinx.coroutines.flow.c cVar, String[] strArr, int[] iArr) {
            this.f14553a = objectRef;
            this.f14554b = z10;
            this.f14555c = cVar;
            this.f14556d = strArr;
            this.f14557e = iArr;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(int[] iArr, Continuation continuation) throws Throwable {
            TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 triggerBasedInvalidationTracker$createFlow$1$2$emit$1;
            AnonymousClass2 anonymousClass2;
            T t11;
            if (continuation instanceof TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = (TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) continuation;
                int i11 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(this, continuation);
                }
            } else {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(this, continuation);
            }
            Object obj = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
            if (i12 == 0) {
                ResultKt.b(obj);
                Ref.ObjectRef objectRef = this.f14553a;
                if (objectRef.element != 0) {
                    String[] strArr = this.f14556d;
                    int[] iArr2 = this.f14557e;
                    ArrayList arrayList = new ArrayList();
                    int length = strArr.length;
                    int i13 = 0;
                    int i14 = 0;
                    while (i13 < length) {
                        String str = strArr[i13];
                        int i15 = i14 + 1;
                        T t12 = objectRef.element;
                        if (t12 == 0) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        int i16 = iArr2[i14];
                        if (((int[]) t12)[i16] != iArr[i16]) {
                            arrayList.add(str);
                        }
                        i13++;
                        i14 = i15;
                    }
                    if (!arrayList.isEmpty()) {
                        kotlinx.coroutines.flow.c cVar = this.f14555c;
                        Set setW0 = CollectionsKt.W0(arrayList);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = this;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$1 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 2;
                        if (cVar.emit(setW0, triggerBasedInvalidationTracker$createFlow$1$2$emit$1) == objF) {
                            return objF;
                        }
                    }
                } else if (this.f14554b) {
                    kotlinx.coroutines.flow.c cVar2 = this.f14555c;
                    Set setQ0 = ArraysKt.Q0(this.f14556d);
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = this;
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$1 = iArr;
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 1;
                    if (cVar2.emit(setQ0, triggerBasedInvalidationTracker$createFlow$1$2$emit$1) == objF) {
                        return objF;
                    }
                }
                anonymousClass2 = this;
                t11 = iArr;
            } else {
                if (i12 != 1 && i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                int[] iArr3 = (int[]) triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$1;
                anonymousClass2 = (AnonymousClass2) triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0;
                ResultKt.b(obj);
                t11 = iArr3;
            }
            anonymousClass2.f14553a.element = t11;
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, boolean z10, String[] strArr, Continuation<? super TriggerBasedInvalidationTracker$createFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$tableIds = iArr;
        this.$emitInitialState = z10;
        this.$resolvedTableNames = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.this$0, this.$tableIds, this.$emitInitialState, this.$resolvedTableNames, continuation);
        triggerBasedInvalidationTracker$createFlow$1.L$0 = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
        return ((TriggerBasedInvalidationTracker$createFlow$1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0094 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.flow.c cVar;
        kotlinx.coroutines.flow.c cVar2;
        ObservedTableVersions observedTableVersions;
        AnonymousClass2 anonymousClass2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar2;
                    Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    observedTableVersions = this.this$0.f14550i;
                    anonymousClass2 = new AnonymousClass2(objectRef, this.$emitInitialState, cVar, this.$resolvedTableNames, this.$tableIds);
                    this.L$0 = null;
                    this.label = 3;
                    if (observedTableVersions.a(anonymousClass2, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                throw new KotlinNothingValueException();
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.c cVar3 = (kotlinx.coroutines.flow.c) this.L$0;
            if (this.this$0.f14549h.c(this.$tableIds)) {
                RoomDatabase roomDatabase = this.this$0.f14542a;
                this.L$0 = cVar3;
                this.label = 1;
                Object objC = androidx.room.util.b.c(roomDatabase, false, this);
                if (objC == objF) {
                    return objF;
                }
                cVar2 = cVar3;
                obj = objC;
            } else {
                cVar = cVar3;
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            observedTableVersions = this.this$0.f14550i;
            anonymousClass2 = new AnonymousClass2(objectRef2, this.$emitInitialState, cVar, this.$resolvedTableNames, this.$tableIds);
            this.L$0 = null;
            this.label = 3;
            if (observedTableVersions.a(anonymousClass2, this) == objF) {
                return objF;
            }
            throw new KotlinNothingValueException();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.L$0 = cVar2;
            this.label = 2;
            if (kotlinx.coroutines.i.g((CoroutineContext) obj, anonymousClass1, this) == objF) {
                return objF;
            }
            cVar = cVar2;
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            observedTableVersions = this.this$0.f14550i;
            anonymousClass2 = new AnonymousClass2(objectRef3, this.$emitInitialState, cVar, this.$resolvedTableNames, this.$tableIds);
            this.L$0 = null;
            this.label = 3;
            if (observedTableVersions.a(anonymousClass2, this) == objF) {
                return objF;
            }
            throw new KotlinNothingValueException();
        } catch (Throwable th2) {
            this.this$0.f14549h.d(this.$tableIds);
            throw th2;
        }
    }
}
