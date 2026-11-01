package ss;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.shorttv.bean.Subject;
import hj.i;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0917a f75856b = new C0917a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f75857a = new HashSet();

    /* JADX INFO: renamed from: ss.a$a, reason: collision with other inner class name */
    public static final class C0917a {
        private C0917a() {
        }

        public /* synthetic */ C0917a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ void b(a aVar, String str, Subject subject, int i11, Long l11, String str2, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            l11 = null;
        }
        aVar.a(str, subject, i11, l11, str2);
    }

    public final void a(String pageName, Subject item, int i11, Long l11, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f75857a.contains(item.getSubjectId())) {
            return;
        }
        this.f75857a.add(item.getSubjectId());
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("ops", String.valueOf(item.getOps()));
        linkedHashMap.put("subject_id", String.valueOf(item.getSubjectId()));
        linkedHashMap.put("item_type", "subject");
        if (l11 != null) {
            linkedHashMap.put("browse_duration", String.valueOf(l11.longValue()));
        }
        ks.b.f68390a.a();
        i.f64505a.D(pageName, linkedHashMap);
    }

    public final void c(String pageName, Subject subject, int i11, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        ks.b.f68390a.a();
        i.f64505a.p(pageName, linkedHashMap);
    }
}
