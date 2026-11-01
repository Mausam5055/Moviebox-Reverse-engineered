package gw;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import fw.u0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f64017h = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f64018g = 5;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void y(u0 binding, BaseViewHolder helper, jw.a item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        jw.a.b bVar = item instanceof jw.a.b ? (jw.a.b) item : null;
        if (bVar == null) {
            return;
        }
        binding.f62945b.setText(bVar.a());
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public u0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        u0 u0VarC = u0.c(inflater, parent, false);
        Intrinsics.g(u0VarC, "inflate(...)");
        return u0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f64018g;
    }
}
