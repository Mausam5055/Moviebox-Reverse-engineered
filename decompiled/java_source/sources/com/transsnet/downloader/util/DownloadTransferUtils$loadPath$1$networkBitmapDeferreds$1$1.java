package com.transsnet.downloader.util;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import java.io.File;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Pair;", "", "Ljava/io/File;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Pair;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1", f = "DownloadTransferUtils.kt", l = {142}, m = "invokeSuspend")
final class DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Pair<? extends String, ? extends File>>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $url;
    int label;

    /* JADX INFO: renamed from: com.transsnet.downloader.util.DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Pair;", "", "Ljava/io/File;", "kotlin.jvm.PlatformType", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Pair;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1$1", f = "DownloadTransferUtils.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Pair<? extends String, ? extends File>>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ String $url;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$url = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, this.$url, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Pair<String, ? extends File>> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            File file = Glide.with(this.$context).asFile().load2(this.$url).submit().get();
            lg.a.C0828a.r(lg.a.f68839a, TransferBottomToolsView.TAG, new String[]{"封面加载--完成, url:" + this.$url}, false, 4, null);
            return TuplesKt.a(this.$url, file);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1(String str, Context context, Continuation<? super DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1(this.$url, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Pair<String, ? extends File>> continuation) {
        return ((DownloadTransferUtils$loadPath$1$networkBitmapDeferreds$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                lg.a.C0828a.f(lg.a.f68839a, TransferBottomToolsView.TAG, "封面加载, url:" + this.$url, false, 4, null);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$context, this.$url, null);
                this.label = 1;
                obj = TimeoutKt.c(300L, anonymousClass1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return (Pair) obj;
        } catch (TimeoutCancellationException e11) {
            e11.printStackTrace();
            lg.a.C0828a.l(lg.a.f68839a, TransferBottomToolsView.TAG, "封面加载超时 " + e11 + "， " + this.$url, false, 4, null);
            return TuplesKt.a(this.$url, null);
        } catch (Exception e12) {
            e12.printStackTrace();
            lg.a.C0828a.l(lg.a.f68839a, TransferBottomToolsView.TAG, "封面加载失败 " + e12 + "， " + this.$url, false, 4, null);
            return TuplesKt.a(this.$url, null);
        }
    }
}
