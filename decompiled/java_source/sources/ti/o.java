package ti;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f76265a = new o();

    private o() {
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isInteractive();
    }

    public final boolean b(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("keyguard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        KeyguardManager keyguardManager = (KeyguardManager) systemService;
        return keyguardManager.isDeviceLocked() || keyguardManager.isKeyguardLocked();
    }
}
