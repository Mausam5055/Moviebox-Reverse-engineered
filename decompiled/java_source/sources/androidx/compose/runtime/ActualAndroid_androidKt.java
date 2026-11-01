package androidx.compose.runtime;

import android.os.Looper;
import android.util.Log;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActualAndroid_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Lazy f3549a = LazyKt.b(new Function0<u0>() { // from class: androidx.compose.runtime.ActualAndroid_androidKt$DefaultMonotonicFrameClock$2
        @Override // kotlin.jvm.functions.Function0
        public final u0 invoke() {
            return Looper.getMainLooper() != null ? DefaultChoreographerFrameClock.f3598a : SdkStubsFallbackFrameClock.f3663a;
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f3550b;

    static {
        long id2;
        try {
            id2 = Looper.getMainLooper().getThread().getId();
        } catch (Exception unused) {
            id2 = -1;
        }
        f3550b = id2;
    }

    public static final c1 a(float f11) {
        return new ParcelableSnapshotMutableFloatState(f11);
    }

    public static final e1 b(int i11) {
        return new ParcelableSnapshotMutableIntState(i11);
    }

    public static final androidx.compose.runtime.snapshots.r c(Object obj, q2 q2Var) {
        return new ParcelableSnapshotMutableState(obj, q2Var);
    }

    public static final long d() {
        return f3550b;
    }

    public static final void e(String str, Throwable th2) {
        Log.e("ComposeInternal", str, th2);
    }
}
