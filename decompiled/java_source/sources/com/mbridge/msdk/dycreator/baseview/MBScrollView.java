package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBScrollView extends ScrollView implements InterBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f34499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Boolean> f34500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34501c;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.MBScrollView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34502a;

        static {
            int[] iArr = new int[c.values().length];
            f34502a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34502a[c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34502a[c.contentDescription.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34502a[c.fadingEdge.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34502a[c.visibility.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34502a[c.layout_marginBottom.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public MBScrollView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f34501c = "";
        this.f34499a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
        setAttributeSet(attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
        com.mbridge.msdk.dycreator.utils.c.a(this.f34499a, this);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                Log.e("MBscrollviewparam", cVar.toString());
            }
            if (cVar != null) {
                int i12 = AnonymousClass1.f34502a[cVar.ordinal()];
                if (i12 == 4) {
                    setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i11, false));
                } else if (i12 == 5) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        if (attributeValue.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                } else if (i12 == 6) {
                    layoutParamsGenerateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i11));
                }
            }
        }
        return layoutParamsGenerateDefaultLayoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f34499a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34499a.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34499a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34499a.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34499a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34499a.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34499a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34499a.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34499a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34499a.get("mbridgeStrategy");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34500b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34500b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34501c);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34500b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34500b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34501c);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                int i12 = AnonymousClass1.f34502a[cVar.ordinal()];
                if (i12 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (attributeValue.startsWith("@+id/")) {
                        setId(attributeValue.substring(5).hashCode());
                    }
                } else if (i12 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (attributeValue2.startsWith(Utils.SEPARATOR)) {
                        setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                    } else {
                        if (attributeValue2.startsWith("@drawable/")) {
                            attributeValue2 = attributeValue2.substring(10);
                        }
                        setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(getContext().getFilesDir().toString() + "/" + attributeValue2 + ".png")));
                    }
                } else if (i12 == 3) {
                    setContentDescription(attributeSet.getAttributeValue(i11));
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34500b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f34501c = campaignEx.getCampaignUnitId();
        }
    }
}
