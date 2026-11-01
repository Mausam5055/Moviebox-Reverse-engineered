package bi;

import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.core.log.ObjectLogUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ObjectLogUtils f16547a = new ObjectLogUtils.a().p("NetworkMonitor").q(true).n(false).m();

    public static String a() {
        String str;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.oobe_country", TmcConstants.ROUTE_UNKNOWN);
        } catch (Exception e11) {
            f16547a.g(Log.getStackTraceString(e11));
            str = "";
        }
        return (TextUtils.isEmpty(str) || TmcConstants.ROUTE_UNKNOWN.equals(str)) ? b().getCountry() : str;
    }

    private static Locale b() {
        try {
            return Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
        } catch (Exception e11) {
            Locale locale = Locale.getDefault();
            f16547a.g(Log.getStackTraceString(e11));
            return locale;
        }
    }
}
