package dm;

import android.content.Context;
import android.text.TextUtils;
import com.transsion.infra.gateway.core.bean.GatewayResponse;
import com.transsion.infra.gateway.core.bean.GatewaySignKey;
import com.transsion.infra.gateway.core.bean.RequestBean;
import com.transsion.infra.gateway.core.bean.TimeBean;
import com.transsion.infra.gateway.core.sercurity.HttpSigner;
import com.transsion.infra.gateway.core.utils.c;
import com.transsion.infra.gateway.core.utils.d;
import com.transsion.json.b;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public static String a(RequestBean requestBean) {
        c.f46026a.g("requestBean" + requestBean.toString());
        return HttpSigner.b(requestBean);
    }

    public static void b(Context context) {
        com.transsion.infra.gateway.core.utils.a.b(context);
    }

    public static boolean c(int i11, String str, GatewaySignKey gatewaySignKey) {
        if (i11 != 200 && !TextUtils.isEmpty(str)) {
            try {
                c.f46026a.g("response" + str);
                GatewayResponse gatewayResponse = (GatewayResponse) b.a(str, GatewayResponse.class);
                if ("GW.4410".equals(gatewayResponse.errorCode)) {
                    c.f46026a.g("verify sign failed, retrying update time");
                    TimeBean timeBean = (TimeBean) b.a(com.transsion.infra.gateway.core.sercurity.b.a(gatewayResponse.errorMsg, gatewaySignKey.getKey()), TimeBean.class);
                    if (timeBean.time > 0) {
                        d.a(com.transsion.infra.gateway.core.utils.a.a()).d("time_offset", timeBean.time - System.currentTimeMillis());
                        return true;
                    }
                }
            } catch (Exception e11) {
                c.f46026a.i(e11);
            }
        }
        return false;
    }
}
