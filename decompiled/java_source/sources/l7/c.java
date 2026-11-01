package l7;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.cloud.sdk.commonutil.util.e;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f68737a = new c();

    private c() {
    }

    public static final Drawable a(Drawable drawable) {
        return b.f68734a.a(drawable);
    }

    public static final Drawable b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return (bArr.length <= 1 || bArr[0] != 71) ? f68737a.d(bArr) : f68737a.c(bArr);
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "getDrawableFromData failed, error=" + e11.getMessage());
            return null;
        }
    }

    private final Drawable c(byte[] bArr) {
        Drawable drawableC = b.f68734a.c(bArr);
        if (drawableC != null) {
            return drawableC;
        }
        Drawable drawableA = a.f68732a.a(bArr);
        return drawableA == null ? d(bArr) : drawableA;
    }

    private final Drawable d(byte[] bArr) {
        return new BitmapDrawable(e.a().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }

    public static final void e() {
        b.f68734a.f();
        a.f68732a.b();
    }
}
