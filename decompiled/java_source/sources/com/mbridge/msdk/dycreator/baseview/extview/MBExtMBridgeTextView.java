package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBExtMBridgeTextView extends MBridgeTextView implements InterBase {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f34672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, Boolean> f34673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34674d;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtMBridgeTextView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34675a;

        static {
            int[] iArr = new int[c.values().length];
            f34675a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34675a[c.text.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34675a[c.ellipsize.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34675a[c.singleLine.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34675a[c.lines.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34675a[c.drawableLeft.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34675a[c.drawablePadding.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34675a[c.fadingEdge.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34675a[c.scrollHorizontally.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34675a[c.textColor.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34675a[c.textSize.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34675a[c.visibility.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34675a[c.background.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f34675a[c.textStyle.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f34675a[c.style.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f34675a[c.contentDescription.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f34675a[c.tag.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f34675a[c.gravity.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f34675a[c.padding.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f34675a[c.paddingTop.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f34675a[c.paddingBottom.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f34675a[c.paddingLeft.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f34675a[c.paddingRight.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f34675a[c.paddingStart.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f34675a[c.paddingEnd.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f34675a[c.maxLength.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f34675a[c.layout_width.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f34675a[c.layout_height.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    public MBExtMBridgeTextView(Context context) {
        super(context);
        this.f34674d = "";
    }

    public MBExtMBridgeTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context);
        this.f34674d = "";
        try {
            this.f34672b = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f34672b, this);
        } catch (Exception e11) {
            o0.b("MBExtMBridgeTextView", e11.getMessage());
        }
    }

    public MBExtMBridgeTextView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34674d = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                int i12 = AnonymousClass1.f34675a[cVar.ordinal()];
                if (i12 == 27) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue.startsWith("wrap")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue);
                    }
                } else if (i12 == 28) {
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                        layoutParams.height = -1;
                    } else if (attributeValue2.startsWith("wrap")) {
                        layoutParams.height = -2;
                    } else {
                        layoutParams.height = b.a().a(attributeValue2);
                    }
                }
            }
        }
        return layoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f34672b;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34672b.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34672b;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34672b.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34672b;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34672b.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34672b;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34672b.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34672b;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34672b.get("mbridgeStrategy");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34673c;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34673c.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34674d);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34673c;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34673c.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34674d);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        int iA = 0;
        int iA2 = 0;
        int iA3 = 0;
        int iA4 = 0;
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                cVar.toString();
                String[] strArrSplit = null;
                switch (AnonymousClass1.f34675a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i11);
                        if (attributeValue.startsWith("@+id/")) {
                            setId(attributeValue.substring(5).hashCode());
                        }
                        break;
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue2)) {
                            if (attributeValue2.startsWith("@string/")) {
                                setText(b.a().f(attributeSet.getAttributeValue(i11)));
                            } else {
                                setText(attributeValue2);
                            }
                        }
                        break;
                    case 3:
                        String attributeValue3 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue3)) {
                            if (attributeValue3.equals(TtmlNode.END)) {
                                setEllipsize(TextUtils.TruncateAt.END);
                            }
                            if (attributeValue3.equals("start")) {
                                setEllipsize(TextUtils.TruncateAt.START);
                            }
                            if (attributeValue3.equals("middle")) {
                                setEllipsize(TextUtils.TruncateAt.MIDDLE);
                            }
                            if (attributeValue3.equals("marquee")) {
                                setEllipsize(TextUtils.TruncateAt.MARQUEE);
                            }
                        }
                        break;
                    case 4:
                        setSingleLine(attributeSet.getAttributeBooleanValue(i11, false));
                        break;
                    case 5:
                        setLines(attributeSet.getAttributeIntValue(i11, 1));
                        break;
                    case 6:
                        String attributeValue4 = attributeSet.getAttributeValue(i11);
                        String strSubstring = attributeValue4.startsWith("@drawable/") ? attributeValue4.substring(10) : "";
                        if (!TextUtils.isEmpty(strSubstring)) {
                            Drawable drawable = getResources().getDrawable(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), strSubstring, "drawable"));
                            drawable.setBounds(0, 0, t0.a(getContext(), 14.0f), t0.a(getContext(), 14.0f));
                            setCompoundDrawables(drawable, null, null, null);
                        }
                        break;
                    case 7:
                        setCompoundDrawablePadding(b.a().a(attributeSet.getAttributeValue(i11)));
                        break;
                    case 8:
                        setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i11, false));
                        break;
                    case 9:
                        setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i11, false));
                        break;
                    case 10:
                        setTextColor(b.a().d(attributeSet.getAttributeValue(i11)));
                        break;
                    case 11:
                        String attributeValue5 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue5)) {
                            setTextSize(b.a().a(attributeValue5));
                        }
                        break;
                    case 12:
                        String attributeValue6 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue6)) {
                            if (attributeValue6.equals("invisible")) {
                                setVisibility(4);
                            } else if (attributeValue6.equalsIgnoreCase("gone")) {
                                setVisibility(8);
                            }
                        }
                        break;
                    case 13:
                        String attributeValue7 = attributeSet.getAttributeValue(i11);
                        if (attributeValue7.startsWith(Utils.SEPARATOR)) {
                            try {
                                strArrSplit = attributeValue7.split("-");
                                break;
                            } catch (Exception unused) {
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
                        } else {
                            if (attributeValue7.startsWith("@drawable/")) {
                                attributeValue7 = attributeValue7.substring(10);
                            }
                            setBackgroundResource(getResources().getIdentifier(attributeValue7, "drawable", getContext().getPackageName()));
                        }
                        break;
                    case 14:
                        if (TtmlNode.BOLD.equalsIgnoreCase(attributeSet.getAttributeValue(i11))) {
                            setTypeface(Typeface.defaultFromStyle(1));
                        }
                        break;
                    case 15:
                        String attributeValue8 = attributeSet.getAttributeValue(i11);
                        String strSubstring2 = attributeValue8.substring(attributeValue8.indexOf("/") + 1);
                        setTextAppearance(getContext(), b.a().c("R.style." + strSubstring2));
                        break;
                    case 16:
                        String attributeValue9 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue9)) {
                            CharSequence charSequence = (String) com.mbridge.msdk.dycreator.utils.b.f34895a.get(attributeValue9.substring(8));
                            if (!TextUtils.isEmpty(charSequence)) {
                                setContentDescription(charSequence);
                            }
                        }
                        break;
                    case 17:
                        String attributeValue10 = attributeSet.getAttributeValue(i11);
                        if (!TextUtils.isEmpty(attributeValue10)) {
                            String str = com.mbridge.msdk.dycreator.utils.b.f34895a.get(attributeValue10.substring(8));
                            if (!TextUtils.isEmpty(str)) {
                                setTag(str);
                            }
                        }
                        break;
                    case 18:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i11)));
                        break;
                    case 19:
                        int iA5 = b.a().a(attributeSet.getAttributeValue(i11));
                        setPadding(iA5, iA5, iA5, iA5);
                        break;
                    case 20:
                        iA4 = b.a().a(attributeSet.getAttributeValue(i11));
                        setPadding(iA, iA4, iA2, iA3);
                        break;
                    case 21:
                        iA3 = b.a().a(attributeSet.getAttributeValue(i11));
                        setPadding(iA, iA4, iA2, iA3);
                        break;
                    case 22:
                        iA = b.a().a(attributeSet.getAttributeValue(i11));
                        setPadding(iA, iA4, iA2, iA3);
                        break;
                    case 23:
                        iA2 = b.a().a(attributeSet.getAttributeValue(i11));
                        setPadding(iA, iA4, iA2, iA3);
                        break;
                    case 24:
                        setPadding(b.a().a(attributeSet.getAttributeValue(i11)), iA4, iA2, iA3);
                        break;
                    case 25:
                        setPadding(iA, iA4, b.a().a(attributeSet.getAttributeValue(i11)), iA3);
                        break;
                    case 26:
                        setFilters(new InputFilter[]{new InputFilter.LengthFilter(b.a().a(attributeSet.getAttributeValue(i11)))});
                        break;
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34673c = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f34674d = campaignEx.getCampaignUnitId();
        }
    }
}
