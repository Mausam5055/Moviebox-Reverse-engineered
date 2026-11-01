package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.collection.x0;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private static final x0 sClassCacheMap = new x0();

    private static Class a(ClassLoader classLoader, String str) throws ClassNotFoundException {
        x0 x0Var = sClassCacheMap;
        x0 x0Var2 = (x0) x0Var.get(classLoader);
        if (x0Var2 == null) {
            x0Var2 = new x0();
            x0Var.put(classLoader, x0Var2);
        }
        Class cls = (Class) x0Var2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        x0Var2.put(str, cls2);
        return cls2;
    }

    static boolean isFragmentClass(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return Fragment.class.isAssignableFrom(a(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @NonNull
    public static Class<? extends Fragment> loadFragmentClass(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return a(classLoader, str);
        } catch (ClassCastException e11) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e11);
        } catch (ClassNotFoundException e12) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e12);
        }
    }

    public Fragment instantiate(ClassLoader classLoader, String str) {
        try {
            return loadFragmentClass(classLoader, str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e11) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e11);
        } catch (InstantiationException e12) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e12);
        } catch (NoSuchMethodException e13) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e13);
        } catch (InvocationTargetException e14) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e14);
        }
    }
}
