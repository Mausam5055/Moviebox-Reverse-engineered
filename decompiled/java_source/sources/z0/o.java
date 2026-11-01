package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import com.google.logging.type.LogSeverity;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap f79153a = new ConcurrentHashMap();

    class a implements b {
        a() {
        }

        @Override // z0.o.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int b(androidx.core.provider.k.b bVar) {
            return bVar.e();
        }

        @Override // z0.o.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(androidx.core.provider.k.b bVar) {
            return bVar.f();
        }
    }

    private interface b {
        boolean a(Object obj);

        int b(Object obj);
    }

    o() {
    }

    private static Object f(Object[] objArr, int i11, b bVar) {
        return g(objArr, (i11 & 1) == 0 ? 400 : LogSeverity.ALERT_VALUE, (i11 & 2) != 0, bVar);
    }

    private static Object g(Object[] objArr, int i11, boolean z10, b bVar) {
        Object obj = null;
        int i12 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int iAbs = (Math.abs(bVar.b(obj2) - i11) * 2) + (bVar.a(obj2) == z10 ? 0 : 1);
            if (obj == null || i12 > iAbs) {
                obj = obj2;
                i12 = iAbs;
            }
        }
        return obj;
    }

    public abstract Typeface a(Context context, y0.e.c cVar, Resources resources, int i11);

    public abstract Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i11);

    public Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i11) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    protected Typeface d(Context context, InputStream inputStream) {
        File fileE = p.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (p.d(fileE, inputStream)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i11, String str, int i12) {
        File fileE = p.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (p.c(fileE, resources, i11)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    protected androidx.core.provider.k.b h(androidx.core.provider.k.b[] bVarArr, int i11) {
        return (androidx.core.provider.k.b) f(bVarArr, i11, new a());
    }
}
