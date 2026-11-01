package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
class j extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Class f79137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Constructor f79138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f79139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f79140e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f79141f;

    j() {
    }

    private static boolean i(Object obj, String str, int i11, boolean z10) throws NoSuchMethodException {
        l();
        try {
            return ((Boolean) f79139d.invoke(obj, str, Integer.valueOf(i11), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    private static Typeface j(Object obj) throws NoSuchMethodException {
        l();
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f79137b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f79140e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    private File k(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static void l() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f79141f) {
            return;
        }
        f79141f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e11) {
            Log.e("TypefaceCompatApi21Impl", e11.getClass().getName(), e11);
            method = null;
            cls = null;
            method2 = null;
        }
        f79138c = constructor;
        f79137b = cls;
        f79139d = method2;
        f79140e = method;
    }

    private static Object m() throws NoSuchMethodException {
        l();
        try {
            return f79138c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // z0.o
    public Typeface a(Context context, y0.e.c cVar, Resources resources, int i11) throws NoSuchMethodException {
        Object objM = m();
        for (y0.e.d dVar : cVar.a()) {
            File fileE = p.e(context);
            if (fileE == null) {
                return null;
            }
            try {
                if (!p.c(fileE, resources, dVar.b())) {
                    return null;
                }
                if (!i(objM, fileE.getPath(), dVar.e(), dVar.f())) {
                    return null;
                }
                fileE.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                fileE.delete();
            }
        }
        return j(objM);
    }

    @Override // z0.o
    public Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i11) {
        if (bVarArr.length < 1) {
            return null;
        }
        androidx.core.provider.k.b bVarH = h(bVarArr, i11);
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(bVarH.d(), CampaignEx.JSON_KEY_AD_R, cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                File fileK = k(parcelFileDescriptorOpenFileDescriptor);
                if (fileK != null && fileK.canRead()) {
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(fileK);
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceCreateFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    Typeface typefaceD = super.d(context, fileInputStream);
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceD;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
