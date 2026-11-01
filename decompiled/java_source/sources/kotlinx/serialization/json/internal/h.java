package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f68306a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ArrayDeque f68307b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f68308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f68309d;

    static {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.g(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            objM454constructorimpl = Result.m454constructorimpl(StringsKt.v(property));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        Integer num = (Integer) objM454constructorimpl;
        f68309d = num != null ? num.intValue() : 1048576;
    }

    private h() {
    }

    public final void a(char[] array) {
        Intrinsics.h(array, "array");
        synchronized (this) {
            try {
                int i11 = f68308c;
                if (array.length + i11 < f68309d) {
                    f68308c = i11 + array.length;
                    f68307b.addLast(array);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final char[] b() {
        char[] cArr;
        synchronized (this) {
            cArr = (char[]) f68307b.q();
            if (cArr != null) {
                f68308c -= cArr.length;
            } else {
                cArr = null;
            }
        }
        return cArr == null ? new char[128] : cArr;
    }
}
