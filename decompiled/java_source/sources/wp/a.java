package wp;

import androidx.p009lifecycle.u;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f77932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RewardsCenterModel f77933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference f77934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f77935d;

    public a(u owner, RewardsCenterModel viewModel, WeakReference fragment, n0 scope) {
        Intrinsics.h(owner, "owner");
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(scope, "scope");
        this.f77932a = owner;
        this.f77933b = viewModel;
        this.f77934c = fragment;
        this.f77935d = scope;
    }

    public final WeakReference a() {
        return this.f77934c;
    }

    public final n0 b() {
        return this.f77935d;
    }

    public final RewardsCenterModel c() {
        return this.f77933b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f77932a, aVar.f77932a) && Intrinsics.c(this.f77933b, aVar.f77933b) && Intrinsics.c(this.f77934c, aVar.f77934c) && Intrinsics.c(this.f77935d, aVar.f77935d);
    }

    public int hashCode() {
        return (((((this.f77932a.hashCode() * 31) + this.f77933b.hashCode()) * 31) + this.f77934c.hashCode()) * 31) + this.f77935d.hashCode();
    }

    public String toString() {
        return "TaskConfig(owner=" + this.f77932a + ", viewModel=" + this.f77933b + ", fragment=" + this.f77934c + ", scope=" + this.f77935d + ")";
    }
}
