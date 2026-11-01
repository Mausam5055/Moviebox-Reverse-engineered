package com.transsion.moviedetail.viewmodel;

import com.blankj.utilcode.util.o;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.room.api.bean.RoomRequestEntity;
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
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetail.viewmodel.HotViewModel$getRecommendRooms$1", f = "HotViewModel.kt", l = {173}, m = "invokeSuspend")
final class HotViewModel$getRecommendRooms$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $page;
    final /* synthetic */ int $perPage;
    int label;
    final /* synthetic */ HotViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.moviedetail.viewmodel.HotViewModel$getRecommendRooms$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.viewmodel.HotViewModel$getRecommendRooms$1$1", f = "HotViewModel.kt", l = {153, 164, 166, 168}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $page;
        final /* synthetic */ int $perPage;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ HotViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HotViewModel hotViewModel, String str, int i11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = hotViewModel;
            this.$page = str;
            this.$perPage = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$page, this.$perPage, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x00a2  */
        /* JADX WARN: Code duplicated, block: B:28:0x00ac A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:29:0x00ad  */
        /* JADX WARN: Code duplicated, block: B:31:0x00bb A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object objB;
            BaseDto baseDto;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                if (this.this$0.f0() == null) {
                    this.label = 1;
                    if (cVar.emit(null, this) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                }
                RequestBody.Companion companion = RequestBody.INSTANCE;
                String strJ = o.j(new RoomRequestEntity(this.$page, this.$perPage, 0, null, null, this.this$0.f0(), 24, null));
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyCreate = companion.create(strJ, MediaType.INSTANCE.parse("application/json"));
                fn.a aVarE0 = this.this$0.e0();
                String strA = vg.a.f77324a.a();
                this.L$0 = cVar;
                this.label = 2;
                objB = aVarE0.b(strA, requestBodyCreate, this);
                if (objB == objF) {
                    return objF;
                }
                baseDto = (BaseDto) objB;
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    data = baseDto.getData();
                    this.L$0 = null;
                    this.label = 4;
                    if (cVar.emit(data, this) == objF) {
                        return objF;
                    }
                } else {
                    this.L$0 = null;
                    this.label = 3;
                    if (cVar.emit(null, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 == 1) {
                    ResultKt.b(obj);
                    return Unit.f67061a;
                }
                if (i11 == 2) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objB = obj;
                    baseDto = (BaseDto) objB;
                    if (Intrinsics.c(baseDto.getCode(), "0")) {
                        this.L$0 = null;
                        this.label = 3;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        data = baseDto.getData();
                        this.L$0 = null;
                        this.label = 4;
                        if (cVar.emit(data, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i11 != 3 && i11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.moviedetail.viewmodel.HotViewModel$getRecommendRooms$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.viewmodel.HotViewModel$getRecommendRooms$1$2", f = "HotViewModel.kt", l = {172}, m = "invokeSuspend")
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
        final /* synthetic */ HotViewModel f47429a;

        a(HotViewModel hotViewModel) {
            this.f47429a = hotViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(RoomBean roomBean, Continuation continuation) {
            this.f47429a.f47426p.n(roomBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HotViewModel$getRecommendRooms$1(HotViewModel hotViewModel, String str, int i11, Continuation<? super HotViewModel$getRecommendRooms$1> continuation) {
        super(2, continuation);
        this.this$0 = hotViewModel;
        this.$page = str;
        this.$perPage = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HotViewModel$getRecommendRooms$1(this.this$0, this.$page, this.$perPage, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HotViewModel$getRecommendRooms$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$page, this.$perPage, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0);
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
