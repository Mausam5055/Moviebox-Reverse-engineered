package com.mbridge.msdk.mbsignalcommon.mapping;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    public static class a<C> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected Class<C> f36501a;

        public a(Class<C> cls) {
            this.f36501a = cls;
        }

        public C0514b a(String str, Class<?>... clsArr) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
            return new C0514b(this.f36501a, str, clsArr, 0);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.mbsignalcommon.mapping.b$b, reason: collision with other inner class name */
    public static class C0514b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Method f36502a;

        C0514b(Class<?> cls, String str, Class<?>[] clsArr, int i11) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
            Method declaredMethod = null;
            if (cls == null) {
                this.f36502a = null;
                return;
            }
            while (cls != Object.class && cls != null) {
                try {
                    declaredMethod = cls.getDeclaredMethod(str, clsArr);
                    break;
                } catch (NoSuchMethodException e11) {
                    if (MBridgeConstans.DEBUG && cls.getSuperclass() == Object.class) {
                        e11.printStackTrace();
                    }
                    cls = cls.getSuperclass();
                } catch (SecurityException e12) {
                    try {
                        try {
                            if (MBridgeConstans.DEBUG && cls.getSuperclass() == Object.class) {
                                e12.printStackTrace();
                            }
                            cls = cls.getSuperclass();
                        } catch (Exception e13) {
                            com.mbridge.msdk.mbsignalcommon.mapping.a aVar = new com.mbridge.msdk.mbsignalcommon.mapping.a(e13);
                            aVar.a(cls);
                            aVar.a(str);
                            b.b(aVar);
                            this.f36502a = declaredMethod;
                            return;
                        }
                    } catch (Throwable th2) {
                        this.f36502a = declaredMethod;
                        throw th2;
                    }
                }
            }
            if (declaredMethod != null) {
                if (i11 > 0 && (declaredMethod.getModifiers() & i11) != i11) {
                    b.b(new com.mbridge.msdk.mbsignalcommon.mapping.a(declaredMethod + " does not match modifiers: " + i11));
                }
                declaredMethod.setAccessible(true);
            }
            this.f36502a = declaredMethod;
        }

        public Object a(Object obj, Object... objArr) throws IllegalArgumentException, InvocationTargetException {
            Method method = this.f36502a;
            if (method == null) {
                return null;
            }
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e11) {
                o0.a("MappingedMethod", "invoke error:" + e11.getMessage());
                return null;
            }
        }

        public Method a() {
            return this.f36502a;
        }
    }

    public static <T> a<T> a(ClassLoader classLoader, String str) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
        try {
            return new a<>(classLoader.loadClass(str));
        } catch (Exception e11) {
            b(new com.mbridge.msdk.mbsignalcommon.mapping.a(e11));
            return new a<>(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.mbridge.msdk.mbsignalcommon.mapping.a aVar) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
        throw aVar;
    }
}
