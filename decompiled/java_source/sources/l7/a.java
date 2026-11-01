package l7;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;
import pl.droidsonroids.gif.GifDrawable;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68732a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f68733b;

    private a() {
    }

    public Drawable a(byte[] bytes) {
        Intrinsics.h(bytes, "bytes");
        if (!f68733b) {
            return null;
        }
        try {
            Drawable gifDrawable = new GifDrawable(bytes);
            com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "android-gif-drawable: getGifDrawableFromData succees");
            return gifDrawable;
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "android-gif-drawable: getGifDrawableFromData failed, error=" + e11.getMessage());
            return null;
        }
    }

    public final void b() {
        try {
            Class.forName("pl.droidsonroids.gif.GifDrawable");
            f68733b = true;
            com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "init gif-drawable succeed");
        } catch (Throwable th2) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "init gif-drawable error=" + th2.getMessage());
        }
    }
}
