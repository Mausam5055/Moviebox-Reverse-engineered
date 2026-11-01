package kotlinx.coroutines.flow.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE, 73, 76}, m = "invokeSuspend")
final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Object[]> $arrayFactory;
    final /* synthetic */ kotlinx.coroutines.flow.b[] $flows;
    final /* synthetic */ kotlinx.coroutines.flow.c $this_combineInternal;
    final /* synthetic */ Function3<kotlinx.coroutines.flow.c, Object[], Continuation<? super Unit>, Object> $transform;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {28}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.b[] $flows;
        final /* synthetic */ int $i;
        final /* synthetic */ AtomicInteger $nonClosed;
        final /* synthetic */ kotlinx.coroutines.channels.d $resultChannel;
        int label;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
        static final class C08131 implements kotlinx.coroutines.flow.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.channels.d f67797a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f67798b;

            C08131(kotlinx.coroutines.channels.d dVar, int i11) {
                this.f67797a = dVar;
                this.f67798b = i11;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.c
            public final Object emit(Object obj, Continuation continuation) throws Throwable {
                CombineKt$combineInternal$2$1$1$emit$1 combineKt$combineInternal$2$1$1$emit$1;
                if (continuation instanceof CombineKt$combineInternal$2$1$1$emit$1) {
                    combineKt$combineInternal$2$1$1$emit$1 = (CombineKt$combineInternal$2$1$1$emit$1) continuation;
                    int i11 = combineKt$combineInternal$2$1$1$emit$1.label;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        combineKt$combineInternal$2$1$1$emit$1.label = i11 - Integer.MIN_VALUE;
                    } else {
                        combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                    }
                } else {
                    combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                }
                Object obj2 = combineKt$combineInternal$2$1$1$emit$1.result;
                Object objF = IntrinsicsKt.f();
                int i12 = combineKt$combineInternal$2$1$1$emit$1.label;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ResultKt.b(obj2);
                    } else {
                        if (i12 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f67061a;
                }
                ResultKt.b(obj2);
                kotlinx.coroutines.channels.d dVar = this.f67797a;
                IndexedValue indexedValue = new IndexedValue(this.f67798b, obj);
                combineKt$combineInternal$2$1$1$emit$1.label = 1;
                if (dVar.p(indexedValue, combineKt$combineInternal$2$1$1$emit$1) == objF) {
                    return objF;
                }
                combineKt$combineInternal$2$1$1$emit$1.label = 2;
                if (u2.a(combineKt$combineInternal$2$1$1$emit$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(kotlinx.coroutines.flow.b[] bVarArr, int i11, AtomicInteger atomicInteger, kotlinx.coroutines.channels.d dVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$flows = bVarArr;
            this.$i = i11;
            this.$nonClosed = atomicInteger;
            this.$resultChannel = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    kotlinx.coroutines.flow.b[] bVarArr = this.$flows;
                    int i12 = this.$i;
                    kotlinx.coroutines.flow.b bVar = bVarArr[i12];
                    C08131 c08131 = new C08131(this.$resultChannel, i12);
                    this.label = 1;
                    if (bVar.a(c08131, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                if (this.$nonClosed.decrementAndGet() == 0) {
                    kotlinx.coroutines.channels.r.a.a(this.$resultChannel, null, 1, null);
                }
                return Unit.f67061a;
            } catch (Throwable th2) {
                if (this.$nonClosed.decrementAndGet() == 0) {
                    kotlinx.coroutines.channels.r.a.a(this.$resultChannel, null, 1, null);
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CombineKt$combineInternal$2(kotlinx.coroutines.flow.b[] bVarArr, Function0<Object[]> function0, Function3<? super kotlinx.coroutines.flow.c, ? super Object[], ? super Continuation<? super Unit>, ? extends Object> function3, kotlinx.coroutines.flow.c cVar, Continuation<? super CombineKt$combineInternal$2> continuation) {
        super(2, continuation);
        this.$flows = bVarArr;
        this.$arrayFactory = function0;
        this.$transform = function3;
        this.$this_combineInternal = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, continuation);
        combineKt$combineInternal$2.L$0 = obj;
        return combineKt$combineInternal$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CombineKt$combineInternal$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00be  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ca A[LOOP:0: B:28:0x00ca->B:48:?, LOOP_START, PHI: r6 r10
  0x00ca: PHI (r6v6 int) = (r6v5 int), (r6v7 int) binds: [B:25:0x00c5, B:48:?] A[DONT_GENERATE, DONT_INLINE]
  0x00ca: PHI (r10v8 kotlin.collections.IndexedValue) = (r10v7 kotlin.collections.IndexedValue), (r10v21 kotlin.collections.IndexedValue) binds: [B:25:0x00c5, B:48:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x00da  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:40:0x0111 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x0112  */
    /* JADX WARN: Code duplicated, block: B:43:0x0134 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00ef A[EDGE_INSN: B:46:0x00ef->B:35:0x00ef BREAK  A[LOOP:0: B:28:0x00ca->B:48:?], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0135 -> B:45:0x0137). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
