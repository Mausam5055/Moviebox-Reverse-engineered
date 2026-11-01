package com.transsion.moviedetail.view;

import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.RepeatOnLifecycleKt;
import com.transsion.edcation.CourseManager;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetail.view.HeaderExtensionFragment$addListeners$10", f = "HeaderExtensionFragment.kt", l = {229}, m = "invokeSuspend")
final class HeaderExtensionFragment$addListeners$10 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ HeaderExtensionFragment this$0;

    /* JADX INFO: renamed from: com.transsion.moviedetail.view.HeaderExtensionFragment$addListeners$10$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.view.HeaderExtensionFragment$addListeners$10$1", f = "HeaderExtensionFragment.kt", l = {230}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ HeaderExtensionFragment this$0;

        /* JADX INFO: renamed from: com.transsion.moviedetail.view.HeaderExtensionFragment$addListeners$10$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/transsion/edcation/bean/CourseBean;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        @DebugMetadata(c = "com.transsion.moviedetail.view.HeaderExtensionFragment$addListeners$10$1$1", f = "HeaderExtensionFragment.kt", l = {}, m = "invokeSuspend")
        static final class C06401 extends SuspendLambda implements Function2<CourseBean, Continuation<? super Unit>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ HeaderExtensionFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06401(HeaderExtensionFragment headerExtensionFragment, Continuation<? super C06401> continuation) {
                super(2, continuation);
                this.this$0 = headerExtensionFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C06401 c06401 = new C06401(this.this$0, continuation);
                c06401.L$0 = obj;
                return c06401;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CourseBean courseBean, Continuation<? super Unit> continuation) {
                return ((C06401) create(courseBean, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                CourseBean courseBean = (CourseBean) this.L$0;
                String subjectId = courseBean.getSubjectId();
                Subject subject = this.this$0.subject;
                if (Intrinsics.c(subjectId, subject != null ? subject.getSubjectId() : null)) {
                    Subject subject2 = this.this$0.subject;
                    if (subject2 != null) {
                        subject2.setSeenStatus(Boxing.d(courseBean.getSeenStatus()));
                    }
                    this.this$0.O0(Boxing.d(courseBean.getSeenStatus()));
                }
                return Unit.f67061a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HeaderExtensionFragment headerExtensionFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = headerExtensionFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                x0 x0VarK = CourseManager.f44085a.k();
                C06401 c06401 = new C06401(this.this$0, null);
                this.label = 1;
                if (kotlinx.coroutines.flow.d.i(x0VarK, c06401, this) == objF) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HeaderExtensionFragment$addListeners$10(HeaderExtensionFragment headerExtensionFragment, Continuation<? super HeaderExtensionFragment$addListeners$10> continuation) {
        super(2, continuation);
        this.this$0 = headerExtensionFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HeaderExtensionFragment$addListeners$10(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HeaderExtensionFragment$addListeners$10) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            HeaderExtensionFragment headerExtensionFragment = this.this$0;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(headerExtensionFragment, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.b(headerExtensionFragment, state, anonymousClass1, this) == objF) {
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
