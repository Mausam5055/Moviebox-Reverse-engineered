package com.tencent.mmkv;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class MMKVContentProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Uri f40562a;

    protected static Uri a(Context context) {
        String strD;
        Uri uri = f40562a;
        if (uri != null) {
            return uri;
        }
        if (context == null || (strD = d(context)) == null) {
            return null;
        }
        Uri uri2 = Uri.parse("content://" + strD);
        f40562a = uri2;
        return uri2;
    }

    protected static String b(Context context, int i11) {
        if (i11 == Process.myPid()) {
            return b.a(context);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == i11) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    private Bundle c(String str, int i11, int i12, String str2) {
        MMKV mmkvH = MMKV.H(getContext(), str, i11, i12, str2);
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(mmkvH);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" fd = ");
        sb2.append(mmkvH.ashmemFD());
        sb2.append(", meta fd = ");
        sb2.append(mmkvH.ashmemMetaFD());
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY", parcelableMMKV);
        return bundle;
    }

    private static String d(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (providerInfo = packageManager.getProviderInfo(componentName, 0)) == null) {
                return null;
            }
            return providerInfo.authority;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (str.equals("mmkvFromAshmemID") && bundle != null) {
            try {
                return c(str2, bundle.getInt("KEY_SIZE"), bundle.getInt("KEY_MODE"), bundle.getString("KEY_CRYPT"));
            } catch (Exception e11) {
                Log.e("MMKV", e11.getMessage());
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return getContext() != null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }
}
