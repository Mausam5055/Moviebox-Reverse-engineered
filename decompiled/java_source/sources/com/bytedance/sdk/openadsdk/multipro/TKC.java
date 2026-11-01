package com.bytedance.sdk.openadsdk.multipro;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.dx;
import com.bytedance.sdk.component.utils.sU;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private static boolean Sj = true;
    private static final AtomicBoolean sP = new AtomicBoolean(false);

    public static void Sj() {
        Sj = false;
    }

    public static void Sj(Context context) {
        if (context != null && Sj && sP.compareAndSet(false, true)) {
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    if (dx.Sj(context)) {
                        sP(context);
                        return;
                    }
                    String strSP = dx.sP(context);
                    try {
                        if (TextUtils.isEmpty(strSP)) {
                            strSP = context.getPackageName() + Process.myPid();
                        }
                        WebView.setDataDirectorySuffix(strSP);
                    } catch (IllegalStateException unused) {
                        Sj(strSP);
                    } catch (Exception unused2) {
                    }
                }
            } catch (Throwable th2) {
                sU.sP(th2.getMessage(), new Object[0]);
            }
        }
    }

    private static void Sj(File file) {
        Sj(file, file.exists() ? file.delete() : false);
    }

    private static void Sj(File file, boolean z10) {
        if (!z10 || file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e11) {
            sU.sP("TTAD.TTMultiInitHelper", e11.getMessage());
        }
    }

    private static void Sj(String str) {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            declaredMethod2.setAccessible(true);
            Class cls = (Class) declaredMethod.invoke(null, "android.webkit.WebViewFactory");
            Field field = (Field) declaredMethod2.invoke(cls, "sDataDirectorySuffix");
            field.setAccessible(true);
            if (TextUtils.isEmpty((String) field.get(cls))) {
                field.set(cls, str);
            }
        } catch (Throwable unused) {
        }
    }

    private static String sP() {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            declaredMethod2.setAccessible(true);
            Class cls = (Class) declaredMethod.invoke(null, "android.webkit.WebViewFactory");
            return (String) ((Field) declaredMethod2.invoke(cls, "sDataDirectorySuffix")).get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[SYNTHETIC] */
    private static void sP(Context context) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel;
        Throwable th2;
        String strSP = sP();
        File file = new File(context.getDir(TextUtils.isEmpty(strSP) ? "webview" : "webview_".concat(String.valueOf(strSP)), 0).getPath(), "webview_data.lock");
        file.getAbsolutePath();
        if (!file.exists()) {
            return;
        }
        FileChannel fileChannel = null;
        FileLock fileLockTryLock = null;
        fileChannel = null;
        fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                try {
                    channel = randomAccessFile.getChannel();
                    if (channel != null) {
                        try {
                            fileLockTryLock = channel.tryLock();
                        } catch (Exception unused) {
                            fileChannel = channel;
                            Sj(file);
                            if (fileChannel != null) {
                                try {
                                    fileChannel.close();
                                } catch (Throwable th3) {
                                    th3.getMessage();
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                    return;
                                } catch (Throwable th4) {
                                    th4.getMessage();
                                    return;
                                }
                            }
                            return;
                        } catch (Throwable th5) {
                            th2 = th5;
                            if (channel != null) {
                                try {
                                    channel.close();
                                } catch (Throwable th6) {
                                    th6.getMessage();
                                }
                            }
                            if (randomAccessFile == null) {
                                throw th2;
                            }
                            try {
                                randomAccessFile.close();
                                throw th2;
                            } catch (Throwable th7) {
                                th7.getMessage();
                                throw th2;
                            }
                        }
                    }
                    if (fileLockTryLock != null) {
                        fileLockTryLock.close();
                    } else {
                        Sj(file);
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (Throwable th8) {
                            th8.getMessage();
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th9) {
                        th9.getMessage();
                    }
                } catch (Exception unused2) {
                }
            } catch (Throwable th10) {
                th = th10;
                channel = fileChannel;
                th2 = th;
                if (channel != null) {
                    channel.close();
                }
                if (randomAccessFile == null) {
                    throw th2;
                }
                randomAccessFile.close();
                throw th2;
            }
        } catch (Exception unused3) {
            randomAccessFile = null;
        } catch (Throwable th11) {
            th = th11;
            randomAccessFile = null;
            channel = null;
            th2 = th;
            if (channel != null) {
                channel.close();
            }
            if (randomAccessFile == null) {
                throw th2;
            }
            randomAccessFile.close();
            throw th2;
        }
    }
}
