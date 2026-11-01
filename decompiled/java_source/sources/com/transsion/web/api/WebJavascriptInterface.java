package com.transsion.web.api;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.google.gson.Gson;
import com.gyf.immersionbar.ImmersionBar;
import com.therouter.TheRouter;
import com.transsion.mbtools.CalendarBean;
import com.transsion.mbtools.CalendarRemindUtils;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.push.bean.CalendarData;
import com.transsion.push.helper.CalendarRemindHelper;
import com.transsion.web.bean.JsCallbackData;
import com.transsion.wrapperadapi.IWrapperAdApi;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u001a\u0010\u001a\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010\u001b\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010\u001c\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010\u001d\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010\u001e\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010\u001f\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u0018\u0010 \u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010\"\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010$\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u0018\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020'2\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u0018\u0010(\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u0018\u0010)\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u0018\u0010*\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010+\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u0018\u0010,\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J\u001a\u0010-\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017J\u001a\u0010.\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u00060"}, d2 = {"Lcom/transsion/web/api/WebJavascriptInterface;", "Lcom/github/lzyzsd/jsbridge/BridgeWebView$BaseJavascriptInterface;", "customWebView", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "<init>", "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V", "TAG", "", "getTAG", "()Ljava/lang/String;", "mLoginApi", "Lcom/transsnet/loginapi/ILoginApi;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "send", "s", "startPage", "", "pageName", "callbackId", "deeplink", "submitFromWeb", "data", "showDetectList", "getUserInfo", "getClientInfo", "openLoading", "closeLoading", "openToast", "closeToast", "goBack", "close", "getToken", "nativeLogin", "calendarRemind", "enableCalendarRemind", "cancelCalendarRemind", "postCallback", "callback", "Lcom/transsion/web/bean/JsCallbackData;", "nativeShare", "h5ShareNative", "openApp", "request", "getNativeStatusBarHeight", "onMember", "openMbAd", "adConfig", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class WebJavascriptInterface extends BridgeWebView.BaseJavascriptInterface {
    private final String TAG;
    private final BridgeWebView customWebView;
    private final ILoginApi mLoginApi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebJavascriptInterface(BridgeWebView customWebView) {
        super(customWebView.getCallbacks());
        Intrinsics.h(customWebView, "customWebView");
        this.customWebView = customWebView;
        this.TAG = "WebJavascriptInterface";
        this.mLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit calendarRemind$lambda$7(WebJavascriptInterface webJavascriptInterface, String str) {
        webJavascriptInterface.postCallback(new JsCallbackData(null, "0", 1, null), str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit calendarRemind$lambda$8(WebJavascriptInterface webJavascriptInterface, String str, String it) {
        Intrinsics.h(it, "it");
        webJavascriptInterface.postCallback(new JsCallbackData(it, TmcConstants.COLD_OPEN_TYPE), str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit cancelCalendarRemind$lambda$11(WebJavascriptInterface webJavascriptInterface, String str) {
        webJavascriptInterface.postCallback(new JsCallbackData(null, "0", 1, null), str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit cancelCalendarRemind$lambda$12(WebJavascriptInterface webJavascriptInterface, String str, String it) {
        Intrinsics.h(it, "it");
        webJavascriptInterface.postCallback(new JsCallbackData(it, TmcConstants.COLD_OPEN_TYPE), str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enableCalendarRemind$lambda$10(WebJavascriptInterface webJavascriptInterface, String str, String it) {
        Intrinsics.h(it, "it");
        webJavascriptInterface.postCallback(new JsCallbackData(it, TmcConstants.COLD_OPEN_TYPE), str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enableCalendarRemind$lambda$9(WebJavascriptInterface webJavascriptInterface, String str) {
        webJavascriptInterface.postCallback(new JsCallbackData("Calendar save successfully", "0"), str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getClientInfo$lambda$3(WebJavascriptInterface webJavascriptInterface, String str, String str2) {
        webJavascriptInterface.customWebView.sendResponse(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getNativeStatusBarHeight$lambda$15$lambda$14(WebJavascriptInterface webJavascriptInterface, float f11, String str) {
        webJavascriptInterface.customWebView.sendResponse(Float.valueOf(f11), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getToken$lambda$4(WebJavascriptInterface webJavascriptInterface, String str, String str2) {
        webJavascriptInterface.customWebView.sendResponse(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUserInfo$lambda$2(WebJavascriptInterface webJavascriptInterface, String str, String str2) {
        webJavascriptInterface.customWebView.sendResponse(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeLogin$lambda$6(WebJavascriptInterface webJavascriptInterface, Context context, JSONObject jSONObject) {
        ILoginApi iLoginApi = webJavascriptInterface.mLoginApi;
        if (iLoginApi != null) {
            Intrinsics.e(context);
            Intent intentO = iLoginApi.o(context);
            if (intentO != null) {
                Intent intentPutExtra = intentO.putExtra(EventConstants.KEY_SOURCE, jSONObject != null ? jSONObject.optString("H5Source") : null);
                if (intentPutExtra != null) {
                    context.startActivity(intentPutExtra);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onMember$lambda$16() {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.a(iMemberApi, null, 1, null);
        }
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            iPremiumApi.g(null);
        }
    }

    private final void postCallback(final JsCallbackData callback, final String callbackId) {
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.g
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.postCallback$lambda$13(this.f58039a, callback, callbackId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void postCallback$lambda$13(WebJavascriptInterface webJavascriptInterface, JsCallbackData jsCallbackData, String str) {
        webJavascriptInterface.customWebView.sendResponse(jsCallbackData, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDetectList$lambda$1(WebJavascriptInterface webJavascriptInterface, String str) {
        webJavascriptInterface.customWebView.sendResponse("submitFromWeb response from native", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submitFromWeb$lambda$0(WebJavascriptInterface webJavascriptInterface, String str) {
        webJavascriptInterface.customWebView.sendResponse("submitFromWeb response from native", str);
    }

    @JavascriptInterface
    public final void calendarRemind(String data, final String callbackId) {
        CalendarBean calendarBean;
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calendarRemind:");
        sb2.append(data);
        try {
            calendarBean = (CalendarBean) new Gson().fromJson(data, CalendarBean.class);
        } catch (Exception unused) {
            calendarBean = null;
        }
        if (calendarBean != null) {
            CalendarRemindUtils.f46216a.d(calendarBean, new Function0() { // from class: com.transsion.web.api.o
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return WebJavascriptInterface.calendarRemind$lambda$7(this.f58058a, callbackId);
                }
            }, new Function1() { // from class: com.transsion.web.api.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebJavascriptInterface.calendarRemind$lambda$8(this.f58029a, callbackId, (String) obj);
                }
            });
            return;
        }
        postCallback(new JsCallbackData("data error:" + data, TmcConstants.COLD_OPEN_TYPE), callbackId);
    }

    @JavascriptInterface
    public final void cancelCalendarRemind(String data, final String callbackId) {
        CalendarData calendarData;
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cancelCalendarRemind:");
        sb2.append(data);
        sb2.append(" ");
        try {
            calendarData = (CalendarData) new Gson().fromJson(data, CalendarData.class);
        } catch (Exception unused) {
            calendarData = null;
        }
        if (calendarData != null) {
            CalendarRemindHelper.f50848a.k(calendarData, new Function0() { // from class: com.transsion.web.api.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return WebJavascriptInterface.cancelCalendarRemind$lambda$11(this.f58031a, callbackId);
                }
            }, new Function1() { // from class: com.transsion.web.api.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebJavascriptInterface.cancelCalendarRemind$lambda$12(this.f58033a, callbackId, (String) obj);
                }
            });
            return;
        }
        postCallback(new JsCallbackData("data error:" + data, TmcConstants.COLD_OPEN_TYPE), callbackId);
    }

    @JavascriptInterface
    public void close(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void closeLoading(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void closeToast(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void deeplink(String deeplink, String callbackId) {
        Intrinsics.h(deeplink, "deeplink");
        Intrinsics.h(callbackId, "callbackId");
        zj.b bVar = zj.b.f79427a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        zj.b.d(bVar, applicationA, deeplink, null, 4, null);
    }

    @JavascriptInterface
    public final void enableCalendarRemind(String data, final String callbackId) {
        CalendarData calendarData;
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("enableCalendarRemind data:");
        sb2.append(data);
        try {
            calendarData = (CalendarData) new Gson().fromJson(data, CalendarData.class);
        } catch (Exception unused) {
            calendarData = null;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("enableCalendarRemind calendarBean:");
        sb3.append(calendarData);
        if (calendarData != null) {
            CalendarRemindHelper.f50848a.h(calendarData, new Function0() { // from class: com.transsion.web.api.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return WebJavascriptInterface.enableCalendarRemind$lambda$9(this.f58035a, callbackId);
                }
            }, new Function1() { // from class: com.transsion.web.api.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebJavascriptInterface.enableCalendarRemind$lambda$10(this.f58037a, callbackId, (String) obj);
                }
            });
            return;
        }
        postCallback(new JsCallbackData("data error:" + data, TmcConstants.COLD_OPEN_TYPE), callbackId);
    }

    @JavascriptInterface
    public final void getClientInfo(String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        String name = Thread.currentThread().getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getClientInfo:");
        sb2.append(data);
        sb2.append(", callbackId: ");
        sb2.append(callbackId);
        sb2.append(" ");
        sb2.append(name);
        if (TextUtils.isEmpty(callbackId)) {
            return;
        }
        final String strC = yg.b.f79009a.c();
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.m
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.getClientInfo$lambda$3(this.f58053a, strC, callbackId);
            }
        });
    }

    public final ILoginApi getMLoginApi() {
        return this.mLoginApi;
    }

    @JavascriptInterface
    public final void getNativeStatusBarHeight(String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        try {
            Result.Companion companion = Result.INSTANCE;
            String name = Thread.currentThread().getName();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getNativeStatBarHeight() --> data = ");
            sb2.append(data);
            sb2.append(" --> callbackId = ");
            sb2.append(callbackId);
            sb2.append(" --> thread.name = ");
            sb2.append(name);
            if (!TextUtils.isEmpty(callbackId)) {
                final float statusBarHeight = ImmersionBar.getStatusBarHeight(Utils.a()) / Utils.a().getResources().getDisplayMetrics().density;
                this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebJavascriptInterface.getNativeStatusBarHeight$lambda$15$lambda$14(this.f58026a, statusBarHeight, callbackId);
                    }
                });
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String getTAG() {
        return this.TAG;
    }

    @JavascriptInterface
    public final void getToken(String data, final String callbackId) {
        UserInfo userInfoI;
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        String name = Thread.currentThread().getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getToken:");
        sb2.append(data);
        sb2.append(", callbackId: ");
        sb2.append(callbackId);
        sb2.append(" ");
        sb2.append(name);
        if (TextUtils.isEmpty(callbackId)) {
            return;
        }
        ILoginApi iLoginApi = this.mLoginApi;
        final String token = (iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getToken();
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.l
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.getToken$lambda$4(this.f58050a, token, callbackId);
            }
        });
    }

    @JavascriptInterface
    public final void getUserInfo(String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        String name = Thread.currentThread().getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getUserInfo:");
        sb2.append(data);
        sb2.append(", callbackId: ");
        sb2.append(callbackId);
        sb2.append(" ");
        sb2.append(name);
        if (TextUtils.isEmpty(callbackId)) {
            return;
        }
        ILoginApi iLoginApi = this.mLoginApi;
        final String strJ = null;
        try {
            strJ = com.blankj.utilcode.util.o.j(iLoginApi != null ? iLoginApi.i() : null);
        } catch (Exception unused) {
        }
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.k
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.getUserInfo$lambda$2(this.f58047a, strJ, callbackId);
            }
        });
    }

    @JavascriptInterface
    public void goBack(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void h5ShareNative(String data, String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public final void nativeLogin(String data, String callbackId) {
        final JSONObject jSONObject;
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("nativeLogin:");
        sb2.append(data);
        final Context context = this.customWebView.getContext();
        try {
            jSONObject = new JSONObject(data);
        } catch (Exception unused) {
            jSONObject = null;
        }
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.h
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.nativeLogin$lambda$6(this.f58042a, context, jSONObject);
            }
        });
    }

    @JavascriptInterface
    public void nativeShare(String data, String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void onMember(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.j
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.onMember$lambda$16();
            }
        });
    }

    @JavascriptInterface
    public void openApp(String data, String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void openLoading(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void openMbAd(String adConfig, final String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        IWrapperAdApi iWrapperAdApi = (IWrapperAdApi) TheRouter.d(IWrapperAdApi.class, new Object[0]);
        if (iWrapperAdApi != null) {
            iWrapperAdApi.b(adConfig, new jy.a() { // from class: com.transsion.web.api.WebJavascriptInterface.openMbAd.1
                @Override // jy.a
                public void onAdStateCallback(String stateEnum, String message) throws JSONException {
                    Intrinsics.h(stateEnum, "stateEnum");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("state", stateEnum);
                    jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, message);
                    WebJavascriptInterface.this.customWebView.sendResponse(jSONObject.toString(), callbackId);
                }
            });
        }
    }

    @JavascriptInterface
    public void openToast(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public void request(String data, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @Override // com.github.lzyzsd.jsbridge.BridgeWebView.BaseJavascriptInterface
    public String send(String s11) {
        Intrinsics.h(s11, "s");
        return "send";
    }

    @JavascriptInterface
    public final void showDetectList(String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        String name = Thread.currentThread().getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("showDetectList:");
        sb2.append(data);
        sb2.append(", callbackId: ");
        sb2.append(callbackId);
        sb2.append(" ");
        sb2.append(name);
        if (TextUtils.isEmpty(callbackId)) {
            return;
        }
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.i
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.showDetectList$lambda$1(this.f58045a, callbackId);
            }
        });
    }

    @JavascriptInterface
    public void startPage(String pageName, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
    }

    @JavascriptInterface
    public final void submitFromWeb(String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        String name = Thread.currentThread().getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(data);
        sb2.append(", callbackId: ");
        sb2.append(callbackId);
        sb2.append(" ");
        sb2.append(name);
        if (TextUtils.isEmpty(callbackId)) {
            return;
        }
        this.customWebView.post(new Runnable() { // from class: com.transsion.web.api.n
            @Override // java.lang.Runnable
            public final void run() {
                WebJavascriptInterface.submitFromWeb$lambda$0(this.f58056a, callbackId);
            }
        });
    }
}
