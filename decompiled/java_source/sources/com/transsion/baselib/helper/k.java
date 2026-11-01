package com.transsion.baselib.helper;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference f43281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f43282b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Handler handler, WeakReference contextWeak, Function1 callback) {
        super(handler);
        Intrinsics.h(contextWeak, "contextWeak");
        Intrinsics.h(callback, "callback");
        this.f43281a = contextWeak;
        this.f43282b = callback;
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        try {
            return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation") == 1;
        } catch (Settings.SettingNotFoundException e11) {
            e11.printStackTrace();
            Log.e("ScreenRotationObserver", "Setting not found: " + e11.getMessage());
            return false;
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        Context context = (Context) this.f43281a.get();
        boolean zA = context != null ? a(context) : false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Auto-rotate is now isAutoRotateEnabled：");
        sb2.append(zA);
        this.f43282b.invoke(Boolean.valueOf(zA));
    }
}
