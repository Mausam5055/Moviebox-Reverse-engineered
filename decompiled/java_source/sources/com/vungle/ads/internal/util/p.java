package com.vungle.ads.internal.util;

import android.content.Context;
import android.os.StatFs;
import java.io.File;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class p {
    private static final String CLEVER_CACHE_FOLDER = "clever_cache";
    public static final a Companion = new a(null);
    private static final String DOWNLOADS_FOLDER = "downloads";
    private static final String JS_FOLDER = "js";
    private static final long UNKNOWN_SIZE = -1;
    private static final String VUNGLE_FOLDER = "vungle_cache";
    private final File cleverCacheDir;
    private final Context context;
    private final File downloadsDir;
    private final File jsDir;
    private final File vungleDir;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public p(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        File file = new File(context.getNoBackupFilesDir(), VUNGLE_FOLDER);
        this.vungleDir = file;
        File file2 = new File(file, DOWNLOADS_FOLDER);
        this.downloadsDir = file2;
        File file3 = new File(file, JS_FOLDER);
        this.jsDir = file3;
        File file4 = new File(file, CLEVER_CACHE_FOLDER);
        this.cleverCacheDir = file4;
        for (File file5 : CollectionsKt.o(file, file2, file3, file4)) {
            if (!file5.exists()) {
                file5.mkdirs();
            }
        }
    }

    public final long getAvailableBytes(String path) {
        Intrinsics.h(path, "path");
        try {
            return new StatFs(path).getAvailableBytes();
        } catch (IllegalArgumentException e11) {
            o.Companion.w("PathProvider", "Failed to get available bytes " + e11.getMessage());
            return -1L;
        }
    }

    public final File getCleverCacheDir() {
        if (!this.cleverCacheDir.exists()) {
            this.cleverCacheDir.mkdirs();
        }
        return this.cleverCacheDir;
    }

    public final Context getContext() {
        return this.context;
    }

    public final File getDownloadDir() {
        if (!this.downloadsDir.exists()) {
            this.downloadsDir.mkdirs();
        }
        return this.downloadsDir;
    }

    public final File getDownloadsDirForAd(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        File file = new File(getDownloadDir().getPath() + File.separator + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final File getJsAssetDir(String jsVersion) {
        Intrinsics.h(jsVersion, "jsVersion");
        File file = new File(getJsDir(), jsVersion);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final File getJsDir() {
        if (!this.jsDir.exists()) {
            this.jsDir.mkdirs();
        }
        return this.jsDir;
    }

    public final File getSharedPrefsDir() {
        File noBackupFilesDir = this.context.getNoBackupFilesDir();
        Intrinsics.g(noBackupFilesDir, "{\n        context.noBackupFilesDir\n    }");
        return noBackupFilesDir;
    }

    public final File getUnclosedAdFile(String name) {
        Intrinsics.h(name, "name");
        return new File(getSharedPrefsDir(), name);
    }

    public final File getVungleDir() {
        if (!this.vungleDir.exists()) {
            this.vungleDir.mkdirs();
        }
        return this.vungleDir;
    }
}
