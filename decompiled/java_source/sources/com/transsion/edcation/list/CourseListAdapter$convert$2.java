package com.transsion.edcation.list;

import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$string;
import com.transsion.edcation.bean.CourseBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
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
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.list.CourseListAdapter$convert$2", f = "CourseListAdapter.kt", l = {45, Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class CourseListAdapter$convert$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ BaseViewHolder $holder;
    final /* synthetic */ CourseBean $item;
    int label;
    final /* synthetic */ CourseListAdapter this$0;

    /* JADX INFO: renamed from: com.transsion.edcation.list.CourseListAdapter$convert$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.list.CourseListAdapter$convert$2$1", f = "CourseListAdapter.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ BaseViewHolder $holder;
        final /* synthetic */ String $percentStr;
        int label;
        final /* synthetic */ CourseListAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BaseViewHolder baseViewHolder, CourseListAdapter courseListAdapter, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$holder = baseViewHolder;
            this.this$0 = courseListAdapter;
            this.$percentStr = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$holder, this.this$0, this.$percentStr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$holder.setText(R$id.item_progress, this.this$0.getContext().getString(R$string.course_learn_progress, this.$percentStr));
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseListAdapter$convert$2(CourseListAdapter courseListAdapter, CourseBean courseBean, BaseViewHolder baseViewHolder, Continuation<? super CourseListAdapter$convert$2> continuation) {
        super(2, continuation);
        this.this$0 = courseListAdapter;
        this.$item = courseBean;
        this.$holder = baseViewHolder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseListAdapter$convert$2(this.this$0, this.$item, this.$holder, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseListAdapter$convert$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
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
        VideoDetailPlayDao videoDetailPlayDaoG1 = this.this$0.G1();
        String subjectId = this.$item.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        this.label = 1;
        obj = videoDetailPlayDaoG1.g(subjectId, this);
        if (obj == objF) {
            return objF;
        }
        Long l11 = (Long) obj;
        long jLongValue = l11 != null ? l11.longValue() : 0L;
        Integer durationSeconds = this.$item.getDurationSeconds();
        int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
        float f11 = iIntValue > 0 ? (jLongValue / 10.0f) / iIntValue : 0.0f;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Boxing.c(RangesKt.h(f11, 100.0f))}, 1));
        Intrinsics.g(str, "format(...)");
        a2 a2VarC = y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$holder, this.this$0, str, null);
        this.label = 2;
        if (i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
