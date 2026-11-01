package com.bykv.vk.openvk.preload.geckox.utils;

import android.os.Process;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FileLock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, Integer> f20753a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f20754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f20755c;

    static {
        System.loadLibrary("file_lock_pgl");
    }

    private FileLock(String str, int i11) {
        this.f20755c = str;
        this.f20754b = i11;
    }

    public static FileLock a(String str) {
        try {
            int iD = d(str);
            nLockFile(iD);
            return new FileLock(str, iD);
        } catch (Exception e11) {
            throw new RuntimeException("lock failed, file:" + str + ", pid:" + Process.myPid() + " caused by:" + e11.getMessage());
        }
    }

    public static FileLock a(String str, int i11) {
        try {
            int iD = d(str);
            nLockFileSegment(iD, i11);
            return new FileLock(str, iD);
        } catch (Exception e11) {
            throw new RuntimeException("lock segment failed, file:" + str + " caused by:" + e11.getMessage());
        }
    }

    public static FileLock b(String str) {
        try {
            int iD = d(str);
            if (nTryLock(iD)) {
                return new FileLock(str, iD);
            }
            return null;
        } catch (Exception e11) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e11.getMessage());
        }
    }

    public static FileLock c(String str) throws Exception {
        try {
            int iD = d(str);
            if (nTryLock(iD)) {
                return new FileLock(str, iD);
            }
            new FileLock(str, iD).b();
            return null;
        } catch (Exception e11) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e11.getMessage());
        }
    }

    private static int d(String str) throws Exception {
        Integer numValueOf;
        Map<String, Integer> map = f20753a;
        synchronized (map) {
            try {
                numValueOf = map.get(str);
                if (numValueOf == null) {
                    new File(str).getParentFile().mkdirs();
                    numValueOf = Integer.valueOf(nGetFD(str));
                    map.put(str, numValueOf);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return numValueOf.intValue();
    }

    private static native int nGetFD(String str) throws Exception;

    private static native void nLockFile(int i11) throws Exception;

    private static native void nLockFileSegment(int i11, int i12) throws Exception;

    private static native void nRelease(int i11) throws Exception;

    private static native boolean nTryLock(int i11) throws Exception;

    private static native void nUnlockFile(int i11) throws Exception;

    public final void a() {
        try {
            nUnlockFile(this.f20754b);
        } catch (Exception unused) {
            throw new RuntimeException("release lock failed，path:" + this.f20755c);
        }
    }

    public final void b() {
        Integer numRemove;
        Map<String, Integer> map = f20753a;
        synchronized (map) {
            numRemove = map.remove(this.f20755c);
        }
        try {
            nRelease(numRemove.intValue());
        } catch (Exception e11) {
            throw new RuntimeException("release lock failed, file:" + this.f20755c + " caused by:" + e11.getMessage());
        }
    }
}
