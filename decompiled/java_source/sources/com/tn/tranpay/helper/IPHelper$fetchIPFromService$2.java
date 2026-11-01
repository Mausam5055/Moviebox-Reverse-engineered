package com.tn.tranpay.helper;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.helper.IPHelper$fetchIPFromService$2", f = "IPHelper.kt", l = {}, m = "invokeSuspend")
final class IPHelper$fetchIPFromService$2 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    final /* synthetic */ String $serviceUrl;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    IPHelper$fetchIPFromService$2(String str, Continuation<? super IPHelper$fetchIPFromService$2> continuation) {
        super(2, continuation);
        this.$serviceUrl = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IPHelper$fetchIPFromService$2(this.$serviceUrl, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((IPHelper$fetchIPFromService$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c7  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x006b: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:19:0x006b */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        String string;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        HttpURLConnection httpURLConnection3 = null;
        str = null;
        str = null;
        String str = null;
        try {
            try {
                URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.$serviceUrl).openConnection());
                Intrinsics.f(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                httpURLConnection = (HttpURLConnection) uRLConnection;
                try {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setReadTimeout(5000);
                    httpURLConnection.setRequestProperty("User-Agent", "TranPay-Android");
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                Intrinsics.g(line, "readLine()");
                                string = StringsKt.n1(line).toString();
                            } else {
                                string = null;
                            }
                            CloseableKt.a(bufferedReader, null);
                            str = string;
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.a(bufferedReader, th2);
                                throw th3;
                            }
                        }
                    } else {
                        ai.a.e(ai.a.f619a, "IP服务响应错误: " + this.$serviceUrl + ", 响应码: " + responseCode, null, 2, null);
                    }
                } catch (Exception e11) {
                    e = e11;
                    ai.a.e(ai.a.f619a, "请求IP服务异常: " + this.$serviceUrl + ", 错误: " + e.getMessage(), null, 2, null);
                    if (httpURLConnection != null) {
                    }
                    return str;
                }
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection3 = httpURLConnection2;
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            httpURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
            throw th;
        }
        httpURLConnection.disconnect();
        return str;
    }
}
