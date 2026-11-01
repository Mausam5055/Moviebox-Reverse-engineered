package com.transsion.commercialization.pslink;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.report.l;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Intent;", "intent", "", EventConstants.KEY_ACTION, "e", "(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;", "Landroid/content/Context;", "context", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PsLinkInstallReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static PsLinkInstallReceiver f43821b;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final LinkedHashMap f43822c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f43823d = new a();

    public static final class a implements l.a {
        a() {
        }

        @Override // com.transsion.baselib.report.l.a
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                return;
            }
            PsLinkInstallReceiver.INSTANCE.c();
        }
    }

    /* JADX INFO: renamed from: com.transsion.commercialization.pslink.PsLinkInstallReceiver$b, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c() {
            if (PsLinkInstallReceiver.f43822c.isEmpty()) {
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(PsLinkInstallReceiver.f43822c);
            PsLinkInstallReceiver.f43822c.clear();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str = (String) entry.getKey();
                Pair pair = (Pair) entry.getValue();
                String str2 = (String) pair.component1();
                String str3 = (String) pair.component2();
                com.transsion.commercialization.pslink.a.f43829a.a("PsLinkInstallReceiver --> replayPending() --> pkg=" + str + " action=" + str2);
                Iterator it = PsLinkServiceHelper.f43824a.i().iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a(str3, "", null, str);
                }
            }
        }

        public final void b() {
            if (PsLinkInstallReceiver.f43821b == null) {
                PsLinkInstallReceiver.f43821b = new PsLinkInstallReceiver();
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addDataScheme("package");
            if (Build.VERSION.SDK_INT >= 33) {
                Utils.a().registerReceiver(PsLinkInstallReceiver.f43821b, intentFilter, 2);
            } else {
                Utils.a().registerReceiver(PsLinkInstallReceiver.f43821b, intentFilter);
            }
            l.f43359a.g(PsLinkInstallReceiver.f43823d);
            com.transsion.commercialization.pslink.a.f43829a.a("PsLinkInstallReceiver --> registerInstallReceiver() --> success");
        }

        public final void d() {
            if (PsLinkInstallReceiver.f43821b != null) {
                Utils.a().unregisterReceiver(PsLinkInstallReceiver.f43821b);
                PsLinkInstallReceiver.f43821b = null;
                PsLinkInstallReceiver.f43822c.clear();
                l.f43359a.u(PsLinkInstallReceiver.f43823d);
                com.transsion.commercialization.pslink.a.f43829a.a("PsLinkInstallReceiver --> unregisterInstallReceiver() --> success");
            }
        }
    }

    private final String e(Intent intent, String action) {
        Uri data = intent.getData();
        String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : null;
        com.transsion.commercialization.pslink.a.f43829a.a("PsLinkInstallReceiver --> onReceive() --> packageName = " + schemeSpecificPart + " -- action = " + action);
        return schemeSpecificPart;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String strE;
        Intrinsics.h(intent, "intent");
        String action = intent.getAction();
        if (action == null || (strE = e(intent, action)) == null) {
            return;
        }
        if (!l.f43359a.q()) {
            if (Intrinsics.c("android.intent.action.PACKAGE_REPLACED", action) || Intrinsics.c("android.intent.action.PACKAGE_ADDED", action)) {
                Iterator it = PsLinkServiceHelper.f43824a.i().iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a("installApp", "", null, strE);
                }
                return;
            } else {
                if (Intrinsics.c("android.intent.action.PACKAGE_REMOVED", action)) {
                    Iterator it2 = PsLinkServiceHelper.f43824a.i().iterator();
                    while (it2.hasNext()) {
                        ((b) it2.next()).a("removedApp", "", null, strE);
                    }
                    return;
                }
                return;
            }
        }
        String str = Intrinsics.c("android.intent.action.PACKAGE_REMOVED", action) ? "removedApp" : "installApp";
        LinkedHashMap linkedHashMap = f43822c;
        linkedHashMap.put(strE, new Pair(action, str));
        com.transsion.commercialization.pslink.a.f43829a.a("PsLinkInstallReceiver --> cacheEvent() --> pkg=" + strE + " action=" + action + " (pending count=" + linkedHashMap.size() + ")");
    }
}
