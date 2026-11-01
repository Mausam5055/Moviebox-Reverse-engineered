package com.transsion.rewardscenter.task.ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class p extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MemberTaskAdHelper f51110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f51111f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f51112g = AdTaskType.REWARD_AD.getValue();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f51113h = R$layout.member_task_reward_layout;

    public p(MemberTaskAdHelper memberTaskAdHelper) {
        this.f51110e = memberTaskAdHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(p pVar, View view) {
        pVar.D(true);
        MemberTaskAdHelper memberTaskAdHelper = pVar.f51110e;
        if (memberTaskAdHelper != null) {
            memberTaskAdHelper.Y(new Function1() { // from class: com.transsion.rewardscenter.task.ad.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return p.C(((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(boolean z10) {
        return Unit.f67061a;
    }

    private final void D(boolean z10) {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_reward");
        if (z10) {
            hj.i.f64505a.p("MemberAdTask", map);
        } else {
            hj.i.f64505a.D("MemberAdTask", map);
        }
    }

    static /* synthetic */ void E(p pVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        pVar.D(z10);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof v.b) {
            View viewFindViewById = helper.itemView.findViewById(R$id.reward_action);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.rewardscenter.task.ad.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        p.B(this.f51109a, view);
                    }
                });
            }
            if (this.f51111f) {
                return;
            }
            this.f51111f = true;
            E(this, false, 1, null);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f51112g;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f51113h;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(m(), parent, false);
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }
}
