package com.google.firebase.messaging;

import android.R;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import java.util.concurrent.atomic.AtomicInteger;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f32060a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NotificationCompat.m f32061a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f32063c;

        a(NotificationCompat.m mVar, String str, int i11) {
            this.f32061a = mVar;
            this.f32062b = str;
            this.f32063c = i11;
        }
    }

    private static PendingIntent a(Context context, k0 k0Var, String str, PackageManager packageManager) {
        Intent intentF = f(str, k0Var, packageManager);
        if (intentF == null) {
            return null;
        }
        intentF.addFlags(67108864);
        intentF.putExtras(k0Var.y());
        if (q(k0Var)) {
            intentF.putExtra("gcm.n.analytics_data", k0Var.x());
        }
        return PendingIntent.getActivity(context, g(), intentF, l(1073741824));
    }

    private static PendingIntent b(Context context, Context context2, k0 k0Var) {
        if (q(k0Var)) {
            return c(context, context2, new Intent(CloudMessagingReceiver.IntentActionKeys.NOTIFICATION_DISMISS).putExtras(k0Var.x()));
        }
        return null;
    }

    private static PendingIntent c(Context context, Context context2, Intent intent) {
        return PendingIntent.getBroadcast(context, g(), new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(context2.getPackageName()).putExtra(CloudMessagingReceiver.IntentKeys.WRAPPED_INTENT, intent), l(1073741824));
    }

    public static a d(Context context, Context context2, k0 k0Var, String str, Bundle bundle) {
        String packageName = context2.getPackageName();
        Resources resources = context2.getResources();
        PackageManager packageManager = context2.getPackageManager();
        NotificationCompat.m mVar = new NotificationCompat.m(context2, str);
        String strN = k0Var.n(resources, packageName, "gcm.n.title");
        if (!TextUtils.isEmpty(strN)) {
            mVar.q(strN);
        }
        String strN2 = k0Var.n(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(strN2)) {
            mVar.p(strN2);
            mVar.L(new NotificationCompat.k().q(strN2));
        }
        mVar.J(m(packageManager, resources, packageName, k0Var.p("gcm.n.icon"), bundle));
        Uri uriN = n(packageName, k0Var, resources);
        if (uriN != null) {
            mVar.K(uriN);
        }
        mVar.o(a(context, k0Var, packageName, packageManager));
        PendingIntent pendingIntentB = b(context, context2, k0Var);
        if (pendingIntentB != null) {
            mVar.u(pendingIntentB);
        }
        Integer numH = h(context2, k0Var.p("gcm.n.color"), bundle);
        if (numH != null) {
            mVar.n(numH.intValue());
        }
        mVar.l(!k0Var.a("gcm.n.sticky"));
        mVar.C(k0Var.a("gcm.n.local_only"));
        String strP = k0Var.p("gcm.n.ticker");
        if (strP != null) {
            mVar.M(strP);
        }
        Integer numM = k0Var.m();
        if (numM != null) {
            mVar.G(numM.intValue());
        }
        Integer numR = k0Var.r();
        if (numR != null) {
            mVar.O(numR.intValue());
        }
        Integer numL = k0Var.l();
        if (numL != null) {
            mVar.D(numL.intValue());
        }
        Long lJ = k0Var.j("gcm.n.event_time");
        if (lJ != null) {
            mVar.I(true);
            mVar.P(lJ.longValue());
        }
        long[] jArrQ = k0Var.q();
        if (jArrQ != null) {
            mVar.N(jArrQ);
        }
        int[] iArrE = k0Var.e();
        if (iArrE != null) {
            mVar.B(iArrE[0], iArrE[1], iArrE[2]);
        }
        mVar.t(i(k0Var));
        return new a(mVar, o(k0Var), 0);
    }

    static a e(Context context, k0 k0Var) {
        Bundle bundleJ = j(context.getPackageManager(), context.getPackageName());
        return d(context, context, k0Var, k(context, k0Var.k(), bundleJ), bundleJ);
    }

    private static Intent f(String str, k0 k0Var, PackageManager packageManager) {
        String strP = k0Var.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(strP)) {
            Intent intent = new Intent(strP);
            intent.setPackage(str);
            intent.setFlags(ASTNode.DEOP);
            return intent;
        }
        Uri uriF = k0Var.f();
        if (uriF != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(uriF);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int g() {
        return f32060a.incrementAndGet();
    }

    private static Integer h(Context context, String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i11 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i11 == 0) {
            return null;
        }
        try {
            return Integer.valueOf(androidx.core.content.b.getColor(context, i11));
        } catch (Resources.NotFoundException unused2) {
            Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int i(k0 k0Var) {
        boolean zA = k0Var.a("gcm.n.default_sound");
        ?? r11 = zA;
        if (k0Var.a("gcm.n.default_vibrate_timings")) {
            r11 = (zA ? 1 : 0) | 2;
        }
        return k0Var.a("gcm.n.default_light_settings") ? r11 | 4 : r11;
    }

    private static Bundle j(PackageManager packageManager, String str) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                return bundle;
            }
        } catch (PackageManager.NameNotFoundException e11) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e11);
        }
        return Bundle.EMPTY;
    }

    public static String k(Context context, String str, Bundle bundle) {
        String string;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                Log.w("FirebaseMessaging", "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string2)) {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            } else {
                if (notificationManager.getNotificationChannel(string2) != null) {
                    return string2;
                }
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            }
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
                if (identifier == 0) {
                    Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = "Misc";
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(m.f.a("fcm_fallback_notification_channel", string, 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static int l(int i11) {
        return i11 | 67108864;
    }

    private static int m(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && p(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && p(resources, identifier2)) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i11 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i11 == 0 || !p(resources, i11)) {
            try {
                i11 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e11) {
                Log.w("FirebaseMessaging", "Couldn't get own application info: " + e11);
            }
        }
        return (i11 == 0 || !p(resources, i11)) ? R.drawable.sym_def_app_icon : i11;
    }

    private static Uri n(String str, k0 k0Var, Resources resources) {
        String strO = k0Var.o();
        if (TextUtils.isEmpty(strO)) {
            return null;
        }
        if ("default".equals(strO) || resources.getIdentifier(strO, "raw", str) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        return Uri.parse("android.resource://" + str + "/raw/" + strO);
    }

    private static String o(k0 k0Var) {
        String strP = k0Var.p("gcm.n.tag");
        if (!TextUtils.isEmpty(strP)) {
            return strP;
        }
        return "FCM-Notification:" + SystemClock.uptimeMillis();
    }

    private static boolean p(Resources resources, int i11) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!c.a(resources.getDrawable(i11, null))) {
                return true;
            }
            Log.e("FirebaseMessaging", "Adaptive icons cannot be used in notifications. Ignoring icon id: " + i11);
            return false;
        } catch (Resources.NotFoundException unused) {
            Log.e("FirebaseMessaging", "Couldn't find resource " + i11 + ", treating it as an invalid icon");
            return false;
        }
    }

    static boolean q(k0 k0Var) {
        return k0Var.a("google.c.a.e");
    }
}
