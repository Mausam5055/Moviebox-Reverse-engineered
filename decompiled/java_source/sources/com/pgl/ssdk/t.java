package com.pgl.ssdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.pgl.ssdk.ces.out.DungeonFlag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile String f40198a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile String f40199b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f40200c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f40201d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f40202e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f40203f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f40204g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f40205h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f40206i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile long f40207j = -1;

    @DungeonFlag
    private static e a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        List<e> listA;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
                try {
                    o oVarA = p.a(randomAccessFile, 0L, randomAccessFile.length());
                    listA = k.a(oVarA, c.a(oVarA));
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused) {
                    }
                } catch (f.a unused2) {
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    listA = null;
                } catch (Throwable unused3) {
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    listA = null;
                }
            } catch (IOException unused4) {
                listA = null;
            }
        } catch (f.a unused5) {
            randomAccessFile = null;
        } catch (Throwable unused6) {
            randomAccessFile = null;
        }
        if (listA == null || listA.isEmpty()) {
            listA = j.a(file);
        }
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        return listA.get(0);
    }

    public static String a(RandomAccessFile randomAccessFile) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1048576];
            while (true) {
                int i11 = randomAccessFile.read(bArr);
                if (i11 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i11);
            }
            String string = new BigInteger(1, messageDigest.digest()).toString(16);
            while (string.length() < 32) {
                string = "0".concat(string);
            }
            return string;
        } catch (FileNotFoundException | IOException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static String a(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb2 = new StringBuilder();
            for (byte b11 : bArrDigest) {
                sb2.append(Integer.toHexString((b11 & 255) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static void a() {
        SharedPreferences sharedPreferencesA = u0.a(x.b());
        if (sharedPreferencesA != null) {
            if (!TextUtils.isEmpty(f40198a)) {
                sharedPreferencesA.edit().putString("sa", f40198a).apply();
            }
            if (!TextUtils.isEmpty(f40202e)) {
                sharedPreferencesA.edit().putString("md5", f40202e).apply();
            }
            if (!TextUtils.isEmpty(f40201d)) {
                sharedPreferencesA.edit().putString("sj", f40201d).apply();
            }
            if (f40205h != 0) {
                sharedPreferencesA.edit().putLong("as", f40205h).apply();
            }
            if (f40206i != 0) {
                sharedPreferencesA.edit().putLong("ds", f40206i).apply();
            }
            if (f40207j != -1) {
                sharedPreferencesA.edit().putLong("mt", f40207j).apply();
            }
            if (f40204g != -1) {
                sharedPreferencesA.edit().putInt("cpc", f40204g).apply();
            }
            if (TextUtils.isEmpty(f40203f)) {
                return;
            }
            sharedPreferencesA.edit().putString("ap", f40203f).apply();
        }
    }

    public static void a(File file, boolean z10) throws Throwable {
        e eVarA;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
                try {
                    if (TextUtils.isEmpty(f40198a) && (eVarA = a(file)) != null) {
                        f40198a = a(eVarA.a());
                        f40201d = eVarA.b();
                        if (z10) {
                            a();
                            try {
                                randomAccessFile2.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                    }
                    if (TextUtils.isEmpty(f40202e)) {
                        f40202e = a(randomAccessFile2);
                    }
                    if (f40205h == 0) {
                        f40205h = randomAccessFile2.length() / 1024;
                    }
                    if (f40206i == 0) {
                        f40206i = b(file);
                    }
                    randomAccessFile2.close();
                } catch (FileNotFoundException unused2) {
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } catch (IOException unused3) {
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused5) {
            }
        } catch (FileNotFoundException unused6) {
        } catch (IOException unused7) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static long b(File file) throws Throwable {
        String str;
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(file);
                int i11 = 0;
                int size = 0;
                while (true) {
                    if (i11 == 0) {
                        str = "classes.dex";
                    } else {
                        str = String.format(Locale.getDefault(), "classes%d.dex", Integer.valueOf(i11));
                    }
                    try {
                        ZipEntry entry = zipFile2.getEntry(str);
                        if (entry == null) {
                            break;
                        }
                        size = (int) (((long) size) + entry.getSize());
                        i11++;
                    } catch (ZipException unused) {
                        zipFile = zipFile2;
                        if (zipFile == null) {
                            return 0L;
                        }
                        zipFile.close();
                        return 0L;
                    } catch (IOException unused2) {
                        zipFile = zipFile2;
                        if (zipFile == null) {
                            return 0L;
                        }
                        zipFile.close();
                        return 0L;
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                }
                long j11 = size / 1000;
                try {
                    zipFile2.close();
                } catch (IOException unused4) {
                }
                return j11;
            } catch (IOException unused5) {
                return 0L;
            }
        } catch (ZipException unused6) {
        } catch (IOException unused7) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String b() throws Throwable {
        String string;
        String string2;
        String string3;
        String string4;
        int i11;
        long j11;
        long j12;
        if (TextUtils.isEmpty(f40198a) || TextUtils.isEmpty(f40202e) || f40204g == -1) {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            long j13 = -1;
            if (sharedPreferencesA != null) {
                j13 = sharedPreferencesA.getLong("mt", -1L);
                string2 = sharedPreferencesA.getString("sa", null);
                string3 = sharedPreferencesA.getString("sj", null);
                string4 = sharedPreferencesA.getString("md5", null);
                j11 = sharedPreferencesA.getLong("as", 0L);
                j12 = sharedPreferencesA.getLong("ds", 0L);
                i11 = sharedPreferencesA.getInt("cpc", -1);
                string = sharedPreferencesA.getString("ap", null);
            } else {
                string = null;
                string2 = null;
                string3 = null;
                string4 = null;
                i11 = 0;
                j11 = 0;
                j12 = 0;
            }
            String strC = c();
            if (strC == null) {
                return null;
            }
            File file = new File(strC);
            Object[] objArr = (Object[]) com.pgl.ssdk.ces.a.meta(158, x.b(), strC);
            Integer num = (Integer) objArr[0];
            String str = (String) objArr[1];
            long jLastModified = file.lastModified();
            if (jLastModified != j13 || string2 == null || i11 == -1) {
                f40207j = jLastModified;
                if (str != null) {
                    f40203f = str;
                }
                if (num != null) {
                    f40204g = num.intValue();
                }
                a(file, false);
                a();
            } else {
                f40198a = string2;
                f40201d = string3;
                f40205h = j11;
                f40206i = j12;
                f40202e = string4;
                f40204g = i11;
                f40203f = string;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f40198a)) {
                jSONObject.put(TmcConstants.EXTRA_APP_DEV_TOKEN, f40198a);
            }
            if (!TextUtils.isEmpty(f40201d)) {
                jSONObject.put("subject", f40201d);
            }
            if (!TextUtils.isEmpty(f40202e)) {
                jSONObject.put("md5", f40202e);
            }
            if (!TextUtils.isEmpty(f40203f)) {
                jSONObject.put("path", f40203f);
            }
            long j14 = f40205h;
            if (j14 != 0) {
                jSONObject.put("apkSize", j14);
            }
            long j15 = f40206i;
            if (j15 != 0) {
                jSONObject.put("dexSize", j15);
            }
            int i12 = f40204g;
            if (i12 != -1) {
                jSONObject.put("code", i12);
            }
            f();
            jSONObject.put("signpm", f40199b);
            if (!TextUtils.isEmpty(f40199b) && !TextUtils.isEmpty(f40198a)) {
                if (!f40199b.equals(f40198a)) {
                    f40200c = true;
                }
                jSONObject.put("rebud", f40200c);
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String c() {
        if (x.b() == null) {
            return null;
        }
        String packageCodePath = x.b().getPackageCodePath();
        if (TextUtils.isEmpty(packageCodePath)) {
            return null;
        }
        File file = new File(packageCodePath);
        if (file.exists() && file.canRead()) {
            return packageCodePath;
        }
        return null;
    }

    public static void d() throws Throwable {
        if (TextUtils.isEmpty(f40198a)) {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            String string = null;
            long j11 = -1;
            if (sharedPreferencesA != null) {
                j11 = sharedPreferencesA.getLong("mt", -1L);
                string = sharedPreferencesA.getString("sa", null);
            }
            String strC = c();
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            File file = new File(strC);
            long jLastModified = file.lastModified();
            if (jLastModified != j11 || string == null) {
                f40207j = jLastModified;
                a(file, true);
                a();
            } else {
                f40198a = string;
            }
        }
        f();
        if (TextUtils.isEmpty(f40199b) || TextUtils.isEmpty(f40198a) || f40199b.equals(f40198a)) {
            return;
        }
        f40200c = true;
    }

    public static String e() throws Throwable {
        d();
        return f40198a;
    }

    public static String f() {
        if (!TextUtils.isEmpty(f40199b)) {
            return f40199b;
        }
        try {
            String strA = a(x.b().getPackageManager().getPackageInfo(x.b().getPackageName(), 64).signatures[0].toByteArray());
            f40199b = strA;
            return strA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean g() throws Throwable {
        d();
        return f40200c;
    }
}
