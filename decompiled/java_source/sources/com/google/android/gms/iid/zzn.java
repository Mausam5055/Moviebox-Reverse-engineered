package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
final class zzn {
    zzn() {
    }

    @Nullable
    private static zzo zzd(SharedPreferences sharedPreferences, String str) throws zzp {
        String string = sharedPreferences.getString(zzak.zzh(str, "|P|"), null);
        String string2 = sharedPreferences.getString(zzak.zzh(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new zzo(zzg(string, string2), zze(sharedPreferences, str));
    }

    @Nullable
    private static zzo zzd(File file) throws zzp, IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            String property = properties.getProperty("pub");
            String property2 = properties.getProperty("pri");
            if (property != null && property2 != null) {
                try {
                    zzo zzoVar = new zzo(zzg(property, property2), Long.parseLong(properties.getProperty("cre")));
                    zzd((Throwable) null, fileInputStream);
                    return zzoVar;
                } catch (NumberFormatException e11) {
                    throw new zzp(e11);
                }
            }
            zzd((Throwable) null, fileInputStream);
            return null;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                zzd(th2, fileInputStream);
                throw th3;
            }
        }
    }

    private static void zzd(Context context, String str, zzo zzoVar) {
        try {
            Log.isLoggable("InstanceID", 3);
            File fileZzj = zzj(context, str);
            fileZzj.createNewFile();
            Properties properties = new Properties();
            properties.setProperty("pub", zzoVar.zzq());
            properties.setProperty("pri", zzoVar.zzr());
            properties.setProperty("cre", String.valueOf(zzoVar.zzcc));
            FileOutputStream fileOutputStream = new FileOutputStream(fileZzj);
            try {
                properties.store(fileOutputStream, (String) null);
                zzd((Throwable) null, fileOutputStream);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    zzd(th2, fileOutputStream);
                    throw th3;
                }
            }
        } catch (IOException e11) {
            String strValueOf = String.valueOf(e11);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 21);
            sb2.append("Failed to write key: ");
            sb2.append(strValueOf);
            Log.w("InstanceID", sb2.toString());
        }
    }

    private static /* synthetic */ void zzd(Throwable th2, FileInputStream fileInputStream) throws IOException {
        if (th2 == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th3) {
            com.google.android.gms.internal.gcm.zzq.zzd(th2, th3);
        }
    }

    private static /* synthetic */ void zzd(Throwable th2, FileOutputStream fileOutputStream) throws IOException {
        if (th2 == null) {
            fileOutputStream.close();
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Throwable th3) {
            com.google.android.gms.internal.gcm.zzq.zzd(th2, th3);
        }
    }

    private static long zze(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzak.zzh(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    private final void zze(Context context, String str, zzo zzoVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzoVar.equals(zzd(sharedPreferences, str))) {
                return;
            }
        } catch (zzp unused) {
        }
        Log.isLoggable("InstanceID", 3);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(zzak.zzh(str, "|P|"), zzoVar.zzq());
        editorEdit.putString(zzak.zzh(str, "|K|"), zzoVar.zzr());
        editorEdit.putString(zzak.zzh(str, "cre"), String.valueOf(zzoVar.zzcc));
        editorEdit.commit();
    }

    private static KeyPair zzg(String str, String str2) throws zzp {
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            byte[] bArrDecode2 = Base64.decode(str2, 8);
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e11) {
                String strValueOf = String.valueOf(e11);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 19);
                sb2.append("Invalid key stored ");
                sb2.append(strValueOf);
                Log.w("InstanceID", sb2.toString());
                throw new zzp(e11);
            }
        } catch (IllegalArgumentException e12) {
            throw new zzp(e12);
        }
    }

    static void zzg(Context context, String str) {
        File fileZzj = zzj(context, str);
        if (fileZzj.exists()) {
            fileZzj.delete();
        }
    }

    @Nullable
    private final zzo zzh(Context context, String str) throws zzp {
        try {
            zzo zzoVarZzi = zzi(context, str);
            if (zzoVarZzi != null) {
                zze(context, str, zzoVarZzi);
                return zzoVarZzi;
            }
            e = null;
        } catch (zzp e11) {
            e = e11;
        }
        try {
            zzo zzoVarZzd = zzd(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzoVarZzd != null) {
                zzd(context, str, zzoVarZzd);
                return zzoVarZzd;
            }
        } catch (zzp e12) {
            e = e12;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    @Nullable
    private final zzo zzi(Context context, String str) throws zzp {
        File fileZzj = zzj(context, str);
        if (!fileZzj.exists()) {
            return null;
        }
        try {
            return zzd(fileZzj);
        } catch (IOException e11) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(e11);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 40);
                sb2.append("Failed to read key from file, retrying: ");
                sb2.append(strValueOf);
            }
            try {
                return zzd(fileZzj);
            } catch (IOException e12) {
                String strValueOf2 = String.valueOf(e12);
                StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 45);
                sb3.append("IID file exists, but failed to read from it: ");
                sb3.append(strValueOf2);
                Log.w("InstanceID", sb3.toString());
                throw new zzp(e12);
            }
        }
    }

    static void zzi(Context context) {
        for (File file : zzj(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private static File zzj(Context context) {
        File noBackupFilesDir = b.getNoBackupFilesDir(context);
        if (noBackupFilesDir != null && noBackupFilesDir.isDirectory()) {
            return noBackupFilesDir;
        }
        Log.w("InstanceID", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File zzj(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strEncodeToString).length() + 33);
                sb2.append("com.google.InstanceId_");
                sb2.append(strEncodeToString);
                sb2.append(".properties");
                string = sb2.toString();
            } catch (UnsupportedEncodingException e11) {
                throw new AssertionError(e11);
            }
        }
        return new File(zzj(context), string);
    }

    final zzo zze(Context context, String str) throws zzp {
        zzo zzoVarZzh = zzh(context, str);
        return zzoVarZzh != null ? zzoVarZzh : zzf(context, str);
    }

    final zzo zzf(Context context, String str) {
        zzo zzoVar = new zzo(zzd.zzl(), System.currentTimeMillis());
        try {
            zzo zzoVarZzh = zzh(context, str);
            if (zzoVarZzh != null) {
                Log.isLoggable("InstanceID", 3);
                return zzoVarZzh;
            }
        } catch (zzp unused) {
        }
        Log.isLoggable("InstanceID", 3);
        zzd(context, str, zzoVar);
        zze(context, str, zzoVar);
        return zzoVar;
    }
}
