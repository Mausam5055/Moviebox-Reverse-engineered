package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1", f = "UGCVideoDetailViewModel.kt", l = {393}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getVideoPlayList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ int $endPosition;
    final /* synthetic */ boolean $isLoadDown;
    final /* synthetic */ int $startPosition;
    int label;
    final /* synthetic */ UGCVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1$1", f = "UGCVideoDetailViewModel.kt", l = {378, 380, 385, 388}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ int $endPosition;
        final /* synthetic */ int $startPosition;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, int i11, int i12, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
            this.$collectionId = str;
            this.$startPosition = i11;
            this.$endPosition = i12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:52:0x0103 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objJ;
            kotlinx.coroutines.flow.c cVar;
            BaseDto baseDto;
            List arrayList;
            List<UGCVideo> items;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            baseDto = (BaseDto) this.L$1;
                            cVar = (kotlinx.coroutines.flow.c) this.L$0;
                            ResultKt.b(obj);
                            data = baseDto.getData();
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 4;
                            if (cVar.emit(data, this) == objF) {
                                return objF;
                            }
                        } else if (i11 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                    ResultKt.b(obj);
                } else {
                    kotlinx.coroutines.flow.c cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar2;
                    objJ = obj;
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.c cVar3 = (kotlinx.coroutines.flow.c) this.L$0;
            rv.a aVarF = this.this$0.F();
            String str = this.$collectionId;
            int i12 = this.$startPosition;
            int i13 = this.$endPosition;
            this.L$0 = cVar3;
            this.label = 1;
            objJ = rv.a.C0910a.j(aVarF, str, i12, i13, 0, null, this, 24, null);
            if (objJ == objF) {
                return objF;
            }
            cVar = cVar3;
            baseDto = (BaseDto) objJ;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                UGCVideoList uGCVideoList = (UGCVideoList) baseDto.getData();
                List<UGCVideo> items2 = uGCVideoList != null ? uGCVideoList.getItems() : null;
                if (items2 != null && !items2.isEmpty()) {
                    UGCVideoList uGCVideoList2 = (UGCVideoList) baseDto.getData();
                    if (uGCVideoList2 == null || (items = uGCVideoList2.getItems()) == null) {
                        arrayList = new ArrayList();
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<T> it = items.iterator();
                        while (it.hasNext()) {
                            String ugcVideoId = ((UGCVideo) it.next()).getUgcVideoId();
                            if (ugcVideoId != null) {
                                arrayList2.add(ugcVideoId);
                            }
                        }
                        arrayList = CollectionsKt.U0(arrayList2);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ = this.this$0.z();
                        String str2 = this.$collectionId;
                        this.L$0 = cVar;
                        this.L$1 = baseDto;
                        this.label = 3;
                        if (uGCCollectionVideoGroupDaoZ.a(str2, arrayList, this) == objF) {
                            return objF;
                        }
                    }
                }
                data = baseDto.getData();
                this.L$0 = null;
                this.L$1 = null;
                this.label = 4;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1$2", f = "UGCVideoDetailViewModel.kt", l = {392}, m = "invokeSuspend")
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
        final /* synthetic */ boolean f56468a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ UGCVideoDetailViewModel f56470c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f56471d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f56472e;

        a(boolean z10, int i11, UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, int i12) {
            this.f56468a = z10;
            this.f56469b = i11;
            this.f56470c = uGCVideoDetailViewModel;
            this.f56471d = str;
            this.f56472e = i12;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(UGCVideoList uGCVideoList, Continuation continuation) {
            Pager pager;
            Integer totalCount;
            List<UGCVideo> items;
            List<UGCVideo> items2;
            if (uGCVideoList != null) {
                uGCVideoList.setLoadDown(this.f56468a);
            }
            int i11 = this.f56469b;
            if (uGCVideoList != null && (items2 = uGCVideoList.getItems()) != null) {
                Iterator<T> it = items2.iterator();
                while (it.hasNext()) {
                    ((UGCVideo) it.next()).setPlayListPosition(i11);
                    i11++;
                }
            }
            if (uGCVideoList != null && (items = uGCVideoList.getItems()) != null && !items.isEmpty()) {
                this.f56470c.A = this.f56471d;
                if (this.f56470c.B == 0 || this.f56470c.C == 0) {
                    this.f56470c.B = this.f56469b;
                    this.f56470c.C = this.f56472e;
                } else {
                    UGCVideoDetailViewModel uGCVideoDetailViewModel = this.f56470c;
                    uGCVideoDetailViewModel.B = Math.min(uGCVideoDetailViewModel.B, this.f56469b);
                    UGCVideoDetailViewModel uGCVideoDetailViewModel2 = this.f56470c;
                    uGCVideoDetailViewModel2.C = Math.max(uGCVideoDetailViewModel2.C, this.f56472e);
                }
                lg.a.C0828a.f(lg.a.f68839a, "UGCVideoDetailViewModel", "Updated loaded playList range: collectionId=" + this.f56471d + ", range[" + this.f56470c.B + "-" + this.f56470c.C + "]", false, 4, null);
            }
            if (uGCVideoList != null && (pager = uGCVideoList.getPager()) != null && (totalCount = pager.getTotalCount()) != null) {
                this.f56470c.f56459u.q(Boxing.d(totalCount.intValue()));
            }
            this.f56470c.f56457s.q(uGCVideoList);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getVideoPlayList$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, int i11, int i12, boolean z10, Continuation<? super UGCVideoDetailViewModel$getVideoPlayList$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$collectionId = str;
        this.$startPosition = i11;
        this.$endPosition = i12;
        this.$isLoadDown = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getVideoPlayList$1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, this.$isLoadDown, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoDetailViewModel$getVideoPlayList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isLoadDown, this.$startPosition, this.this$0, this.$collectionId, this.$endPosition);
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
