package dk;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.Intrinsics;
import oh.h;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final int a(float f11) {
        h hVar = h.f71021a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return hVar.a(applicationA, f11);
    }

    public static final int b(int i11) {
        h hVar = h.f71021a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return hVar.a(applicationA, i11);
    }
}
