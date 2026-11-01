package sp;

import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.mpush.api.IPushReportInterceptor;
import com.transsion.mpush.api.LocalPushMessage;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements IPushReportInterceptor {
    @Override // com.transsion.mpush.api.IPushReportInterceptor
    public boolean intercept(Object message, Map params) {
        String extraMap;
        Intrinsics.h(message, "message");
        Intrinsics.h(params, "params");
        if (!(message instanceof LocalPushMessage)) {
            return false;
        }
        LocalPushMessage localPushMessage = (LocalPushMessage) message;
        if (!Intrinsics.c(localPushMessage.getType(), "activate_push")) {
            return false;
        }
        Map mapD = TypeIntrinsics.d(params);
        mapD.put("report_ts", String.valueOf(System.currentTimeMillis()));
        String extraMap2 = localPushMessage.getExtraMap();
        if (extraMap2 != null) {
            mapD.put("extraMap", extraMap2);
        }
        return Intrinsics.c(params.get(EventConstants.KEY_ACTION), "click") && ((extraMap = localPushMessage.getExtraMap()) == null || !StringsKt.c0(extraMap, "clickResult", false, 2, null));
    }
}
