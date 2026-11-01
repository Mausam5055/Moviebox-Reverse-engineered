package androidx.p009lifecycle.compose;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import androidx.p009lifecycle.u;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import kotlin.Deprecated;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class LocalLifecycleOwnerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f9585a;

    static {
        Object objM454constructorimpl;
        s1 s1Var;
        try {
            Result.Companion companion = Result.INSTANCE;
            ClassLoader classLoader = u.class.getClassLoader();
            Intrinsics.e(classLoader);
            Method method = classLoader.loadClass("androidx.compose.ui.platform.AndroidCompositionLocals_androidKt").getMethod("getLocalLifecycleOwner", null);
            Annotation[] annotations = method.getAnnotations();
            int length = annotations.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    Object objInvoke = method.invoke(null, null);
                    if (objInvoke instanceof s1) {
                        s1Var = (s1) objInvoke;
                        break;
                    }
                } else if (!(annotations[i11] instanceof Deprecated)) {
                    i11++;
                }
                s1Var = null;
                break;
            }
            objM454constructorimpl = Result.m454constructorimpl(s1Var);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        s1 s1VarF = (s1) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        if (s1VarF == null) {
            s1VarF = CompositionLocalKt.f(new Function0<u>() { // from class: androidx.lifecycle.compose.LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1
                @Override // kotlin.jvm.functions.Function0
                public final u invoke() {
                    throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
                }
            });
        }
        f9585a = s1VarF;
    }

    public static final s1 a() {
        return f9585a;
    }
}
