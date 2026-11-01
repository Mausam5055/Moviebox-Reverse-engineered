package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, Lock> f20696a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ReentrantLock f20697b = new ReentrantLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f20698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FileLock f20699d;

    private b(String str, FileLock fileLock) {
        this.f20698c = str;
        this.f20699d = fileLock;
    }

    public static b a(String str) throws Exception {
        f20697b.lock();
        try {
            FileLock fileLockA = FileLock.a(str);
            Map<String, Lock> map = f20696a;
            Lock reentrantLock = map.get(str);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                map.put(str, reentrantLock);
            }
            reentrantLock.lock();
            return new b(str, fileLockA);
        } catch (Exception e11) {
            f20697b.unlock();
            throw e11;
        }
    }

    public final void a() {
        try {
            this.f20699d.a();
            this.f20699d.b();
            Lock lock = f20696a.get(this.f20698c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f20697b.unlock();
        }
    }
}
