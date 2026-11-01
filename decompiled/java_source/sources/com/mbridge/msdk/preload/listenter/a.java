package com.mbridge.msdk.preload.listenter;

import com.mbridge.msdk.out.PreloadListener;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class a implements PreloadListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WeakReference<PreloadListener> f36794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36795b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36796c = false;

    public a(PreloadListener preloadListener) {
        if (preloadListener != null) {
            this.f36794a = new WeakReference<>(preloadListener);
        }
    }

    public void a(boolean z10) {
        this.f36796c = z10;
    }

    public boolean a() {
        return this.f36796c;
    }

    @Override // com.mbridge.msdk.out.PreloadListener
    public void onPreloadFaild(String str) {
        WeakReference<PreloadListener> weakReference = this.f36794a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f36794a.get().onPreloadFaild(str);
    }

    @Override // com.mbridge.msdk.out.PreloadListener
    public void onPreloadSucceed() {
        WeakReference<PreloadListener> weakReference = this.f36794a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f36794a.get().onPreloadSucceed();
    }
}
