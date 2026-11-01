package com.transsion.lib_web.cache;

import android.os.Handler;
import android.os.Looper;
import android.webkit.ValueCallback;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Z"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.cache.TWebViewAdCacheManager$isWebviewLoaded$3", f = "TWebViewAdCacheManager.kt", l = {325}, m = "invokeSuspend")
@SourceDebugExtension
final class TWebViewAdCacheManager$isWebviewLoaded$3 extends SuspendLambda implements Function2<n0, Continuation<? super Boolean>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    TWebViewAdCacheManager$isWebviewLoaded$3(Continuation<? super TWebViewAdCacheManager$isWebviewLoaded$3> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TWebViewAdCacheManager$isWebviewLoaded$3 tWebViewAdCacheManager$isWebviewLoaded$3 = new TWebViewAdCacheManager$isWebviewLoaded$3(continuation);
        tWebViewAdCacheManager$isWebviewLoaded$3.L$0 = obj;
        return tWebViewAdCacheManager$isWebviewLoaded$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Boolean> continuation) {
        return ((TWebViewAdCacheManager$isWebviewLoaded$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
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
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.transsion.lib_web.cache.TWebViewAdCacheManager$isWebviewLoaded$3$1$1

                static final class a implements ValueCallback {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ n f46141a;

                    a(n nVar) {
                        this.f46141a = nVar;
                    }

                    @Override // android.webkit.ValueCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final void onReceiveValue(String str) {
                        BridgeWebView bridgeWebView;
                        Intrinsics.e(str);
                        String strK0 = StringsKt.K0(str, "\"");
                        b.f46145a.g("isWebviewLoaded adStatus = " + strK0);
                        if (Intrinsics.c("fail", strK0) && (bridgeWebView = TWebViewAdCacheManager.f46138c) != null) {
                            bridgeWebView.reload();
                        }
                        if (this.f46141a.isActive()) {
                            n nVar = this.f46141a;
                            Result.Companion companion = Result.INSTANCE;
                            nVar.resumeWith(Result.m454constructorimpl(Boolean.valueOf(Intrinsics.c(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, strK0))));
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
                        Result.Companion companion = Result.INSTANCE;
                        nVar.resumeWith(Result.m454constructorimpl(Boolean.FALSE));
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
