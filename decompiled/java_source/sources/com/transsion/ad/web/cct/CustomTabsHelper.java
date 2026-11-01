package com.transsion.ad.web.cct;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.transsion.ad.MBAd;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CustomTabsHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f42458a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f42459b;

    public static final class Companion {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion$Mode;", "", "<init>", "(Ljava/lang/String;I)V", "PRIORITY_CHROME", "DEFAULT_BROWSER", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public enum Mode {
            PRIORITY_CHROME,
            DEFAULT_BROWSER;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<Mode> getEntries() {
                return $ENTRIES;
            }
        }

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f42460a;

            static {
                int[] iArr = new int[Mode.values().length];
                try {
                    iArr[Mode.PRIORITY_CHROME.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Mode.DEFAULT_BROWSER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f42460a = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String a() {
            String simpleName = CustomTabsHelper.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            return simpleName;
        }

        private final boolean d(Context context, Intent intent) {
            try {
                List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
                Intrinsics.g(listQueryIntentActivities, "queryIntentActivities(...)");
                if (listQueryIntentActivities.isEmpty()) {
                    return false;
                }
                for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                        return true;
                    }
                }
            } catch (RuntimeException unused) {
            }
            return false;
        }

        public static /* synthetic */ void f(Companion companion, Activity activity, d dVar, Uri uri, xi.a aVar, Mode mode, int i11, Object obj) {
            if ((i11 & 16) != 0) {
                mode = Mode.PRIORITY_CHROME;
            }
            companion.e(activity, dVar, uri, aVar, mode);
        }

        public final String b(Context context) {
            Intrinsics.h(context, "context");
            if (CustomTabsHelper.f42459b != null) {
                return CustomTabsHelper.f42459b;
            }
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
            String str = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            Intrinsics.g(listQueryIntentActivities, "queryIntentActivities(...)");
            ArrayList arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                Intent intent2 = new Intent();
                intent2.setAction("android.support.customtabs.action.CustomTabsService");
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                if (packageManager.resolveService(intent2, 0) != null) {
                    arrayList.add(resolveInfo.activityInfo.packageName);
                }
            }
            CustomTabsHelper.f42459b = arrayList.isEmpty() ? null : (TextUtils.isEmpty(str) || d(context, intent) || !arrayList.contains(str)) ? (String) arrayList.get(0) : str;
            return CustomTabsHelper.f42459b;
        }

        public final String c(Context context) {
            Intrinsics.h(context, "context");
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
            intent.setPackage("com.android.chrome");
            if (packageManager.resolveService(intent, 0) != null) {
                return "com.android.chrome";
            }
            for (String str : CollectionsKt.o("com.chrome.beta", "com.chrome.dev", "com.chrome.canary")) {
                intent.setPackage(str);
                if (packageManager.resolveService(intent, 0) != null) {
                    return str;
                }
            }
            return b(context);
        }

        public final void e(Activity activity, d customTabsIntent, Uri uri, xi.a aVar, Mode mode) {
            String strC;
            Intrinsics.h(activity, "activity");
            Intrinsics.h(customTabsIntent, "customTabsIntent");
            Intrinsics.h(uri, "uri");
            Intrinsics.h(mode, "mode");
            int i11 = a.f42460a[mode.ordinal()];
            if (i11 == 1) {
                strC = c(activity);
            } else {
                if (i11 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                strC = b(activity);
            }
            if (strC != null) {
                if (MBAd.f41751a.g()) {
                    oi.a.e(oi.a.f71022a, a() + " --> openCustomTab() --> uri = " + uri + " --> 通过CCT打开", 0, false, 6, null);
                }
                customTabsIntent.f2166a.setPackage(strC);
                customTabsIntent.a(activity, uri);
                return;
            }
            if (MBAd.f41751a.g()) {
                oi.a.e(oi.a.f71022a, a() + " --> openCustomTab() --> uri = " + uri + " --> packageName == null --> 降级处理", 0, false, 6, null);
            }
            if (aVar != null) {
                aVar.a(activity, uri);
            }
        }
    }
}
