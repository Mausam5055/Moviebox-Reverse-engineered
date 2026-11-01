package com.cloud.hisavana.sdk.common.tranmeasure;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.cloud.hisavana.sdk.e4;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BroadcastReceiver f22127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f22130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f22131e;

    interface a {
        void a(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f22132a;

        b(f fVar) {
            this.f22132a = new WeakReference(fVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, Context context) {
            f fVar = (f) this.f22132a.get();
            if (fVar == null) {
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(str)) {
                e4.b().i("ScreenStateManager", "SCREEN_OFF");
                fVar.e(true);
                return;
            }
            if ("android.intent.action.USER_PRESENT".equals(str)) {
                e4.b().i("ScreenStateManager", "USER_PRESENT");
                fVar.e(false);
            } else if ("android.intent.action.SCREEN_ON".equals(str)) {
                e4.b().i("ScreenStateManager", "SCREEN_ON");
                KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
                if (keyguardManager == null || keyguardManager.inKeyguardRestrictedInputMode()) {
                    return;
                }
                fVar.e(false);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            f fVar = (f) this.f22132a.get();
            if (fVar == null || intent == null || context == null || fVar.f22131e == null) {
                return;
            }
            final String action = intent.getAction();
            fVar.f22131e.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.tranmeasure.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f22133a.b(action, context);
                }
            });
        }
    }

    public f() {
        if (Looper.myLooper() != null) {
            this.f22131e = new Handler(Looper.myLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(boolean z10) {
        a aVar;
        if (this.f22128b != z10) {
            this.f22128b = z10;
            if (!this.f22129c || (aVar = this.f22130d) == null) {
                return;
            }
            aVar.a(f());
        }
    }

    private boolean f() {
        return !this.f22128b;
    }

    private void g() {
        this.f22127a = new b(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f22127a, intentFilter, 2);
            } else {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f22127a, intentFilter);
            }
        } catch (Throwable unused) {
        }
    }

    protected void b() {
        if (this.f22127a != null) {
            try {
                com.cloud.sdk.commonutil.util.e.a().unregisterReceiver(this.f22127a);
            } catch (Throwable unused) {
            }
            this.f22127a = null;
        }
        this.f22129c = false;
        this.f22128b = false;
        this.f22130d = null;
    }

    protected void c(a aVar) {
        this.f22130d = aVar;
    }

    protected void h() {
        g();
        this.f22129c = true;
    }
}
