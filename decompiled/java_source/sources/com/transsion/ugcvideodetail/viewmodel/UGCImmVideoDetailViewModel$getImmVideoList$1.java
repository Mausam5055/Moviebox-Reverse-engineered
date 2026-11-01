package com.transsion.ugcvideodetail.viewmodel;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
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
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoList$1", f = "UGCImmVideoDetailViewModel.kt", l = {424}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getImmVideoList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ int $endPosition;
    final /* synthetic */ boolean $isLoadDown;
    final /* synthetic */ int $startPosition;
    final /* synthetic */ boolean $withoutPlayInfo;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoList$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {TTAdConstant.DOWNLOAD_APP_INFO_CODE, TTAdConstant.IMAGE_LIST_CODE, TTAdConstant.VIDEO_COVER_URL_CODE, 419}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ int $endPosition;
        final /* synthetic */ int $startPosition;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, int i11, int i12, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCImmVideoDetailViewModel;
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

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoList$1$2", f = "UGCImmVideoDetailViewModel.kt", l = {423}, m = "invokeSuspend")
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
        final /* synthetic */ boolean f56419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ UGCImmVideoDetailViewModel f56421c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f56422d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f56423e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f56424f;

        a(boolean z10, int i11, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, int i12, boolean z11) {
            this.f56419a = z10;
            this.f56420b = i11;
            this.f56421c = uGCImmVideoDetailViewModel;
            this.f56422d = str;
            this.f56423e = i12;
            this.f56424f = z11;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(UGCVideoList uGCVideoList, Continuation continuation) {
            Pager pager;
            Integer totalCount;
            List<UGCVideo> items;
            List<UGCVideo> items2;
            UGCVideoBelongToCollection belongToCollection;
            UGCVideo ugcVideo;
            UGCVideoBelongToCollection belongToCollection2;
            if (uGCVideoList != null) {
                uGCVideoList.setLoadDown(this.f56419a);
            }
            int i11 = this.f56420b;
            if (uGCVideoList != null && (items2 = uGCVideoList.getItems()) != null) {
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.f56421c;
                String str = this.f56422d;
                for (UGCVideo uGCVideo : items2) {
                    uGCVideo.setPlayListPosition(i11);
                    String ops = uGCVideo.getOps();
                    if (ops == null || ops.length() == 0) {
                        uGCVideo.setOps(uGCImmVideoDetailViewModel.W0());
                    }
                    UGCImmVideo uGCImmVideo = (UGCImmVideo) uGCImmVideoDetailViewModel.f56411b0.f();
                    if (uGCVideo.getBelongToCollection() == null) {
                        if (Intrinsics.c((uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (belongToCollection2 = ugcVideo.getBelongToCollection()) == null) ? null : belongToCollection2.getCollectionId(), str)) {
                            UGCVideo ugcVideo2 = uGCImmVideo.getUgcVideo();
                            UGCVideoBelongToCollection uGCVideoBelongToCollectionA = (ugcVideo2 == null || (belongToCollection = ugcVideo2.getBelongToCollection()) == null) ? null : ov.e.a(belongToCollection);
                            if (uGCVideoBelongToCollectionA != null) {
                                uGCVideoBelongToCollectionA.setPosition(Boxing.d(i11));
                            }
                            uGCVideo.setBelongToCollection(uGCVideoBelongToCollectionA);
                        }
                    }
                    i11++;
                }
            }
            if (uGCVideoList != null && (items = uGCVideoList.getItems()) != null && !items.isEmpty()) {
                this.f56421c.M = this.f56422d;
                if (this.f56421c.N == 0 || this.f56421c.O == 0) {
                    this.f56421c.N = this.f56420b;
                    this.f56421c.O = this.f56423e;
                } else {
                    UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.f56421c;
                    uGCImmVideoDetailViewModel2.N = Math.min(uGCImmVideoDetailViewModel2.N, this.f56420b);
                    UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel3 = this.f56421c;
                    uGCImmVideoDetailViewModel3.O = Math.max(uGCImmVideoDetailViewModel3.O, this.f56423e);
                }
                lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "Updated loaded playList range: collectionId=" + this.f56422d + ", range[" + this.f56421c.N + "-" + this.f56421c.O + "]", false, 4, null);
            }
            if (uGCVideoList != null && (pager = uGCVideoList.getPager()) != null && (totalCount = pager.getTotalCount()) != null) {
                this.f56421c.W.q(MapsKt.m(TuplesKt.a(this.f56422d, Boxing.d(totalCount.intValue()))));
            }
            if (this.f56424f) {
                ArrayList arrayList = new ArrayList();
                List<UGCVideo> items3 = uGCVideoList != null ? uGCVideoList.getItems() : null;
                List<UGCVideo> list = items3;
                if (list != null && !list.isEmpty()) {
                    Iterator<T> it = items3.iterator();
                    while (it.hasNext()) {
                        UGCImmVideo uGCImmVideo2 = new UGCImmVideo((UGCVideo) it.next(), null);
                        uGCImmVideo2.setCollectionList(true);
                        uGCImmVideo2.getIsCollectionList();
                        arrayList.add(uGCImmVideo2);
                    }
                }
                this.f56421c.Y.q(arrayList.isEmpty() ? null : new UGCImmVideoContent(arrayList, this.f56419a, uGCVideoList != null ? uGCVideoList.getPager() : null));
            } else {
                this.f56421c.F0(true, uGCVideoList, this.f56420b, this.f56419a, uGCVideoList != null ? uGCVideoList.getPager() : null);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getImmVideoList$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, int i11, int i12, boolean z10, boolean z11, Continuation<? super UGCImmVideoDetailViewModel$getImmVideoList$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$collectionId = str;
        this.$startPosition = i11;
        this.$endPosition = i12;
        this.$isLoadDown = z10;
        this.$withoutPlayInfo = z11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getImmVideoList$1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, this.$isLoadDown, this.$withoutPlayInfo, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$getImmVideoList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isLoadDown, this.$startPosition, this.this$0, this.$collectionId, this.$endPosition, this.$withoutPlayInfo);
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
