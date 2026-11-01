package com.transsion.member.history;

import com.transsion.member.bean.PointsHistoryData;
import com.transsion.member.bean.PointsHistoryItem;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.List;
import kotlin.Metadata;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.history.PointsHistoryViewModel$fetchHistory$1", f = "PointsHistoryViewModel.kt", l = {}, m = "invokeSuspend")
final class PointsHistoryViewModel$fetchHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $page;
    int label;
    final /* synthetic */ PointsHistoryViewModel this$0;

    static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f46574a = new a();

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
        final /* synthetic */ PointsHistoryViewModel f46575d;

        b(PointsHistoryViewModel pointsHistoryViewModel) {
            this.f46575d = pointsHistoryViewModel;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error: ");
            sb2.append(str);
            sb2.append(", msg:");
            sb2.append(str2);
            this.f46575d.e().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(PointsHistoryData pointsHistoryData) {
            List<PointsHistoryItem> list;
            super.c(pointsHistoryData);
            Boolean boolValueOf = (pointsHistoryData == null || (list = pointsHistoryData.getList()) == null) ? null : Boolean.valueOf(list.isEmpty());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("list is empty: ");
            sb2.append(boolValueOf);
            this.f46575d.e().q(pointsHistoryData);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PointsHistoryViewModel$fetchHistory$1(PointsHistoryViewModel pointsHistoryViewModel, String str, Continuation<? super PointsHistoryViewModel$fetchHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = pointsHistoryViewModel;
        this.$page = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PointsHistoryViewModel$fetchHistory$1(this.this$0, this.$page, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PointsHistoryViewModel$fetchHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        vm.a.C0951a.h(this.this$0.f(), this.$page, 0, null, 6, null).v(qz.a.c()).x(a.f46574a).f(sg.d.f75349a.c()).subscribe(new b(this.this$0));
        return Unit.f67061a;
    }
}
