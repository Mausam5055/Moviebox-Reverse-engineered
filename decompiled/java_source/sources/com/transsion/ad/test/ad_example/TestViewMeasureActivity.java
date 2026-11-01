package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "Lcom/transsion/ad/strategy/r$a;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "", "isVisible", "onVisibilityChanged", "(Z)V", "Landroid/view/View;", "getVisibilityView", "()Landroid/view/View;", "Lji/c0;", "a", "Lji/c0;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestViewMeasureActivity extends TestBaseActivity implements com.transsion.ad.strategy.r.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ji.c0 binding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(TestViewMeasureActivity testViewMeasureActivity, View view) {
        ji.c0 c0Var = testViewMeasureActivity.binding;
        if (c0Var == null) {
            Intrinsics.z("binding");
            c0Var = null;
        }
        c0Var.f66038c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(TestViewMeasureActivity testViewMeasureActivity, View view) {
        ji.c0 c0Var = testViewMeasureActivity.binding;
        if (c0Var == null) {
            Intrinsics.z("binding");
            c0Var = null;
        }
        c0Var.f66038c.setVisibility(0);
    }

    @Override // oi.b
    public String getLogTag() {
        return "view_measure";
    }

    @Override // com.transsion.ad.strategy.r.a
    public double getVisibilityThreshold() {
        return com.transsion.ad.strategy.r.a.C0599a.a(this);
    }

    @Override // com.transsion.ad.strategy.r.a
    public View getVisibilityView() {
        ji.c0 c0Var = this.binding;
        if (c0Var == null) {
            Intrinsics.z("binding");
            c0Var = null;
        }
        View viewBottom = c0Var.f66037b;
        Intrinsics.g(viewBottom, "viewBottom");
        return viewBottom;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.c0 c0VarC = ji.c0.c(getLayoutInflater());
        this.binding = c0VarC;
        ji.c0 c0Var = null;
        if (c0VarC == null) {
            Intrinsics.z("binding");
            c0VarC = null;
        }
        setContentView(c0VarC.getRoot());
        com.transsion.ad.strategy.r.f42240a.g(this);
        ji.c0 c0Var2 = this.binding;
        if (c0Var2 == null) {
            Intrinsics.z("binding");
            c0Var2 = null;
        }
        c0Var2.f66038c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestViewMeasureActivity.U(this.f42340a, view);
            }
        });
        ji.c0 c0Var3 = this.binding;
        if (c0Var3 == null) {
            Intrinsics.z("binding");
        } else {
            c0Var = c0Var3;
        }
        c0Var.f66037b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestViewMeasureActivity.V(this.f42342a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.ad.strategy.r.f42240a.n(this);
    }

    @Override // com.transsion.ad.strategy.r.a
    public void onVisibilityChanged(boolean isVisible) {
        oi.b.a.c(this, 0, getClassTag() + " --> onVisibilityChanged() --> isVisible = " + isVisible, null, false, 13, null);
    }
}
