package gw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.base.report.athena.ClickType;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import fw.t0;
import hj.i;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ti.n;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f64014i = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f64015g = n.f76264a.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f64016h = 2;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(b bVar, View view) {
        bVar.E();
        Navigator.x(TheRouter.c("/member/MemberActivity"), bVar.k(), null, 2, null);
    }

    private final void E() {
        i.f64505a.q("/profile/device_management", MapsKt.j(TuplesKt.a("module_name", "unlock_premium"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "button")), ClickType.FEATURE);
        com.transsion.baselib.helper.f.g(com.transsion.baselib.helper.f.f43269a, "/profile/device_management", "linked_device/vip_entry", this.f64015g, null, 4, 8, null);
    }

    private final void F() {
        com.transsion.baselib.helper.f.i(com.transsion.baselib.helper.f.f43269a, "/profile/device_management", "linked_device/vip_entry", this.f64015g, null, 4, 8, null);
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void y(t0 binding, BaseViewHolder helper, jw.a item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        jw.a.C0803a c0803a = item instanceof jw.a.C0803a ? (jw.a.C0803a) item : null;
        if (c0803a == null) {
            return;
        }
        binding.f62913d.setText(String.valueOf(c0803a.a().b()));
        binding.f62924o.setText(String.valueOf(c0803a.a().f()));
        RecyclerView.Adapter adapter = binding.f62930u.getAdapter();
        com.transsion.usercenter.devicemanagement.adapter.d dVar = adapter instanceof com.transsion.usercenter.devicemanagement.adapter.d ? (com.transsion.usercenter.devicemanagement.adapter.d) adapter : null;
        if (dVar == null) {
            dVar = new com.transsion.usercenter.devicemanagement.adapter.d();
            binding.f62930u.setLayoutManager(new LinearLayoutManager(k()));
            binding.f62930u.setAdapter(dVar);
            binding.f62930u.setNestedScrollingEnabled(false);
            binding.f62930u.setOverScrollMode(2);
        }
        dVar.n1(c0803a.a().g());
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: gw.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.C(this.f64013a, view);
            }
        };
        binding.f62932w.setOnClickListener(onClickListener);
        binding.f62931v.setOnClickListener(onClickListener);
        F();
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public t0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        t0 t0VarC = t0.c(inflater, parent, false);
        Intrinsics.g(t0VarC, "inflate(...)");
        return t0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f64016h;
    }
}
