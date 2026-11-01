package com.transsion.web.fragment;

import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.transsion.web.bean.ApiRequestData;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1", f = "WebFragmentV2.kt", l = {374}, m = "invokeSuspend")
final class WebFragmentV2$addJsInterface$2$1$request$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $callbackId;
    final /* synthetic */ ApiRequestData $requestData;
    final /* synthetic */ String $url;
    int label;
    final /* synthetic */ WebFragmentV2 this$0;
    final /* synthetic */ WebFragmentV2$addJsInterface$2$1 this$1;

    /* JADX INFO: renamed from: com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$1", f = "WebFragmentV2.kt", l = {356, 360, 367, 369}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ ApiRequestData $requestData;
        final /* synthetic */ String $url;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ WebFragmentV2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ApiRequestData apiRequestData, WebFragmentV2 webFragmentV2, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$requestData = apiRequestData;
            this.this$0 = webFragmentV2;
            this.$url = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$requestData, this.this$0, this.$url, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:44:0x00ea  */
        /* JADX WARN: Code duplicated, block: B:46:0x00f4 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            RequestBody requestBodyA;
            j0 j0Var;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                String upperCase = this.$requestData.getMethods().toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                if (Intrinsics.c(upperCase, "POST")) {
                    if (this.$requestData.getQueryParams() != null) {
                        bh.b.a aVar = bh.b.f16471a;
                        String strJ = com.blankj.utilcode.util.o.j(this.$requestData.getQueryParams());
                        Intrinsics.g(strJ, "toJson(...)");
                        requestBodyA = aVar.a(strJ);
                    } else {
                        requestBodyA = null;
                    }
                    wx.a aVarO1 = this.this$0.o1();
                    String str = this.$url;
                    Map<String, String> headers = this.$requestData.getHeaders();
                    if (headers == null) {
                        headers = new LinkedHashMap<>();
                    }
                    this.L$0 = cVar;
                    this.label = 1;
                    obj = aVarO1.a(str, headers, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    j0Var = (j0) obj;
                    if (j0Var.e()) {
                        this.L$0 = null;
                        this.label = 4;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 4;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    wx.a aVarO2 = this.this$0.o1();
                    String str2 = this.$url;
                    Map<String, String> headers2 = this.$requestData.getHeaders();
                    if (headers2 == null) {
                        headers2 = new LinkedHashMap<>();
                    }
                    Map<String, Object> queryParams = this.$requestData.getQueryParams();
                    if (queryParams == null) {
                        queryParams = new LinkedHashMap<>();
                    }
                    this.L$0 = cVar;
                    this.label = 2;
                    obj = aVarO2.b(str2, headers2, queryParams, this);
                    if (obj == objF) {
                        return objF;
                    }
                    j0Var = (j0) obj;
                    if (j0Var.e()) {
                        this.L$0 = null;
                        this.label = 4;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 4;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                }
            } else if (i11 == 1) {
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                j0Var = (j0) obj;
                if (j0Var.e()) {
                    this.L$0 = null;
                    this.label = 4;
                    if (cVar.emit(null, this) == objF) {
                        return objF;
                    }
                } else {
                    this.L$0 = null;
                    this.label = 4;
                    if (cVar.emit(null, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 2) {
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                j0Var = (j0) obj;
                if (j0Var.e() || j0Var.a() == null) {
                    this.L$0 = null;
                    this.label = 4;
                    if (cVar.emit(null, this) == objF) {
                        return objF;
                    }
                } else {
                    Object objA = j0Var.a();
                    Intrinsics.e(objA);
                    String strString = ((ResponseBody) objA).string();
                    this.L$0 = null;
                    this.label = 3;
                    if (cVar.emit(strString, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 3 && i11 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$2", f = "WebFragmentV2.kt", l = {373}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;
        final /* synthetic */ WebFragmentV2$addJsInterface$2$1 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(WebFragmentV2$addJsInterface$2$1 webFragmentV2$addJsInterface$2$1, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = webFragmentV2$addJsInterface$2$1;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = cVar;
            anonymousClass2.L$1 = th2;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                Throwable th2 = (Throwable) this.L$1;
                lg.a.f68839a.c(this.this$0.getTAG(), "requestApiData, error :" + th2, true);
                this.L$0 = null;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$3, reason: invalid class name */
    static final class AnonymousClass3 implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebFragmentV2 f58070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f58071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WebFragmentV2$addJsInterface$2$1 f58072c;

        /* JADX INFO: renamed from: com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$3$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$1$request$1$3$1", f = "WebFragmentV2.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;

            AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                return Unit.f67061a;
            }
        }

        AnonymousClass3(WebFragmentV2 webFragmentV2, String str, WebFragmentV2$addJsInterface$2$1 webFragmentV2$addJsInterface$2$1) {
            this.f58070a = webFragmentV2;
            this.f58071b = str;
            this.f58072c = webFragmentV2$addJsInterface$2$1;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(String str, Continuation continuation) throws Throwable {
            WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1 webFragmentV2$addJsInterface$2$1$request$1$3$emit$1;
            if (continuation instanceof WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1) {
                webFragmentV2$addJsInterface$2$1$request$1$3$emit$1 = (WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1) continuation;
                int i11 = webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    webFragmentV2$addJsInterface$2$1$request$1$3$emit$1 = new WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1(this, continuation);
                }
            } else {
                webFragmentV2$addJsInterface$2$1$request$1$3$emit$1 = new WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1(this, continuation);
            }
            Object obj = webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.label;
            if (i12 == 0) {
                ResultKt.b(obj);
                a2 a2VarC = y0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.L$0 = str;
                webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.label = 1;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, webFragmentV2$addJsInterface$2$1$request$1$3$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) webFragmentV2$addJsInterface$2$1$request$1$3$emit$1.L$0;
                ResultKt.b(obj);
            }
            if (str == null || str.length() == 0) {
                BridgeWebView bridgeWebViewO0 = this.f58070a.o0();
                if (bridgeWebViewO0 != null) {
                    bridgeWebViewO0.sendResponse("", this.f58071b);
                }
            } else {
                lg.a.f68839a.c(this.f58072c.getTAG(), "requestApiData, success :" + str, true);
                BridgeWebView bridgeWebViewO1 = this.f58070a.o0();
                if (bridgeWebViewO1 != null) {
                    bridgeWebViewO1.sendResponse(str, this.f58071b);
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebFragmentV2$addJsInterface$2$1$request$1(ApiRequestData apiRequestData, WebFragmentV2 webFragmentV2, String str, WebFragmentV2$addJsInterface$2$1 webFragmentV2$addJsInterface$2$1, String str2, Continuation<? super WebFragmentV2$addJsInterface$2$1$request$1> continuation) {
        super(2, continuation);
        this.$requestData = apiRequestData;
        this.this$0 = webFragmentV2;
        this.$url = str;
        this.this$1 = webFragmentV2$addJsInterface$2$1;
        this.$callbackId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WebFragmentV2$addJsInterface$2$1$request$1(this.$requestData, this.this$0, this.$url, this.this$1, this.$callbackId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WebFragmentV2$addJsInterface$2$1$request$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$requestData, this.this$0, this.$url, null)), new AnonymousClass2(this.this$1, null));
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$callbackId, this.this$1);
            this.label = 1;
            if (bVarF.a(anonymousClass3, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
