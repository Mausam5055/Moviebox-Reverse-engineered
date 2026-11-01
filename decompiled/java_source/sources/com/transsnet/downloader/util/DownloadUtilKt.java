package com.transsnet.downloader.util;

import android.content.Context;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class DownloadUtilKt {
    public static final void a(Context context, ImageView imageView, String url, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        Intrinsics.h(url, "url");
        if (!StringsKt.c0(url, "http", false, 2, null)) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadUtilKt$loadImageWithBuiltIn$1(context, url, imageView, null), 3, null);
            return;
        }
        ej.f.b bVarM = ej.f.f61882a.m(context).g(url).m(com.blankj.utilcode.util.a0.a(120.0f));
        if (str == null) {
            str = "";
        }
        bVarM.l(str).d(imageView);
    }
}
