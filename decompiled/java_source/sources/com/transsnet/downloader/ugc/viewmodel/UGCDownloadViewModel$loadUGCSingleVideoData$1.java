package com.transsnet.downloader.ugc.viewmodel;

import androidx.p009lifecycle.b0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoData$1", f = "UGCDownloadViewModel.kt", l = {Sdk$SDKError.Reason.AD_IS_LOADING_VALUE}, m = "invokeSuspend")
final class UGCDownloadViewModel$loadUGCSingleVideoData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCDownloadViewModel this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoData$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoData$1$1", f = "UGCDownloadViewModel.kt", l = {194, 196, 198}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $ugcVideoId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UGCDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCDownloadViewModel uGCDownloadViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCDownloadViewModel;
            this.$ugcVideoId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, continuation);
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
                    if (i11 != 2 && i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            cVar = (kotlinx.coroutines.flow.c) this.L$0;
            sy.a aVarR = this.this$0.r();
            String str = this.$ugcVideoId;
            this.L$0 = cVar;
            this.label = 1;
            obj = sy.a.C0919a.c(aVarR, str, null, this, 2, null);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(baseDto, this) == objF) {
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

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoData$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoData$1$2", f = "UGCDownloadViewModel.kt", l = {Sdk$SDKError.Reason.AD_CONSUMED_VALUE}, m = "invokeSuspend")
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
        final /* synthetic */ UGCDownloadViewModel f59875a;

        a(UGCDownloadViewModel uGCDownloadViewModel) {
            this.f59875a = uGCDownloadViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(BaseDto baseDto, Continuation continuation) {
            List<UGCVideoDownload> listL;
            Map linkedHashMap;
            String resolutions;
            Integer numV;
            String resolutions2;
            Integer numV2;
            UGCVideoDownloadList uGCVideoDownloadList = baseDto != null ? (UGCVideoDownloadList) baseDto.getData() : null;
            if (uGCVideoDownloadList == null || (listL = uGCVideoDownloadList.getItems()) == null) {
                listL = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listL.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                List<UGCVideoDownloadResource> resources = ((UGCVideoDownload) next).getResources();
                if (((resources == null || resources.isEmpty()) ? 1 : 0) == 0) {
                    arrayList.add(next);
                }
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                UGCVideoDownloadResource resource = ((UGCVideoDownload) it2.next()).getResource();
                if (resource != null && (resolutions2 = resource.getResolutions()) != null && (numV2 = StringsKt.v(resolutions2)) != null) {
                    linkedHashSet.add(Boxing.d(numV2.intValue()));
                }
            }
            List listH0 = CollectionsKt.H0(linkedHashSet);
            this.f59875a.f59862m.q(listH0);
            UGCDownloadViewModel uGCDownloadViewModel = this.f59875a;
            Iterator it3 = listH0.iterator();
            while (it3.hasNext()) {
                int iIntValue = ((Number) it3.next()).intValue();
                b0 b0VarV = uGCDownloadViewModel.v(iIntValue);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    UGCVideoDownloadResource resource2 = ((UGCVideoDownload) obj).getResource();
                    if (resource2 != null && (resolutions = resource2.getResolutions()) != null && (numV = StringsKt.v(resolutions)) != null && numV.intValue() == iIntValue) {
                        arrayList2.add(obj);
                    }
                }
                Map map = (Map) b0VarV.f();
                if (map == null || (linkedHashMap = MapsKt.w(map)) == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                linkedHashMap.put("tab", arrayList2);
                b0VarV.q(linkedHashMap);
            }
            if (!listH0.isEmpty()) {
                int iIndexOf = listH0.indexOf(Boxing.d(com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0)));
                Integer num = (Integer) CollectionsKt.l0(listH0, iIndexOf >= 0 ? iIndexOf : 0);
                if (num == null) {
                    num = (Integer) CollectionsKt.k0(listH0);
                }
                if (num != null) {
                    UGCDownloadViewModel uGCDownloadViewModel2 = this.f59875a;
                    int iIntValue2 = num.intValue();
                    uGCDownloadViewModel2.q().q(Boxing.d(iIntValue2));
                    b0 b0Var = (b0) uGCDownloadViewModel2.u().get(Boxing.d(iIntValue2));
                    Map map2 = b0Var != null ? (Map) b0Var.f() : null;
                    List list = map2 != null ? (List) map2.get("tab") : null;
                    List list2 = list;
                    if (list2 != null && !list2.isEmpty()) {
                        b0 b0VarP = uGCDownloadViewModel2.p();
                        Intrinsics.e(list);
                        b0VarP.q(list);
                    }
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCDownloadViewModel$loadUGCSingleVideoData$1(UGCDownloadViewModel uGCDownloadViewModel, String str, Continuation<? super UGCDownloadViewModel$loadUGCSingleVideoData$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCDownloadViewModel;
        this.$ugcVideoId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCDownloadViewModel$loadUGCSingleVideoData$1(this.this$0, this.$ugcVideoId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCDownloadViewModel$loadUGCSingleVideoData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = d.f(d.u(d.s(new AnonymousClass1(this.this$0, this.$ugcVideoId, null)), y0.b()), new AnonymousClass2(null));
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
