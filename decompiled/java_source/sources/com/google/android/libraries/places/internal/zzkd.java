package com.google.android.libraries.places.internal;

import android.content.Context;
import android.os.Build;
import android.os.DropBoxManager;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkd {

    @Nullable
    private static DropBoxManager zza;
    private static final LinkedHashMap zzb = new zzkc(16, 0.75f, true);

    @Nullable
    private static String zzc;

    public static synchronized void zza(Context context, boolean z10) {
        if (zza == null) {
            zza = (DropBoxManager) context.getApplicationContext().getSystemService("dropbox");
            zzc = "com.google.android.libraries.places";
        }
    }

    public static synchronized void zzb(Throwable th2) {
        long j11;
        try {
            long id2 = Thread.currentThread().getId();
            int iHashCode = th2.hashCode();
            Integer num = (Integer) zzb.get(Long.valueOf(id2));
            if (num == null || num.intValue() != iHashCode) {
                DropBoxManager dropBoxManager = zza;
                if (dropBoxManager != null && dropBoxManager.isTagEnabled("system_app_crash")) {
                    DropBoxManager dropBoxManager2 = zza;
                    StringBuilder sb2 = new StringBuilder();
                    List listZzf = zzmy.zzb(zzma.zzb('.')).zzf("3.5.0");
                    if (listZzf.size() != 3) {
                        j11 = -1;
                    } else {
                        long j12 = 0;
                        for (int i11 = 0; i11 < listZzf.size(); i11++) {
                            try {
                                j12 = (j12 * 100) + ((long) Integer.parseInt((String) listZzf.get(i11)));
                            } catch (NumberFormatException unused) {
                                j11 = -1;
                            }
                        }
                        j11 = j12;
                    }
                    sb2.append(String.format("Package: %s v%d (%s)\n", zzc, Long.valueOf(j11), "3.5.0"));
                    sb2.append(String.format("Build: %s\n", Build.FINGERPRINT));
                    sb2.append("\n");
                    sb2.append(Log.getStackTraceString(th2));
                    dropBoxManager2.addText("system_app_crash", sb2.toString());
                    zzb.put(Long.valueOf(id2), Integer.valueOf(iHashCode));
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
