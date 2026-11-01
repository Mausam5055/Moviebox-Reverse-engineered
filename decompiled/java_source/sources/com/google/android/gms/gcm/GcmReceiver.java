package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Base64;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.common.util.PlatformVersion;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class GcmReceiver extends WakefulBroadcastReceiver {
    private static boolean zzr;
    private static com.google.android.gms.iid.zzk zzs;
    private static com.google.android.gms.iid.zzk zzt;

    private final int zzd(Context context, Intent intent) {
        Log.isLoggable("GcmReceiver", 3);
        if (isOrderedBroadcast()) {
            setResultCode(-1);
        }
        zzd(context, intent.getAction()).zzd(intent, goAsync());
        return -1;
    }

    private final synchronized com.google.android.gms.iid.zzk zzd(Context context, String str) {
        try {
            if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
                if (zzt == null) {
                    zzt = new com.google.android.gms.iid.zzk(context, str);
                }
                return zzt;
            }
            if (zzs == null) {
                zzs = new com.google.android.gms.iid.zzk(context, str);
            }
            return zzs;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static int zze(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String strConcat;
        Log.isLoggable("GcmReceiver", 3);
        ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveInfoResolveService == null || (serviceInfo = resolveInfoResolveService.serviceInfo) == null) {
            Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
        } else if (!context.getPackageName().equals(serviceInfo.packageName) || (strConcat = serviceInfo.name) == null) {
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 94 + String.valueOf(str2).length());
            sb2.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
            sb2.append(str);
            sb2.append("/");
            sb2.append(str2);
            Log.e("GcmReceiver", sb2.toString());
        } else {
            if (strConcat.startsWith(".")) {
                String strValueOf = String.valueOf(context.getPackageName());
                strConcat = strConcat.length() != 0 ? strValueOf.concat(strConcat) : new String(strValueOf);
            }
            if (Log.isLoggable("GcmReceiver", 3)) {
                String strValueOf2 = String.valueOf(strConcat);
                if (strValueOf2.length() != 0) {
                    "Restricting intent to a specific service: ".concat(strValueOf2);
                }
            }
            intent.setClassName(context.getPackageName(), strConcat);
        }
        try {
            if ((context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0 ? WakefulBroadcastReceiver.startWakefulService(context, intent) : context.startService(intent)) != null) {
                return -1;
            }
            Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
            return TTAdConstant.DEEPLINK_FALLBACK_CODE;
        } catch (IllegalStateException e11) {
            String strValueOf3 = String.valueOf(e11);
            StringBuilder sb3 = new StringBuilder(strValueOf3.length() + 45);
            sb3.append("Failed to start service while in background: ");
            sb3.append(strValueOf3);
            Log.e("GcmReceiver", sb3.toString());
            return TTAdConstant.AD_ID_IS_NULL_CODE;
        } catch (SecurityException e12) {
            Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", e12);
            return 401;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int iZzd;
        Log.isLoggable("GcmReceiver", 3);
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if ("google.com/iid".equals(intent.getStringExtra("from"))) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if (isOrderedBroadcast()) {
            setResultCode(500);
        }
        boolean z10 = PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26;
        boolean z11 = (intent.getFlags() & ASTNode.DEOP) != 0;
        if (!z10 || z11) {
            int iZze = "com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction()) ? zze(context, intent) : zze(context, intent);
            if (PlatformVersion.isAtLeastO() && iZze == 402) {
                zzd(context, intent);
                iZzd = TTAdConstant.DEEPLINK_UNAVAILABLE_CODE;
            } else {
                iZzd = iZze;
            }
        } else {
            iZzd = zzd(context, intent);
        }
        if (isOrderedBroadcast()) {
            setResultCode(iZzd);
        }
    }
}
