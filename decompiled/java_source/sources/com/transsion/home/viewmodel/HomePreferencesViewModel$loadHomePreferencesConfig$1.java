package com.transsion.home.viewmodel;

import com.transsion.home.bean.HomePreferencesState;
import com.transsion.home.repository.HomePreferencesRepository;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.HomePreferencesViewModel$loadHomePreferencesConfig$1", f = "HomePreferencesViewModel.kt", l = {126}, m = "invokeSuspend")
@SourceDebugExtension
final class HomePreferencesViewModel$loadHomePreferencesConfig$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ HomePreferencesViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomePreferencesViewModel$loadHomePreferencesConfig$1(HomePreferencesViewModel homePreferencesViewModel, Continuation<? super HomePreferencesViewModel$loadHomePreferencesConfig$1> continuation) {
        super(2, continuation);
        this.this$0 = homePreferencesViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        HomePreferencesViewModel$loadHomePreferencesConfig$1 homePreferencesViewModel$loadHomePreferencesConfig$1 = new HomePreferencesViewModel$loadHomePreferencesConfig$1(this.this$0, continuation);
        homePreferencesViewModel$loadHomePreferencesConfig$1.L$0 = obj;
        return homePreferencesViewModel$loadHomePreferencesConfig$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HomePreferencesViewModel$loadHomePreferencesConfig$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        HomePreferencesViewModel homePreferencesViewModel;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                HomePreferencesViewModel homePreferencesViewModel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                HomePreferencesRepository homePreferencesRepositoryY = homePreferencesViewModel2.y();
                this.L$0 = homePreferencesViewModel2;
                this.label = 1;
                Object objF2 = homePreferencesRepositoryY.f(null, this);
                if (objF2 == objF) {
                    return objF;
                }
                homePreferencesViewModel = homePreferencesViewModel2;
                obj = objF2;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                homePreferencesViewModel = (HomePreferencesViewModel) this.L$0;
                ResultKt.b(obj);
            }
            HomePreferencesState homePreferencesState = (HomePreferencesState) obj;
            homePreferencesViewModel.f45801h = homePreferencesState;
            homePreferencesViewModel.w().n(homePreferencesState);
            Iterator it = homePreferencesViewModel.f45802i.keySet().iterator();
            while (it.hasNext()) {
                homePreferencesViewModel.p((String) it.next());
            }
            homePreferencesViewModel.N(homePreferencesState);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        HomePreferencesViewModel homePreferencesViewModel3 = this.this$0;
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "HomePreferencesViewModel", "loadHomePreferencesConfig error: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
            homePreferencesViewModel3.w().n(null);
        }
        return Unit.f67061a;
    }
}
