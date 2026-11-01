package com.transsion.subtitle_download.utils;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.subtitle_download.task.p;
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
import kotlinx.coroutines.u0;
import nh.m;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle_download.utils.ObserveNetworkState$retryDownload$1", f = "ObserveNetworkState.kt", l = {59, 66}, m = "invokeSuspend")
@SourceDebugExtension
final class ObserveNetworkState$retryDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $msg;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ObserveNetworkState$retryDownload$1(String str, Continuation<? super ObserveNetworkState$retryDownload$1> continuation) {
        super(2, continuation);
        this.$msg = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ObserveNetworkState$retryDownload$1(this.$msg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ObserveNetworkState$retryDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0059  */
    /* JADX WARN: Code duplicated, block: B:25:0x0092 A[LOOP:0: B:23:0x008c->B:25:0x0092, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0059, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List list;
        Iterator it;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            list = (List) obj;
            if (list != null) {
                String str = this.$msg;
                b.f55044a.a(ObserveNetworkState.f55042a.b() + " --> retryDownload() --> " + str + " --> 数据库获取到的失败的任务数量 it.size = " + list.size());
                it = list.iterator();
                while (it.hasNext()) {
                    p.e(p.f55038a, (SubtitleDownloadTable) it.next(), false, 2, null);
                }
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        this.label = 1;
        if (u0.a(5000L, this) == objF) {
            return objF;
        }
        if (!m.f70474a.e()) {
            return Unit.f67061a;
        }
        SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        mu.a aVarL0 = companion.b(applicationA).l0();
        this.label = 2;
        obj = mu.a.C0841a.a(aVarL0, 0, this, 1, null);
        if (obj == objF) {
            return objF;
        }
        list = (List) obj;
        if (list != null) {
            String str2 = this.$msg;
            b.f55044a.a(ObserveNetworkState.f55042a.b() + " --> retryDownload() --> " + str2 + " --> 数据库获取到的失败的任务数量 it.size = " + list.size());
            it = list.iterator();
            while (it.hasNext()) {
                p.e(p.f55038a, (SubtitleDownloadTable) it.next(), false, 2, null);
            }
        }
        return Unit.f67061a;
    }
}
