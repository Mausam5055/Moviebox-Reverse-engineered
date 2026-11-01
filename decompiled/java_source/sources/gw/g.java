package gw;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$string;
import fw.x0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class g extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f64024h = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f64025g = 1;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void y(x0 binding, BaseViewHolder helper, jw.a item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        jw.a.e eVar = item instanceof jw.a.e ? (jw.a.e) item : null;
        if (eVar == null) {
            return;
        }
        jw.b bVarA = eVar.a();
        binding.f62988f.setText(bVarA.h());
        String strA = bVarA.a();
        if (strA == null || StringsKt.q0(strA)) {
            binding.f62986d.setImageResource(R$drawable.ic_default_avatar);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Context context = binding.f62986d.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarI = aVar.m(context).g(bVarA.a()).i(R$drawable.ic_default_avatar);
            ShapeableImageView userAvatar = binding.f62986d;
            Intrinsics.g(userAvatar, "userAvatar");
            bVarI.d(userAvatar);
        }
        binding.f62984b.setSelected(bVarA.i());
        binding.f62984b.setText(bVarA.i() ? R$string.user_center_device_management_pro : R$string.user_center_device_management_basic);
        binding.f62985c.setImageResource(bVarA.i() ? R$mipmap.ic_premium_avatar_pro : R$mipmap.ic_premium_avatar_basic);
        TnTextView validUntil = binding.f62989g;
        Intrinsics.g(validUntil, "validUntil");
        String strE = bVarA.e();
        validUntil.setVisibility(!(strE == null || StringsKt.q0(strE)) ? 0 : 8);
        TnTextView tnTextView = binding.f62989g;
        Context contextK = k();
        int i11 = R$string.user_center_device_management_valid_until;
        String strE2 = bVarA.e();
        if (strE2 == null) {
            strE2 = "";
        }
        tnTextView.setText(contextK.getString(i11, strE2));
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public x0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        x0 x0VarC = x0.c(inflater, parent, false);
        Intrinsics.g(x0VarC, "inflate(...)");
        return x0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f64025g;
    }
}
