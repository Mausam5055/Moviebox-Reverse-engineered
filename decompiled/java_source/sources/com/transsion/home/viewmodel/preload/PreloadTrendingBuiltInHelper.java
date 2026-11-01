package com.transsion.home.viewmodel.preload;

import android.content.Context;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okio.Okio;

/* JADX INFO: loaded from: classes.dex */
public final class PreloadTrendingBuiltInHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f45880a = "main_operating.json";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f45881b = "posts.json";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f45882c = "short_tv_trending.json";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f45883d = "appTab.json";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f45884e = "short_tv_new_release.json";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f45885f = "main_trending.json";

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b(String str, String str2, String str3) {
        try {
            if (new File(str + "/" + str2).exists()) {
                return true;
            }
            InputStream inputStreamOpen = Utils.a().getAssets().open(str3);
            Intrinsics.g(inputStreamOpen, "open(...)");
            FileOutputStream fileOutputStream = new FileOutputStream(str + "/" + str2);
            byte[] bArr = new byte[8192];
            while (true) {
                int i11 = inputStreamOpen.read(bArr);
                if (i11 <= 0) {
                    fileOutputStream.close();
                    inputStreamOpen.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i11);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    public final void c(List list) {
        Intrinsics.h(list, "list");
        k.d(o0.a(y0.b()), null, null, new PreloadTrendingBuiltInHelper$copyVideoFiles$1(list, this, null), 3, null);
    }

    public final String d(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getAssets().open(this.f45883d);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }

    public final String e(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getAssets().open(this.f45880a);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }

    public final String f(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getAssets().open(this.f45881b);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }

    public final String g(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getAssets().open(this.f45885f);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }
}
