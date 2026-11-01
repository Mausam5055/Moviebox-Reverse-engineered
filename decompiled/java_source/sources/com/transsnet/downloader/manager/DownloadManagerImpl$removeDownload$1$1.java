package com.transsnet.downloader.manager;

import android.app.Application;
import android.net.Uri;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleBean;
import com.transsnet.downloader.y;
import java.io.File;
import java.util.Iterator;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$removeDownload$1$1", f = "DownloadManagerImpl.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadManagerImpl$removeDownload$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $bean;
    final /* synthetic */ String $path;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$removeDownload$1$1(String str, DownloadBean downloadBean, Continuation<? super DownloadManagerImpl$removeDownload$1$1> continuation) {
        super(2, continuation);
        this.$path = str;
        this.$bean = downloadBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$removeDownload$1$1(this.$path, this.$bean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerImpl$removeDownload$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String str = this.$path;
        if (str != null) {
            int rootPathType = this.$bean.getRootPathType();
            if (rootPathType != 2) {
                if (rootPathType == 3 && Build.VERSION.SDK_INT >= 29) {
                    y yVar = y.f60245a;
                    Application applicationA = Utils.a();
                    Intrinsics.g(applicationA, "getApp(...)");
                    yVar.d(applicationA, str);
                }
            } else if (Build.VERSION.SDK_INT >= 29) {
                y yVar2 = y.f60245a;
                Application applicationA2 = Utils.a();
                Intrinsics.g(applicationA2, "getApp(...)");
                yVar2.e(applicationA2, str);
            }
            if (StringsKt.W(str, "content", false, 2, null)) {
                k1.a aVarG = k1.a.g(Utils.a(), Uri.parse(str));
                if (aVarG != null) {
                    Boxing.a(aVarG.d());
                }
            } else {
                Boxing.a(new File(str).delete());
            }
        }
        Iterator<T> it = this.$bean.getSubtitleList().iterator();
        while (it.hasNext()) {
            File file = new File(String.valueOf(((SubtitleBean) it.next()).getPath()));
            if (file.exists()) {
                file.delete();
            }
        }
        return Unit.f67061a;
    }
}
