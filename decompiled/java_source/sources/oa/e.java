package oa;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class e extends Property {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Property f70925b = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakHashMap f70926a;

    private e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f70926a = new WeakHashMap();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
