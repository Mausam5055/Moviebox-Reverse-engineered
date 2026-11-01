package com.transsion.shorttv.subtitle;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.subtitle.ShortTVSubtitleControlImp$downloadListener$1$onComplete$1", f = "ShortTVSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTVSubtitleControlImp$downloadListener$1$onComplete$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SubtitleDownloadTable $stDownloadTable;
    int label;
    final /* synthetic */ ShortTVSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVSubtitleControlImp$downloadListener$1$onComplete$1(ShortTVSubtitleControlImp shortTVSubtitleControlImp, SubtitleDownloadTable subtitleDownloadTable, Continuation<? super ShortTVSubtitleControlImp$downloadListener$1$onComplete$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTVSubtitleControlImp;
        this.$stDownloadTable = subtitleDownloadTable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVSubtitleControlImp$downloadListener$1$onComplete$1(this.this$0, this.$stDownloadTable, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVSubtitleControlImp$downloadListener$1$onComplete$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object next;
        Object next2;
        Object next3;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (!Intrinsics.c(this.this$0.f53062e.f(), this.$stDownloadTable.getResourceId())) {
            lg.a.C0828a.g(lg.a.f68839a, this.this$0.f53064g + " --> onComplete() --> 字幕下载成功，不是当前视频，不做处理", false, 2, null);
            return Unit.f67061a;
        }
        List arrayList = (List) this.this$0.f53065h.d().f();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        List list = arrayList;
        SubtitleDownloadTable subtitleDownloadTable = this.$stDownloadTable;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ts.b bVar = (ts.b) next;
            if (Intrinsics.c(bVar.a().getId(), subtitleDownloadTable.getId()) && bVar.a().getResourceStreamType() == subtitleDownloadTable.getResourceStreamType()) {
                break;
            }
        }
        SubtitleDownloadTable subtitleDownloadTable2 = this.$stDownloadTable;
        ShortTVSubtitleControlImp shortTVSubtitleControlImp = this.this$0;
        ts.b bVar2 = (ts.b) next;
        if (bVar2 != null) {
            bVar2.e(subtitleDownloadTable2);
        } else {
            ts.b bVar3 = new ts.b(subtitleDownloadTable2);
            arrayList.add(bVar3);
            shortTVSubtitleControlImp.f53065h.d().q(arrayList);
            shortTVSubtitleControlImp.f53060c.K.setSubtitlePath(subtitleDownloadTable2.getPath(), us.a.b(bVar3));
        }
        SubtitleDownloadTable subtitleDownloadTable3 = this.$stDownloadTable;
        Iterator it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!Intrinsics.c(((ts.b) next2).a().getId(), subtitleDownloadTable3.getId()));
        ts.b bVar4 = (ts.b) next2;
        if (bVar4 == null) {
            bVar4 = new ts.b(this.$stDownloadTable);
        }
        if (Intrinsics.c(this.this$0.f53065h.f().f(), Boxing.a(true))) {
            bVar4.f(false);
        } else if (this.$stDownloadTable.getIsAutoDownload()) {
            String string = com.transsion.subtitle_download.utils.d.f55045a.b().getString("k_subtitle_select_lan", null);
            Iterator it3 = list.iterator();
            do {
                if (!it3.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it3.next();
            } while (!Intrinsics.c(((ts.b) next3).a().getLan(), string));
            if (((ts.b) next3) == null || string == null || string.length() == 0 || Intrinsics.c(string, this.$stDownloadTable.getLan())) {
                bVar4.f(true);
            }
        } else {
            bVar4.f(true);
        }
        lg.a.C0828a.q(lg.a.f68839a, this.this$0.f53064g + " --> onComplete() --> 字幕下载成功：" + this.$stDownloadTable.getName() + "," + this.$stDownloadTable.getLanName() + ", isSelect:" + bVar4.d(), false, 2, null);
        this.this$0.f53060c.K.setSubtitlePath(this.$stDownloadTable.getPath(), us.a.b(bVar4));
        if (bVar4.d()) {
            this.this$0.h(bVar4);
        }
        return Unit.f67061a;
    }
}
