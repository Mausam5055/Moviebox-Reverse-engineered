package com.bykv.vk.openvk.preload.a.b.b;

import com.bykv.vk.openvk.preload.a.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
final class c extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Class f20423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f20424b = b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Field f20425c = c();

    c() {
    }

    private static Object b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f20423a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean b(AccessibleObject accessibleObject) {
        if (this.f20424b != null && this.f20425c != null) {
            try {
                Long l11 = (Long) f20423a.getMethod("objectFieldOffset", Field.class).invoke(this.f20424b, this.f20425c);
                l11.longValue();
                f20423a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f20424b, accessibleObject, l11, Boolean.TRUE);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.b.b.b
    public final void a(AccessibleObject accessibleObject) {
        if (b(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e11) {
            throw new j("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e11);
        }
    }
}
