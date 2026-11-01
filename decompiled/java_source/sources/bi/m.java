package bi;

import java.lang.reflect.Field;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f16543a = new m();

    private m() {
    }

    public final Object a(Object instance, String fieldName) {
        Object objM454constructorimpl;
        Intrinsics.h(instance, "instance");
        Intrinsics.h(fieldName, "fieldName");
        try {
            Result.Companion companion = Result.INSTANCE;
            Field declaredField = instance.getClass().getDeclaredField(fieldName);
            declaredField.setAccessible(true);
            objM454constructorimpl = Result.m454constructorimpl(declaredField.get(instance));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            return null;
        }
        return objM454constructorimpl;
    }
}
