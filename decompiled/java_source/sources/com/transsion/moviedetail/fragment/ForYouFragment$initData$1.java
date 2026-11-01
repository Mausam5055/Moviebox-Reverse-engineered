package com.transsion.moviedetail.fragment;

import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.RepeatOnLifecycleKt;
import com.transsion.edcation.CourseManager;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetail.fragment.ForYouFragment$initData$1", f = "ForYouFragment.kt", l = {252}, m = "invokeSuspend")
final class ForYouFragment$initData$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ForYouFragment this$0;

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1", f = "ForYouFragment.kt", l = {253}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ ForYouFragment this$0;

        /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C06381 implements kotlinx.coroutines.flow.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ForYouFragment f47000a;

            C06381(ForYouFragment forYouFragment) {
                this.f47000a = forYouFragment;
            }

            /* JADX WARN: Code duplicated, block: B:21:0x0063  */
            /* JADX WARN: Code duplicated, block: B:23:0x006b  */
            /* JADX WARN: Code duplicated, block: B:28:0x00a3 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:29:0x00a4 A[EDGE_INSN: B:29:0x00a4->B:30:0x00a7 BREAK  A[LOOP:0: B:19:0x005d->B:31:0x00ab]] */
            /* JADX WARN: Code duplicated, block: B:31:0x00ab A[LOOP:0: B:19:0x005d->B:31:0x00ab, LOOP_END] */
            /* JADX WARN: Code duplicated, block: B:35:0x007e A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a4 -> B:30:0x00a7). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override // kotlinx.coroutines.flow.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object emit(com.transsion.edcation.bean.CourseBean r11, kotlin.coroutines.Continuation r12) {
                /*
                    r10 = this;
                    boolean r0 = r12 instanceof com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r12
                    com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$emit$1 r0 = (com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$emit$1 r0 = new com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$emit$1
                    r0.<init>(r10, r12)
                L18:
                    java.lang.Object r12 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L40
                    if (r2 != r3) goto L38
                    int r11 = r0.I$0
                    java.lang.Object r2 = r0.L$2
                    java.util.Iterator r2 = (java.util.Iterator) r2
                    java.lang.Object r4 = r0.L$1
                    com.transsion.moviedetail.fragment.ForYouFragment r4 = (com.transsion.moviedetail.fragment.ForYouFragment) r4
                    java.lang.Object r5 = r0.L$0
                    com.transsion.edcation.bean.CourseBean r5 = (com.transsion.edcation.bean.CourseBean) r5
                    kotlin.ResultKt.b(r12)
                    goto La7
                L38:
                    java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                    java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                    r11.<init>(r12)
                    throw r11
                L40:
                    kotlin.ResultKt.b(r12)
                    com.transsion.moviedetail.fragment.ForYouFragment r12 = r10.f47000a
                    com.chad.library.adapter.base.BaseQuickAdapter r12 = com.transsion.moviedetail.fragment.ForYouFragment.q0(r12)
                    if (r12 == 0) goto Lad
                    java.util.List r12 = r12.getData()
                    if (r12 == 0) goto Lad
                    java.lang.Iterable r12 = (java.lang.Iterable) r12
                    com.transsion.moviedetail.fragment.ForYouFragment r2 = r10.f47000a
                    java.util.Iterator r12 = r12.iterator()
                    r4 = 0
                    r9 = r2
                    r2 = r12
                    r12 = r9
                L5d:
                    boolean r5 = r2.hasNext()
                    if (r5 == 0) goto Lad
                    java.lang.Object r5 = r2.next()
                    int r6 = r4 + 1
                    if (r4 >= 0) goto L6e
                    kotlin.collections.CollectionsKt.u()
                L6e:
                    com.transsion.moviedetailapi.bean.Subject r5 = (com.transsion.moviedetailapi.bean.Subject) r5
                    java.lang.String r7 = r11.getSubjectId()
                    java.lang.String r8 = r5.getSubjectId()
                    boolean r7 = kotlin.jvm.internal.Intrinsics.c(r7, r8)
                    if (r7 == 0) goto Lab
                    int r7 = r11.getSeenStatus()
                    java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.d(r7)
                    r5.setSeenStatus(r7)
                    kotlinx.coroutines.a2 r5 = kotlinx.coroutines.y0.c()
                    com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$1$1 r7 = new com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1$1$1
                    r8 = 0
                    r7.<init>(r12, r4, r11, r8)
                    r0.L$0 = r11
                    r0.L$1 = r12
                    r0.L$2 = r2
                    r0.I$0 = r6
                    r0.label = r3
                    java.lang.Object r4 = kotlinx.coroutines.i.g(r5, r7, r0)
                    if (r4 != r1) goto La4
                    return r1
                La4:
                    r5 = r11
                    r4 = r12
                    r11 = r6
                La7:
                    r12 = r4
                    r4 = r11
                    r11 = r5
                    goto L5d
                Lab:
                    r4 = r6
                    goto L5d
                Lad:
                    kotlin.Unit r11 = kotlin.Unit.f67061a
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: com.transsion.moviedetail.fragment.ForYouFragment$initData$1.AnonymousClass1.C06381.emit(com.transsion.edcation.bean.CourseBean, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ForYouFragment forYouFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = forYouFragment;
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
                kotlinx.coroutines.flow.x0 x0VarK = CourseManager.f44085a.k();
                C06381 c06381 = new C06381(this.this$0);
                this.label = 1;
                if (x0VarK.a(c06381, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ForYouFragment$initData$1(ForYouFragment forYouFragment, Continuation<? super ForYouFragment$initData$1> continuation) {
        super(2, continuation);
        this.this$0 = forYouFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ForYouFragment$initData$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ForYouFragment$initData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ForYouFragment forYouFragment = this.this$0;
            Lifecycle.State state = Lifecycle.State.CREATED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(forYouFragment, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.b(forYouFragment, state, anonymousClass1, this) == objF) {
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
