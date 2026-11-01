package hy;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f64842a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set f64843b = new LinkedHashSet();

    private a() {
    }

    public final void a() {
        com.transsion.wrapperad.install.b bVar = com.transsion.wrapperad.install.b.f58175a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        bVar.b(applicationA);
    }
}
