package nk;

import com.cloud.tmc.integration.event.EventConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f70478a = new a();

    private a() {
    }

    private final void a(boolean z10, mk.a aVar, String str, String str2) {
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, aVar.j().getValue());
        map.put("module_name", str);
        map.put(TrackingKey.GAME_NAME, aVar.d());
        String strG = aVar.g();
        if (strG != null) {
            map.put("game_id", strG);
        }
        if (str2 != null) {
            map.put("action_type", str2);
        }
        String strH = aVar.h();
        if (strH != null) {
            if (z10) {
                com.transsion.baselib.helper.a.f43262a.b(strH, map);
            } else {
                com.transsion.baselib.helper.a.f43262a.a(strH, map);
            }
        }
    }

    static /* synthetic */ void b(a aVar, boolean z10, mk.a aVar2, String str, String str2, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str2 = null;
        }
        aVar.a(z10, aVar2, str, str2);
    }

    public final void c(mk.a info, String pageStyle) {
        Intrinsics.h(info, "info");
        Intrinsics.h(pageStyle, "pageStyle");
        b(this, false, info, pageStyle, null, 8, null);
    }

    public final void d(mk.a info, String pageStyle) {
        Intrinsics.h(info, "info");
        Intrinsics.h(pageStyle, "pageStyle");
        b(this, true, info, pageStyle, null, 8, null);
    }

    public final void e(mk.a info, String pageStyle, String actionType) {
        Intrinsics.h(info, "info");
        Intrinsics.h(pageStyle, "pageStyle");
        Intrinsics.h(actionType, "actionType");
        a(true, info, pageStyle, actionType);
    }
}
