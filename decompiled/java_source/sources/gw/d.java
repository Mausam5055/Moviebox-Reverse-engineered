package gw;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import fw.v0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f64019h = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f64020g = 4;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void y(v0 binding, BaseViewHolder helper, jw.a item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        jw.a.c cVar = item instanceof jw.a.c ? (jw.a.c) item : null;
        if (cVar == null) {
            return;
        }
        RecyclerView.Adapter adapter = binding.f62953b.getAdapter();
        com.transsion.usercenter.devicemanagement.adapter.b bVar = adapter instanceof com.transsion.usercenter.devicemanagement.adapter.b ? (com.transsion.usercenter.devicemanagement.adapter.b) adapter : null;
        if (bVar == null) {
            bVar = new com.transsion.usercenter.devicemanagement.adapter.b();
            binding.f62953b.setLayoutManager(new LinearLayoutManager(k()));
            binding.f62953b.setAdapter(bVar);
            binding.f62953b.setNestedScrollingEnabled(false);
            binding.f62953b.setOverScrollMode(2);
        }
        bVar.n1(cVar.a());
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public v0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        v0 v0VarC = v0.c(inflater, parent, false);
        Intrinsics.g(v0VarC, "inflate(...)");
        return v0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f64020g;
    }
}
