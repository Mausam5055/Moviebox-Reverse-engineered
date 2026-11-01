package tr;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import hj.i;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f76347a = new HashSet();

    public final void a(String pageName, String str, String str2, Integer num, String str3, boolean z10, String str4) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put("ops", str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        map.put(RequestParameters.POSITION, sb2.toString());
        map.put("item_type", str3);
        if (str != null) {
            boolean zContains = this.f76347a.contains(str);
            this.f76347a.add(str);
            if (zContains) {
                return;
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z10);
        map.put("has_resource", sb3.toString());
        map.put("category_type", str4);
        i.f64505a.D(pageName, map);
    }

    public final void b(String pageName, String moduleName, String str, String str2, Integer num, String str3, boolean z10, String str4) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        map.put("subject_id", str);
        map.put("ops", str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        map.put(RequestParameters.POSITION, sb2.toString());
        map.put("item_type", str3);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z10);
        map.put("has_resource", sb3.toString());
        map.put("category_type", str4);
        i.f64505a.p(pageName, map);
    }
}
