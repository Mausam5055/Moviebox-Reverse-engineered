package com.transsion.shorttv_pugc.base.image.blurhash;

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
    private Context f53765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f53766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LruCache f53767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f53768d;

    public BlurHash(Context context, int i11, float f11) {
        Intrinsics.h(context, "context");
        this.f53765a = context;
        this.f53766b = f11;
        this.f53767c = new LruCache(i11);
        this.f53768d = o0.a(y0.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(String str, BitmapDrawable bitmapDrawable) {
        this.f53767c.put(str, bitmapDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BitmapDrawable g(String str) {
        return (BitmapDrawable) this.f53767c.get(str);
    }

    public final void f(String blurString, int i11, int i12, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        k.d(this.f53768d, null, null, new BlurHash$execute$1(this, blurString, response, i11, i12, null), 3, null);
    }
}
