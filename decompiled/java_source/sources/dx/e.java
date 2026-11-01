package dx;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f61459a = new HashSet();

    public final void a(String pageName, String moduleName, String str, Integer num, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        map.put("subject_id", str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        map.put(RequestParameters.POSITION, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z10);
        map.put("has_resource", sb3.toString());
        com.transsion.baselib.helper.a.f43262a.i(pageName, map);
    }
}
