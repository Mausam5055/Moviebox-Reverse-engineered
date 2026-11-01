package com.transsion.lib_web.cache;

import android.os.Handler;
import android.os.Looper;
import android.webkit.ValueCallback;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.n;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.cache.TWebViewAdCacheManager$getAdStatus$2", f = "TWebViewAdCacheManager.kt", l = {325}, m = "invokeSuspend")
@SourceDebugExtension
final class TWebViewAdCacheManager$getAdStatus$2 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    TWebViewAdCacheManager$getAdStatus$2(Continuation<? super TWebViewAdCacheManager$getAdStatus$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TWebViewAdCacheManager$getAdStatus$2 tWebViewAdCacheManager$getAdStatus$2 = new TWebViewAdCacheManager$getAdStatus$2(continuation);
        tWebViewAdCacheManager$getAdStatus$2.L$0 = obj;
        return tWebViewAdCacheManager$getAdStatus$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((TWebViewAdCacheManager$getAdStatus$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            final n0 n0Var = (n0) this.L$0;
            this.L$0 = n0Var;
            this.label = 1;
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(this), 1);
            cancellableContinuationImpl.initCancellability();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.transsion.lib_web.cache.TWebViewAdCacheManager$getAdStatus$2$1$1

                static final class a implements ValueCallback {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ n f46140a;

                    a(n nVar) {
                        this.f46140a = nVar;
                    }

                    @Override // android.webkit.ValueCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final void onReceiveValue(String str) {
                        Intrinsics.e(str);
                        String strK0 = StringsKt.K0(str, "\"");
                        if (Intrinsics.c("fail", strK0)) {
                            BridgeWebView bridgeWebView = TWebViewAdCacheManager.f46138c;
                            if (bridgeWebView != null) {
                                bridgeWebView.reload();
                            }
                            strK0 = strK0 + " reload 可以先关闭页面几秒后打开";
                        }
                        if (this.f46140a.isActive()) {
                            this.f46140a.resumeWith(Result.m454constructorimpl(strK0));
                        }
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    BridgeWebView bridgeWebView = TWebViewAdCacheManager.f46138c;
                    if (bridgeWebView != null) {
                        bridgeWebView.evaluateJavascript("window.getAdStatus()", new a(cancellableContinuationImpl));
                        return;
                    }
                    n nVar = cancellableContinuationImpl;
                    if (nVar.isActive()) {
                        nVar.resumeWith(Result.m454constructorimpl("webview null"));
                    }
                }
            });
            obj = cancellableContinuationImpl.getResult();
            if (obj == IntrinsicsKt.f()) {
                DebugProbesKt.c(this);
            }
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
