package com.transsion.search.viewmodel;

import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.toast.core.h;
import com.transsion.search.net.RequestSearchEntity;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import nh.m;
import yq.j;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.search.viewmodel.SearchViewModel$searchWork$1", f = "SearchViewModel.kt", l = {73}, m = "invokeSuspend")
final class SearchViewModel$searchWork$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ RequestSearchEntity $request;
    int label;
    final /* synthetic */ SearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchViewModel$searchWork$1(SearchViewModel searchViewModel, RequestSearchEntity requestSearchEntity, Continuation<? super SearchViewModel$searchWork$1> continuation) {
        super(2, continuation);
        this.this$0 = searchViewModel;
        this.$request = requestSearchEntity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SearchViewModel$searchWork$1(this.this$0, this.$request, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchViewModel$searchWork$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                SearchViewModel searchViewModel = this.this$0;
                RequestSearchEntity requestSearchEntity = this.$request;
                Result.Companion companion = Result.INSTANCE;
                j jVarN = searchViewModel.n();
                this.label = 1;
                obj = jVarN.i(requestSearchEntity, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        SearchViewModel searchViewModel2 = this.this$0;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            searchViewModel2.f52230c.n(((BaseDto) objM454constructorimpl).getData());
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.z(lg.a.f68839a, "liup", String.valueOf(thM457exceptionOrNullimpl.getMessage()), false, 4, null);
            if (m.f70474a.e()) {
                h.f41479a.l(Utils.a().getString(R$string.no_error_content));
            } else {
                h.f41479a.l(Utils.a().getString(R$string.no_network_toast));
            }
            searchViewModel2.f52230c.n(null);
        }
        return Unit.f67061a;
    }
}
