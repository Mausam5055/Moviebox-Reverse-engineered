package be;

import android.text.TextUtils;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.Network;
import com.hisavana.common.mock.RecordTestInfo;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f16352a = new HashMap();

    public Network a(String str) {
        return c(str);
    }

    public boolean b(String str, Network network) {
        if (network == null) {
            return false;
        }
        Network networkC = c(str);
        double dDoubleValue = networkC != null ? networkC.getPrice().doubleValue() : 0.0d;
        if (dDoubleValue > 0.0d && dDoubleValue > network.getPrice().doubleValue()) {
            return false;
        }
        d(str, network);
        if (!LogSwitch.isDebug) {
            return true;
        }
        RecordTestInfo.LogMsg("add price cache:" + RecordTestInfo.getLogMsg(network), RecordTestInfo.LOG_CODE11);
        return true;
    }

    public final Network c(String str) {
        Network network;
        if (TextUtils.isEmpty(str) || (network = (Network) this.f16352a.get(str)) == null) {
            return null;
        }
        if (network.getBidInfo() != null && !network.getBidInfo().isExpired()) {
            return network;
        }
        this.f16352a.remove(str);
        return null;
    }

    public final void d(String str, Network network) {
        if (TextUtils.isEmpty(str) || network == null) {
            return;
        }
        this.f16352a.put(str, network);
    }
}
