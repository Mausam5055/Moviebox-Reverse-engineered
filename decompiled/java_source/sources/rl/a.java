package rl;

import com.transsion.mb.config.manager.ConfigBean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f74545a = new a();

    private a() {
    }

    public final boolean a() {
        String value;
        ConfigBean configBeanC = sm.f.f75407c.a().c("app_center_switch", true);
        if (configBeanC != null && (value = configBeanC.getValue()) != null) {
            try {
                return new JSONObject(value).optBoolean("app_center_off");
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
