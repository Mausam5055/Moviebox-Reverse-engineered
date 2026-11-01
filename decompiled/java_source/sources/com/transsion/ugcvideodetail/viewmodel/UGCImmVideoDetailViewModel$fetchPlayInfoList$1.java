package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfoList;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1", f = "UGCImmVideoDetailViewModel.kt", l = {582}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$fetchPlayInfoList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isCollectionList;
    final /* synthetic */ boolean $isLoadDown;
    final /* synthetic */ Pager $pager;
    final /* synthetic */ int $startPosition;
    final /* synthetic */ UGCVideoList $videoData;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {541, 543, 548, 577}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ UGCVideoList $videoData;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, UGCVideoList uGCVideoList, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCImmVideoDetailViewModel;
            this.$videoData = uGCVideoList;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$videoData, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:102:0x01f2  */
        /* JADX WARN: Code duplicated, block: B:105:0x020a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x00e4  */
        /* JADX WARN: Code duplicated, block: B:48:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:50:0x0108 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:53:0x010d  */
        /* JADX WARN: Code duplicated, block: B:54:0x0112  */
        /* JADX WARN: Code duplicated, block: B:57:0x0118  */
        /* JADX WARN: Code duplicated, block: B:66:0x0136  */
        /* JADX WARN: Code duplicated, block: B:67:0x0139  */
        /* JADX WARN: Code duplicated, block: B:70:0x0141  */
        /* JADX WARN: Code duplicated, block: B:71:0x0144  */
        /* JADX WARN: Code duplicated, block: B:74:0x0164  */
        /* JADX WARN: Code duplicated, block: B:76:0x017a A[PHI: r0 r1 r2 r3 r4
  0x017a: PHI (r0v16 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo) = 
  (r0v15 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
  (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
  (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
  (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
  (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
  (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
 binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
  0x017a: PHI (r1v24 java.util.Iterator) = 
  (r1v23 java.util.Iterator)
  (r1v25 java.util.Iterator)
  (r1v25 java.util.Iterator)
  (r1v25 java.util.Iterator)
  (r1v25 java.util.Iterator)
  (r1v25 java.util.Iterator)
 binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
  0x017a: PHI (r2v5 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel) = 
  (r2v4 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
  (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
  (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
  (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
  (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
  (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
 binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
  0x017a: PHI (r3v7 com.tn.lib.net.bean.BaseDto) = 
  (r3v6 com.tn.lib.net.bean.BaseDto)
  (r3v8 com.tn.lib.net.bean.BaseDto)
  (r3v8 com.tn.lib.net.bean.BaseDto)
  (r3v8 com.tn.lib.net.bean.BaseDto)
  (r3v8 com.tn.lib.net.bean.BaseDto)
  (r3v8 com.tn.lib.net.bean.BaseDto)
 binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
  0x017a: PHI (r4v3 kotlinx.coroutines.flow.c) = 
  (r4v2 kotlinx.coroutines.flow.c)
  (r4v4 kotlinx.coroutines.flow.c)
  (r4v4 kotlinx.coroutines.flow.c)
  (r4v4 kotlinx.coroutines.flow.c)
  (r4v4 kotlinx.coroutines.flow.c)
  (r4v4 kotlinx.coroutines.flow.c)
 binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:78:0x0185  */
        /* JADX WARN: Code duplicated, block: B:81:0x0190  */
        /* JADX WARN: Code duplicated, block: B:83:0x0193  */
        /* JADX WARN: Code duplicated, block: B:84:0x0196  */
        /* JADX WARN: Code duplicated, block: B:86:0x019c  */
        /* JADX WARN: Code duplicated, block: B:89:0x01a7  */
        /* JADX WARN: Code duplicated, block: B:92:0x01af  */
        /* JADX WARN: Code duplicated, block: B:95:0x01ba  */
        /* JADX WARN: Code duplicated, block: B:99:0x01c4  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00ee -> B:76:0x017a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0106 -> B:51:0x0109). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:76:0x017a
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r27) {
            /*
                Method dump skipped, instruction units count: 537
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$2", f = "UGCImmVideoDetailViewModel.kt", l = {581}, m = "invokeSuspend")
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
        final /* synthetic */ UGCVideoList f56413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f56415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ UGCImmVideoDetailViewModel f56416d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f56417e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Pager f56418f;

        a(UGCVideoList uGCVideoList, int i11, boolean z10, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, boolean z11, Pager pager) {
            this.f56413a = uGCVideoList;
            this.f56414b = i11;
            this.f56415c = z10;
            this.f56416d = uGCImmVideoDetailViewModel;
            this.f56417e = z11;
            this.f56418f = pager;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(UGCVideoPlayInfoList uGCVideoPlayInfoList, Continuation continuation) {
            List<UGCVideoPlayInfo> list;
            List<UGCVideoPlayInfo> items = uGCVideoPlayInfoList != null ? uGCVideoPlayInfoList.getItems() : null;
            UGCVideoList uGCVideoList = this.f56413a;
            List<UGCVideo> items2 = uGCVideoList != null ? uGCVideoList.getItems() : null;
            ArrayList arrayList = new ArrayList();
            List<UGCVideo> list2 = items2;
            if (list2 != null && !list2.isEmpty() && (list = items) != null && !list.isEmpty()) {
                List<UGCVideoPlayInfo> list3 = items;
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(list3, 10)), 16));
                for (Object obj : list3) {
                    linkedHashMap.put(((UGCVideoPlayInfo) obj).getUgcVideoId(), obj);
                }
                int i11 = this.f56414b;
                lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "fetchPlayInfoList,isCollectionList:" + this.f56415c + ", startPos:" + i11 + ", endPos:" + (items2.size() + i11) + " ", false, 4, null);
                boolean z10 = this.f56415c;
                for (UGCVideo uGCVideo : items2) {
                    UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) linkedHashMap.get(uGCVideo.getUgcVideoId());
                    UGCImmVideo uGCImmVideo = new UGCImmVideo(uGCVideo, uGCVideoPlayInfo);
                    uGCImmVideo.setDownloadStatus(uGCVideoPlayInfo != null ? uGCVideoPlayInfo.getDownloadStatus() : 0);
                    uGCImmVideo.setCollectionList(z10);
                    arrayList.add(uGCImmVideo);
                }
            }
            this.f56416d.Y.q(arrayList.isEmpty() ? null : new UGCImmVideoContent(arrayList, this.f56417e, this.f56418f));
            if (this.f56415c && !arrayList.isEmpty()) {
                this.f56416d.E0(arrayList, this.f56417e);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$fetchPlayInfoList$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, UGCVideoList uGCVideoList, int i11, boolean z10, boolean z11, Pager pager, Continuation<? super UGCImmVideoDetailViewModel$fetchPlayInfoList$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$videoData = uGCVideoList;
        this.$startPosition = i11;
        this.$isCollectionList = z10;
        this.$isLoadDown = z11;
        this.$pager = pager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$fetchPlayInfoList$1(this.this$0, this.$videoData, this.$startPosition, this.$isCollectionList, this.$isLoadDown, this.$pager, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$fetchPlayInfoList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$videoData, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$videoData, this.$startPosition, this.$isCollectionList, this.this$0, this.$isLoadDown, this.$pager);
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
