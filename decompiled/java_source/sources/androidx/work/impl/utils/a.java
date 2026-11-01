package androidx.work.impl.utils;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15940a = new a();

    private a() {
    }

    public final String a() {
        String processName = Application.getProcessName();
        Intrinsics.g(processName, "getProcessName(...)");
        return processName;
    }
}
