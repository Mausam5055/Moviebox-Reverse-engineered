package com.google.android.gms.dynamite;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class zzb {

    @Nullable
    private static ClassLoader zza;

    @Nullable
    private static Thread zzb;

    /* JADX WARN: Code duplicated, block: B:52:0x00aa A[Catch: all -> 0x00a6, PHI: r1
  0x00aa: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v15 java.lang.Thread) binds: [B:7:0x000a, B:46:0x00a3] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:45:0x00a1, B:60:0x00d0, B:12:0x001f, B:51:0x00a9, B:52:0x00aa, B:63:0x00d4, B:64:0x00d5, B:53:0x00ab, B:59:0x00cf, B:58:0x00b5, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0075, B:42:0x0085, B:43:0x009f, B:18:0x003c), top: B:74:0x0003, inners: #1, #6 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Nullable
    public static synchronized ClassLoader zza() {
        SecurityException e11;
        Thread thread;
        ThreadGroup threadGroup;
        if (zza == null) {
            Thread thread2 = zzb;
            ClassLoader contextClassLoader = null;
            if (thread2 != null) {
                synchronized (thread2) {
                    try {
                        contextClassLoader = zzb.getContextClassLoader();
                    } catch (SecurityException e12) {
                        Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + e12.getMessage());
                    }
                }
                zza = contextClassLoader;
            } else {
                ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                if (threadGroup2 == null) {
                    thread2 = null;
                } else {
                    synchronized (Void.class) {
                        try {
                            try {
                                int iActiveGroupCount = threadGroup2.activeGroupCount();
                                ThreadGroup[] threadGroupArr = new ThreadGroup[iActiveGroupCount];
                                threadGroup2.enumerate(threadGroupArr);
                                int i11 = 0;
                                int i12 = 0;
                                while (true) {
                                    if (i12 >= iActiveGroupCount) {
                                        threadGroup = null;
                                        break;
                                    }
                                    threadGroup = threadGroupArr[i12];
                                    if ("dynamiteLoader".equals(threadGroup.getName())) {
                                        break;
                                    }
                                    i12++;
                                }
                                if (threadGroup == null) {
                                    threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                }
                                int iActiveCount = threadGroup.activeCount();
                                Thread[] threadArr = new Thread[iActiveCount];
                                threadGroup.enumerate(threadArr);
                                while (true) {
                                    if (i11 >= iActiveCount) {
                                        thread = null;
                                        break;
                                    }
                                    thread = threadArr[i11];
                                    if ("GmsDynamite".equals(thread.getName())) {
                                        break;
                                    }
                                    i11++;
                                }
                                if (thread == null) {
                                    try {
                                        zza zzaVar = new zza(threadGroup, "GmsDynamite");
                                        try {
                                            zzaVar.setContextClassLoader(null);
                                            zzaVar.start();
                                            thread = zzaVar;
                                        } catch (SecurityException e13) {
                                            e11 = e13;
                                            thread = zzaVar;
                                            Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e11.getMessage());
                                        }
                                    } catch (SecurityException e14) {
                                        e11 = e14;
                                    }
                                }
                            } catch (SecurityException e15) {
                                e11 = e15;
                                thread = null;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    thread2 = thread;
                }
                zzb = thread2;
                if (thread2 != null) {
                    synchronized (thread2) {
                        contextClassLoader = zzb.getContextClassLoader();
                    }
                }
                zza = contextClassLoader;
            }
        }
        return zza;
    }
}
