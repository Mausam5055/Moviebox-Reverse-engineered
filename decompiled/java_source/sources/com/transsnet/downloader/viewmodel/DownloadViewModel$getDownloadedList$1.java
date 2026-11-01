package com.transsnet.downloader.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getDownloadedList$1", f = "DownloadViewModel.kt", l = {Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadViewModel$getDownloadedList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $fromDb;
    int label;
    final /* synthetic */ DownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadViewModel$getDownloadedList$1(boolean z10, DownloadViewModel downloadViewModel, Continuation<? super DownloadViewModel$getDownloadedList$1> continuation) {
        super(2, continuation);
        this.$fromDb = z10;
        this.this$0 = downloadViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadViewModel$getDownloadedList$1(this.$fromDb, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadViewModel$getDownloadedList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objA;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            boolean z10 = this.$fromDb;
            this.label = 1;
            objA = downloadEsHelperA.A(z10, this);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            objA = obj;
        }
        List<DownloadBean> list = (List) objA;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.this$0.f60041a;
            Intrinsics.g(str, "access$getTAG$p(...)");
            lg.a.C0828a.r(c0828a, str, new String[]{"getDownloadedList, is empty"}, false, 4, null);
            this.this$0.f60056p.n(new ArrayList());
            this.this$0.f60057q.n(MapsKt.h());
            return Unit.f67061a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (true) {
            String str2 = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            DownloadBean downloadBean = (DownloadBean) next;
            String subjectId = downloadBean.getSubjectId();
            if (subjectId == null || StringsKt.q0(subjectId)) {
                subjectId = null;
            }
            String ugcVideoCollectionId = downloadBean.getUgcVideoCollectionId();
            if (ugcVideoCollectionId != null && !StringsKt.q0(ugcVideoCollectionId)) {
                str2 = ugcVideoCollectionId;
            }
            if (subjectId != null) {
                obj2 = "subject:" + subjectId;
            } else if (str2 != null) {
                obj2 = "collection:" + str2;
            } else {
                obj2 = new Object();
            }
            Object arrayList = linkedHashMap.get(obj2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(obj2, arrayList);
            }
            ((List) arrayList).add(next);
        }
        ArrayList arrayList2 = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (DownloadBean downloadBean2 : list) {
            String subjectId2 = downloadBean2.getSubjectId();
            if (subjectId2 == null || StringsKt.q0(subjectId2)) {
                subjectId2 = null;
            }
            String ugcVideoCollectionId2 = downloadBean2.getUgcVideoCollectionId();
            if (ugcVideoCollectionId2 == null || StringsKt.q0(ugcVideoCollectionId2)) {
                ugcVideoCollectionId2 = null;
            }
            if (subjectId2 == null && ugcVideoCollectionId2 == null) {
                arrayList2.add(downloadBean2);
            } else {
                String str3 = subjectId2 != null ? "subject:" + subjectId2 : "collection:" + ugcVideoCollectionId2;
                if (!linkedHashSet.contains(str3)) {
                    List list3 = (List) linkedHashMap.get(str3);
                    List list4 = list3;
                    if (list4 != null && !list4.isEmpty()) {
                        if (list3.size() == 1) {
                            arrayList2.addAll(list3);
                        } else {
                            arrayList2.add(this.this$0.o0(list3));
                        }
                    }
                    linkedHashSet.add(str3);
                }
            }
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        String str4 = this.this$0.f60041a;
        Intrinsics.g(str4, "access$getTAG$p(...)");
        lg.a.C0828a.r(c0828a2, str4, new String[]{"getDownloadedList, size = " + arrayList2.size()}, false, 4, null);
        this.this$0.f60056p.n(arrayList2);
        this.this$0.f60057q.n(this.this$0.D(arrayList2));
        return Unit.f67061a;
    }
}
