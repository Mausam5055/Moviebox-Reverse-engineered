package oa;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.collection.x0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x0 f70931a = new x0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0 f70932b = new x0();

    private static void a(h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            hVar.m(objectAnimator.getPropertyName(), i.b(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    private PropertyValuesHolder[] b(PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i11 = 0; i11 < propertyValuesHolderArr.length; i11++) {
            propertyValuesHolderArr2[i11] = propertyValuesHolderArr[i11].clone();
        }
        return propertyValuesHolderArr2;
    }

    public static h c(Context context, TypedArray typedArray, int i11) {
        int resourceId;
        if (!typedArray.hasValue(i11) || (resourceId = typedArray.getResourceId(i11, 0)) == 0) {
            return null;
        }
        return d(context, resourceId);
    }

    public static h d(Context context, int i11) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i11);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return e(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return e(arrayList);
        } catch (Exception e11) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i11), e11);
            return null;
        }
    }

    private static h e(List list) {
        h hVar = new h();
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            a(hVar, (Animator) list.get(i11));
        }
        return hVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            return this.f70931a.equals(((h) obj).f70931a);
        }
        return false;
    }

    public ObjectAnimator f(String str, Object obj, Property property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(obj, g(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        h(str).a(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public PropertyValuesHolder[] g(String str) {
        if (j(str)) {
            return b((PropertyValuesHolder[]) this.f70932b.get(str));
        }
        throw new IllegalArgumentException();
    }

    public i h(String str) {
        if (k(str)) {
            return (i) this.f70931a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f70931a.hashCode();
    }

    public long i() {
        int size = this.f70931a.size();
        long jMax = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = (i) this.f70931a.valueAt(i11);
            jMax = Math.max(jMax, iVar.c() + iVar.d());
        }
        return jMax;
    }

    public boolean j(String str) {
        return this.f70932b.get(str) != null;
    }

    public boolean k(String str) {
        return this.f70931a.get(str) != null;
    }

    public void l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f70932b.put(str, propertyValuesHolderArr);
    }

    public void m(String str, i iVar) {
        this.f70931a.put(str, iVar);
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f70931a + "}\n";
    }
}
