package com.transsion.ad.test.ad_config;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.blankj.utilcode.util.o;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.JsonViewer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import ji.w;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPlanDetailActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lji/w;", "a", "Lji/w;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdPlanDetailActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private w binding;

    @Override // oi.b
    public String getLogTag() {
        return "ad_";
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003f  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Serializable serializableExtra;
        super.onCreate(savedInstanceState);
        w wVarC = w.c(getLayoutInflater());
        this.binding = wVarC;
        w wVar = null;
        if (wVarC == null) {
            Intrinsics.z("binding");
            wVarC = null;
        }
        setContentView(wVarC.getRoot());
        if (Build.VERSION.SDK_INT >= 33) {
            Intent intent = getIntent();
            if (intent != null) {
                serializableExtra = (MbAdDbPlans) intent.getSerializableExtra("MbAdDbPlans", MbAdDbPlans.class);
            } else {
                serializableExtra = null;
            }
        } else {
            Intent intent2 = getIntent();
            if (intent2 != null) {
                serializableExtra = intent2.getSerializableExtra("MbAdDbPlans");
            } else {
                serializableExtra = null;
            }
        }
        w wVar2 = this.binding;
        if (wVar2 == null) {
            Intrinsics.z("binding");
        } else {
            wVar = wVar2;
        }
        JsonViewer jsonViewer = wVar.f66187b;
        String json = o.f().toJson(serializableExtra);
        Intrinsics.g(json, "toJson(...)");
        jsonViewer.setJson(json, 4);
    }
}
