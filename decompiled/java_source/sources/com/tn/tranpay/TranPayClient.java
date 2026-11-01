package com.tn.tranpay;

import android.content.Context;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;
import com.tn.tranpay.activity.TranPayTransparentActivity;
import com.tn.tranpay.fragment.PayLoadingFragment;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class TranPayClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TranPayClient f41488a = new TranPayClient();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f41489b;

    private TranPayClient() {
    }

    public final void b(Context context, BillingParams params, d callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
        Intrinsics.h(callback, "callback");
        if (!Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            ai.a.e(ai.a.f619a, "TranPayClient: launchBillingFlow(context) must be called on the main thread, call ignored", null, 2, null);
            return;
        }
        if (!TranPayConfiguration.f41490a.q()) {
            ai.a.e(ai.a.f619a, "TranPay must be initialized!", null, 2, null);
            callback.a(new b(-1, "TranPay must be initialized!"), null);
            return;
        }
        if (!com.tn.tranpay.helper.b.f41651a.a()) {
            ai.a.e(ai.a.f619a, "Network is not available!", null, 2, null);
            callback.a(new b(-2, "Network is not available. Please check your network connection."), null);
        } else {
            if (f41489b) {
                return;
            }
            ai.a.g(ai.a.f619a, "launchBillingFlow with context and params is " + params, null, 2, null);
            f41489b = true;
            TranPayTransparentActivity.INSTANCE.a(context, params, callback);
        }
    }

    public final void c(AppCompatActivity activity, BillingParams params, d callback) {
        Object objM454constructorimpl;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(params, "params");
        Intrinsics.h(callback, "callback");
        if (!Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            ai.a.e(ai.a.f619a, "TranPayClient: launchBillingFlow(activity) must be called on the main thread, call ignored", null, 2, null);
            return;
        }
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f41490a;
        if (!tranPayConfiguration.q()) {
            ai.a.e(ai.a.f619a, "TranPay must be initialized!", null, 2, null);
            callback.a(new b(-1, "TranPay must be initialized!"), null);
            return;
        }
        if (!com.tn.tranpay.helper.b.f41651a.a()) {
            ai.a.e(ai.a.f619a, "Network is not available!", null, 2, null);
            callback.a(new b(-2, "Network is not available. Please check your network connection."), null);
            return;
        }
        if (f41489b || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        ai.a.g(ai.a.f619a, "launchBillingFlow and params is " + params, null, 2, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            PayLoadingFragment payLoadingFragmentA = PayLoadingFragment.INSTANCE.a(params, callback);
            payLoadingFragmentA.show(activity.getSupportFragmentManager(), "pay_loading_fragment");
            f41489b = true;
            payLoadingFragmentA.n0(new Function0<Unit>() { // from class: com.tn.tranpay.TranPayClient$launchBillingFlow$1$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m311invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m311invoke() {
                    TranPayClient.f41489b = false;
                }
            });
            tranPayConfiguration.D(params);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            ai.a.e(ai.a.f619a, "launchBillingFlow(activity) failed: " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            f41489b = false;
            callback.a(new b(-1, "Failed to show payment dialog"), null);
        }
    }

    public final void d(final AppCompatActivity activity, BillingParams params, d callback) {
        Object objM454constructorimpl;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(params, "params");
        Intrinsics.h(callback, "callback");
        if (activity.isFinishing() || activity.isDestroyed()) {
            e();
            return;
        }
        ai.a.g(ai.a.f619a, "launchBillingFlowInternal and params is " + params, null, 2, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            PayLoadingFragment payLoadingFragmentA = PayLoadingFragment.INSTANCE.a(params, callback);
            payLoadingFragmentA.setCancelable(false);
            payLoadingFragmentA.m0(new Function0<Unit>() { // from class: com.tn.tranpay.TranPayClient$launchBillingFlowInternal$1$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m312invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m312invoke() {
                    activity.getOnBackPressedDispatcher().l();
                }
            });
            payLoadingFragmentA.show(activity.getSupportFragmentManager(), "pay_loading_fragment");
            payLoadingFragmentA.n0(new Function0<Unit>() { // from class: com.tn.tranpay.TranPayClient$launchBillingFlowInternal$1$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m313invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m313invoke() {
                    TranPayClient.f41489b = false;
                }
            });
            TranPayConfiguration.f41490a.D(params);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            ai.a.e(ai.a.f619a, "launchBillingFlowInternal failed: " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            f41488a.e();
            callback.a(new b(-1, "Failed to show payment dialog"), null);
        }
    }

    public final void e() {
        f41489b = false;
    }
}
