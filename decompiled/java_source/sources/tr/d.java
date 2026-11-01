package tr;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import hj.i;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f76348a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f76349b = new HashSet();

    public final void a(String pageName, String moduleName, String str, String str2, Integer num, boolean z10, String str3, String str4, String str5) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        map.put("subject_id", str);
        map.put("ops", str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        map.put(RequestParameters.POSITION, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z10);
        map.put("has_resource", sb3.toString());
        map.put("category", String.valueOf(str3));
        map.put("rec_type", String.valueOf(str4));
        map.put("label", String.valueOf(str5));
        i.f64505a.p(pageName, map);
    }

    public final void b(String pageName, String str, String str2, Integer num, String str3, String str4, String str5) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("staff_id", String.valueOf(str));
        map.put("ops", String.valueOf(str2));
        map.put(RequestParameters.POSITION, String.valueOf(num));
        if (str != null) {
            boolean zContains = this.f76349b.contains(str);
            this.f76349b.add(str);
            if (zContains) {
                return;
            }
        }
        map.put("category", String.valueOf(str3));
        map.put("rec_type", String.valueOf(str4));
        map.put("label", String.valueOf(str5));
        i.f64505a.D(pageName, map);
    }

    public final void c(String pageName, String str, String str2, Integer num, String str3, String str4, String str5) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("staff_id", String.valueOf(str));
        map.put("ops", String.valueOf(str2));
        map.put(RequestParameters.POSITION, String.valueOf(num));
        map.put("category", String.valueOf(str3));
        map.put("rec_type", String.valueOf(str4));
        map.put("label", String.valueOf(str5));
        i.f64505a.D(pageName, map);
    }

    public final void d(String pageName, String str, String str2, Integer num, boolean z10, String str3, String str4, String str5) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("subject_id", String.valueOf(str));
        map.put("ops", String.valueOf(str2));
        map.put(RequestParameters.POSITION, String.valueOf(num));
        if (str != null) {
            boolean zContains = this.f76348a.contains(str);
            this.f76348a.add(str);
            if (zContains) {
                return;
            }
        }
        map.put("has_resource", String.valueOf(z10));
        map.put("category", String.valueOf(str3));
        map.put("rec_type", String.valueOf(str4));
        map.put("label", String.valueOf(str5));
        i.f64505a.D(pageName, map);
    }

    public final void e(String pageName, String str, String str2, Integer num, boolean z10, String str3, String str4, String str5) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("subject_id", String.valueOf(str));
        map.put("ops", String.valueOf(str2));
        map.put(RequestParameters.POSITION, String.valueOf(num));
        map.put("has_resource", String.valueOf(z10));
        map.put("category", String.valueOf(str3));
        map.put("rec_type", String.valueOf(str4));
        map.put("label", String.valueOf(str5));
        i.f64505a.p(pageName, map);
    }
}
