package org.mvel2.optimizers;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;
import org.mvel2.optimizers.impl.asm.ASMAccessorOptimizer;
import org.mvel2.optimizers.impl.refl.ReflectiveAccessorOptimizer;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f71994a = "dynamic";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f71995b = "reflective";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Logger f71996c = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f71997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map f71998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ThreadLocal f71999f;

    static {
        HashMap map = new HashMap();
        f71998e = map;
        f71999f = new ThreadLocal();
        map.put(f71995b, new ReflectiveAccessorOptimizer());
        map.put(f71994a, new DynamicOptimizer());
        try {
            if (b.class.getClassLoader() != null) {
                b.class.getClassLoader().loadClass("org.mvel2.asm.ClassWriter");
            } else {
                ClassLoader.getSystemClassLoader().loadClass("org.mvel2.asm.ClassWriter");
            }
            map.put("ASM", new ASMAccessorOptimizer());
        } catch (ClassNotFoundException unused) {
            f71997d = f71995b;
        } catch (Throwable th2) {
            f71996c.log(Level.WARNING, "[MVEL] Notice: Possible incorrect version of ASM present (3.0 required).  Disabling JIT compiler.  Reflective Optimizer will be used.", th2);
            f71997d = f71995b;
        }
        if (Boolean.getBoolean("mvel2.disable.jit")) {
            e(f71995b);
        } else {
            e(f71994a);
        }
    }

    public static void a() {
        f71999f.set(null);
        f71999f.remove();
    }

    public static a b(String str) {
        try {
            return (a) ((a) f71998e.get(str)).getClass().newInstance();
        } catch (Exception e11) {
            throw new RuntimeException("unable to instantiate accessor compiler", e11);
        }
    }

    public static a c() {
        try {
            return (a) ((a) f71998e.get(f71997d)).getClass().newInstance();
        } catch (Exception e11) {
            throw new RuntimeException("unable to instantiate accessor compiler", e11);
        }
    }

    public static a d() {
        if (f71999f.get() == null) {
            f71999f.set(c().getClass());
        }
        try {
            return (a) ((Class) f71999f.get()).newInstance();
        } catch (Exception e11) {
            throw new RuntimeException("unable to instantiate accessor compiler", e11);
        }
    }

    public static void e(String str) {
        try {
            Map map = f71998e;
            f71997d = str;
            ((a) map.get(str)).init();
            f71999f.set(null);
        } catch (Exception e11) {
            throw new RuntimeException("unable to instantiate accessor compiler", e11);
        }
    }

    public static void f(Class cls) {
        if (cls == null) {
            throw new RuntimeException("null optimizer");
        }
        f71999f.set(cls);
    }
}
