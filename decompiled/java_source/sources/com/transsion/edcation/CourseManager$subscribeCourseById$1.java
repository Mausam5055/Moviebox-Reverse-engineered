package com.transsion.edcation;

import android.util.Log;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.edcation.bean.CourseBody;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import lz.h;
import sg.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.CourseManager$subscribeCourseById$1", f = "CourseManager.kt", l = {}, m = "invokeSuspend")
final class CourseManager$subscribeCourseById$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Integer $status;
    final /* synthetic */ String $subjectId;
    int label;

    static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f44101a = new a();

        a() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    public static final class b extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f44102d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f44103e;

        b(int i11, String str) {
            this.f44102d = i11;
            this.f44103e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error: ");
            sb2.append(str);
            sb2.append(", msg:");
            sb2.append(str2);
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.course_default_failed);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(String str) {
            super.c(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("data:");
            sb2.append(str);
            int i11 = this.f44102d;
            if (i11 == 0) {
                CourseManager.f44085a.q(new CourseBean(this.f44103e, null, i11, null, null, null, null, null, null, 0L, null, 2042, null));
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.course_remove_success);
            } else {
                CourseManager.s(CourseManager.f44085a, null, this.f44103e, 1, null);
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.course_add_success);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$subscribeCourseById$1(Integer num, String str, Continuation<? super CourseManager$subscribeCourseById$1> continuation) {
        super(2, continuation);
        this.$status = num;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$subscribeCourseById$1(this.$status, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$subscribeCourseById$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Integer num = this.$status;
        String str = this.$subjectId;
        try {
            Result.Companion companion = Result.INSTANCE;
            int i11 = (num != null && num.intValue() == 0) ? 1 : 0;
            c.a.d(CourseManager.f44085a.l(), null, new CourseBody(str, i11), 1, null).v(qz.a.c()).x(a.f44101a).f(d.f75349a.c()).subscribe(new b(i11, str));
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Unit unit = (Unit) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        if (unit != null) {
            Log.e("subscribeCourse", "error: " + unit);
        }
        return Unit.f67061a;
    }
}
