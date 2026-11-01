package com.bykv.vk.openvk.preload.falconx.loader;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.f.b;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class a implements ILoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f20568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f20569b = new AtomicBoolean(false);

    public a(Context context, String str, File file) {
        if (context == null) {
            throw new RuntimeException("context == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        if (file == null) {
            throw new RuntimeException("resRootDir == null");
        }
        this.f20568a = new b(context, str, file);
    }

    public final int a(String str) throws Exception {
        if (this.f20569b.get()) {
            throw new RuntimeException("released!");
        }
        return this.f20568a.b(str);
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public boolean exist(String str) throws Exception {
        if (this.f20569b.get()) {
            throw new RuntimeException("released!");
        }
        return this.f20568a.c(str);
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public Map<String, Long> getChannelVersion() {
        return this.f20568a.b();
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public InputStream getInputStream(String str) throws Exception {
        if (this.f20569b.get()) {
            throw new RuntimeException("released!");
        }
        GeckoLogger.d("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
        return this.f20568a.a(str);
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public String getResRootDir() {
        return this.f20568a.a();
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public void release() throws Exception {
        if (this.f20569b.getAndSet(true)) {
            return;
        }
        this.f20568a.c();
    }
}
