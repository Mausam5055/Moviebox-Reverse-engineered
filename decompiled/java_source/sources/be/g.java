package be;

import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f16392b = "g";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f16393a;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f16394a = new g();
    }

    public g() {
        this.f16393a = new ConcurrentHashMap();
    }

    public static g d() {
        return b.f16394a;
    }

    public CloudControlConfig.CodeSeat a(String str) {
        try {
            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) this.f16393a.get(str);
            if (codeSeat != null) {
                return codeSeat;
            }
            AdLogUtil.Log().d(f16392b, "getCodeSeat value is null");
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public void b() {
        AdLogUtil.Log().d(f16392b, "clearCache");
        this.f16393a.clear();
    }

    public void c(List list) {
        if (list == null) {
            return;
        }
        try {
            b();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
                this.f16393a.put(codeSeat.getCodeSeatId(), codeSeat);
            }
        } catch (Exception unused) {
            AdLogUtil.Log().d(f16392b, "update code seat error");
        }
    }
}
