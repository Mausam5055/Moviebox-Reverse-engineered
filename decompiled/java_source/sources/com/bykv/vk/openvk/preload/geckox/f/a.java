package com.bykv.vk.openvk.preload.geckox.f;

import com.bykv.vk.openvk.preload.geckox.f.a.c;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.utils.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f20683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f20684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile File f20685c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Long f20686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.preload.geckox.f.a.a f20687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f20688f = new AtomicBoolean(false);

    a(String str, String str2) {
        this.f20683a = str;
        this.f20684b = str2;
    }

    private static String a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    private synchronized com.bykv.vk.openvk.preload.geckox.f.a.a d(String str) throws Exception {
        if (this.f20687e != null) {
            return this.f20687e;
        }
        File fileE = e(str);
        if (fileE == null) {
            throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
        }
        File file = new File(fileE, "res.macv");
        File file2 = new File(fileE, "res");
        if (file2.exists() && file2.isDirectory()) {
            this.f20687e = new c(fileE);
        } else {
            if (!file.exists() || !file.isFile()) {
                throw new RuntimeException("can not find res, dir:" + fileE.getAbsolutePath());
            }
            this.f20687e = new com.bykv.vk.openvk.preload.geckox.f.a.b(fileE);
        }
        return this.f20687e;
    }

    private synchronized File e(String str) throws Exception {
        if (this.f20685c != null) {
            return this.f20685c;
        }
        if (this.f20686d != null && this.f20686d.longValue() == -1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f20683a);
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append(str);
        sb2.append(str2);
        sb2.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(sb2.toString());
        try {
            if (this.f20686d == null) {
                this.f20686d = g.a(new File(this.f20683a, str));
            }
            if (this.f20686d == null) {
                this.f20686d = -1L;
                bVarA.a();
                return null;
            }
            File file = new File(this.f20683a, str2 + str + str2 + this.f20686d + str2 + "using.lock");
            this.f20685c = file.getParentFile();
            com.bykv.vk.openvk.preload.geckox.g.c.a(file.getAbsolutePath());
            File file2 = this.f20685c;
            bVarA.a();
            return file2;
        } catch (Throwable th2) {
            bVarA.a();
            throw th2;
        }
    }

    final InputStream a(String str) throws Exception {
        return d(this.f20684b).a(a(this.f20684b, str));
    }

    final Long a() {
        return this.f20686d;
    }

    final String b() {
        return this.f20684b;
    }

    final boolean b(String str) throws Exception {
        return d(this.f20684b).b(a(this.f20684b, str));
    }

    public final int c(String str) {
        int length;
        try {
            File file = new File(e(str), "res");
            if (file.exists() && file.isDirectory() && (length = file.listFiles().length) > 0) {
                return length - 1;
            }
            return 0;
        } catch (Exception e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    final void c() throws Exception {
        if (this.f20688f.getAndSet(true)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f20683a);
        String str = File.separator;
        sb2.append(str);
        sb2.append(this.f20684b);
        sb2.append(str);
        sb2.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(sb2.toString());
        GeckoLogger.d("gecko-file-lock", "channel version loader clean");
        try {
            if (this.f20685c == null) {
                bVarA.a();
                return;
            }
            com.bykv.vk.openvk.preload.geckox.g.c.b(this.f20685c.getAbsolutePath() + str + "using.lock");
            bVarA.a();
            com.bykv.vk.openvk.preload.geckox.a.c.a(this.f20683a + str + this.f20684b);
        } catch (Throwable th2) {
            bVarA.a();
            throw th2;
        }
    }
}
