package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBHorizontalScrollView extends HorizontalScrollView implements InterBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f34464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Boolean> f34465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34466c;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.MBHorizontalScrollView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34467a;

        static {
            int[] iArr = new int[c.values().length];
            f34467a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34467a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34467a[c.layout_gravity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34467a[c.layout_marginLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34467a[c.layout_margin.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MBHorizontalScrollView(Context context) {
        super(context);
        this.f34466c = "";
    }

    public MBHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f34466c = "";
        try {
            this.f34464a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f34464a, this);
        } catch (Exception e11) {
            o0.b("MBHorizontalScrollView", e11.getMessage());
        }
    }

    public MBHorizontalScrollView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34466c = "";
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
        HashMap mapB = b.a().b();
        layoutParams.width = -2;
        layoutParams.height = -2;
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                int i12 = AnonymousClass1.f34467a[cVar.ordinal()];
                if (i12 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue.startsWith("w")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue);
                    }
                } else if (i12 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue2.startsWith("w")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.height = b.a().a(attributeValue2);
                    }
                } else if (i12 == 3) {
                    layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i11));
                } else if (i12 == 4) {
                    layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i11));
                } else if (i12 == 5) {
                    int iA = b.a().a(attributeSet.getAttributeValue(i11));
                    layoutParams.setMargins(iA, iA, iA, iA);
                }
            }
        }
        return layoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f34464a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34464a.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34464a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34464a.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34464a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34464a.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34464a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34464a.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34464a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34464a.get("mbridgeStrategy");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34465b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34465b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34466c);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34465b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34465b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34466c);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34465b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f34466c = campaignEx.getCampaignUnitId();
        }
    }
}
