package ar;

import com.transsion.search_pugc.bean.SecondTab;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SecondTab f16102a;

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public a(SecondTab secondTab) {
        this.f16102a = secondTab;
    }

    public /* synthetic */ a(SecondTab secondTab, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : secondTab);
    }

    public final SecondTab a() {
        return this.f16102a;
    }

    public final void b(SecondTab secondTab) {
        this.f16102a = secondTab;
    }
}
