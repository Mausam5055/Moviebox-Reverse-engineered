package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a0 {
    public static a0 a(CrashlyticsReport crashlyticsReport, String str, File file) {
        return new b(crashlyticsReport, str, file);
    }

    public abstract CrashlyticsReport b();

    public abstract File c();

    public abstract String d();
}
