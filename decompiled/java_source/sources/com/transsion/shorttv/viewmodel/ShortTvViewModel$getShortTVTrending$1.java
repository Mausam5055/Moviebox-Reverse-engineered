package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ImmVideoRequestEntity;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.Subject;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1", f = "ShortTvViewModel.kt", l = {1028}, m = "invokeSuspend")
final class ShortTvViewModel$getShortTVTrending$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isRefresh;
    final /* synthetic */ ImmVideoRequestEntity $requestEntity;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1$1", f = "ShortTvViewModel.kt", l = {1023, 1024}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ ImmVideoRequestEntity $requestEntity;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ImmVideoRequestEntity immVideoRequestEntity, ShortTvViewModel shortTvViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$requestEntity = immVideoRequestEntity;
            this.this$0 = shortTvViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$requestEntity, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x008a A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                bh.b.a aVar = bh.b.f16471a;
                String strJ = com.blankj.utilcode.util.o.j(this.$requestEntity);
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    ShortTvViewModel shortTvViewModel = this.this$0;
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    vg.a.C0949a c0949a = vg.a.f77324a;
                    lg.a.C0828a.f(c0828a, "ShortTvViewModel", "Trending  host:" + c0949a.a() + "/wefeed-mobile-bff/shorts/most-trending", false, 4, null);
                    os.a aVar2 = shortTvViewModel.f53676a;
                    String strA = c0949a.a();
                    this.L$0 = cVar;
                    this.label = 1;
                    obj = aVar2.h(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    data = ((BaseDto) obj).getData();
                    this.L$0 = null;
                    this.label = 2;
                    if (cVar.emit(data, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 1) {
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                data = ((BaseDto) obj).getData();
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1$2", f = "ShortTvViewModel.kt", l = {1027}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
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

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ShortTvViewModel f53710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53711b;

        a(ShortTvViewModel shortTvViewModel, boolean z10) {
            this.f53710a = shortTvViewModel;
            this.f53711b = z10;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(ShortTVRespData shortTVRespData, Continuation continuation) {
            List<Subject> items;
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "ShortTvViewModel", "Trending 接口返回 " + shortTVRespData, false, 4, null);
            if (shortTVRespData != null && (items = shortTVRespData.getItems()) != null && !items.isEmpty()) {
                this.f53710a.f53680c.set(true);
            }
            if (shortTVRespData != null) {
                shortTVRespData.setRefresh(this.f53711b);
            }
            lg.a.C0828a.f(c0828a, "ShortTvViewModel", "设置 TrendingLiveData, " + this.f53710a.K0(), false, 4, null);
            this.f53710a.K0().q(shortTVRespData);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getShortTVTrending$1(ImmVideoRequestEntity immVideoRequestEntity, ShortTvViewModel shortTvViewModel, boolean z10, Continuation<? super ShortTvViewModel$getShortTVTrending$1> continuation) {
        super(2, continuation);
        this.$requestEntity = immVideoRequestEntity;
        this.this$0 = shortTvViewModel;
        this.$isRefresh = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getShortTVTrending$1(this.$requestEntity, this.this$0, this.$isRefresh, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$getShortTVTrending$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$requestEntity, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0, this.$isRefresh);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
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
