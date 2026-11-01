package ut;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.shorttv_pugc.bean.Subject;
import hj.i;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f76892b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f76893a = new HashSet();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void a(String pageName, Subject item, int i11, long j11, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f76893a.contains(item.getSubjectId())) {
            return;
        }
        this.f76893a.add(item.getSubjectId());
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("ops", String.valueOf(item.getOps()));
        linkedHashMap.put("subject_id", String.valueOf(item.getSubjectId()));
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("browse_duration", String.valueOf(j11));
        i.f64505a.D(pageName, linkedHashMap);
    }

    public final void b(String pageName, Subject subject, int i11, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        i.f64505a.p(pageName, linkedHashMap);
    }
}
