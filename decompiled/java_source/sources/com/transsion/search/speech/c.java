package com.transsion.search.speech;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f52209c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function0 f52210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f52211b = LazyKt.b(new Function0() { // from class: com.transsion.search.speech.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.h();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final String c() {
        String simpleName = c.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Handler d() {
        return (Handler) this.f52211b.getValue();
    }

    private final SpeechRecognizer f(Context context) {
        f.f52214a.a(c() + " --> getSpeechRecognizerOneParameterStrategy() --> deviceModel = " + Build.MODEL + " --> 采用第一种策略");
        return SpeechRecognizer.createSpeechRecognizer(context);
    }

    private final SpeechRecognizer g(Context context) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f fVar = f.f52214a;
            String strC = c();
            String str = Build.MODEL;
            fVar.a(strC + " --> deviceModel = " + str + " --> 采用第二种策略");
            List<ResolveInfo> listQueryIntentServices = Utils.a().getPackageManager().queryIntentServices(new Intent("android.speech.RecognitionService"), 0);
            Intrinsics.g(listQueryIntentServices, "queryIntentServices(...)");
            ResolveInfo resolveInfo = listQueryIntentServices.get(0);
            fVar.a(c() + " --> getSpeechRecognizerTwoParameterStrategy() --> packageName = " + resolveInfo.serviceInfo.packageName + " --> name = info.serviceInfo.name --> info = " + resolveInfo + " --> deviceModel = " + str);
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            objM454constructorimpl = Result.m454constructorimpl(SpeechRecognizer.createSpeechRecognizer(context, new ComponentName(serviceInfo.packageName, serviceInfo.name)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = null;
        }
        return (SpeechRecognizer) objM454constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler h() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(c cVar) {
        com.transsion.baselib.report.launch.b.f43370a.b().putString("initialize_strategy", "initialize_two");
        f.f52214a.a(cVar.c() + " --> startListening() --> 标记当前不支持第一种策略 --> 回调给场景重新加载对象");
        Function0 function0 = cVar.f52210a;
        if (function0 != null) {
        }
        q.f52227a.f();
    }

    public final SpeechRecognizer e(Context context) {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (TextUtils.isEmpty(bVar.b().getString("initialize_one_affirm", ""))) {
            if (TextUtils.equals("TECNO AC8", Build.MODEL)) {
                return g(context);
            }
            String string = bVar.b().getString("initialize_strategy", "initialize_one");
            if (!Intrinsics.c(string, "initialize_one") && Intrinsics.c(string, "initialize_two")) {
                return g(context);
            }
            return f(context);
        }
        f.f52214a.a(c() + " --> getSpeechRecognizer() --> 确定了支持第一种策略，直接返回");
        return f(context);
    }

    public final void i() {
        d().removeCallbacksAndMessages(null);
        f.f52214a.a(c() + " --> onReadyForSpeech() --> 当前策略起作用了");
        com.transsion.baselib.report.launch.b.f43370a.b().putString("initialize_strategy_affirm", "initialize_one_affirm");
    }

    public final void j(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f52210a = callback;
    }

    public final void k() {
        if (TextUtils.equals(com.transsion.baselib.report.launch.b.f43370a.b().getString("initialize_strategy", "initialize_one"), "initialize_two")) {
            f.f52214a.a(c() + " --> startListening() --> 当前策略已经是第二种策略了");
            return;
        }
        d().removeCallbacksAndMessages(null);
        d().postDelayed(new Runnable() { // from class: com.transsion.search.speech.b
            @Override // java.lang.Runnable
            public final void run() {
                c.l(this.f52208a);
            }
        }, 3000L);
        f.f52214a.a(c() + " --> startListening() --> 开启倒计时");
    }
}
