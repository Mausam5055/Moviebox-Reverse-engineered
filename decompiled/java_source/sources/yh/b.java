package yh;

import com.tn.tranpay.bean.QueryOrderResultContent;
import com.tn.tranpay.bean.QueryStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final QueryOrderResultContent f79017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final QueryStatus f79018b;

    public b(QueryOrderResultContent queryOrderResultContent, QueryStatus status) {
        Intrinsics.h(status, "status");
        this.f79017a = queryOrderResultContent;
        this.f79018b = status;
    }

    public final QueryOrderResultContent a() {
        return this.f79017a;
    }

    public final QueryStatus b() {
        return this.f79018b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f79017a, bVar.f79017a) && this.f79018b == bVar.f79018b;
    }

    public int hashCode() {
        QueryOrderResultContent queryOrderResultContent = this.f79017a;
        return ((queryOrderResultContent == null ? 0 : queryOrderResultContent.hashCode()) * 31) + this.f79018b.hashCode();
    }

    public String toString() {
        return "QueryOrderResult(content=" + this.f79017a + ", status=" + this.f79018b + ")";
    }
}
