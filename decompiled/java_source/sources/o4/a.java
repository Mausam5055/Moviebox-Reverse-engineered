package o4;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import p4.h;
import v4.f;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AssetManager f70730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.airbnb.lottie.a f70731e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f70727a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f70728b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f70729c = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f70732f = ".ttf";

    public a(Drawable.Callback callback, com.airbnb.lottie.a aVar) {
        this.f70731e = aVar;
        if (callback instanceof View) {
            this.f70730d = ((View) callback).getContext().getAssets();
        } else {
            f.c("LottieDrawable must be inside of a view for images to work.");
            this.f70730d = null;
        }
    }

    private Typeface a(p4.b bVar) {
        Typeface typefaceCreateFromAsset;
        String strA = bVar.a();
        Typeface typeface = (Typeface) this.f70729c.get(strA);
        if (typeface != null) {
            return typeface;
        }
        String strC = bVar.c();
        String strB = bVar.b();
        com.airbnb.lottie.a aVar = this.f70731e;
        if (aVar != null) {
            typefaceCreateFromAsset = aVar.b(strA, strC, strB);
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = this.f70731e.a(strA);
            }
        } else {
            typefaceCreateFromAsset = null;
        }
        com.airbnb.lottie.a aVar2 = this.f70731e;
        if (aVar2 != null && typefaceCreateFromAsset == null) {
            String strD = aVar2.d(strA, strC, strB);
            if (strD == null) {
                strD = this.f70731e.c(strA);
            }
            if (strD != null) {
                typefaceCreateFromAsset = Typeface.createFromAsset(this.f70730d, strD);
            }
        }
        if (bVar.d() != null) {
            return bVar.d();
        }
        if (typefaceCreateFromAsset == null) {
            typefaceCreateFromAsset = Typeface.createFromAsset(this.f70730d, "fonts/" + strA + this.f70732f);
        }
        this.f70729c.put(strA, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    private Typeface e(Typeface typeface, String str) {
        int i11;
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        if (zContains && zContains2) {
            i11 = 3;
        } else if (zContains) {
            i11 = 2;
        } else {
            i11 = zContains2 ? 1 : 0;
        }
        return typeface.getStyle() == i11 ? typeface : Typeface.create(typeface, i11);
    }

    public Typeface b(p4.b bVar) {
        this.f70727a.b(bVar.a(), bVar.c());
        Typeface typeface = (Typeface) this.f70728b.get(this.f70727a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceE = e(a(bVar), bVar.c());
        this.f70728b.put(this.f70727a, typefaceE);
        return typefaceE;
    }

    public void c(String str) {
        this.f70732f = str;
    }

    public void d(com.airbnb.lottie.a aVar) {
        this.f70731e = aVar;
    }
}
