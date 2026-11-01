package com.transsnet.downloader;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Pair;", "", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Pair;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.DownloadManagerApi$fetchLatestDownloadData$2", f = "DownloadManagerApi.kt", l = {TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 109}, m = "invokeSuspend")
final class DownloadManagerApi$fetchLatestDownloadData$2 extends SuspendLambda implements Function2<n0, Continuation<? super Pair<? extends Integer, ? extends List<? extends DownloadBean>>>, Object> {
    Object L$0;
    int label;

    DownloadManagerApi$fetchLatestDownloadData$2(Continuation<? super DownloadManagerApi$fetchLatestDownloadData$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerApi$fetchLatestDownloadData$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Pair<Integer, ? extends List<? extends DownloadBean>>> continuation) {
        return ((DownloadManagerApi$fetchLatestDownloadData$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List arrayList;
        List list;
        int size;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                arrayList = (List) this.L$0;
                ResultKt.b(obj);
            }
            list = (List) obj;
            if (list != null) {
                size = list.size();
            } else {
                size = 0;
            }
            Integer numD = Boxing.d(size);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            return new Pair(numD, arrayList);
        }
        ResultKt.b(obj);
        DownloadListManager downloadListManagerA = DownloadListManager.f59994m.a();
        this.label = 1;
        obj = downloadListManagerA.J(3, this);
        if (obj == objF) {
            return objF;
        }
        List list2 = (List) obj;
        DownloadListManager downloadListManagerA2 = DownloadListManager.f59994m.a();
        this.L$0 = list2;
        this.label = 2;
        Object objO = downloadListManagerA2.O(this);
        if (objO == objF) {
            return objF;
        }
        arrayList = list2;
        obj = objO;
        list = (List) obj;
        if (list != null) {
            size = list.size();
        } else {
            size = 0;
        }
        Integer numD2 = Boxing.d(size);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        return new Pair(numD2, arrayList);
    }
}
