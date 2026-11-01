package com.google.android.gms.internal.auth;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.x0;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class zzcp {
    private static volatile zzdh zza;

    private zzcp() {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0032 A[Catch: all -> 0x001e, TryCatch #6 {all -> 0x001e, blocks: (B:4:0x0005, B:6:0x0009, B:8:0x0015, B:18:0x0032, B:73:0x0177, B:13:0x0021, B:15:0x0029, B:20:0x0039, B:22:0x003f, B:24:0x0045, B:25:0x0049, B:72:0x0172, B:74:0x017a, B:75:0x017d, B:76:0x017e, B:26:0x004d, B:27:0x0050, B:28:0x005d, B:30:0x0063, B:36:0x007c, B:38:0x0082, B:39:0x0088, B:59:0x0143, B:60:0x0146, B:68:0x0167, B:67:0x0152, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:33:0x006b, B:35:0x0071), top: B:91:0x0005, inners: #2 }] */
    public static zzdh zza(Context context) {
        zzdh zzdhVar;
        zzdh zzdhVarZzc;
        zzdh zzdhVarZzc2;
        synchronized (zzcp.class) {
            try {
                zzdhVar = zza;
                if (zzdhVar == null) {
                    String str = Build.TYPE;
                    String str2 = Build.TAGS;
                    if (!str.equals("eng") && !str.equals("userdebug")) {
                        zzdhVarZzc2 = zzdh.zzc();
                    } else if (str2.contains("dev-keys") || str2.contains("test-keys")) {
                        if (zzcc.zzb() && !context.isDeviceProtectedStorage()) {
                            context = context.createDeviceProtectedStorageContext();
                        }
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            StrictMode.allowThreadDiskWrites();
                            try {
                                File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
                                zzdhVarZzc = file.exists() ? zzdh.zzd(file) : zzdh.zzc();
                            } catch (RuntimeException e11) {
                                Log.e("HermeticFileOverrides", "no data dir", e11);
                                zzdhVarZzc = zzdh.zzc();
                            }
                            if (zzdhVarZzc.zzb()) {
                                File file2 = (File) zzdhVarZzc.zza();
                                try {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                    try {
                                        x0 x0Var = new x0();
                                        HashMap map = new HashMap();
                                        while (true) {
                                            String line = bufferedReader.readLine();
                                            if (line == null) {
                                                break;
                                            }
                                            String[] strArrSplit = line.split(" ", 3);
                                            if (strArrSplit.length != 3) {
                                                Log.e("HermeticFileOverrides", "Invalid: " + line);
                                            } else {
                                                String str3 = new String(strArrSplit[0]);
                                                String strDecode = Uri.decode(new String(strArrSplit[1]));
                                                String strDecode2 = (String) map.get(strArrSplit[2]);
                                                if (strDecode2 == null) {
                                                    String str4 = new String(strArrSplit[2]);
                                                    strDecode2 = Uri.decode(str4);
                                                    if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                        map.put(str4, strDecode2);
                                                    }
                                                }
                                                if (!x0Var.containsKey(str3)) {
                                                    x0Var.put(str3, new x0());
                                                }
                                                ((x0) x0Var.get(str3)).put(strDecode, strDecode2);
                                            }
                                        }
                                        Log.w("HermeticFileOverrides", "Parsed " + file2.toString() + " for Android package " + context.getPackageName());
                                        zzci zzciVar = new zzci(x0Var);
                                        bufferedReader.close();
                                        zzdhVarZzc2 = zzdh.zzd(zzciVar);
                                    } catch (Throwable th2) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Throwable th3) {
                                            try {
                                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                            } catch (Exception unused) {
                                            }
                                        }
                                        throw th2;
                                    }
                                } catch (IOException e12) {
                                    throw new RuntimeException(e12);
                                }
                            } else {
                                zzdhVarZzc2 = zzdh.zzc();
                            }
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        } catch (Throwable th4) {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            throw th4;
                        }
                    } else {
                        zzdhVarZzc2 = zzdh.zzc();
                    }
                    zzdhVar = zzdhVarZzc2;
                    zza = zzdhVar;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        return zzdhVar;
    }
}
