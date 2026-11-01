package com.transsion.ad.test;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.test.TestAdActivity;
import com.transsion.ad.test.ad_config.TestAdMccActivity;
import com.transsion.ad.test.ad_config.TestAdOtherConfigActivity;
import com.transsion.ad.test.ad_config.TestAdPlansActivity;
import com.transsion.ad.test.ad_config.TestAdPsOfferActivity;
import com.transsion.ad.test.ad_config.TestAdSceneActivity;
import com.transsion.ad.test.ad_example.TestAdAExampleActivity;
import com.transsion.core.utils.ToastUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hi.f;
import ji.p;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/transsion/ad/test/TestAdActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "m0", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lji/p;", "a", "Lji/p;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private p binding;

    /* JADX INFO: renamed from: com.transsion.ad.test.TestAdActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(AppCompatActivity activity) {
            Intrinsics.h(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) TestAdActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(TestAdActivity testAdActivity, View view) {
        f fVar = f.f64472a;
        fVar.h(!fVar.c());
        testAdActivity.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdPsOfferActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdOtherConfigActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdAExampleActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(TestAdActivity testAdActivity, View view) {
        f fVar = f.f64472a;
        fVar.f(Boolean.valueOf(!fVar.a()));
        testAdActivity.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(View view) {
        com.transsion.ad.strategy.f fVar = com.transsion.ad.strategy.f.f42232a;
        fVar.c().putString("non_ad_scene_version", "");
        fVar.c().putString("non_ad_plan_version", "");
        ToastUtil.f("已重置版本号缓存，请重启应用测试效果。");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(Button button, View view) {
        f fVar = f.f64472a;
        Boolean boolD = fVar.d();
        fVar.i(boolD != null ? Boolean.valueOf(!boolD.booleanValue()) : null);
        button.setText("未命中的广告计划 输出日志 = " + fVar.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdMccActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdSceneActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdPlansActivity.class));
    }

    private final void m0() {
        p pVar = this.binding;
        p pVar2 = null;
        if (pVar == null) {
            Intrinsics.z("binding");
            pVar = null;
        }
        Button button = pVar.f66156e;
        f fVar = f.f64472a;
        button.setText(fVar.c() ? "isGlobalAdOff = true" : "isGlobalAdOff = false");
        p pVar3 = this.binding;
        if (pVar3 == null) {
            Intrinsics.z("binding");
        } else {
            pVar2 = pVar3;
        }
        pVar2.f66153b.setText(fVar.a() ? "AdConfigHost = test" : "AdConfigHost = release");
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        p pVarC = p.c(getLayoutInflater());
        this.binding = pVarC;
        p pVar = null;
        if (pVarC == null) {
            Intrinsics.z("binding");
            pVarC = null;
        }
        setContentView(pVarC.getRoot());
        p pVar2 = this.binding;
        if (pVar2 == null) {
            Intrinsics.z("binding");
            pVar2 = null;
        }
        Button button = pVar2.f66156e;
        m0();
        button.setOnClickListener(new View.OnClickListener() { // from class: si.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.c0(this.f75353a, view);
            }
        });
        p pVar3 = this.binding;
        if (pVar3 == null) {
            Intrinsics.z("binding");
            pVar3 = null;
        }
        Button button2 = pVar3.f66153b;
        m0();
        button2.setOnClickListener(new View.OnClickListener() { // from class: si.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.g0(this.f75354a, view);
            }
        });
        p pVar4 = this.binding;
        if (pVar4 == null) {
            Intrinsics.z("binding");
            pVar4 = null;
        }
        pVar4.f66161j.setOnClickListener(new View.OnClickListener() { // from class: si.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.h0(view);
            }
        });
        p pVar5 = this.binding;
        if (pVar5 == null) {
            Intrinsics.z("binding");
            pVar5 = null;
        }
        final Button button3 = pVar5.f66158g;
        button3.setOnClickListener(new View.OnClickListener() { // from class: si.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.i0(button3, view);
            }
        });
        button3.setText("未命中的广告计划 输出日志 = " + f.f64472a.d());
        p pVar6 = this.binding;
        if (pVar6 == null) {
            Intrinsics.z("binding");
            pVar6 = null;
        }
        pVar6.f66157f.setOnClickListener(new View.OnClickListener() { // from class: si.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.j0(this.f75356a, view);
            }
        });
        p pVar7 = this.binding;
        if (pVar7 == null) {
            Intrinsics.z("binding");
            pVar7 = null;
        }
        pVar7.f66162k.setOnClickListener(new View.OnClickListener() { // from class: si.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.k0(this.f75357a, view);
            }
        });
        p pVar8 = this.binding;
        if (pVar8 == null) {
            Intrinsics.z("binding");
            pVar8 = null;
        }
        pVar8.f66155d.setOnClickListener(new View.OnClickListener() { // from class: si.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.l0(this.f75358a, view);
            }
        });
        p pVar9 = this.binding;
        if (pVar9 == null) {
            Intrinsics.z("binding");
            pVar9 = null;
        }
        pVar9.f66160i.setOnClickListener(new View.OnClickListener() { // from class: si.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.d0(this.f75359a, view);
            }
        });
        p pVar10 = this.binding;
        if (pVar10 == null) {
            Intrinsics.z("binding");
            pVar10 = null;
        }
        pVar10.f66159h.setOnClickListener(new View.OnClickListener() { // from class: si.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.e0(this.f75360a, view);
            }
        });
        p pVar11 = this.binding;
        if (pVar11 == null) {
            Intrinsics.z("binding");
        } else {
            pVar = pVar11;
        }
        pVar.f66154c.setOnClickListener(new View.OnClickListener() { // from class: si.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdActivity.f0(this.f75361a, view);
            }
        });
    }
}
