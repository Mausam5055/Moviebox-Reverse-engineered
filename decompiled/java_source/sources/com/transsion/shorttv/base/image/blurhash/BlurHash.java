package com.transsion.shorttv.base.image.blurhash;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.LruCache;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class BlurHash {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f52781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f52782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LruCache f52783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f52784d;

    public BlurHash(Context context, int i11, float f11) {
        Intrinsics.h(context, "context");
        this.f52781a = context;
        this.f52782b = f11;
        this.f52783c = new LruCache(i11);
        this.f52784d = o0.a(y0.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(String str, BitmapDrawable bitmapDrawable) {
        this.f52783c.put(str, bitmapDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BitmapDrawable g(String str) {
        return (BitmapDrawable) this.f52783c.get(str);
    }

    public final void f(String blurString, int i11, int i12, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        k.d(this.f52784d, null, null, new BlurHash$execute$1(this, blurString, response, i11, i12, null), 3, null);
    }
}
