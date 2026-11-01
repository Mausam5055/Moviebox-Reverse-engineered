package com.transsion.ad;

import com.blankj.utilcode.util.Utils;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f41780a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f41781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f41782c;

    static {
        File externalFilesDir = Utils.a().getExternalFilesDir("mb");
        String absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        char c11 = File.separatorChar;
        f41781b = absolutePath + c11 + "non_ad";
        File externalFilesDir2 = Utils.a().getExternalFilesDir("ps");
        f41782c = (externalFilesDir2 != null ? externalFilesDir2.getAbsolutePath() : null) + c11 + "non_ad";
    }

    private a() {
    }

    public final String a() {
        return f41782c;
    }

    public final String b() {
        return f41781b;
    }
}
