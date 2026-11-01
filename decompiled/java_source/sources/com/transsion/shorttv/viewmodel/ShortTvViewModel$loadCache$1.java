package com.transsion.shorttv.viewmodel;

import android.content.Context;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.OperatingResp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$loadCache$1", f = "ShortTvViewModel.kt", l = {}, m = "invokeSuspend")
final class ShortTvViewModel$loadCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.shorttv.viewmodel.ShortTvViewModel$loadCache$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$loadCache$1$1", f = "ShortTvViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        int label;
        final /* synthetic */ ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortTvViewModel shortTvViewModel, Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = shortTvViewModel;
            this.$context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d() {
            lg.a.C0828a.z(lg.a.f68839a, "ShortTvViewModel", "Cache---没有运营位缓存", false, 4, null);
            return Unit.f67061a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object obj2;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ShortTvViewModel shortTvViewModel = this.this$0;
            Context context = this.$context;
            try {
                Result.Companion companion = Result.INSTANCE;
                String string = com.transsion.shorttv.utils.h.f53653a.d().getString("short_tv_operating_data", "");
                if (string == null || string.length() == 0) {
                    string = shortTvViewModel.k0().a(context);
                }
                OperatingResp operatingResp = (OperatingResp) com.blankj.utilcode.util.o.d(string, OperatingResp.class);
                if (operatingResp != null) {
                    operatingResp.setSourceFrom("from_cache");
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    List<BannerData> banners = operatingResp.getBanners();
                    lg.a.C0828a.r(c0828a, "ShortTvViewModel", new String[]{"Cache---有运营位缓存 banner:" + (banners != null ? Boxing.d(banners.size()) : null) + " "}, false, 4, null);
                    operatingResp.setCache(true);
                    shortTvViewModel.M0(operatingResp);
                    shortTvViewModel.i0().n(operatingResp);
                    obj2 = Unit.f67061a;
                } else {
                    obj2 = new Function0() { // from class: com.transsion.shorttv.viewmodel.o
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ShortTvViewModel$loadCache$1.AnonymousClass1.d();
                        }
                    };
                }
                Result.m454constructorimpl(obj2);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$loadCache$1(ShortTvViewModel shortTvViewModel, Context context, Continuation<? super ShortTvViewModel$loadCache$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$loadCache$1 shortTvViewModel$loadCache$1 = new ShortTvViewModel$loadCache$1(this.this$0, this.$context, continuation);
        shortTvViewModel$loadCache$1.L$0 = obj;
        return shortTvViewModel$loadCache$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$loadCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        kotlinx.coroutines.k.d((n0) this.L$0, null, null, new AnonymousClass1(this.this$0, this.$context, null), 3, null);
        return Unit.f67061a;
    }
}
