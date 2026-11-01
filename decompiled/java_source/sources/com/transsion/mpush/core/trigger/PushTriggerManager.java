package com.transsion.mpush.core.trigger;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class PushTriggerManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PushTriggerManager f47594a = new PushTriggerManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static n0 f47595b = o0.a(l2.b(null, 1, null).plus(y0.a()));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f47596c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static PushTriggerReceiver f47597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f47598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Context f47599f;

    private PushTriggerManager() {
    }

    private final void c(String str) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【触发管理】收到系统广播，动作：" + str, false, 4, null);
        int iHashCode = str.hashCode();
        if (iHashCode != -1454123155) {
            if (iHashCode != 823795052) {
                lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【触发管理】检测到解锁事件，延迟2秒后触发"}, false, 4, null);
                k.d(f47595b, null, null, new PushTriggerManager$handleBroadcastAction$1(null), 3, null);
                return;
            } else {
                lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【触发管理】检测到解锁事件，延迟2秒后触发"}, false, 4, null);
                k.d(f47595b, null, null, new PushTriggerManager$handleBroadcastAction$1(null), 3, null);
                return;
            }
        }
        if (str.equals("android.intent.action.SCREEN_ON")) {
            lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【触发管理】检测到亮屏事件，触发推送检测"}, false, 4, null);
            g("亮屏", 1);
            return;
        }
        lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【触发管理】忽略未知的广播动作：" + str, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(String action) {
        Intrinsics.h(action, "action");
        f47594a.c(action);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f() {
        f47594a.g("网络可用", 3);
        return Unit.f67061a;
    }

    public final void d(Context context) {
        Intrinsics.h(context, "context");
        if (f47596c.compareAndSet(false, true)) {
            f47599f = context.getApplicationContext();
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【触发管理】开始初始化PushTriggerManager", false, 4, null);
            f47597d = new PushTriggerReceiver(new Function1() { // from class: com.transsion.mpush.core.trigger.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PushTriggerManager.e((String) obj);
                }
            });
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 24) {
                intentFilter.addAction("android.intent.action.USER_UNLOCKED");
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m454constructorimpl(i11 >= 33 ? context.getApplicationContext().registerReceiver(f47597d, intentFilter, 2) : androidx.core.content.b.registerReceiver(context.getApplicationContext(), f47597d, intentFilter, 2));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            b bVar = new b(applicationContext, new Function0() { // from class: com.transsion.mpush.core.trigger.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PushTriggerManager.f();
                }
            });
            f47598e = bVar;
            bVar.e();
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【触发管理】PushTriggerManager初始化成功，广播接收器和网络监听器已注册"}, false, 4, null);
        }
    }

    public final void g(String reason, int i11) {
        Intrinsics.h(reason, "reason");
        if (!f47596c.get()) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【触发管理】triggerPull 忽略：SDK 未初始化或已销毁", false, 4, null);
            return;
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【触发管理】触发推送拉取，原因：" + reason + "，触发源：" + i11}, false, 4, null);
        ln.a.f68978a.m(i11);
    }
}
