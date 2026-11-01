package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.native_ad.BiddingFloatingIrregularAnimationView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lji/o;", "a", "Lji/o;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdIrregularViewActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ji.o binding;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "strList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(List<String> strList) {
            super(R$layout.item_test_irregular_layout, strList);
            Intrinsics.h(strList, "strList");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, String item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            holder.setText(R$id.btn, item);
        }
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_fb";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.o oVarC = ji.o.c(getLayoutInflater());
        this.binding = oVarC;
        ji.o oVar = null;
        if (oVarC == null) {
            Intrinsics.z("binding");
            oVarC = null;
        }
        setContentView(oVarC.getRoot());
        ji.o oVar2 = this.binding;
        if (oVar2 == null) {
            Intrinsics.z("binding");
            oVar2 = null;
        }
        oVar2.f66150b.setSceneId("MBNativeTestId");
        ji.o oVar3 = this.binding;
        if (oVar3 == null) {
            Intrinsics.z("binding");
            oVar3 = null;
        }
        oVar3.f66150b.loadAd();
        ji.o oVar4 = this.binding;
        if (oVar4 == null) {
            Intrinsics.z("binding");
            oVar4 = null;
        }
        RecyclerView recyclerView = oVar4.f66151c;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 200; i11++) {
            arrayList.add("我是谁 我在哪里 我要干什么 " + i11);
        }
        recyclerView.setAdapter(new a(arrayList));
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        ji.o oVar5 = this.binding;
        if (oVar5 == null) {
            Intrinsics.z("binding");
            oVar5 = null;
        }
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView = oVar5.f66150b;
        ji.o oVar6 = this.binding;
        if (oVar6 == null) {
            Intrinsics.z("binding");
        } else {
            oVar = oVar6;
        }
        biddingFloatingIrregularAnimationView.setRecyclerView(oVar.f66151c);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ji.o oVar = this.binding;
        if (oVar == null) {
            Intrinsics.z("binding");
            oVar = null;
        }
        oVar.f66150b.onAdViewDestroy();
    }
}
