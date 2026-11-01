package com.transsion.base.image.blurhash;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.LruCache;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BlurHash {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f42981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f42982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LruCache f42983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f42984d;

    public BlurHash(Context context, int i11, float f11) {
        Intrinsics.h(context, "context");
        this.f42981a = context;
        this.f42982b = f11;
        this.f42983c = new LruCache(i11);
        this.f42984d = o0.a(y0.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(String str, BitmapDrawable bitmapDrawable) {
        this.f42983c.put(str, bitmapDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BitmapDrawable g(String str) {
        return (BitmapDrawable) this.f42983c.get(str);
    }

    public final void f(String blurString, int i11, int i12, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        k.d(this.f42984d, null, null, new BlurHash$execute$1(this, blurString, response, i11, i12, null), 3, null);
    }
}
