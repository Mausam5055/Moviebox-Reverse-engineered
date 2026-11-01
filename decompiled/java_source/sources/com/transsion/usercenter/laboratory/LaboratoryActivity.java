package com.transsion.usercenter.laboratory;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.webkit.WebView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.meituan.android.walle.ChannelReader;
import com.transsion.ad.test.TestAdActivity;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.mbwidget.data.SportWidgetDataManager;
import com.transsion.mbwidget.data.WidgetRefreshWorker;
import com.transsion.push.PushTestActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0086@¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LaboratoryActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/f;", "<init>", "()V", "w0", "()Lfw/f;", "", "isStatusDark", "()Z", "isTranslucent", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Context;", "context", "P0", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LaboratoryActivity extends BaseActivity<fw.f> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.startActivity(new Intent(laboratoryActivity, (Class<?>) PushTestActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(View view) {
        com.tn.lib.widget.toast.core.h.f41479a.l("Refresh Widget + 体育Widget强制刷新");
        WidgetRefreshWorker.INSTANCE.a();
        SportWidgetDataManager.f46246a.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(LaboratoryActivity laboratoryActivity, View view) {
        new LabLocationDialog().k0(laboratoryActivity, RequestParameters.SUBRESOURCE_LOCATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.startActivity(new Intent(laboratoryActivity, (Class<?>) LabMiniAppSDKTestActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(LaboratoryActivity laboratoryActivity, View view) {
        new LabFpsDialog().k0(laboratoryActivity, LauncherMiniAppConfigHelper.KEY_FPS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(LaboratoryActivity laboratoryActivity, View view) {
        TestAdActivity.INSTANCE.a(laboratoryActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(LaboratoryActivity laboratoryActivity, View view) {
        new LabContentModeDialog().k0(laboratoryActivity, "LabContentModeDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(LaboratoryActivity laboratoryActivity, View view) {
        new LabPhoneBrandDialog().k0(laboratoryActivity, "brand");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(LaboratoryActivity laboratoryActivity, View view) {
        new LabInfoDialog().k0(laboratoryActivity, "info");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.startActivity(new Intent(laboratoryActivity, (Class<?>) MccActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(LaboratoryActivity laboratoryActivity, View view) {
        new LabChannelDialog().k0(laboratoryActivity, ChannelReader.CHANNEL_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(LaboratoryActivity laboratoryActivity, View view) {
        new LabStreamingDialog().k0(laboratoryActivity, "stream");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(LaboratoryActivity laboratoryActivity, View view) {
        new LabHttpHostDialog().k0(laboratoryActivity, "host");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(LaboratoryActivity laboratoryActivity, View view) {
        com.tn.lib.widget.toast.core.h.f41479a.l("Cold start coming");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(laboratoryActivity), null, null, new LaboratoryActivity$onCreate$9$1(laboratoryActivity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(View view) {
        com.tn.lib.widget.toast.core.h.f41479a.l("js调试ON 当次进程有效");
        WebView.setWebContentsDebuggingEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(LaboratoryActivity laboratoryActivity, View view) {
        new LabLaneDialog().k0(laboratoryActivity, "lane");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(LaboratoryActivity laboratoryActivity, View view) {
        new LabWebTestDialog().k0(laboratoryActivity, "webTest");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object P0(Context context, Continuation continuation) throws Throwable {
        LaboratoryActivity$restartApp$1 laboratoryActivity$restartApp$1;
        if (continuation instanceof LaboratoryActivity$restartApp$1) {
            laboratoryActivity$restartApp$1 = (LaboratoryActivity$restartApp$1) continuation;
            int i11 = laboratoryActivity$restartApp$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                laboratoryActivity$restartApp$1.label = i11 - Integer.MIN_VALUE;
            } else {
                laboratoryActivity$restartApp$1 = new LaboratoryActivity$restartApp$1(this, continuation);
            }
        } else {
            laboratoryActivity$restartApp$1 = new LaboratoryActivity$restartApp$1(this, continuation);
        }
        Object obj = laboratoryActivity$restartApp$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = laboratoryActivity$restartApp$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            laboratoryActivity$restartApp$1.L$0 = context;
            laboratoryActivity$restartApp$1.label = 1;
            if (kotlinx.coroutines.u0.a(2000L, laboratoryActivity$restartApp$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            context = (Context) laboratoryActivity$restartApp$1.L$0;
            ResultKt.b(obj);
        }
        com.transsion.baselib.report.l.f43359a.l();
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        Intrinsics.e(launchIntentForPackage);
        launchIntentForPackage.addFlags(ASTNode.DEOP);
        context.startActivity(launchIntentForPackage);
        Process.killProcess(Process.myPid());
        System.exit(0);
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((fw.f) getMViewBinding()).f62632b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.x0(this.f56843a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62641k.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.y0(this.f56816a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62645o.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.H0(this.f56844a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62633c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.I0(this.f56846a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62639i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.J0(this.f56848a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62634d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.K0(this.f56849a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62646p.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.L0(this.f56851a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62638h.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.M0(this.f56854a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62640j.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.N0(this.f56856a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62636f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.O0(view);
            }
        });
        ((fw.f) getMViewBinding()).f62648r.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.z0(this.f56860a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62644n.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.A0(this.f56862a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62649s.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.B0(view);
            }
        });
        ((fw.f) getMViewBinding()).f62642l.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.C0(this.f56866a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62643m.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.D0(this.f56868a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62637g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.E0(this.f56870a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62647q.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.F0(this.f56872a, view);
            }
        });
        ((fw.f) getMViewBinding()).f62635e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaboratoryActivity.G0(this.f56813a, view);
            }
        });
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public fw.f getViewBinding() {
        fw.f fVarC = fw.f.c(getLayoutInflater());
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }
}
