package gw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.base.report.athena.ClickType;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import fw.w0;
import hj.i;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f64022h = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f64023g = 3;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(f fVar, View view) {
        fVar.E();
        Navigator.x(TheRouter.c("/profile/qr_code"), fVar.k(), null, 2, null);
    }

    private final void E() {
        i.f64505a.q("/profile/device_management", MapsKt.j(TuplesKt.a("module_name", "link_device"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "pro")), ClickType.FEATURE);
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void y(w0 binding, BaseViewHolder helper, jw.a item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item != jw.a.d.f66306a) {
            return;
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: gw.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.C(this.f64021a, view);
            }
        };
        binding.f62971b.setOnClickListener(onClickListener);
        binding.f62972c.setOnClickListener(onClickListener);
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public w0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        w0 w0VarC = w0.c(inflater, parent, false);
        Intrinsics.g(w0VarC, "inflate(...)");
        return w0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f64023g;
    }
}
