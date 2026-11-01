package com.transsion.home.viewmodel;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesRefreshType;
import com.transsion.home.repository.HomePreferencesRepository;
import java.util.List;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.HomePreferencesViewModel$submitPreferencesInternal$1", f = "HomePreferencesViewModel.kt", l = {TTAdConstant.IMAGE_LIST_SIZE_CODE, TTAdConstant.VIDEO_INFO_CODE}, m = "invokeSuspend")
final class HomePreferencesViewModel$submitPreferencesInternal$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ HomePreferencesConfig $config;
    final /* synthetic */ boolean $force;
    final /* synthetic */ String $labelId;
    final /* synthetic */ List<String> $normalized;
    final /* synthetic */ String $scene;
    private /* synthetic */ Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    final /* synthetic */ HomePreferencesViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomePreferencesViewModel$submitPreferencesInternal$1(HomePreferencesViewModel homePreferencesViewModel, String str, List<String> list, boolean z10, HomePreferencesConfig homePreferencesConfig, String str2, Continuation<? super HomePreferencesViewModel$submitPreferencesInternal$1> continuation) {
        super(2, continuation);
        this.this$0 = homePreferencesViewModel;
        this.$labelId = str;
        this.$normalized = list;
        this.$force = z10;
        this.$config = homePreferencesConfig;
        this.$scene = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        HomePreferencesViewModel$submitPreferencesInternal$1 homePreferencesViewModel$submitPreferencesInternal$1 = new HomePreferencesViewModel$submitPreferencesInternal$1(this.this$0, this.$labelId, this.$normalized, this.$force, this.$config, this.$scene, continuation);
        homePreferencesViewModel$submitPreferencesInternal$1.L$0 = obj;
        return homePreferencesViewModel$submitPreferencesInternal$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HomePreferencesViewModel$submitPreferencesInternal$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ab  */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x00ab, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        String str;
        String str2;
        Throwable thM457exceptionOrNullimpl;
        HomePreferencesViewModel homePreferencesViewModel;
        boolean z10;
        HomePreferencesConfig homePreferencesConfig;
        HomePreferencesViewModel homePreferencesViewModel2;
        HomePreferencesConfig homePreferencesConfig2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    z10 = this.Z$0;
                    homePreferencesConfig = (HomePreferencesConfig) this.L$1;
                    HomePreferencesViewModel homePreferencesViewModel3 = (HomePreferencesViewModel) this.L$0;
                    ResultKt.b(obj);
                    homePreferencesViewModel = homePreferencesViewModel3;
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    homePreferencesConfig2 = (HomePreferencesConfig) this.L$1;
                    homePreferencesViewModel2 = (HomePreferencesViewModel) this.L$0;
                    ResultKt.b(obj);
                }
                homePreferencesConfig = homePreferencesConfig2;
                homePreferencesViewModel = homePreferencesViewModel2;
                if (homePreferencesConfig.isPopStyle() && !Intrinsics.c(homePreferencesConfig.getRefreshType(), HomePreferencesRefreshType.NO_REFRESH.getValue())) {
                    homePreferencesViewModel.x().n(homePreferencesConfig);
                }
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                str = this.$labelId;
                str2 = this.$scene;
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    lg.a.C0828a.l(lg.a.f68839a, "HomePreferencesViewModel", "submitPreferences error, labelId=" + str + ", scene=" + str2 + ", msg=" + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            homePreferencesViewModel = this.this$0;
            String str3 = this.$labelId;
            List<String> list = this.$normalized;
            boolean z11 = this.$force;
            HomePreferencesConfig homePreferencesConfig3 = this.$config;
            Result.Companion companion = Result.INSTANCE;
            HomePreferencesRepository homePreferencesRepositoryY = homePreferencesViewModel.y();
            this.L$0 = homePreferencesViewModel;
            this.L$1 = homePreferencesConfig3;
            this.Z$0 = z11;
            this.label = 1;
            if (homePreferencesRepositoryY.m(str3, list, this) == objF) {
                return objF;
            }
            z10 = z11;
            homePreferencesConfig = homePreferencesConfig3;
            if (!z10) {
                HomePreferencesRepository homePreferencesRepositoryY2 = homePreferencesViewModel.y();
                this.L$0 = homePreferencesViewModel;
                this.L$1 = homePreferencesConfig;
                this.label = 2;
                if (homePreferencesRepositoryY2.g(homePreferencesConfig, this) == objF) {
                    return objF;
                }
                homePreferencesViewModel2 = homePreferencesViewModel;
                homePreferencesConfig2 = homePreferencesConfig;
                homePreferencesConfig = homePreferencesConfig2;
                homePreferencesViewModel = homePreferencesViewModel2;
            }
            if (homePreferencesConfig.isPopStyle()) {
                homePreferencesViewModel.x().n(homePreferencesConfig);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        str = this.$labelId;
        str2 = this.$scene;
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "HomePreferencesViewModel", "submitPreferences error, labelId=" + str + ", scene=" + str2 + ", msg=" + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        return Unit.f67061a;
    }
}
