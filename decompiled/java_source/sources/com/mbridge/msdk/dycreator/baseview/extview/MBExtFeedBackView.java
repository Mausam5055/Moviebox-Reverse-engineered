package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.widget.FeedBackButton;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBExtFeedBackView extends FeedBackButton implements InterBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f34646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Boolean> f34647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34648c;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtFeedBackView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34649a;

        static {
            int[] iArr = new int[c.values().length];
            f34649a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34649a[c.text.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34649a[c.ellipsize.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34649a[c.singleLine.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34649a[c.lines.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34649a[c.drawableLeft.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34649a[c.drawablePadding.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34649a[c.fadingEdge.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34649a[c.scrollHorizontally.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34649a[c.textColor.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34649a[c.textSize.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34649a[c.visibility.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34649a[c.background.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f34649a[c.textStyle.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f34649a[c.style.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f34649a[c.contentDescription.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f34649a[c.tag.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f34649a[c.gravity.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f34649a[c.padding.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f34649a[c.paddingTop.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f34649a[c.paddingBottom.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f34649a[c.paddingLeft.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f34649a[c.paddingRight.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f34649a[c.paddingStart.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f34649a[c.paddingEnd.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f34649a[c.layout_width.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f34649a[c.layout_height.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public MBExtFeedBackView(Context context) {
        super(context);
        this.f34648c = "";
    }

    public MBExtFeedBackView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f34648c = "";
        try {
            this.f34646a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f34646a, this);
        } catch (Exception e11) {
            o0.b("MBExtFeedBackView", e11.getMessage());
        }
    }

    public MBExtFeedBackView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34648c = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i11));
            if (cVar != null) {
                int i12 = AnonymousClass1.f34649a[cVar.ordinal()];
                if (i12 == 26) {
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue.startsWith("wrap")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue);
                    }
                } else if (i12 == 27) {
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
        Map<String, String> map = this.f34646a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f34646a.get("mbridgeAction");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f34646a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f34646a.get("mbridgeData");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f34646a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f34646a.get("mbridgeEffect");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f34646a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f34646a.get("mbridgeReport");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f34646a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f34646a.get("mbridgeStrategy");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f34647b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f34647b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f34648c);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f34647b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f34647b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f34648c);
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
                switch (AnonymousClass1.f34649a[cVar.ordinal()]) {
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
                            setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i11)));
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
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f34647b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f34648c = campaignEx.getCampaignUnitId();
        }
    }
}
