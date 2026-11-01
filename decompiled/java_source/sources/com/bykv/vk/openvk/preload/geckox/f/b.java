package com.bykv.vk.openvk.preload.geckox.f;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.InputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, a> f20690a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f20691b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f20692c;

    public b(Context context, String str, File file) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        if (file != null) {
            this.f20692c = new File(file, str).getAbsolutePath();
            return;
        }
        this.f20692c = new File(context.getFilesDir(), "gecko_offline_res_x" + File.separator + str).getAbsolutePath();
    }

    private a d(String str) {
        a aVar;
        int iIndexOf = str.indexOf("/");
        if (iIndexOf == -1) {
            new RuntimeException("channel：".concat(str));
        }
        String strSubstring = str.substring(0, iIndexOf);
        synchronized (this.f20690a) {
            try {
                aVar = this.f20690a.get(strSubstring);
                if (aVar == null) {
                    aVar = new a(this.f20692c, strSubstring);
                    this.f20690a.put(strSubstring, aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    public final InputStream a(String str) throws Exception {
        if (this.f20691b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        return d(str.trim()).a(str);
    }

    public final String a() {
        return this.f20692c;
    }

    public final int b(String str) throws Exception {
        if (this.f20691b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        return d(str.trim()).c(str);
    }

    public final Map<String, Long> b() {
        HashMap map = new HashMap();
        synchronized (this.f20690a) {
            try {
                Collection<a> collectionValues = this.f20690a.values();
                if (collectionValues == null) {
                    return map;
                }
                for (a aVar : collectionValues) {
                    map.put(aVar.b(), aVar.a());
                }
                return map;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c() throws Exception {
        if (this.f20691b.getAndSet(true)) {
            return;
        }
        GeckoLogger.d("Loader", "release version res loader");
        synchronized (this.f20690a) {
            try {
                Iterator<a> it = this.f20690a.values().iterator();
                while (it.hasNext()) {
                    it.next().c();
                }
                this.f20690a.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean c(String str) throws Exception {
        if (this.f20691b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        return d(str.trim()).b(str);
    }
}
