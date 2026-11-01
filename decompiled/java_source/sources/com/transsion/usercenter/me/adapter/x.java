package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.LiveData;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.memberapi.MemberInfo;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsnet.loginapi.ILoginApi;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class x extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f56978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f56979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LiveData f56980g;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56981a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56981a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56981a;
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
            this.f56981a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public x(o oVar) {
        this.f56978e = oVar;
    }

    public /* synthetic */ x(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(MemberInfo memberInfo, TextView textView, ImageView imageView, TextView textView2, TextView textView3, x xVar, Integer num) {
        if (num.intValue() <= 0 || memberInfo == null) {
            textView.setVisibility(8);
            imageView.setVisibility(8);
            textView2.setVisibility(8);
            textView3.setText(xVar.k().getString(R$string.reward_win_big_prizes));
        } else {
            if (memberInfo.getMemberType() == 0 || memberInfo.getMemberType() == 1) {
                textView.setText(num.intValue() <= 999 ? num.toString() : "999+");
                textView.setVisibility(0);
                imageView.setVisibility(0);
                textView2.setVisibility(8);
            } else if (memberInfo.getMemberType() == 2) {
                ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
                if (Intrinsics.c(iLoginApi != null ? Boolean.valueOf(iLoginApi.a()) : null, Boolean.TRUE)) {
                    textView.setText(num.intValue() <= 999 ? num.toString() : "999+");
                    textView.setVisibility(0);
                    imageView.setVisibility(0);
                    textView2.setVisibility(8);
                } else {
                    textView2.setVisibility(0);
                    textView.setVisibility(8);
                    imageView.setVisibility(8);
                    textView2.setText(num.toString());
                }
            }
            textView3.setText(xVar.k().getString(R$string.unclaimed_rewards, num));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(x xVar, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        Navigator.x(TheRouter.c("/rewards/center").K(EventConstants.KEY_SOURCE, "PROFILE_DETAIL"), null, null, 3, null);
        o oVar = xVar.f56978e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final MeItemInfo item) {
        IRewardsCenterApi iRewardsCenterApi;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context contextK = k();
        BaseActivity baseActivity = contextK instanceof BaseActivity ? (BaseActivity) contextK : null;
        if (baseActivity != null && (iRewardsCenterApi = (IRewardsCenterApi) TheRouter.d(IRewardsCenterApi.class, new Object[0])) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f56980g == null || jCurrentTimeMillis - this.f56979f >= 30000) {
                this.f56979f = jCurrentTimeMillis;
                this.f56980g = iRewardsCenterApi.d();
            }
            final TextView textView = (TextView) helper.getView(R$id.badgeTv);
            final TextView textView2 = (TextView) helper.getView(R$id.desTv);
            final TextView textView3 = (TextView) helper.getView(R$id.tv_rewards_number);
            final ImageView imageView = (ImageView) helper.getView(R$id.icIV);
            Object data = item.getData();
            final MemberInfo memberInfo = data instanceof MemberInfo ? (MemberInfo) data : null;
            LiveData liveData = this.f56980g;
            if (liveData != null) {
                liveData.j(baseActivity, new a(new Function1() { // from class: com.transsion.usercenter.me.adapter.v
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return x.B(memberInfo, textView3, imageView, textView, textView2, this, (Integer) obj);
                    }
                }));
            }
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return x.C(this.f56976a, item, (View) obj);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 11;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_rewards_center_layout;
    }
}
