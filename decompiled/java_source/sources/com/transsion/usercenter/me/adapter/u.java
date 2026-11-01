package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$string;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.MineNovel;
import com.transsion.usercenter.profile.bean.MineNovelItem;
import fw.z0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class u extends BaseItemBindingProvider {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o f56969g;

    /* JADX WARN: Multi-variable type inference failed */
    public u() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public u(o oVar) {
        this.f56969g = oVar;
    }

    public /* synthetic */ u(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    private final void C(z0 z0Var, final MineNovelItem mineNovelItem, final int i11) {
        int i12;
        int i13;
        Context context = z0Var.getRoot().getContext();
        ImageView imageView = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dk.a.b(20), dk.a.b(20));
        if (i11 != 1) {
            i12 = i11 != 2 ? R$mipmap.ic_mine_novel_library : R$mipmap.ic_mine_novel_download;
        } else {
            i12 = R$mipmap.ic_mine_novel_history;
        }
        String icUrl = mineNovelItem.getIcUrl();
        if (icUrl == null || icUrl.length() == 0) {
            imageView.setImageResource(i12);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Intrinsics.e(context);
            ej.f.b bVarM = aVar.m(context);
            String icUrl2 = mineNovelItem.getIcUrl();
            Intrinsics.e(icUrl2);
            bVarM.g(icUrl2).m(dk.a.b(20)).c(dk.a.b(20)).d(imageView);
        }
        Intrinsics.e(context);
        TnTextView tnTextView = new TnTextView(context);
        tnTextView.setTypeface(jg.a.d(context));
        tnTextView.setTextSize(12.0f);
        tnTextView.setTextColor(androidx.core.content.b.getColor(context, R$color.white_80));
        if (i11 != 1) {
            i13 = i11 != 2 ? R$string.Library : R$string.Downloads;
        } else {
            i13 = R$string.History;
        }
        String title = mineNovelItem.getTitle();
        if (title == null || title.length() == 0) {
            tnTextView.setText(context.getResources().getString(i13));
        } else {
            tnTextView.setText(mineNovelItem.getTitle());
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = dk.a.b(4);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(tnTextView, layoutParams2);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.me.adapter.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                u.D(mineNovelItem, i11, view);
            }
        });
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
        layoutParams3.weight = 1.0f;
        z0Var.f63031e.addView(linearLayout, layoutParams3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(MineNovelItem mineNovelItem, int i11, View view) {
        com.transsion.usercenter.me.u.f57015a.c("novel_" + mineNovelItem.getTitle(), i11);
        String deeplink = mineNovelItem.getDeeplink();
        if (deeplink != null) {
            ak.k.h(deeplink, null, 1, null);
        }
    }

    private final void E(z0 z0Var, MineNovel mineNovel) {
        ArrayList arrayList;
        List<MineNovelItem> subItems = mineNovel.getSubItems();
        if (subItems == null || subItems.isEmpty()) {
            LinearLayout llBottom = z0Var.f63031e;
            Intrinsics.g(llBottom, "llBottom");
            jg.c.g(llBottom);
            return;
        }
        z0Var.f63031e.removeAllViews();
        LinearLayout llBottom2 = z0Var.f63031e;
        Intrinsics.g(llBottom2, "llBottom");
        jg.c.k(llBottom2);
        List<MineNovelItem> subItems2 = mineNovel.getSubItems();
        if (subItems2 != null) {
            arrayList = new ArrayList();
            for (Object obj : subItems2) {
                String deeplink = ((MineNovelItem) obj).getDeeplink();
                if (!(deeplink == null || deeplink.length() == 0)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            LinearLayout llBottom3 = z0Var.f63031e;
            Intrinsics.g(llBottom3, "llBottom");
            jg.c.g(llBottom3);
        } else {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                C(z0Var, (MineNovelItem) arrayList.get(i11), i11);
                if (i11 < arrayList.size() - 1) {
                    z0Var.f63031e.addView(new View(k()), new LinearLayout.LayoutParams(dk.a.b(8), -1));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(MineNovel mineNovel, u uVar, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.u.f57015a.b("novel");
        String deeplink = mineNovel.getDeeplink();
        if (deeplink != null) {
            ak.k.h(deeplink, null, 1, null);
        }
        o oVar = uVar.f56969g;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public void y(z0 binding, BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        final MineNovel mineNovel = data instanceof MineNovel ? (MineNovel) data : null;
        if (mineNovel == null) {
            return;
        }
        com.transsion.usercenter.me.u.f57015a.a("novel");
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return u.G(mineNovel, this, item, (View) obj);
            }
        }, 1, null);
        binding.f63032f.setText(mineNovel.getTitle());
        AppCompatTextView desTv = binding.f63029c;
        Intrinsics.g(desTv, "desTv");
        String des = mineNovel.getDes();
        desTv.setVisibility(des == null || des.length() == 0 ? 8 : 0);
        binding.f63029c.setText(mineNovel.getDes());
        String buttonText = mineNovel.getButtonText();
        if (buttonText != null && buttonText.length() != 0) {
            binding.f63028b.setText(mineNovel.getButtonText());
        }
        String icUrl = mineNovel.getIcUrl();
        if (icUrl == null || icUrl.length() == 0) {
            binding.f63030d.setImageResource(R$mipmap.ic_mine_novel);
        } else {
            ej.f.b bVarM = ej.f.f61882a.m(k());
            String icUrl2 = mineNovel.getIcUrl();
            Intrinsics.e(icUrl2);
            ej.f.b bVarC = bVarM.g(icUrl2).m(dk.a.b(20)).c(dk.a.b(20));
            ImageView icIV = binding.f63030d;
            Intrinsics.g(icIV, "icIV");
            bVarC.d(icIV);
        }
        E(binding, mineNovel);
    }

    @Override // com.transsion.baseui.adapter.BaseItemBindingProvider
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public z0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        z0 z0VarC = z0.c(LayoutInflater.from(k()), parent, false);
        Intrinsics.g(z0VarC, "inflate(...)");
        return z0VarC;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 7;
    }
}
