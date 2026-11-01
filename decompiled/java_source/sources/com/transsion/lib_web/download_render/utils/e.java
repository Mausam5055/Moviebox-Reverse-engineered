package com.transsion.lib_web.download_render.utils;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f46190a = new e();

    private e() {
    }

    public final String a(String url) {
        Intrinsics.h(url, "url");
        String string = Uri.parse(url).buildUpon().clearQuery().build().toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
