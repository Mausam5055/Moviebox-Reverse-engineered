package gg;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Map;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f63565a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f63566b = "";

    private a() {
    }

    public final String a() {
        if (!b(f63566b)) {
            String str = f63566b;
            Intrinsics.e(str);
            return str;
        }
        TimeZone timeZone = TimeZone.getDefault();
        String id2 = timeZone.getID();
        if (b(id2)) {
            String displayName = timeZone.getDisplayName(false, 0);
            if (b(displayName)) {
                f63566b = "";
                displayName = TmcConstants.ROUTE_UNKNOWN;
            } else {
                f63566b = displayName;
            }
            id2 = displayName;
            Intrinsics.g(id2, "{\n            val name =…e\n            }\n        }");
        } else {
            f63566b = id2;
            Intrinsics.g(id2, "{\n            zoneStr = …\n            id\n        }");
        }
        return id2;
    }

    public final boolean b(String str) {
        return str == null || str.length() == 0;
    }

    public final boolean c(Map map) {
        return (map == null || map.isEmpty()) ? false : true;
    }
}
