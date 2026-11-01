package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.x0;
import com.google.common.base.Optional;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhg {

    public static class zza {
        private static volatile Optional<zzhh> zza;

        private zza() {
        }

        public static Optional<zzhh> zza(Context context) {
            Optional<zzhh> optionalZza;
            Optional<zzhh> optional = zza;
            if (optional == null) {
                synchronized (zza.class) {
                    try {
                        optional = zza;
                        if (optional == null) {
                            new zzhg();
                            if (zzhk.zza(Build.TYPE, Build.TAGS)) {
                                if (zzgs.zza() && !context.isDeviceProtectedStorage()) {
                                    context = context.createDeviceProtectedStorageContext();
                                }
                                optionalZza = zzhg.zza(context);
                            } else {
                                optionalZza = Optional.absent();
                            }
                            zza = optionalZza;
                            optional = optionalZza;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return optional;
        }
    }

    private static zzhh zza(Context context, File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                x0 x0Var = new x0();
                HashMap map = new HashMap();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        Log.w("HermeticFileOverrides", "Parsed " + String.valueOf(file) + " for Android package " + context.getPackageName());
                        zzgy zzgyVar = new zzgy(x0Var);
                        bufferedReader.close();
                        return zzgyVar;
                    }
                    String[] strArrSplit = line.split(" ", 3);
                    if (strArrSplit.length != 3) {
                        Log.e("HermeticFileOverrides", "Invalid: " + line);
                    } else {
                        String strZza = zza(strArrSplit[0]);
                        String strDecode = Uri.decode(zza(strArrSplit[1]));
                        String strDecode2 = (String) map.get(strArrSplit[2]);
                        if (strDecode2 == null) {
                            String strZza2 = zza(strArrSplit[2]);
                            strDecode2 = Uri.decode(strZza2);
                            if (strDecode2.length() < 1024 || strDecode2 == strZza2) {
                                map.put(strZza2, strDecode2);
                            }
                        }
                        x0 x0Var2 = (x0) x0Var.get(strZza);
                        if (x0Var2 == null) {
                            x0Var2 = new x0();
                            x0Var.put(strZza, x0Var2);
                        }
                        x0Var2.put(strDecode, strDecode2);
                    }
                    throw new RuntimeException(e);
                }
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e11) {
            throw new RuntimeException(e11);
        }
    }

    static Optional<zzhh> zza(Context context) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            Optional<File> optionalZzb = zzb(context);
            return optionalZzb.isPresent() ? Optional.of(zza(context, optionalZzb.get())) : Optional.absent();
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    private static final String zza(String str) {
        return new String(str);
    }

    private static Optional<File> zzb(Context context) {
        try {
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? Optional.of(file) : Optional.absent();
        } catch (RuntimeException e11) {
            Log.e("HermeticFileOverrides", "no data dir", e11);
            return Optional.absent();
        }
    }
}
