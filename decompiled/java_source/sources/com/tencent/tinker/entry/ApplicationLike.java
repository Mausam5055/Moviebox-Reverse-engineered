package com.tencent.tinker.entry;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.tencent.tinker.anno.Keep;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public abstract class ApplicationLike implements ApplicationLifeCycle {
    private final Application application;
    private final long applicationStartElapsedTime;
    private final long applicationStartMillisTime;
    private final int tinkerFlags;
    private final boolean tinkerLoadVerifyFlag;
    private final Intent tinkerResultIntent;

    public ApplicationLike(Application application, int i11, boolean z10, long j11, long j12, Intent intent) {
        this.application = application;
        this.tinkerFlags = i11;
        this.tinkerLoadVerifyFlag = z10;
        this.applicationStartElapsedTime = j11;
        this.applicationStartMillisTime = j12;
        this.tinkerResultIntent = intent;
    }

    public Application getApplication() {
        return this.application;
    }

    public long getApplicationStartElapsedTime() {
        return this.applicationStartElapsedTime;
    }

    public long getApplicationStartMillisTime() {
        return this.applicationStartMillisTime;
    }

    @Keep
    public AssetManager getAssets(AssetManager assetManager) {
        return assetManager;
    }

    @Keep
    public Context getBaseContext(Context context) {
        return context;
    }

    @Keep
    public ClassLoader getClassLoader(ClassLoader classLoader) {
        return classLoader;
    }

    @Keep
    public Resources getResources(Resources resources) {
        return resources;
    }

    @Keep
    public Object getSystemService(String str, Object obj) {
        return obj;
    }

    @Keep
    public Resources.Theme getTheme(Resources.Theme theme) {
        return theme;
    }

    public final int getTinkerFlags() {
        return this.tinkerFlags;
    }

    public final boolean getTinkerLoadVerifyFlag() {
        return this.tinkerLoadVerifyFlag;
    }

    public final Intent getTinkerResultIntent() {
        return this.tinkerResultIntent;
    }

    @Keep
    public int mzNightModeUseOf() {
        return 1;
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onBaseContextAttached(Context context) {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onCreate() {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onLowMemory() {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTerminate() {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTrimMemory(int i11) {
    }
}
