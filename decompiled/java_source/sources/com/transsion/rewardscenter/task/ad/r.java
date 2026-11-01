package com.transsion.rewardscenter.task.ad;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$layout;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class r extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BaseStageTaskAdHelper f51116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f51117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f51118g = AdTaskType.STAGE_AD.getValue();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f51119h = R$layout.member_task_stage_item_layout;

    public r(BaseStageTaskAdHelper baseStageTaskAdHelper) {
        this.f51116e = baseStageTaskAdHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(r rVar, v vVar, v.c it) {
        Intrinsics.h(it, "it");
        rVar.B((v.c) vVar);
        return Unit.f67061a;
    }

    private final void B(v.c cVar) {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_stage");
        map.put("ad_state", cVar.e().name());
        hj.i.f64505a.p("MemberAdTask", map);
    }

    private final void C() {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_stage");
        hj.i.f64505a.D("MemberAdTask", map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f51118g;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f51119h;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof v.c) {
            View view = helper.itemView;
            Intrinsics.f(view, "null cannot be cast to non-null type com.transsion.rewardscenter.task.ad.StageTaskAdView");
            StageTaskAdView stageTaskAdView = (StageTaskAdView) view;
            stageTaskAdView.setAdHelper(this.f51116e);
            stageTaskAdView.setData((v.c) item);
            stageTaskAdView.setClickCallback(new Function1() { // from class: com.transsion.rewardscenter.task.ad.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return r.A(this.f51114a, item, (v.c) obj);
                }
            });
            if (this.f51117f) {
                return;
            }
            this.f51117f = true;
            C();
        }
    }
}
