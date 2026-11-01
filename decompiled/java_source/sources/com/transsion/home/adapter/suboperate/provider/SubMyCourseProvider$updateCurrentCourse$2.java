package com.transsion.home.adapter.suboperate.provider;

import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.bean.CourseBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$updateCurrentCourse$2", f = "SubMyCourseProvider.kt", l = {140, 148}, m = "invokeSuspend")
final class SubMyCourseProvider$updateCurrentCourse$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SubMyCourseProvider this$0;

    /* JADX INFO: renamed from: com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$updateCurrentCourse$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$updateCurrentCourse$2$1", f = "SubMyCourseProvider.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ float $percent;
        int label;
        final /* synthetic */ SubMyCourseProvider this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubMyCourseProvider subMyCourseProvider, float f11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = subMyCourseProvider;
            this.$percent = f11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$percent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            SubMyCourseProvider subMyCourseProvider = this.this$0;
            subMyCourseProvider.U(subMyCourseProvider.f44540g, RangesKt.h(this.$percent, 100.0f));
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubMyCourseProvider$updateCurrentCourse$2(SubMyCourseProvider subMyCourseProvider, Continuation<? super SubMyCourseProvider$updateCurrentCourse$2> continuation) {
        super(2, continuation);
        this.this$0 = subMyCourseProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubMyCourseProvider$updateCurrentCourse$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubMyCourseProvider$updateCurrentCourse$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String subjectId;
        Integer durationSeconds;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        VideoDetailPlayDao videoDetailPlayDaoO = this.this$0.O();
        CourseBean courseBean = this.this$0.f44541h;
        if (courseBean == null || (subjectId = courseBean.getSubjectId()) == null) {
            subjectId = "";
        }
        this.label = 1;
        obj = videoDetailPlayDaoO.g(subjectId, this);
        if (obj == objF) {
            return objF;
        }
        Long l11 = (Long) obj;
        long jLongValue = l11 != null ? l11.longValue() : 0L;
        CourseBean courseBean2 = this.this$0.f44541h;
        int iIntValue = (courseBean2 == null || (durationSeconds = courseBean2.getDurationSeconds()) == null) ? 0 : durationSeconds.intValue();
        float f11 = iIntValue > 0 ? ((jLongValue * 1.0f) / iIntValue) / 10.0f : 0.0f;
        a2 a2VarC = y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, f11, null);
        this.label = 2;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
