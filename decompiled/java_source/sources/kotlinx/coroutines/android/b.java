package kotlinx.coroutines.android;

import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends AbstractCoroutineContextElement implements j0 {
    private volatile Object _preHandler;

    public b() {
        super(j0.f67892k1);
        this._preHandler = this;
    }

    private final Method d() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", null);
            if (Modifier.isPublic(declaredMethod.getModifiers()) && Modifier.isStatic(declaredMethod.getModifiers())) {
                method = declaredMethod;
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // kotlinx.coroutines.j0
    public void o(CoroutineContext coroutineContext, Throwable th2) {
        int i11 = Build.VERSION.SDK_INT;
        if (26 > i11 || i11 >= 28) {
            return;
        }
        Method methodD = d();
        Object objInvoke = methodD != null ? methodD.invoke(null, null) : null;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = objInvoke instanceof Thread.UncaughtExceptionHandler ? (Thread.UncaughtExceptionHandler) objInvoke : null;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th2);
        }
    }
}
