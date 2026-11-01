package com.google.android.libraries.places.internal;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzkb {
    public static zzka zzd(Context context) {
        String packageName = context.getPackageName();
        int i11 = 0;
        try {
            i11 = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        zzjx zzjxVar = new zzjx();
        zzjxVar.zza(packageName);
        zzjxVar.zzb(i11);
        zzjxVar.zzd(1);
        return zzjxVar;
    }

    public abstract int zza();

    public abstract String zzb();

    public abstract int zzc();
}
