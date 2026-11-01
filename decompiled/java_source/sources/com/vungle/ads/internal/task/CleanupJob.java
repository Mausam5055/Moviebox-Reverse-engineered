package com.vungle.ads.internal.task;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.io.File;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class CleanupJob implements com.vungle.ads.internal.task.a {
    private static final String AD_ID_KEY = "AD_ID_KEY";
    public static final a Companion = new a(null);
    public static final String TAG = "CleanupJob";
    private final Context context;
    private final p pathProvider;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ c makeJobInfo$default(a aVar, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = null;
            }
            return aVar.makeJobInfo(str);
        }

        public final c makeJobInfo(String str) {
            c priority = new c(CleanupJob.TAG).setPriority(0);
            Bundle bundle = new Bundle();
            if (str != null) {
                bundle.putString(CleanupJob.AD_ID_KEY, str);
            }
            return priority.setExtras(bundle).setUpdateCurrent(str == null);
        }
    }

    public CleanupJob(Context context, p pathProvider) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pathProvider, "pathProvider");
        this.context = context;
        this.pathProvider = pathProvider;
    }

    private final void checkIfSdkUpgraded() {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.persistence.b>() { // from class: com.vungle.ads.internal.task.CleanupJob$checkIfSdkUpgraded$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.b, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.persistence.b invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.persistence.b.class);
            }
        });
        int i11 = m433checkIfSdkUpgraded$lambda3(lazyA).getInt("VERSION_CODE", -1);
        if (i11 < 70500) {
            if (i11 < 70000) {
                dropV6Data();
            }
            if (i11 < 70100) {
                dropV700Data();
            }
            if (i11 < 70301) {
                dropV730TempData();
            }
            if (i11 < 70500) {
                dropV742TpatData();
            }
            m433checkIfSdkUpgraded$lambda3(lazyA).put("VERSION_CODE", 70500).apply();
        }
    }

    /* JADX INFO: renamed from: checkIfSdkUpgraded$lambda-3, reason: not valid java name */
    private static final com.vungle.ads.internal.persistence.b m433checkIfSdkUpgraded$lambda3(Lazy<com.vungle.ads.internal.persistence.b> lazy) {
        return (com.vungle.ads.internal.persistence.b) lazy.getValue();
    }

    private final void dropV6Data() {
        o.Companion.d(TAG, "CleanupJob: drop old files data");
        int i11 = Build.VERSION.SDK_INT;
        File file = new File(this.context.getNoBackupFilesDir(), "vungle_db");
        if (file.exists()) {
            com.vungle.ads.internal.util.g.delete(file);
            com.vungle.ads.internal.util.g.delete(new File(file.getPath() + "-journal"));
        } else {
            this.context.deleteDatabase("vungle_db");
        }
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("com.vungle.sdk", 0);
        String string = sharedPreferences.getString("cache_path", null);
        if (i11 >= 24) {
            this.context.deleteSharedPreferences("com.vungle.sdk");
        } else {
            sharedPreferences.edit().clear().apply();
        }
        File noBackupFilesDir = this.context.getNoBackupFilesDir();
        Intrinsics.g(noBackupFilesDir, "{\n            context.noBackupFilesDir\n        }");
        com.vungle.ads.internal.util.g.delete(new File(noBackupFilesDir, "vungle_settings"));
        if (string != null) {
            com.vungle.ads.internal.util.g.delete(new File(string));
        }
    }

    private final void dropV700Data() {
        com.vungle.ads.internal.util.g.delete(new File(this.context.getApplicationInfo().dataDir, "vungle"));
    }

    private final void dropV730TempData() {
        try {
            com.vungle.ads.internal.util.g.delete(new File(this.pathProvider.getSharedPrefsDir(), "vungleSettings"));
            com.vungle.ads.internal.util.g.delete(new File(this.pathProvider.getSharedPrefsDir(), "failedTpatSet"));
        } catch (Exception e11) {
            o.Companion.e(TAG, "Failed to delete temp data", e11);
        }
    }

    private final void dropV742TpatData() {
        File noBackupFilesDir = this.context.getNoBackupFilesDir();
        try {
            com.vungle.ads.internal.util.g.delete(new File(noBackupFilesDir, "failedTpats"));
            com.vungle.ads.internal.util.g.delete(new File(noBackupFilesDir, "failedGenericTpats"));
        } catch (Exception e11) {
            o.Companion.e(TAG, "Failed to delete 742 tpat data", e11);
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final p getPathProvider() {
        return this.pathProvider;
    }

    @Override // com.vungle.ads.internal.task.a
    public int onRunJob(Bundle bundle, d jobRunner) {
        File downloadsDirForAd;
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(jobRunner, "jobRunner");
        File downloadDir = this.pathProvider.getDownloadDir();
        String string = bundle.getString(AD_ID_KEY);
        if (string == null || (downloadsDirForAd = this.pathProvider.getDownloadsDirForAd(string)) == null) {
            downloadsDirForAd = downloadDir;
        }
        o.Companion.d(TAG, "CleanupJob: Current directory snapshot");
        try {
            if (!Intrinsics.c(downloadsDirForAd, downloadDir)) {
                com.vungle.ads.internal.util.g.delete(downloadsDirForAd);
                return 0;
            }
            checkIfSdkUpgraded();
            com.vungle.ads.internal.util.g.deleteContents(downloadsDirForAd);
            return 0;
        } catch (IOException unused) {
            return 1;
        }
    }
}
