package com.transsion.edcation;

import com.transsion.edcation.bean.CourseBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.y0;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.CourseManager$updateCourseList$1", f = "CourseManager.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class CourseManager$updateCourseList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<CourseBean> $list;
    final /* synthetic */ String $page;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$updateCourseList$1(String str, List<CourseBean> list, Continuation<? super CourseManager$updateCourseList$1> continuation) {
        super(2, continuation);
        this.$page = str;
        this.$list = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$updateCourseList$1(this.$page, this.$list, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$updateCourseList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<CourseBean> arrayList;
        List<CourseBean> list;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                list = (List) this.L$0;
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
        if (Intrinsics.c(this.$page, "1")) {
            arrayList = this.$list;
        } else {
            arrayList = (List) CourseManager.f44085a.i().getValue();
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            List<CourseBean> list2 = this.$list;
            if (list2 != null) {
                arrayList.addAll(list2);
            }
        }
        list = arrayList;
        y0 y0VarI = CourseManager.f44085a.i();
        this.L$0 = list;
        this.label = 1;
        if (y0VarI.emit(list, this) == objF) {
            return objF;
        }
        y0 y0VarM = CourseManager.f44085a.m();
        CourseBean courseBean = list != null ? (CourseBean) CollectionsKt.k0(list) : null;
        this.L$0 = null;
        this.label = 2;
        if (y0VarM.emit(courseBean, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
