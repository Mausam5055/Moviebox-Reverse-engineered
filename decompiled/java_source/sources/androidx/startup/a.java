package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f14903d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f14904e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f14907c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Set f14906b = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map f14905a = new HashMap();

    a(Context context) {
        this.f14907c = context.getApplicationContext();
    }

    private Object d(Class cls, Set set) {
        Object objB;
        if (f4.a.h()) {
            try {
                f4.a.c(cls.getSimpleName());
            } catch (Throwable th2) {
                f4.a.f();
                throw th2;
            }
        }
        if (set.contains(cls)) {
            throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        if (this.f14905a.containsKey(cls)) {
            objB = this.f14905a.get(cls);
        } else {
            set.add(cls);
            try {
                e4.a aVar = (e4.a) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = aVar.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!this.f14905a.containsKey(cls2)) {
                            d(cls2, set);
                        }
                    }
                }
                objB = aVar.b(this.f14907c);
                set.remove(cls);
                this.f14905a.put(cls, objB);
            } catch (Throwable th3) {
                throw new StartupException(th3);
            }
        }
        f4.a.f();
        return objB;
    }

    public static a e(Context context) {
        if (f14903d == null) {
            synchronized (f14904e) {
                try {
                    if (f14903d == null) {
                        f14903d = new a(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f14903d;
    }

    void a() {
        try {
            try {
                f4.a.c("Startup");
                b(this.f14907c.getPackageManager().getProviderInfo(new ComponentName(this.f14907c.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
                f4.a.f();
            } catch (PackageManager.NameNotFoundException e11) {
                throw new StartupException(e11);
            }
        } catch (Throwable th2) {
            f4.a.f();
            throw th2;
        }
    }

    void b(Bundle bundle) {
        String string = this.f14907c.getString(R$string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (e4.a.class.isAssignableFrom(cls)) {
                            this.f14906b.add(cls);
                        }
                    }
                }
                Iterator it = this.f14906b.iterator();
                while (it.hasNext()) {
                    d((Class) it.next(), hashSet);
                }
            } catch (ClassNotFoundException e11) {
                throw new StartupException(e11);
            }
        }
    }

    Object c(Class cls) {
        Object objD;
        synchronized (f14904e) {
            try {
                objD = this.f14905a.get(cls);
                if (objD == null) {
                    objD = d(cls, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return objD;
    }

    public Object f(Class cls) {
        return c(cls);
    }

    public boolean g(Class cls) {
        return this.f14906b.contains(cls);
    }
}
