package com.transsion.ugcvideodetail.hepler.subtitle;

import androidx.p009lifecycle.b0;
import com.transsion.subtitle.helper.e;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1", f = "UGCImmVideoSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SubtitleDownloadTable $stDownloadTable;
    int label;
    final /* synthetic */ UGCImmVideoSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1(UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp, SubtitleDownloadTable subtitleDownloadTable, Continuation<? super UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoSubtitleControlImp;
        this.$stDownloadTable = subtitleDownloadTable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1(this.this$0, this.$stDownloadTable, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List arrayList;
        Object obj2;
        Object next;
        b0 b0VarD;
        Object next2;
        b0 b0VarD2;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (!Intrinsics.c(this.this$0.u(), this.$stDownloadTable.getResourceId())) {
            lg.a.C0828a.f(lg.a.f68839a, this.this$0.f56378h, " onComplete() --> 字幕下载成功，不是当前视频，不做处理", false, 4, null);
            return Unit.f67061a;
        }
        a aVar = this.this$0.f56375e;
        if (aVar == null || (b0VarD2 = aVar.d()) == null || (arrayList = (List) b0VarD2.f()) == null) {
            arrayList = new ArrayList();
        }
        List list = arrayList;
        SubtitleDownloadTable subtitleDownloadTable = this.$stDownloadTable;
        Iterator it = list.iterator();
        while (true) {
            obj2 = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            eu.a aVar2 = (eu.a) next;
            if (Intrinsics.c(aVar2.b().getId(), subtitleDownloadTable.getId()) && aVar2.b().getResourceStreamType() == subtitleDownloadTable.getResourceStreamType()) {
                break;
            }
        }
        SubtitleDownloadTable subtitleDownloadTable2 = this.$stDownloadTable;
        UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp = this.this$0;
        eu.a aVar3 = (eu.a) next;
        if (aVar3 != null) {
            aVar3.h(subtitleDownloadTable2);
        } else {
            eu.a aVar4 = new eu.a(subtitleDownloadTable2);
            arrayList.add(aVar4);
            a aVar5 = uGCImmVideoSubtitleControlImp.f56375e;
            if (aVar5 != null && (b0VarD = aVar5.d()) != null) {
                b0VarD.q(arrayList);
            }
            uGCImmVideoSubtitleControlImp.f56374d.setSubtitlePath(subtitleDownloadTable2.getPath(), e.b(aVar4));
        }
        SubtitleDownloadTable subtitleDownloadTable3 = this.$stDownloadTable;
        Iterator it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!Intrinsics.c(((eu.a) next2).b().getId(), subtitleDownloadTable3.getId()));
        eu.a aVar6 = (eu.a) next2;
        if (aVar6 == null) {
            aVar6 = new eu.a(this.$stDownloadTable);
        }
        if (this.$stDownloadTable.getIsAutoDownload()) {
            String string = com.transsion.subtitle_download.utils.d.f55045a.b().getString("k_subtitle_select_lan", null);
            for (Object obj3 : list) {
                if (Intrinsics.c(((eu.a) obj3).b().getLan(), string)) {
                    obj2 = obj3;
                    break;
                }
            }
            if (((eu.a) obj2) == null || string == null || string.length() == 0 || Intrinsics.c(string, this.$stDownloadTable.getLan())) {
                aVar6.l(true);
            }
        } else {
            aVar6.l(true);
        }
        lg.a.C0828a.r(lg.a.f68839a, this.this$0.f56378h, new String[]{" onComplete() --> 字幕下载成功：" + this.$stDownloadTable.getName() + "," + this.$stDownloadTable.getLanName() + ", isSelect:" + aVar6.f()}, false, 4, null);
        this.this$0.f56374d.setSubtitlePath(this.$stDownloadTable.getPath(), e.b(aVar6));
        if (aVar6.f()) {
            this.this$0.f(aVar6);
        }
        return Unit.f67061a;
    }
}
