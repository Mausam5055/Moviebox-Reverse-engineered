package km;

import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f66910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66911b;

    public a(List steps, int i11) {
        Intrinsics.h(steps, "steps");
        this.f66910a = steps;
        this.f66911b = i11;
    }

    public /* synthetic */ a(List list, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i12 & 2) != 0 ? 0 : i11);
    }

    @Override // km.b.a
    public CompareResponse a(CompareRequest request) {
        Intrinsics.h(request, "request");
        if (this.f66911b >= this.f66910a.size()) {
            return new CompareResponse(CollectionsKt.l(), CollectionsKt.l(), CollectionsKt.l(), 0L);
        }
        b bVar = (b) this.f66910a.get(this.f66911b);
        this.f66911b++;
        return bVar.a(request, this);
    }
}
