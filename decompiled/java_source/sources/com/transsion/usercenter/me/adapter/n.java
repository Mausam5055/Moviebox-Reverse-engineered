package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.v0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.message.UserMessageActivity;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class n extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f56958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.usercenter.profile.f f56959f;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56960a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56960a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56960a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f56960a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public n(o oVar) {
        this.f56958e = oVar;
    }

    public /* synthetic */ n(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(TextView textView, Integer num) {
        textView.setVisibility(num.intValue() > 0 ? 0 : 8);
        textView.setText(num.toString());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(n nVar, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.u.f57015a.b("notice");
        nVar.k().startActivity(new Intent(nVar.k(), (Class<?>) UserMessageActivity.class));
        com.transsion.usercenter.profile.f fVar = nVar.f56959f;
        if (fVar != null) {
            fVar.e();
        }
        o oVar = nVar.f56958e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final MeItemInfo item) {
        androidx.p009lifecycle.b0 b0VarH;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context contextK = k();
        BaseActivity baseActivity = contextK instanceof BaseActivity ? (BaseActivity) contextK : null;
        if (baseActivity != null) {
            final TextView textView = (TextView) helper.getView(R$id.desTv);
            com.transsion.usercenter.profile.f fVar = this.f56959f;
            if (fVar != null && (b0VarH = fVar.h()) != null) {
                b0VarH.j(baseActivity, new a(new Function1() { // from class: com.transsion.usercenter.me.adapter.l
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return n.B(textView, (Integer) obj);
                    }
                }));
            }
        }
        ((TextView) helper.getView(R$id.titleTv)).setText(k().getString(R$string.messages_title_name));
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n.C(this.f56956a, item, (View) obj);
            }
        }, 1, null);
        helper.getView(R$id.divider).setVisibility(0);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 6;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.message_item_icon_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void v(BaseViewHolder viewHolder, int i11) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.v(viewHolder, i11);
        TextView textView = (TextView) viewHolder.getView(R$id.desTv);
        textView.setTextSize(11.0f);
        textView.setPadding(dk.a.b(4), dk.a.b(1), dk.a.b(4), dk.a.b(1));
        textView.setTextColor(k().getResources().getColor(R$color.white));
        textView.setBackgroundResource(R$drawable.bg_red_r7);
        viewHolder.getView(R$id.bgView).setBackgroundResource(R$color.white_6);
        ((ImageView) viewHolder.getView(R$id.icIV)).setImageResource(com.tn.lib.widget.R$drawable.ic_me_message);
        Context contextK = k();
        BaseActivity baseActivity = contextK instanceof BaseActivity ? (BaseActivity) contextK : null;
        if (baseActivity != null) {
            this.f56959f = (com.transsion.usercenter.profile.f) new v0(baseActivity).a(com.transsion.usercenter.profile.f.class);
        }
    }
}
