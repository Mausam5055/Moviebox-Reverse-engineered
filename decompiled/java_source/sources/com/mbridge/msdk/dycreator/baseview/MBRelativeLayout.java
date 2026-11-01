package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
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
public class MBRelativeLayout extends RelativeLayout implements InterBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f34492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f34493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, String> f34494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, Boolean> f34495d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34496e;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.MBRelativeLayout$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34497a;

        static {
            int[] iArr = new int[c.values().length];
            f34497a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34497a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34497a[c.layout_centerHorizontal.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34497a[c.layout_alignParentBottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34497a[c.layout_alignParentTop.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34497a[c.layout_centerVertical.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34497a[c.layout_below.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34497a[c.layout_above.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34497a[c.layout_toLeftOf.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34497a[c.layout_toRightOf.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34497a[c.layout_toEndOf.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34497a[c.layout_margin.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34497a[c.layout_marginLeft.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f34497a[c.layout_marginRight.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f34497a[c.layout_marginTop.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f34497a[c.layout_marginBottom.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f34497a[c.layout_alignParentRight.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f34497a[c.layout_alignParentLeft.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f34497a[c.layout_alignTop.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f34497a[c.layout_alignLeft.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f34497a[c.layout_alignRight.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f34497a[c.layout_alignBottom.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f34497a[c.layout_centerInParent.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f34497a[c.layout_alignParentEnd.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
        }
    }

    public MBRelativeLayout(Context context) {
        super(context);
        this.f34496e = "";
    }

    public MBRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f34496e = "";
        try {
            this.f34494c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f34494c, this);
        } catch (Exception e11) {
            o0.b("MBRelativeLayouts", e11.getMessage());
        }
    }

    public MBRelativeLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34496e = "";
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public RelativeLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                switch (AnonymousClass1.f34497a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i11);
                        if (attributeValue.startsWith("fill") || attributeValue.startsWith("match")) {
                            layoutParams.width = -1;
                        } else if (attributeValue.startsWith("w")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue);
                        }
                        break;
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i11);
                        if (attributeValue2.startsWith("fill") || attributeValue2.startsWith("match")) {
                            layoutParams.height = -1;
                        } else if (attributeValue2.startsWith("wrap")) {
                            layoutParams.height = -2;
                        } else {
                            layoutParams.height = b.a().a(attributeValue2);
                        }
                        break;
                    case 3:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(14, -1);
                        }
                        break;
                    case 4:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(12, -1);
                        }
                        break;
                    case 5:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(10, -1);
                        }
                        break;
                    case 6:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(15, -1);
                        }
                        break;
                    case 7:
                        String attributeValue3 = attributeSet.getAttributeValue(i11);
                        if (attributeValue3.startsWith("@+id")) {
                            layoutParams.addRule(3, attributeValue3.substring(5).hashCode());
                        }
                        break;
                    case 8:
                        String attributeValue4 = attributeSet.getAttributeValue(i11);
                        if (attributeValue4.startsWith("@+id")) {
                            layoutParams.addRule(2, attributeValue4.substring(5).hashCode());
                        }
                        break;
                    case 9:
                        String attributeValue5 = attributeSet.getAttributeValue(i11);
                        if (attributeValue5.startsWith("@+id")) {
                            layoutParams.addRule(0, attributeValue5.substring(5).hashCode());
                        }
                        break;
                    case 10:
                        String attributeValue6 = attributeSet.getAttributeValue(i11);
                        if (attributeValue6.startsWith("@+id")) {
                            layoutParams.addRule(1, attributeValue6.substring(5).hashCode());
                        }
                        break;
                    case 11:
                        String attributeValue7 = attributeSet.getAttributeValue(i11);
                        if (attributeValue7.startsWith("@+id")) {
                            layoutParams.addRule(17, attributeValue7.substring(5).hashCode());
                        }
                        break;
                    case 12:
                        int iA = b.a().a(attributeSet.getAttributeValue(i11));
                        layoutParams.setMargins(iA, iA, iA, iA);
                        break;
                    case 13:
                        layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i11));
                        break;
                    case 14:
                        layoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i11));
                        break;
                    case 15:
                        layoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i11));
                        break;
                    case 16:
                        layoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i11));
                        break;
                    case 17:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(11, -1);
                        }
                        break;
                    case 18:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(9, -1);
                        }
                        break;
                    case 19:
                        String attributeValue8 = attributeSet.getAttributeValue(i11);
                        if (attributeValue8.startsWith("@+id")) {
                            layoutParams.addRule(6, attributeValue8.substring(5).hashCode());
                        }
                        break;
                    case 20:
                        String attributeValue9 = attributeSet.getAttributeValue(i11);
                        if (attributeValue9.startsWith("@+id")) {
                            layoutParams.addRule(5, attributeValue9.substring(5).hashCode());
                        }
                        break;
                    case 21:
                        String attributeValue10 = attributeSet.getAttributeValue(i11);
                        if (attributeValue10.startsWith("@+id")) {
                            layoutParams.addRule(7, attributeValue10.substring(5).hashCode());
                        }
                        break;
                    case 22:
                        String attributeValue11 = attributeSet.getAttributeValue(i11);
                        if (attributeValue11.startsWith("@+id")) {
                            layoutParams.addRule(8, attributeValue11.substring(5).hashCode());
                        }
                        break;
                    case 23:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(13, -1);
                        }
                        break;
                    case 24:
                        if (attributeSet.getAttributeBooleanValue(i11, false)) {
                            layoutParams.addRule(21, -1);
                        }
                        break;
                }
            }
        }
        return layoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f34494c;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34494c.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34494c;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34494c.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34494c;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34494c.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34494c;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34494c.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34494c;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34494c.get("mbridgeStrategy");
    }

    public float getxInScreen() {
        return this.f34492a;
    }

    public float getyInScreen() {
        return this.f34493b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34495d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34495d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34496e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34495d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34495d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34496e);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f34492a = motionEvent.getRawX();
        this.f34493b = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        for (int i15 = 0; i15 < getChildCount(); i15++) {
            try {
                View childAt = getChildAt(i15);
                if (childAt instanceof MBLinearLayout) {
                    MBLinearLayout mBLinearLayout = (MBLinearLayout) childAt;
                    for (int i16 = 0; i16 < mBLinearLayout.getChildCount(); i16++) {
                    }
                }
            } catch (Exception e11) {
                o0.b("MBRelativeLayouts", e11.getMessage());
            }
        }
        super.onLayout(z10, i11, i12, i13, i14);
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34495d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f34496e = campaignEx.getCampaignUnitId();
        }
    }
}
