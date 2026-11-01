package com.cloud.hisavana.sdk.common.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.e4;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

/* JADX INFO: loaded from: classes3.dex */
public class m {
    public static void a(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                file2.delete();
            } else if (file2.isDirectory()) {
                a(file2);
            }
        }
        file.delete();
    }

    public static String b(Context context) {
        File fileE = StorageUtils.e(context);
        return (fileE == null || !fileE.exists()) ? "" : fileE.getAbsolutePath();
    }

    public static byte[] c(File file) {
        if (file != null && file.exists()) {
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    return Files.readAllBytes(Paths.get(file.getAbsolutePath(), new String[0]));
                } catch (Exception e11) {
                    e4.b().w("ssp", "getDataFromFile failed, error=" + e11.getMessage());
                }
            } else {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[l.a(file.length())];
                        fileInputStream.read(bArr);
                        fileInputStream.close();
                        return bArr;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Exception e12) {
                    e4.b().w("ssp", "getDataFromFile failed, error=" + e12.getMessage());
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[SYNTHETIC] */
    public static String d(String str) throws Throwable {
        Throwable th2;
        Exception e11;
        FileReader fileReader;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        File file = new File(str);
        FileReader fileReader2 = null;
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        try {
            fileReader = new FileReader(file);
            try {
                try {
                    char[] cArr = new char[1024];
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        int i11 = fileReader.read(cArr);
                        if (i11 == -1) {
                            break;
                        }
                        stringBuffer.append(cArr, 0, i11);
                        th2 = th;
                        fileReader2 = fileReader;
                        if (fileReader2 != null) {
                            throw th2;
                        }
                        try {
                            fileReader2.close();
                            throw th2;
                        } catch (IOException e12) {
                            e4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e12));
                            throw th2;
                        }
                    }
                    if (stringBuffer.length() == 0) {
                        try {
                            fileReader.close();
                        } catch (IOException e13) {
                            e4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e13));
                        }
                        return null;
                    }
                    e4.b().d("ssp", a7.c.p() ? stringBuffer.toString() : "");
                    fileReader.close();
                    String string = stringBuffer.toString();
                    try {
                        fileReader.close();
                    } catch (IOException e14) {
                        e4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e14));
                    }
                    return string;
                } catch (Exception e15) {
                    e11 = e15;
                    e4.b().e("ssp", "readFile error: " + Log.getStackTraceString(e11));
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException e16) {
                            e4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e16));
                        }
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                fileReader2 = fileReader;
            }
        } catch (Exception e17) {
            e11 = e17;
            fileReader = null;
        } catch (Throwable th4) {
            th2 = th4;
        }
        th2 = th3;
        fileReader2 = fileReader;
        if (fileReader2 != null) {
            throw th2;
        }
        fileReader2.close();
        throw th2;
    }

    public static Uri e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            if (Build.VERSION.SDK_INT <= 24) {
                return Uri.fromFile(file);
            }
            return FileProvider.getUriForFile(com.cloud.sdk.commonutil.util.e.a(), com.cloud.sdk.commonutil.util.e.a().getApplicationContext().getPackageName() + ".HisavanaFileProvider", file);
        } catch (Exception e11) {
            e4.b().e("ssp", Log.getStackTraceString(e11));
            return null;
        }
    }

    public static String f(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return "";
        }
        for (File file2 : fileArrListFiles) {
            if (file2 != null) {
                if (file2.isDirectory()) {
                    String strF = f(file2.getAbsolutePath());
                    if (!TextUtils.isEmpty(strF)) {
                        return strF;
                    }
                } else if (file2.getName().equals(com.vungle.ads.internal.b.AD_INDEX_FILE_NAME)) {
                    return file2.getAbsolutePath();
                }
            }
        }
        return "";
    }
}
