package com.transsion.postdetail.ui.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.postdetail.bean.ReportReason;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import so.x;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f49400d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f49401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f49402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f49403c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class b extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final x f49404a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f49405b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(h hVar, x binding) {
            super(binding.getRoot());
            Intrinsics.h(binding, "binding");
            this.f49405b = hVar;
            this.f49404a = binding;
        }

        public final x f() {
            return this.f49404a;
        }
    }

    public h(List reasons) {
        Intrinsics.h(reasons, "reasons");
        this.f49401a = reasons;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(h hVar, int i11, x xVar, View view) {
        int iIntValue;
        Integer num = hVar.f49402b;
        Integer numValueOf = (num != null && num.intValue() == i11) ? null : Integer.valueOf(i11);
        hVar.f49402b = numValueOf;
        xVar.f75760b.setSelected(numValueOf != null && numValueOf.intValue() == i11);
        if (num != null && (iIntValue = num.intValue()) != i11) {
            hVar.notifyItemChanged(iIntValue, "selection_changed");
        }
        Function1 function1 = hVar.f49403c;
        if (function1 != null) {
            Integer num2 = hVar.f49402b;
            function1.invoke(num2 != null ? (ReportReason) hVar.f49401a.get(num2.intValue()) : null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f49401a.size();
    }

    public final Integer h() {
        return this.f49402b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b holder, final int i11) {
        Intrinsics.h(holder, "holder");
        ReportReason reportReason = (ReportReason) this.f49401a.get(i11);
        Integer num = this.f49402b;
        boolean z10 = num != null && num.intValue() == i11;
        final x xVarF = holder.f();
        xVarF.f75761c.setText(reportReason.getTitle());
        xVarF.f75760b.setSelected(z10);
        if (i11 == this.f49401a.size() - 1) {
            xVarF.getRoot().setBackgroundResource(R$drawable.bg_radius_bottom_6_color_white_6p);
        } else if (i11 == 0) {
            xVarF.getRoot().setBackgroundResource(R$drawable.bg_radius_top_6_color_white_6p);
        } else {
            xVarF.getRoot().setBackgroundResource(R$color.white_6);
        }
        xVarF.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.adapter.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.k(this.f49397a, i11, xVarF, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b holder, int i11, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, i11, payloads);
            return;
        }
        AppCompatCheckBox appCompatCheckBox = holder.f().f75760b;
        Integer num = this.f49402b;
        appCompatCheckBox.setSelected(num != null && num.intValue() == i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        x xVarC = x.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(xVarC, "inflate(...)");
        return new b(this, xVarC);
    }

    public final void m(Function1 function1) {
        this.f49403c = function1;
    }
}
