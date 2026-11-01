package com.transsion.ad.test.ad_config;

import android.os.Bundle;
import com.transsion.ad.strategy.s;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ji.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdOtherConfigActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "getLogTag", "()Ljava/lang/String;", "Lji/v;", "a", "Lji/v;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdOtherConfigActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private v binding;

    @Override // oi.b
    public String getLogTag() {
        return "ad_";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        v vVarC = v.c(getLayoutInflater());
        this.binding = vVarC;
        v vVar = null;
        if (vVarC == null) {
            Intrinsics.z("binding");
            vVarC = null;
        }
        setContentView(vVarC.getRoot());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("genre = " + com.transsion.ad.strategy.d.f42231a.b());
        sb2.append("\n");
        sb2.append("\n");
        p pVar = p.f76266a;
        s sVar = s.f42244a;
        String str = "userCreateTime = " + pVar.a(Long.valueOf(sVar.b()), "yyyy-MM-dd HH:mm:ss");
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = "currentDate = " + pVar.a(Long.valueOf(jCurrentTimeMillis), "yyyy-MM-dd HH:mm:ss");
        String str3 = "newUserAdShieldHour = " + sVar.a() + " h";
        String str4 = "相差 = " + pVar.e(sVar.b(), jCurrentTimeMillis);
        String str5 = "isNewUser = " + sVar.c();
        sb2.append(str);
        sb2.append("\n");
        sb2.append(str2);
        sb2.append("\n");
        sb2.append(str3);
        sb2.append("\n");
        sb2.append(str4);
        sb2.append("\n");
        sb2.append(str5);
        sb2.append("\n");
        v vVar2 = this.binding;
        if (vVar2 == null) {
            Intrinsics.z("binding");
        } else {
            vVar = vVar2;
        }
        vVar.f66185b.setText(sb2.toString());
    }
}
