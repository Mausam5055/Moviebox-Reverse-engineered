package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.dycreator.utils.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBButton extends Button implements InterBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f34447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Boolean> f34448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34449c;

    public MBButton(Context context) {
        super(context);
        this.f34449c = "";
    }

    public MBButton(Context context, AttributeSet attributeSet) {
        super(context);
        this.f34449c = "";
        this.f34447a = c.a(context, attributeSet);
        a.a(this, attributeSet);
        c.a(this.f34447a, this);
    }

    public MBButton(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34449c = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f34447a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34447a.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34447a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34447a.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34447a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34447a.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34447a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34447a.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34447a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34447a.get("mbridgeStrategy");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34448b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34448b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34449c);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34448b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34448b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34449c);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34448b = c.a(str);
        if (campaignEx != null) {
            this.f34449c = campaignEx.getCampaignUnitId();
        }
    }
}
