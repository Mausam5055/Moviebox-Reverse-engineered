package zt;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class d extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f79462a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Application application, File stableFilesDir) {
        super(application);
        Intrinsics.h(application, "application");
        Intrinsics.h(stableFilesDir, "stableFilesDir");
        this.f79462a = stableFilesDir;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        return this.f79462a;
    }
}
