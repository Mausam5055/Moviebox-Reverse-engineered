package com.transsion.room.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1", f = "RoomHotViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE}, m = "invokeSuspend")
final class RoomHotViewModel$getPostSubject$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $page;
    final /* synthetic */ int $perPage;
    final /* synthetic */ String $sortType;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ boolean $with;
    int label;
    final /* synthetic */ RoomHotViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1$1", f = "RoomHotViewModel.kt", l = {102, 110}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $page;
        final /* synthetic */ int $perPage;
        final /* synthetic */ String $sortType;
        final /* synthetic */ String $subjectId;
        final /* synthetic */ boolean $with;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ RoomHotViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoomHotViewModel roomHotViewModel, String str, String str2, int i11, String str3, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = roomHotViewModel;
            this.$subjectId = str;
            this.$page = str2;
            this.$perPage = i11;
            this.$sortType = str3;
            this.$with = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$subjectId, this.$page, this.$perPage, this.$sortType, this.$with, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
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
            cVar = (kotlinx.coroutines.flow.c) this.L$0;
            eq.a aVarZ = this.this$0.Z();
            String strA = vg.a.f77324a.a();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            String str2 = this.$page;
            int i12 = this.$perPage;
            String str3 = this.$sortType;
            boolean z10 = this.$with;
            this.L$0 = cVar;
            this.label = 1;
            obj = aVarZ.j(strA, str, str2, i12, str3, z10, this);
            if (obj == objF) {
                return objF;
            }
            Object data = ((BaseDto) obj).getData();
            this.L$0 = null;
            this.label = 2;
            if (cVar.emit(data, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1$2", f = "RoomHotViewModel.kt", l = {113}, m = "invokeSuspend")
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
        final /* synthetic */ RoomHotViewModel f51833a;

        a(RoomHotViewModel roomHotViewModel) {
            this.f51833a = roomHotViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(PostSubjectBean postSubjectBean, Continuation continuation) {
            String nextPage;
            Integer perPage;
            if (postSubjectBean != null) {
                RoomHotViewModel roomHotViewModel = this.f51833a;
                Pager pager = postSubjectBean.getPager();
                roomHotViewModel.e0((pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue());
                Pager pager2 = postSubjectBean.getPager();
                if (pager2 == null || (nextPage = pager2.getNextPage()) == null) {
                    nextPage = "0";
                }
                roomHotViewModel.f51831n = nextPage;
            }
            this.f51833a.y().q(postSubjectBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomHotViewModel$getPostSubject$1(RoomHotViewModel roomHotViewModel, String str, String str2, int i11, String str3, boolean z10, Continuation<? super RoomHotViewModel$getPostSubject$1> continuation) {
        super(2, continuation);
        this.this$0 = roomHotViewModel;
        this.$subjectId = str;
        this.$page = str2;
        this.$perPage = i11;
        this.$sortType = str3;
        this.$with = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomHotViewModel$getPostSubject$1(this.this$0, this.$subjectId, this.$page, this.$perPage, this.$sortType, this.$with, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomHotViewModel$getPostSubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$subjectId, this.$page, this.$perPage, this.$sortType, this.$with, null)), y0.b()), new AnonymousClass2(null));
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
