package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f16027a;

    static {
        String strI = t.i("InputMerger");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f16027a = strI;
    }

    public static final k a(String className) {
        Intrinsics.h(className, "className");
        try {
            Object objNewInstance = Class.forName(className).getDeclaredConstructor(null).newInstance(null);
            Intrinsics.f(objNewInstance, "null cannot be cast to non-null type androidx.work.InputMerger");
            return (k) objNewInstance;
        } catch (Exception e11) {
            t.e().d(f16027a, "Trouble instantiating " + className, e11);
            return null;
        }
    }
}
