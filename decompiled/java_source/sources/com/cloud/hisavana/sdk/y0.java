package com.cloud.hisavana.sdk;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.PersistableBundle;
import android.util.Log;
import com.cloud.hisavana.sdk.common.activity.MiniAppSchemeActivity;
import com.cloud.hisavana.sdk.common.bean.MiniAppInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
public final class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y0 f23107a = new y0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static z0 f23108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Function1 f23109c;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "result", "", "a", "(I)V"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function1<Integer, Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f23110a = new a();

        a() {
            super(1);
        }

        public final void a(int i11) {
            y0.f23107a.k();
            Function1 function1 = y0.f23109c;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i11));
            }
            y0.f23109c = null;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return Unit.f67061a;
        }
    }

    private y0() {
    }

    private final void e(String str) {
        k();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("action_add_item_result_receiver");
        f23108b = new z0(str, a.f23110a);
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                j().registerReceiver(f23108b, intentFilter, 2);
            } else {
                j().registerReceiver(f23108b, intentFilter);
            }
        } catch (Throwable th2) {
            e4.b().e(TmcConstants.DIR_BYTEAPP, "Failed to register broadcast receiver: " + Log.getStackTraceString(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void f(String str, final ShortcutInfo.Builder builder, final ShortcutManager shortcutManager, final MiniAppInfo miniAppInfo, final Function1 onAddResult) {
        Bitmap bitmapDecodeFile;
        T tCreateWithResource;
        Icon iconCreateWithBitmap;
        Intrinsics.h(builder, "$builder");
        Intrinsics.h(onAddResult, "$onAddResult");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (str != null) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str);
            } catch (Exception unused) {
            }
        } else {
            bitmapDecodeFile = null;
        }
        if (bitmapDecodeFile == null || (iconCreateWithBitmap = Icon.createWithBitmap(bitmapDecodeFile)) == null) {
            tCreateWithResource = iconCreateWithBitmap;
            tCreateWithResource = Icon.createWithResource(f23107a.j(), R$drawable.hs_ad_miniapp_default_icon);
        }
        tCreateWithResource = iconCreateWithBitmap;
        objectRef.element = tCreateWithResource;
        Preconditions.d(new Preconditions.a() { // from class: com.cloud.hisavana.sdk.b6
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                y0.i(objectRef, builder, shortcutManager, miniAppInfo, onAddResult);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void i(Ref.ObjectRef icon, ShortcutInfo.Builder builder, ShortcutManager shortcutManager, MiniAppInfo miniAppInfo, Function1 onAddResult) {
        Intrinsics.h(icon, "$icon");
        Intrinsics.h(builder, "$builder");
        Intrinsics.h(onAddResult, "$onAddResult");
        try {
            Icon icon2 = (Icon) icon.element;
            if (icon2 != null) {
                builder.setIcon(icon2);
            }
            ShortcutInfo shortcutInfoBuild = builder.build();
            Intrinsics.g(shortcutInfoBuild, "build(...)");
            Intent intentCreateShortcutResultIntent = shortcutManager.createShortcutResultIntent(shortcutInfoBuild);
            y0 y0Var = f23107a;
            PendingIntent broadcast = PendingIntent.getBroadcast(y0Var.j(), 99, intentCreateShortcutResultIntent, 67108864);
            String appId = miniAppInfo.getAppId();
            Intrinsics.g(appId, "getAppId(...)");
            y0Var.e(appId);
            shortcutManager.requestPinShortcut(shortcutInfoBuild, broadcast != null ? broadcast.getIntentSender() : null);
        } catch (Exception e11) {
            e4.b().e(TmcConstants.DIR_BYTEAPP, "Failed to add to homescreen: " + Log.getStackTraceString(e11));
            onAddResult.invoke(-1);
        }
    }

    private final Context j() {
        return com.cloud.sdk.commonutil.util.e.a().getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        z0 z0Var = f23108b;
        if (z0Var != null) {
            try {
                f23107a.j().unregisterReceiver(z0Var);
            } catch (Throwable th2) {
                e4.b().e(TmcConstants.DIR_BYTEAPP, "Failed to unregister broadcast receiver: " + Log.getStackTraceString(th2));
            }
        }
        f23108b = null;
    }

    public final void g(final String str, final MiniAppInfo miniAppInfo, final Function1 onAddResult) {
        Object next;
        Intrinsics.h(onAddResult, "onAddResult");
        if (j() == null || miniAppInfo == null) {
            onAddResult.invoke(-1);
            return;
        }
        if (Build.VERSION.SDK_INT < 26) {
            onAddResult.invoke(-1);
            return;
        }
        try {
            final ShortcutManager shortcutManagerA = com.bytedance.sdk.openadsdk.api.init.b.a(j().getSystemService(com.bytedance.sdk.openadsdk.api.init.a.a()));
            if (shortcutManagerA != null && shortcutManagerA.isRequestPinShortcutSupported()) {
                List pinnedShortcuts = shortcutManagerA.getPinnedShortcuts();
                Intrinsics.g(pinnedShortcuts, "getPinnedShortcuts(...)");
                Iterator it = pinnedShortcuts.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(t5.a(next).getId(), miniAppInfo.getAppId()));
                if (t5.a(next) != null) {
                    onAddResult.invoke(2);
                    return;
                }
                f23109c = onAddResult;
                r5.a();
                ShortcutInfo.Builder builderA = o5.a(j(), miniAppInfo.getAppId());
                Intent intent = new Intent(j(), (Class<?>) MiniAppSchemeActivity.class);
                intent.setAction(miniAppInfo.getAppId());
                intent.putExtra("deeplink", miniAppInfo.getDeepLinkUrl());
                ShortcutInfo.Builder shortLabel = builderA.setIntent(intent).setShortLabel(miniAppInfo.getName());
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString("appId", miniAppInfo.getAppId());
                persistableBundle.putBoolean(TmcConstants.EXTRA_ADD_HOME_SHOW_SYSTEM_DIALOG, false);
                final ShortcutInfo.Builder extras = shortLabel.setExtras(persistableBundle);
                Intrinsics.g(extras, "setExtras(...)");
                HSScopeHelper.f23167a.g(new Runnable() { // from class: com.cloud.hisavana.sdk.a6
                    @Override // java.lang.Runnable
                    public final void run() {
                        y0.f(str, extras, shortcutManagerA, miniAppInfo, onAddResult);
                    }
                });
                return;
            }
            onAddResult.invoke(-1);
        } catch (Throwable th2) {
            e4.b().e(TmcConstants.DIR_BYTEAPP, "Failed to create shortcut: " + Log.getStackTraceString(th2));
            onAddResult.invoke(-1);
        }
    }
}
