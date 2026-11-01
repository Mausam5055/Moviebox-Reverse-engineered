package l7;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.cloud.sdk.commonutil.util.e;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f68735b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f68734a = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f68736c = true;

    private b() {
    }

    private final boolean b() {
        return f68735b && f68736c;
    }

    public static final boolean e(String str, boolean z10, ImageView imageView) {
        try {
            if (f68734a.b() && str != null && !StringsKt.q0(str) && imageView != null) {
                RequestOptions requestOptionsDiskCacheStrategy = new RequestOptions().diskCacheStrategy(DiskCacheStrategy.NONE);
                Intrinsics.g(requestOptionsDiskCacheStrategy, "diskCacheStrategy(...)");
                RequestOptions requestOptions = requestOptionsDiskCacheStrategy;
                if (z10) {
                    RequestOptions requestOptionsPriority = requestOptions.useUnlimitedSourceGeneratorsPool(true).priority(Priority.IMMEDIATE);
                    Intrinsics.g(requestOptionsPriority, "priority(...)");
                    requestOptions = requestOptionsPriority;
                }
                Glide.with(e.a()).load(str).apply((BaseRequestOptions<?>) requestOptions).into(imageView);
                com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "loadImage with glide, url=" + str);
                return true;
            }
            return false;
        } catch (Throwable th2) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "loadImage with glide failed, error=" + th2.getMessage());
            return false;
        }
    }

    public Drawable a(Drawable drawable) {
        try {
            if (b() && (drawable instanceof GifDrawable)) {
                ((GifDrawable) drawable).start();
            }
        } catch (Exception unused) {
        }
        return drawable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable c(byte[] bytes) {
        Intrinsics.h(bytes, "bytes");
        try {
            if (!b()) {
                return null;
            }
            GifDrawable gifDrawable = (GifDrawable) Glide.with(e.a()).asGif().useUnlimitedSourceGeneratorsPool(true).priority(Priority.IMMEDIATE).diskCacheStrategy(DiskCacheStrategy.NONE).load(bytes).submit().get();
            com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "glide: getGifDrawableFromData succees");
            return gifDrawable;
        } catch (InterruptedException e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "glide: getGifDrawableFromData failed, error=" + e11.getMessage());
            return null;
        }
    }

    public final boolean d() {
        return f68735b;
    }

    public final void f() {
        try {
            f68735b = true;
            com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "init glide succeed");
        } catch (Throwable th2) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "init glide error=" + th2.getMessage());
        }
    }
}
