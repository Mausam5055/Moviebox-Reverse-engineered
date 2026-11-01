package com.transsnet.downloader.guard;

import android.app.Notification;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.guard.DownloadGuard$otherStatus$1", f = "DownloadGuard.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadGuard$otherStatus$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $downloadInfo;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadGuard$otherStatus$1(DownloadBean downloadBean, Continuation<? super DownloadGuard$otherStatus$1> continuation) {
        super(2, continuation);
        this.$downloadInfo = downloadBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadGuard$otherStatus$1(this.$downloadInfo, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadGuard$otherStatus$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        NotificationCompat.m mVarS;
        NotificationCompat.m mVarR;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            String packageName = Utils.a().getPackageName();
            DownloadGuard downloadGuard = DownloadGuard.f59384a;
            RemoteViews remoteViews = new RemoteViews(packageName, downloadGuard.g());
            NotificationCompat.m mVarJ = downloadGuard.j(this.$downloadInfo);
            Notification notificationC = (mVarJ == null || (mVarS = mVarJ.s(remoteViews)) == null || (mVarR = mVarS.r(remoteViews)) == null) ? null : mVarR.c();
            if (notificationC != null) {
                t.d(Utils.a()).f(10086, notificationC);
            }
        } catch (Throwable th2) {
            lg.a.C0828a.f(lg.a.f68839a, "notify", "DownloadGuard {" + th2 + "}", false, 4, null);
        }
        return Unit.f67061a;
    }
}
