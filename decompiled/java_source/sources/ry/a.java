package ry;

import com.transsion.moviedetailapi.bean.Subject;
import hj.i;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f74751a = new HashSet();

    public final void a(String pageName, Subject item, int i11, long j11) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f74751a.contains(item.getSubjectId())) {
            return;
        }
        this.f74751a.add(item.getSubjectId());
        linkedHashMap.put("sequence", String.valueOf(i11));
        linkedHashMap.put("ops", String.valueOf(item.getOps()));
        linkedHashMap.put("subject_id", String.valueOf(item.getSubjectId()));
        if (j11 > 0) {
            linkedHashMap.put("browse_duration", String.valueOf(j11));
        }
        linkedHashMap.put("has_resource", String.valueOf(item.getHasResource()));
        i.f64505a.D(pageName, linkedHashMap);
    }

    public final void b(String pageName, Subject subject, int i11) {
        Intrinsics.h(pageName, "pageName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sequence", String.valueOf(i11));
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("has_resource", String.valueOf(subject != null ? subject.getHasResource() : null));
        i.f64505a.p(pageName, linkedHashMap);
    }

    public final void c(String pageName, Subject subject, String moduleName) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", moduleName);
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("has_resource", String.valueOf(subject != null ? subject.getHasResource() : null));
        i.f64505a.p(pageName, linkedHashMap);
    }
}
