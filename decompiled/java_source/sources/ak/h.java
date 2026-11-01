package ak;

import android.app.Application;
import com.aliyun.player.BuildConfig;
import com.blankj.utilcode.util.Utils;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f641a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f642b;

    private h() {
    }

    public final boolean a() {
        String value;
        Boolean bool = f642b;
        if (bool != null) {
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }
        try {
            ih.b bVar = ih.b.f65241a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            long j11 = bVar.k(applicationA).totalMem;
            ConfigBean configBeanC = sm.f.f75407c.a().c("lowMemoryValue", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = BuildConfig.VERSION_NAME;
            }
            if (j11 <= ((double) 1073741824) * Double.parseDouble(value)) {
                f642b = Boolean.TRUE;
            }
            Boolean bool2 = f642b;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
