package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
public class Yf implements Thread.UncaughtExceptionHandler {
    public static volatile boolean Sj;
    private String TKC;
    private final Thread.UncaughtExceptionHandler sP = Thread.getDefaultUncaughtExceptionHandler();

    private Yf() {
        Thread.setDefaultUncaughtExceptionHandler(this);
        sP();
    }

    public static Yf Sj() {
        return new Yf();
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00e4 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00e9 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private void Sj(Thread thread, Throwable th2) {
        FileOutputStream fileOutputStream;
        Object[] objArr;
        int i11;
        FileInputStream fileInputStream = null;
        fileOutputStream = null;
        fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        FileInputStream fileInputStream2 = null;
        fileInputStream = null;
        try {
            if (TextUtils.isEmpty(this.TKC)) {
                sP();
            }
            if (TextUtils.isEmpty(this.TKC)) {
                return;
            }
            File file = new File(this.TKC, "tt_crash_count.properties");
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                Properties properties = new Properties();
                properties.setProperty("crash_count", "1");
                properties.setProperty("crash_last_time", String.valueOf(System.currentTimeMillis()));
                fileOutputStream = new FileOutputStream(file);
                try {
                    properties.store(fileOutputStream, "tt_crash_info");
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (Throwable unused) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused2) {
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        com.bytedance.sdk.component.utils.sU.Sj("TTCrashHandler", "crash count error", th);
                        if (fileOutputStream != null) {
                            try {
                                return;
                            } catch (Throwable unused3) {
                                return;
                            }
                        }
                        return;
                    } finally {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable unused5) {
                            }
                        }
                    }
                }
            }
            Properties properties2 = new Properties();
            FileInputStream fileInputStream3 = new FileInputStream(file);
            try {
                properties2.load(fileInputStream3);
                String property = properties2.getProperty("crash_count", "0");
                String property2 = properties2.getProperty("crash_last_time", "0");
                int iIntValue = Integer.valueOf(property).intValue();
                if (System.currentTimeMillis() - Long.valueOf(property2).longValue() < 300000) {
                    i11 = iIntValue + 1;
                    objArr = false;
                } else {
                    objArr = true;
                    i11 = 1;
                }
                boolean z10 = i11 >= 3;
                int i12 = z10 ? 0 : i11;
                if (z10) {
                    try {
                        file.delete();
                    } catch (Throwable unused6) {
                    }
                } else {
                    properties2.setProperty("crash_count", String.valueOf(i12));
                    if (objArr != false) {
                        properties2.setProperty("crash_last_time", String.valueOf(System.currentTimeMillis()));
                    }
                    FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                    try {
                        properties2.store(fileOutputStream3, "tt_crash_info");
                        fileOutputStream2 = fileOutputStream3;
                    } catch (Throwable th4) {
                        fileOutputStream = fileOutputStream3;
                        th = th4;
                        fileInputStream = fileInputStream3;
                        com.bytedance.sdk.component.utils.sU.Sj("TTCrashHandler", "crash count error", th);
                        if (fileOutputStream != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                }
                if (z10) {
                    TKC();
                }
                fileOutputStream = fileOutputStream2;
                fileInputStream2 = fileInputStream3;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = fileOutputStream2;
            }
        } catch (Throwable th6) {
            th = th6;
            fileOutputStream = null;
        }
    }

    private void TKC() {
        try {
            Method methodSj = com.bytedance.sdk.component.utils.ley.Sj("com.bytedance.sdk.openadsdk.TTC2Proxy", "a", Context.class);
            if (methodSj != null) {
                methodSj.invoke(null, com.bytedance.sdk.openadsdk.core.dNu.Sj());
            }
        } catch (Throwable unused) {
        }
        try {
            Method methodSj2 = com.bytedance.sdk.component.utils.ley.Sj("com.bytedance.sdk.openadsdk.TTC3Proxy", "a", Context.class);
            if (methodSj2 != null) {
                methodSj2.invoke(null, com.bytedance.sdk.openadsdk.core.dNu.Sj());
            }
        } catch (Throwable unused2) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj();
        } catch (Throwable unused3) {
        }
        try {
            com.bytedance.sdk.component.adexpress.Sj.sP.sP.sP();
        } catch (Throwable unused4) {
        }
    }

    private void sP() {
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        if (contextSj == null) {
            return;
        }
        try {
            File file = new File(contextSj.getFilesDir(), "TTCache");
            file.mkdirs();
            this.TKC = file.getPath();
        } catch (Throwable unused) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        Sj = true;
        com.bytedance.sdk.component.Dq.uA.sCrashHappened = true;
        com.bytedance.sdk.component.Dq.TKC.EjP.TKC = true;
        boolean zContains = false;
        com.bytedance.sdk.component.Dq.vS.Sj(false);
        try {
            StringWriter stringWriter = new StringWriter();
            th2.printStackTrace(new PrintWriter(stringWriter));
            String string = stringWriter.toString();
            if (string != null) {
                zContains = string.contains(AdSlot.class.getPackage().getName());
            }
        } catch (Throwable unused) {
        }
        if (zContains) {
            Sj(thread, th2);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.sP;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th2);
    }
}
