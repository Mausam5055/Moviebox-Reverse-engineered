package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBExtMBRotationView extends MBRotationView implements InterBase {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<String, String> f34654q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Map<String, Boolean> f34655r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f34656s;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtMBRotationView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34657a;

        static {
            int[] iArr = new int[c.values().length];
            f34657a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34657a[c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34657a[c.contentDescription.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34657a[c.visibility.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34657a[c.layout_width.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34657a[c.layout_height.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34657a[c.layout_gravity.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34657a[c.layout_marginLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34657a[c.layout_margin.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public MBExtMBRotationView(Context context) {
        super(context);
        this.f34656s = "";
    }

    public MBExtMBRotationView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f34656s = "";
        try {
            this.f34654q = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f34654q, this);
        } catch (Exception e11) {
            o0.b("MBExtMBRotationView", e11.getMessage());
        }
    }

    public MBExtMBRotationView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34656s = "";
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
                switch (AnonymousClass1.f34657a[cVar.ordinal()]) {
                    case 5:
                        String attributeValue = attributeSet.getAttributeValue(i11);
                        if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                            layoutParams.width = -1;
                        } else if (attributeValue.startsWith("w")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue);
                        }
                        break;
                    case 6:
                        String attributeValue2 = attributeSet.getAttributeValue(i11);
                        if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                            layoutParams.width = -1;
                        } else if (attributeValue2.startsWith("w")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.height = b.a().a(attributeValue2);
                        }
                        break;
                    case 7:
                        layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i11));
                        break;
                    case 8:
                        layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i11));
                        break;
                    case 9:
                        int iA = b.a().a(attributeSet.getAttributeValue(i11));
                        layoutParams.setMargins(iA, iA, iA, iA);
                        break;
                }
            }
        }
        return layoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f34654q;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34654q.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34654q;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34654q.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34654q;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34654q.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34654q;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34654q.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34654q;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34654q.get("mbridgeStrategy");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34655r;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34655r.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34656s);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34655r;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34655r.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34656s);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArrSplit;
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                int i12 = AnonymousClass1.f34657a[cVar.ordinal()];
                if (i12 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (attributeValue.startsWith("@+id/")) {
                        setId(attributeValue.substring(5).hashCode());
                    }
                } else if (i12 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (attributeValue2.startsWith(Utils.SEPARATOR)) {
                        try {
                            strArrSplit = attributeValue2.split("-");
                        } catch (Exception unused) {
                            strArrSplit = null;
                        }
                        if (strArrSplit != null && strArrSplit.length <= 2) {
                            setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                        } else if (strArrSplit == null || strArrSplit.length != 3) {
                            setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                        } else {
                            try {
                                GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArrSplit[2]), new int[]{Color.parseColor(strArrSplit[0]), Color.parseColor(strArrSplit[1])});
                                gradientDrawable.setGradientType(0);
                                setBackground(gradientDrawable);
                            } catch (Exception unused2) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                            }
                        }
                    } else if (attributeValue2.startsWith("@color/")) {
                        setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
                    } else {
                        if (attributeValue2.startsWith("@drawable/")) {
                            attributeValue2 = attributeValue2.substring(10);
                        }
                        setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(getContext().getFilesDir().toString() + "/" + attributeValue2 + ".png")));
                    }
                } else if (i12 == 3) {
                    setContentDescription(attributeSet.getAttributeValue(i11));
                } else if (i12 == 4) {
                    String attributeValue3 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue3)) {
                        if (attributeValue3.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue3.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34655r = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f34656s = campaignEx.getCampaignUnitId();
        }
    }
}
