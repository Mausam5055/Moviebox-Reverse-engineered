package com.transsnet.downloader.ugc.viewmodel;

import androidx.p009lifecycle.b0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
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
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCListData$1", f = "UGCDownloadViewModel.kt", l = {110}, m = "invokeSuspend")
final class UGCDownloadViewModel$loadUGCListData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ int $finalResolution;
    final /* synthetic */ b0 $liveData;
    final /* synthetic */ String $page;
    final /* synthetic */ String $tabName;
    int label;
    final /* synthetic */ UGCDownloadViewModel this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCListData$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCListData$1$1", f = "UGCDownloadViewModel.kt", l = {101, 103, 105}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ int $finalResolution;
        final /* synthetic */ String $page;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UGCDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCDownloadViewModel uGCDownloadViewModel, String str, String str2, int i11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCDownloadViewModel;
            this.$collectionId = str;
            this.$page = str2;
            this.$finalResolution = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$collectionId, this.$page, this.$finalResolution, continuation);
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
            String str = this.$collectionId;
            String str2 = this.$page;
            int i12 = this.this$0.f59852c;
            Integer numD = Boxing.d(this.$finalResolution);
            this.L$0 = cVar;
            this.label = 1;
            obj = sy.a.C0919a.a(aVarR, str, str2, i12, numD, null, this, 16, null);
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

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCListData$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCListData$1$2", f = "UGCDownloadViewModel.kt", l = {109}, m = "invokeSuspend")
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
        final /* synthetic */ UGCDownloadViewModel f59870a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59871b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f59872c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59873d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ b0 f59874e;

        a(UGCDownloadViewModel uGCDownloadViewModel, int i11, String str, String str2, b0 b0Var) {
            this.f59870a = uGCDownloadViewModel;
            this.f59871b = i11;
            this.f59872c = str;
            this.f59873d = str2;
            this.f59874e = b0Var;
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
        /* JADX WARN: Code duplicated, block: B:70:0x01a7  */
        /* JADX WARN: Code duplicated, block: B:72:0x01b5  */
        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(BaseDto baseDto, Continuation continuation) {
            List<UGCVideoDownload> listL;
            int i11;
            Integer totalCount;
            int iIntValue;
            Map linkedHashMap;
            List list;
            List list2;
            List list3;
            Integer num;
            UGCVideoDownloadList uGCVideoDownloadList = baseDto != null ? (UGCVideoDownloadList) baseDto.getData() : null;
            if (uGCVideoDownloadList == null || (listL = uGCVideoDownloadList.getItems()) == null) {
                listL = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listL.iterator();
            while (true) {
                i11 = 0;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                List<UGCVideoDownloadResource> resources = ((UGCVideoDownload) next).getResources();
                if (((resources == null || resources.isEmpty()) ? 1 : 0) == 0) {
                    arrayList.add(next);
                }
            }
            if ((uGCVideoDownloadList != null ? uGCVideoDownloadList.getCollection() : null) != null && this.f59870a.n().f() == null) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                UGCCollection collection = uGCVideoDownloadList.getCollection();
                lg.a.C0828a.f(c0828a, "UGCDownload", "loadUGCListData collection:" + (collection != null ? collection.getTitle() : null), false, 4, null);
                this.f59870a.n().q(uGCVideoDownloadList.getCollection());
            }
            if (uGCVideoDownloadList != null) {
                try {
                    Pager pager = uGCVideoDownloadList.getPager();
                    if (pager == null || (totalCount = pager.getTotalCount()) == null) {
                        iIntValue = 0;
                    } else {
                        iIntValue = totalCount.intValue();
                    }
                    this.f59870a.M(iIntValue);
                    num = (Integer) this.f59870a.f59869t.get(Boxing.d(this.f59871b));
                    lg.a.C0828a.f(lg.a.f68839a, "UGCDownload", "loadUGCListData resolution " + this.f59871b + ", totalCount: " + iIntValue + ", existingTotal: " + num, false, 4, null);
                    if ((num != null || num.intValue() != iIntValue) && iIntValue > 0) {
                        this.f59870a.f59869t.put(Boxing.d(this.f59871b), Boxing.d(iIntValue));
                        this.f59870a.k(this.f59871b, iIntValue);
                    }
                } catch (Throwable unused) {
                }
            } else {
                iIntValue = 0;
                this.f59870a.M(iIntValue);
                num = (Integer) this.f59870a.f59869t.get(Boxing.d(this.f59871b));
                lg.a.C0828a.f(lg.a.f68839a, "UGCDownload", "loadUGCListData resolution " + this.f59871b + ", totalCount: " + iIntValue + ", existingTotal: " + num, false, 4, null);
                if (num != null) {
                    this.f59870a.f59869t.put(Boxing.d(this.f59871b), Boxing.d(iIntValue));
                    this.f59870a.k(this.f59871b, iIntValue);
                } else {
                    this.f59870a.f59869t.put(Boxing.d(this.f59871b), Boxing.d(iIntValue));
                    this.f59870a.k(this.f59871b, iIntValue);
                }
            }
            int iL = this.f59870a.l(this.f59872c, this.f59873d, this.f59871b);
            UGCDownloadViewModel uGCDownloadViewModel = this.f59870a;
            for (Object obj : arrayList) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                ((UGCVideoDownload) obj).setPlayListPosition(((iL - 1) * uGCDownloadViewModel.f59852c) + i11 + 1);
                i11 = i12;
            }
            String str = this.f59873d;
            if (str == null) {
                Map map = (Map) this.f59870a.s().f();
                str = (map == null || (list3 = (List) map.get(Boxing.d(this.f59871b))) == null) ? null : (String) CollectionsKt.k0(list3);
                if (str == null) {
                    str = "tab";
                }
            }
            Map map2 = (Map) this.f59874e.f();
            if (map2 == null || (linkedHashMap = MapsKt.w(map2)) == null) {
                linkedHashMap = new LinkedHashMap();
            }
            linkedHashMap.put(str, arrayList);
            this.f59874e.q(linkedHashMap);
            this.f59870a.p().q(arrayList);
            Integer num2 = (Integer) this.f59870a.q().f();
            if (num2 == null) {
                Map map3 = (Map) this.f59870a.s().f();
                if (map3 != null) {
                }
                List list4 = (List) this.f59870a.o().f();
                list2 = list;
                if (list2 != null) {
                    b0 b0VarO = this.f59870a.o();
                    Intrinsics.e(list);
                    b0VarO.q(list);
                }
            } else if (num2.intValue() == this.f59871b) {
                Map map4 = (Map) this.f59870a.s().f();
                list = map4 != null ? (List) map4.get(Boxing.d(this.f59871b)) : null;
                List list5 = (List) this.f59870a.o().f();
                list2 = list;
                if (list2 != null && !list2.isEmpty() && !Intrinsics.c(list, list5)) {
                    b0 b0VarO2 = this.f59870a.o();
                    Intrinsics.e(list);
                    b0VarO2.q(list);
                }
            }
            if (Intrinsics.c(this.f59870a.C().f(), Boxing.a(true))) {
                this.f59870a.K(true);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCDownloadViewModel$loadUGCListData$1(UGCDownloadViewModel uGCDownloadViewModel, String str, String str2, int i11, String str3, b0 b0Var, Continuation<? super UGCDownloadViewModel$loadUGCListData$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCDownloadViewModel;
        this.$collectionId = str;
        this.$page = str2;
        this.$finalResolution = i11;
        this.$tabName = str3;
        this.$liveData = b0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCDownloadViewModel$loadUGCListData$1(this.this$0, this.$collectionId, this.$page, this.$finalResolution, this.$tabName, this.$liveData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCDownloadViewModel$loadUGCListData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = d.f(d.u(d.s(new AnonymousClass1(this.this$0, this.$collectionId, this.$page, this.$finalResolution, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0, this.$finalResolution, this.$page, this.$tabName, this.$liveData);
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
