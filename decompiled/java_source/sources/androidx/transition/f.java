package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.util.Property;

/* JADX INFO: loaded from: classes2.dex */
abstract class f {

    static class a {
        static <T, V> ObjectAnimator a(T t11, Property<T, V> property, Path path) {
            return ObjectAnimator.ofObject(t11, property, (TypeConverter) null, path);
        }
    }

    static ObjectAnimator a(Object obj, Property property, Path path) {
        return a.a(obj, property, path);
    }
}
