package com.mbridge.msdk.dycreator.utils;

import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBHorizontalScrollView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.utils.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0478a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34894a;

        static {
            int[] iArr = new int[com.mbridge.msdk.dycreator.engine.c.values().length];
            f34894a = iArr;
            try {
                iArr[com.mbridge.msdk.dycreator.engine.c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.visibility.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.padding.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.paddingTop.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.paddingBottom.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.paddingLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.paddingRight.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.paddingStart.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.paddingEnd.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.orientation.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.text.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.ellipsize.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.fadingEdge.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.scrollHorizontally.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.textColor.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.textSize.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.textStyle.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.style.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.tag.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.gravity.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.verticalSpacing.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.numColumns.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.splitMotionEvents.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.cacheColorHint.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.horizontalSpacing.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.singleLine.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.lines.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.drawableLeft.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.drawablePadding.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.src.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.scaleType.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.divider.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.scrollbars.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f34894a[com.mbridge.msdk.dycreator.engine.c.listSelector.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
        }
    }

    private static void a() {
    }

    public static void a(View view, AttributeSet attributeSet) {
        if (view == null || attributeSet == null) {
            return;
        }
        try {
            HashMap<String, com.mbridge.msdk.dycreator.engine.c> mapC = com.mbridge.msdk.dycreator.engine.b.a().c();
            if (mapC != null && !mapC.isEmpty()) {
                int attributeCount = attributeSet.getAttributeCount();
                int iA = 0;
                int iA2 = 0;
                int iA3 = 0;
                int iA4 = 0;
                for (int i11 = 0; i11 < attributeCount; i11++) {
                    com.mbridge.msdk.dycreator.engine.c cVar = mapC.get(attributeSet.getAttributeName(i11));
                    if (cVar != null) {
                        switch (C0478a.f34894a[cVar.ordinal()]) {
                            case 1:
                                b(view, attributeSet.getAttributeValue(i11));
                                break;
                            case 2:
                                c(view, attributeSet.getAttributeValue(i11));
                                break;
                            case 3:
                                d(view, attributeSet.getAttributeValue(i11));
                                break;
                            case 4:
                                a(view, attributeSet.getAttributeValue(i11));
                                break;
                            case 5:
                                int iA5 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11));
                                view.setPadding(iA5, iA5, iA5, iA5);
                                break;
                            case 6:
                                iA2 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11));
                                view.setPadding(iA, iA2, iA3, iA4);
                                break;
                            case 7:
                                iA4 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11));
                                view.setPadding(iA, iA2, iA3, iA4);
                                break;
                            case 8:
                                iA = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11));
                                view.setPadding(iA, iA2, iA3, iA4);
                                break;
                            case 9:
                                iA3 = com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11));
                                view.setPadding(iA, iA2, iA3, iA4);
                                break;
                            case 10:
                                view.setPadding(com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11)), iA2, iA3, iA4);
                                break;
                            case 11:
                                view.setPadding(iA, iA2, com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11)), iA4);
                                break;
                        }
                        if (view instanceof EditText) {
                            a();
                        } else if (view instanceof Button) {
                            a((Button) view, cVar, attributeSet, i11);
                        } else if (view instanceof TextView) {
                            a((TextView) view, cVar, attributeSet, i11);
                        } else if (view instanceof ImageView) {
                            a((ImageView) view, cVar, attributeSet, i11);
                        } else if (view instanceof ListView) {
                            a((ListView) view, cVar, attributeSet, i11);
                        } else if (view instanceof GridView) {
                            a((GridView) view, cVar, attributeSet, i11);
                        } else if (view instanceof ScrollView) {
                            a((ScrollView) view, cVar, attributeSet, i11);
                        } else if (view instanceof PlayerView) {
                            a((PlayerView) view, cVar, attributeSet, i11);
                        } else if (view instanceof MBHorizontalScrollView) {
                            a((MBHorizontalScrollView) view, cVar, attributeSet, i11);
                        } else if (view instanceof LinearLayout) {
                            a((LinearLayout) view, cVar, attributeSet, i11);
                        } else if (view instanceof RelativeLayout) {
                            a((RelativeLayout) view, cVar, attributeSet, i11);
                        } else if (view instanceof FrameLayout) {
                            a((FrameLayout) view, cVar, attributeSet, i11);
                        }
                    }
                }
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(View view, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String str2 = b.f34895a.get(str.substring(8));
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            view.setContentDescription(str2);
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(Button button, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            switch (C0478a.f34894a[cVar.ordinal()]) {
                case 13:
                    button.setText(com.mbridge.msdk.dycreator.engine.b.a().f(attributeSet.getAttributeValue(i11)));
                    break;
                case 14:
                    if (attributeSet.getAttributeBooleanValue(i11, false)) {
                        button.setFocusable(true);
                        button.setFocusableInTouchMode(true);
                        button.setSingleLine(true);
                        button.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        button.setMarqueeRepeatLimit(1000);
                        button.setSingleLine();
                        button.setHorizontallyScrolling(true);
                        button.requestFocus();
                    }
                    break;
                case 15:
                    button.setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i11, false));
                    break;
                case 16:
                    button.setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i11, false));
                    break;
                case 17:
                    button.setTextColor(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i11)));
                    break;
                case 18:
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        button.setTextSize(com.mbridge.msdk.dycreator.engine.b.a().a(attributeValue));
                    }
                    break;
                case 19:
                    if (TtmlNode.BOLD.equalsIgnoreCase(attributeSet.getAttributeValue(i11))) {
                        button.setTypeface(Typeface.defaultFromStyle(1));
                    }
                    break;
                case 20:
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    String strSubstring = attributeValue2.substring(attributeValue2.indexOf("/") + 1);
                    button.setTextAppearance(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.dycreator.engine.b.a().c("R.style." + strSubstring));
                    break;
                case 21:
                    String attributeValue3 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue3)) {
                        String str = b.f34895a.get(attributeValue3.substring(8));
                        if (!TextUtils.isEmpty(str)) {
                            button.setTag(str);
                        }
                    }
                    break;
                case 22:
                    button.setGravity(1);
                    break;
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(FrameLayout frameLayout, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
    }

    private static void a(GridView gridView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            int i12 = C0478a.f34894a[cVar.ordinal()];
            if (i12 != 1) {
                switch (i12) {
                    case 23:
                        gridView.setVerticalSpacing(e.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11))));
                        break;
                    case 24:
                        gridView.setNumColumns(attributeSet.getAttributeIntValue(i11, 2));
                        break;
                    case 25:
                        gridView.setMotionEventSplittingEnabled(!attributeSet.getAttributeValue(i11).equals("false"));
                        break;
                    case 26:
                        gridView.setCacheColorHint(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i11)));
                        break;
                    case 27:
                        gridView.setHorizontalSpacing(e.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11))));
                        break;
                }
            } else {
                String attributeValue = attributeSet.getAttributeValue(i11);
                if (attributeValue.startsWith("@+id/")) {
                    gridView.setId(attributeValue.substring(5).hashCode());
                }
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(ImageView imageView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            int i12 = C0478a.f34894a[cVar.ordinal()];
            if (i12 == 32) {
                com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11), imageView);
            } else if (i12 == 33) {
                String attributeValue = attributeSet.getAttributeValue(i11);
                if (!TextUtils.isEmpty(attributeValue)) {
                    if (attributeValue.equals("fitXY")) {
                        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    } else if (attributeValue.equals("centerInside")) {
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    } else if (attributeValue.equals("centerCrop")) {
                        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    } else if (attributeValue.equals("fitStart")) {
                        imageView.setScaleType(ImageView.ScaleType.FIT_START);
                    }
                }
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(LinearLayout linearLayout, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            if (C0478a.f34894a[cVar.ordinal()] == 12) {
                if ("horizontal".equalsIgnoreCase(attributeSet.getAttributeValue(i11))) {
                    linearLayout.setOrientation(0);
                } else {
                    linearLayout.setOrientation(1);
                }
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(ListView listView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            int i12 = C0478a.f34894a[cVar.ordinal()];
            if (i12 == 25) {
                listView.setMotionEventSplittingEnabled(!attributeSet.getAttributeValue(i11).equals("false"));
                return;
            }
            if (i12 == 26) {
                listView.setCacheColorHint(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i11)));
                return;
            }
            switch (i12) {
                case 34:
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue) && attributeValue.startsWith("@null")) {
                        listView.setDivider(null);
                        break;
                    }
                    break;
                case 35:
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue2)) {
                        if (attributeValue2.equals("none")) {
                            listView.setVerticalScrollBarEnabled(false);
                        }
                        if (attributeValue2.equals("false")) {
                            listView.setScrollbarFadingEnabled(false);
                        }
                    }
                    break;
                case 36:
                    String attributeValue3 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue3)) {
                        listView.setSelector(com.mbridge.msdk.dycreator.engine.b.a().d(attributeValue3));
                    }
                    break;
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(RelativeLayout relativeLayout, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            if (C0478a.f34894a[cVar.ordinal()] != 22) {
                return;
            }
            relativeLayout.setGravity(com.mbridge.msdk.dycreator.engine.b.a().b(attributeSet.getAttributeValue(i11)));
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(ScrollView scrollView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
    }

    private static void a(TextView textView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            int i12 = C0478a.f34894a[cVar.ordinal()];
            switch (i12) {
                case 13:
                    String attributeValue = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        if (!attributeValue.startsWith("@string/")) {
                            textView.setText(attributeValue);
                        } else {
                            textView.setText(com.mbridge.msdk.dycreator.engine.b.a().f(attributeSet.getAttributeValue(i11)));
                        }
                    }
                    break;
                case 14:
                    String attributeValue2 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue2)) {
                        if (attributeValue2.equals(TtmlNode.END)) {
                            textView.setEllipsize(TextUtils.TruncateAt.END);
                        }
                        if (attributeValue2.equals("start")) {
                            textView.setEllipsize(TextUtils.TruncateAt.START);
                        }
                        if (attributeValue2.equals("middle")) {
                            textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                        }
                        if (attributeValue2.equals("marquee")) {
                            textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        }
                    }
                    break;
                case 15:
                    textView.setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i11, false));
                    break;
                case 16:
                    textView.setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i11, false));
                    break;
                case 17:
                    textView.setTextColor(com.mbridge.msdk.dycreator.engine.b.a().d(attributeSet.getAttributeValue(i11)));
                    break;
                case 18:
                    String attributeValue3 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue3)) {
                        textView.setTextSize(com.mbridge.msdk.dycreator.engine.b.a().a(attributeValue3));
                    }
                    break;
                case 19:
                    if (TtmlNode.BOLD.equalsIgnoreCase(attributeSet.getAttributeValue(i11))) {
                        textView.setTypeface(Typeface.defaultFromStyle(1));
                    }
                    break;
                case 20:
                    String attributeValue4 = attributeSet.getAttributeValue(i11);
                    String strSubstring = attributeValue4.substring(attributeValue4.indexOf("/") + 1);
                    com.mbridge.msdk.dycreator.engine.b.a().c("R.style." + strSubstring);
                    break;
                case 21:
                    String attributeValue5 = attributeSet.getAttributeValue(i11);
                    if (!TextUtils.isEmpty(attributeValue5)) {
                        String str = b.f34895a.get(attributeValue5.substring(8));
                        if (!TextUtils.isEmpty(str)) {
                            textView.setTag(str);
                            break;
                        }
                    }
                    break;
                case 22:
                    textView.setGravity(com.mbridge.msdk.dycreator.engine.b.a().b(attributeSet.getAttributeValue(i11)));
                    break;
                default:
                    switch (i12) {
                        case 28:
                            textView.setSingleLine(attributeSet.getAttributeBooleanValue(i11, false));
                            break;
                        case NOTIFICATION_REDIRECT_VALUE:
                            textView.setLines(attributeSet.getAttributeIntValue(i11, 1));
                            break;
                        case 30:
                            String attributeValue6 = attributeSet.getAttributeValue(i11);
                            String strSubstring2 = attributeValue6.startsWith("@drawable/") ? attributeValue6.substring(10) : "";
                            if (!TextUtils.isEmpty(strSubstring2)) {
                                textView.setCompoundDrawables(textView.getResources().getDrawable(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), strSubstring2, "drawable")), null, null, null);
                            }
                            break;
                        case TEMPLATE_HTML_SIZE_VALUE:
                            textView.setCompoundDrawablePadding(com.mbridge.msdk.dycreator.engine.b.a().a(attributeSet.getAttributeValue(i11)));
                            break;
                        default:
                            break;
                    }
                    break;
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void a(MBHorizontalScrollView mBHorizontalScrollView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
    }

    private static void a(PlayerView playerView, com.mbridge.msdk.dycreator.engine.c cVar, AttributeSet attributeSet, int i11) {
        try {
            if (C0478a.f34894a[cVar.ordinal()] == 12) {
                if ("horizontal".equalsIgnoreCase(attributeSet.getAttributeValue(i11))) {
                    playerView.setOrientation(0);
                } else {
                    playerView.setOrientation(1);
                }
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027 A[Catch: Exception -> 0x0011, TRY_LEAVE, TryCatch #0 {Exception -> 0x0011, blocks: (B:2:0x0000, B:4:0x000a, B:11:0x0021, B:13:0x0027, B:8:0x0013, B:10:0x001b), top: B:17:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
    private static void b(View view, String str) {
        String strSubstring;
        try {
            String str2 = "";
            if (!str.startsWith("@+id/")) {
                if (str.startsWith("@id/")) {
                    strSubstring = str.substring(4);
                }
                if (TextUtils.isEmpty(str2)) {
                }
                view.setId(str2.hashCode());
            }
            strSubstring = str.substring(5);
            str2 = strSubstring;
            if (TextUtils.isEmpty(str2)) {
                view.setId(str2.hashCode());
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void c(View view, String str) {
        String[] strArrSplit;
        try {
            if (str.startsWith(Utils.SEPARATOR)) {
                try {
                    strArrSplit = str.split("-");
                } catch (Exception unused) {
                    strArrSplit = null;
                }
                if (strArrSplit != null && strArrSplit.length <= 2) {
                    view.setBackgroundColor(com.mbridge.msdk.dycreator.engine.b.a().d(str));
                } else if (strArrSplit != null && strArrSplit.length == 3) {
                    GradientDrawable gradientDrawableA = com.mbridge.msdk.dycreator.engine.b.a().a(strArrSplit);
                    if (gradientDrawableA != null) {
                        view.setBackground(gradientDrawableA);
                    } else {
                        view.setBackgroundColor(com.mbridge.msdk.dycreator.engine.b.a().d(str));
                    }
                }
            } else if (str.startsWith("@color/")) {
                view.setBackgroundColor(com.mbridge.msdk.dycreator.engine.b.a().d(str));
            } else if (str.startsWith("@drawable/")) {
                view.setBackgroundResource(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getIdentifier(str.substring(10), "drawable", com.mbridge.msdk.foundation.controller.c.m().d().getPackageName()));
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }

    private static void d(View view, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (str.equals("invisible")) {
                    view.setVisibility(4);
                } else if (str.equalsIgnoreCase("gone")) {
                    view.setVisibility(8);
                }
            }
        } catch (Exception e11) {
            o0.b("AttributeUtil", e11.getMessage());
        }
    }
}
