package androidx.work.impl.constraints;

import androidx.work.impl.model.j0;
import androidx.work.t;
import i4.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkConstraintsTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f15586a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTracker(n trackers) {
        this(WorkConstraintsTrackerKt.d(trackers));
        Intrinsics.h(trackers, "trackers");
    }

    public WorkConstraintsTracker(List controllers) {
        Intrinsics.h(controllers, "controllers");
        this.f15586a = controllers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence c(androidx.work.impl.constraints.controllers.d it) {
        Intrinsics.h(it, "it");
        String simpleName = it.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final boolean b(j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        List list = this.f15586a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((androidx.work.impl.constraints.controllers.d) obj).a(workSpec)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            t.e().a(WorkConstraintsTrackerKt.f15589a, "Work " + workSpec.f15764a + " constrained by " + CollectionsKt.s0(arrayList, null, null, null, 0, null, new Function1() { // from class: androidx.work.impl.constraints.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return WorkConstraintsTracker.c((androidx.work.impl.constraints.controllers.d) obj2);
                }
            }, 31, null));
        }
        return arrayList.isEmpty();
    }

    public final kotlinx.coroutines.flow.b d(j0 spec) {
        Intrinsics.h(spec, "spec");
        List list = this.f15586a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((androidx.work.impl.constraints.controllers.d) obj).c(spec)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((androidx.work.impl.constraints.controllers.d) it.next()).b(spec.f15773j));
        }
        final kotlinx.coroutines.flow.b[] bVarArr = (kotlinx.coroutines.flow.b[]) CollectionsKt.R0(arrayList2).toArray(new kotlinx.coroutines.flow.b[0]);
        return kotlinx.coroutines.flow.d.k(new kotlinx.coroutines.flow.b() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1

            /* JADX INFO: renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/c;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Lkotlin/Array;)V", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2"}, k = 3, mv = {2, 1, 0})
            @DebugMetadata(c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", f = "WorkConstraintsTracker.kt", l = {288}, m = "invokeSuspend")
            @SourceDebugExtension
            public static final class AnonymousClass3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, b[], Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(kotlinx.coroutines.flow.c cVar, b[] bVarArr, Continuation<? super Unit> continuation) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
                    anonymousClass3.L$0 = cVar;
                    anonymousClass3.L$1 = bVarArr;
                    return anonymousClass3.invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    b bVar;
                    Object objF = IntrinsicsKt.f();
                    int i11 = this.label;
                    if (i11 == 0) {
                        ResultKt.b(obj);
                        kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                        b[] bVarArr = (b[]) ((Object[]) this.L$1);
                        int length = bVarArr.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length) {
                                bVar = null;
                                break;
                            }
                            bVar = bVarArr[i12];
                            if (!Intrinsics.c(bVar, b.a.f15592a)) {
                                break;
                            }
                            i12++;
                        }
                        if (bVar == null) {
                            bVar = b.a.f15592a;
                        }
                        this.label = 1;
                        if (cVar.emit(bVar, this) == objF) {
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

            public static final class a implements Function0 {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.b[] f15588a;

                public a(kotlinx.coroutines.flow.b[] bVarArr) {
                    this.f15588a = bVarArr;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object[] invoke() {
                    return new b[this.f15588a.length];
                }
            }

            @Override // kotlinx.coroutines.flow.b
            public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
                kotlinx.coroutines.flow.b[] bVarArr2 = bVarArr;
                Object objA = CombineKt.a(cVar, bVarArr2, new a(bVarArr2), new AnonymousClass3(null), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
            }
        });
    }
}
