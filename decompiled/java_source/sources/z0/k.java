package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.collection.x0;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class k extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class f79142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Constructor f79143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f79144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Method f79145e;

    static {
        Method method;
        Class<?> cls;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e11) {
            Log.e("TypefaceCompatApi24Impl", e11.getClass().getName(), e11);
            method = null;
            cls = null;
            method2 = null;
        }
        f79143c = constructor;
        f79142b = cls;
        f79144d = method2;
        f79145e = method;
    }

    k() {
    }

    private static boolean i(Object obj, ByteBuffer byteBuffer, int i11, int i12, boolean z10) {
        try {
            return ((Boolean) f79144d.invoke(obj, byteBuffer, Integer.valueOf(i11), null, Integer.valueOf(i12), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface j(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f79142b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f79145e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean k() {
        Method method = f79144d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    private static Object l() {
        try {
            return f79143c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // z0.o
    public Typeface a(Context context, y0.e.c cVar, Resources resources, int i11) {
        Object objL = l();
        if (objL == null) {
            return null;
        }
        for (y0.e.d dVar : cVar.a()) {
            ByteBuffer byteBufferB = p.b(context, resources, dVar.b());
            if (byteBufferB == null || !i(objL, byteBufferB, dVar.c(), dVar.e(), dVar.f())) {
                return null;
            }
        }
        return j(objL);
    }

    @Override // z0.o
    public Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i11) {
        Object objL = l();
        if (objL == null) {
            return null;
        }
        x0 x0Var = new x0();
        for (androidx.core.provider.k.b bVar : bVarArr) {
            Uri uriD = bVar.d();
            ByteBuffer byteBufferF = (ByteBuffer) x0Var.get(uriD);
            if (byteBufferF == null) {
                byteBufferF = p.f(context, cancellationSignal, uriD);
                x0Var.put(uriD, byteBufferF);
            }
            if (byteBufferF == null || !i(objL, byteBufferF, bVar.c(), bVar.e(), bVar.f())) {
                return null;
            }
        }
        Typeface typefaceJ = j(objL);
        if (typefaceJ == null) {
            return null;
        }
        return Typeface.create(typefaceJ, i11);
    }
}
