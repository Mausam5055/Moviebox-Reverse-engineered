package nb;

import com.google.firebase.crashlytics.FirebaseCrashlytics;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i {
    public static final FirebaseCrashlytics a(com.google.firebase.c cVar) {
        Intrinsics.h(cVar, "<this>");
        FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
        Intrinsics.g(firebaseCrashlytics, "getInstance()");
        return firebaseCrashlytics;
    }
}
