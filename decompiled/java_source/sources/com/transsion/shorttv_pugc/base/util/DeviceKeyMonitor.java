package com.transsion.shorttv_pugc.base.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class DeviceKeyMonitor {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f53810e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f53811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f53812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f53813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f53814d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public interface b {
        void onHomeClick();

        void onRecentClick();
    }

    public DeviceKeyMonitor(Context context, b listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(listener, "listener");
        this.f53811a = context;
        this.f53812b = listener;
        this.f53813c = "DeviceKeyMonitor";
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.transsion.shorttv_pugc.base.util.DeviceKeyMonitor.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.h(context2, "context");
                Intrinsics.h(intent, "intent");
                if (Intrinsics.c(intent.getAction(), "android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                    String stringExtra = intent.getStringExtra("reason");
                    if (stringExtra == null) {
                        stringExtra = "";
                    }
                    int iHashCode = stringExtra.hashCode();
                    if (iHashCode != -1408204183) {
                        if (iHashCode != 350448461) {
                            if (iHashCode == 1092716832 && stringExtra.equals("homekey")) {
                                DeviceKeyMonitor.this.f53812b.onHomeClick();
                                return;
                            }
                            return;
                        }
                        if (!stringExtra.equals("recentapps")) {
                            return;
                        }
                    } else if (!stringExtra.equals("assist")) {
                        return;
                    }
                    DeviceKeyMonitor.this.f53812b.onRecentClick();
                }
            }
        };
        this.f53814d = broadcastReceiver;
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(Build.VERSION.SDK_INT >= 33 ? context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"), 2) : context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void b() {
        try {
            Result.Companion companion = Result.INSTANCE;
            BroadcastReceiver broadcastReceiver = this.f53814d;
            if (broadcastReceiver != null) {
                this.f53811a.unregisterReceiver(broadcastReceiver);
                this.f53814d = null;
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
