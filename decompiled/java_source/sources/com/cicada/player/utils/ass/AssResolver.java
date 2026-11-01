package com.cicada.player.utils.ass;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class AssResolver {
    private static final String TAG = "AssResolver";
    public static final String TEXT_PATTERN = "\\{[^\\{]+\\}";
    public static final Pattern pattern = Pattern.compile(TEXT_PATTERN);
    private AssHeader mAssHeader;
    private TextViewPool mTextViewPool;
    private int videoDisplayWidth = -1;
    private int videoDisplayHeight = -1;

    private static class ContentAttribute {
        public String fontName;
        public double fontSize;
        public int mBackColour;
        public boolean mBold;
        public int mBorderStyle;
        public boolean mItalic;
        public int mOutlineColour;
        public double mOutlineWidth;
        public int mPrimaryColour;
        public int mSecondaryColour;
        public double mShadow;
        public boolean mStrikeOut;
        public boolean mUnderline;
        public String overrideStyle;
        public String text;

        private ContentAttribute() {
        }

        public String toString() {
            return "ContentAttribute{text='" + this.text + "', overrideStyle='" + this.overrideStyle + "', fontName='" + this.fontName + "', fontSize=" + this.fontSize + ", mPrimaryColour=" + this.mPrimaryColour + ", mSecondaryColour=" + this.mSecondaryColour + ", mBold=" + this.mBold + ", mItalic=" + this.mItalic + ", mUnderline=" + this.mUnderline + ", mStrikeOut=" + this.mStrikeOut + ", mOutlineColour=" + this.mOutlineColour + ", mOutlineWidth=" + this.mOutlineWidth + ", mBorderStyle=" + this.mBorderStyle + ", mBackColour=" + this.mBackColour + ", mShadow=" + this.mShadow + '}';
        }
    }

    private static class LocationAttribute {
        public int mAlignment;
        public double mAngle;
        public double mScaleX;
        public double mScaleY;
        public int marginL;
        public int marginR;
        public int marginV;
        public double posX;
        public double posY;

        private LocationAttribute() {
        }
    }

    public AssResolver(Context context) {
        this.mTextViewPool = new TextViewPool(context);
    }

    private String convertRgbColor(String str) {
        if (str.length() == 8) {
            return str.substring(6, 8) + str.substring(4, 6) + str.substring(2, 4);
        }
        return str.substring(4, 6) + str.substring(2, 4) + str.substring(0, 2);
    }

    private void fillContentAttribute(AssStyle assStyle, LinkedList<ContentAttribute> linkedList, LocationAttribute locationAttribute) {
        Map<String, Object> overrideStyle;
        int size = linkedList.size();
        for (int i11 = 0; i11 < size; i11++) {
            ContentAttribute contentAttribute = linkedList.get(i11);
            contentAttribute.text = contentAttribute.text.replace("\\N", "\n").replace("\\n", "\n");
            contentAttribute.fontName = assStyle.mFontName;
            contentAttribute.fontSize = scaleYSize(assStyle.mFontSize);
            contentAttribute.mBold = assStyle.mBold == 1;
            contentAttribute.mItalic = assStyle.mItalic == 1;
            contentAttribute.mStrikeOut = assStyle.mStrikeOut == 1;
            contentAttribute.mUnderline = assStyle.mUnderline == 1;
            contentAttribute.mBorderStyle = assStyle.mBorderStyle;
            contentAttribute.mOutlineWidth = scaleYSize(assStyle.mOutline);
            contentAttribute.mShadow = scaleYSize(assStyle.mShadow);
            contentAttribute.mBackColour = rgbaToArgb(assStyle.mBackColour);
            contentAttribute.mOutlineColour = rgbaToArgb(assStyle.mOutlineColour);
            contentAttribute.mPrimaryColour = rgbaToArgb(assStyle.mPrimaryColour);
            contentAttribute.mSecondaryColour = rgbaToArgb(assStyle.mSecondaryColour);
            if (!TextUtils.isEmpty(contentAttribute.overrideStyle) && (overrideStyle = parseOverrideStyle(contentAttribute.overrideStyle)) != null) {
                if (overrideStyle.containsKey("primaryColour")) {
                    contentAttribute.mPrimaryColour = ((Integer) overrideStyle.get("primaryColour")).intValue();
                }
                if (overrideStyle.containsKey("strikeOut")) {
                    contentAttribute.mStrikeOut = ((Boolean) overrideStyle.get("strikeOut")).booleanValue();
                }
                if (overrideStyle.containsKey(TtmlNode.UNDERLINE)) {
                    contentAttribute.mUnderline = ((Boolean) overrideStyle.get(TtmlNode.UNDERLINE)).booleanValue();
                }
                if (overrideStyle.containsKey(TtmlNode.ITALIC)) {
                    contentAttribute.mItalic = ((Boolean) overrideStyle.get(TtmlNode.ITALIC)).booleanValue();
                }
                if (overrideStyle.containsKey(TtmlNode.BOLD)) {
                    contentAttribute.mBold = ((Boolean) overrideStyle.get(TtmlNode.BOLD)).booleanValue();
                }
                if (overrideStyle.containsKey(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                    contentAttribute.fontSize = scaleYSize(((Double) overrideStyle.get(TtmlNode.ATTR_TTS_FONT_SIZE)).doubleValue());
                }
                if (overrideStyle.containsKey("fontName")) {
                    contentAttribute.fontName = (String) overrideStyle.get("fontName");
                }
                if (overrideStyle.containsKey("posX")) {
                    locationAttribute.posX = ((Double) overrideStyle.get("posX")).doubleValue();
                }
                if (overrideStyle.containsKey("posY")) {
                    locationAttribute.posY = ((Double) overrideStyle.get("posY")).doubleValue();
                }
            }
        }
    }

    private SpannableStringBuilder getFinalStr(LinkedList<ContentAttribute> linkedList) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int length = 0;
        int length2 = 0;
        for (ContentAttribute contentAttribute : linkedList) {
            length += contentAttribute.text.length();
            spannableStringBuilder.append((CharSequence) contentAttribute.text);
            if (contentAttribute.mOutlineWidth > 0.0d) {
                BorderedSpan.BorderStyle borderStyle = new BorderedSpan.BorderStyle();
                borderStyle.fontName = contentAttribute.fontName;
                borderStyle.fontSize = contentAttribute.fontSize;
                borderStyle.mPrimaryColour = contentAttribute.mPrimaryColour;
                borderStyle.mSecondaryColour = contentAttribute.mSecondaryColour;
                borderStyle.mBold = contentAttribute.mBold;
                borderStyle.mItalic = contentAttribute.mItalic;
                borderStyle.mUnderline = contentAttribute.mUnderline;
                borderStyle.mStrikeOut = contentAttribute.mStrikeOut;
                borderStyle.mOutlineColour = contentAttribute.mOutlineColour;
                borderStyle.mOutlineWidth = contentAttribute.mOutlineWidth;
                if (contentAttribute.mBorderStyle == 1) {
                    borderStyle.mShadowWidth = contentAttribute.mShadow;
                    borderStyle.mShadowColor = contentAttribute.mBackColour;
                }
                spannableStringBuilder.setSpan(new BorderedSpan(borderStyle), length2, length, 33);
            }
            spannableStringBuilder.setSpan(new TypefaceSpan(contentAttribute.fontName), length2, length, 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) contentAttribute.fontSize), length2, length, 33);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(contentAttribute.mPrimaryColour), length2, length, 33);
            boolean z10 = contentAttribute.mBold;
            if (z10 && contentAttribute.mItalic) {
                spannableStringBuilder.setSpan(new StyleSpan(3), length2, length, 33);
            } else if (z10) {
                spannableStringBuilder.setSpan(new StyleSpan(1), length2, length, 33);
            } else if (contentAttribute.mItalic) {
                spannableStringBuilder.setSpan(new StyleSpan(2), length2, length, 33);
            }
            if (contentAttribute.mUnderline) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), length2, length, 33);
            }
            if (contentAttribute.mStrikeOut) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), length2, length, 33);
            }
            length2 += contentAttribute.text.length();
        }
        return spannableStringBuilder;
    }

    private RelativeLayout.LayoutParams getLayoutParams(LocationAttribute locationAttribute, float f11, float f12) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        double d11 = locationAttribute.posX;
        if (d11 > 0.0d || locationAttribute.posY > 0.0d) {
            int i11 = locationAttribute.mAlignment;
            double dScaleXSize = scaleXSize(d11);
            double dScaleYSize = scaleYSize(locationAttribute.posY);
            switch (i11) {
                case 1:
                    layoutParams.leftMargin = (int) dScaleXSize;
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) f12));
                    break;
                case 2:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) (f11 / 2.0f)));
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) f12));
                    break;
                case 3:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) f11));
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) f12));
                    break;
                case 4:
                    layoutParams.leftMargin = (int) dScaleXSize;
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) (f12 / 2.0f)));
                    break;
                case 5:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) (f11 / 2.0f)));
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) (f12 / 2.0f)));
                    break;
                case 6:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) f11));
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) (f12 / 2.0f)));
                    break;
                case 7:
                    layoutParams.leftMargin = (int) scaleXSize(dScaleXSize);
                    layoutParams.topMargin = (int) scaleYSize(dScaleYSize);
                    break;
                case 8:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) (f11 / 2.0f)));
                    layoutParams.topMargin = (int) scaleYSize(dScaleYSize);
                    break;
                case 9:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) f11));
                    layoutParams.topMargin = (int) scaleYSize(dScaleYSize);
                    break;
                default:
                    layoutParams.leftMargin = (int) (dScaleXSize - ((double) (f11 / 2.0f)));
                    layoutParams.topMargin = (int) (dScaleYSize - ((double) f12));
                    break;
            }
        } else {
            switch (locationAttribute.mAlignment) {
                case 1:
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
                case 2:
                    layoutParams.addRule(12);
                    layoutParams.addRule(14);
                    break;
                case 3:
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
                case 4:
                    layoutParams.addRule(15);
                    layoutParams.addRule(9);
                    break;
                case 5:
                    layoutParams.addRule(13);
                    break;
                case 6:
                    layoutParams.addRule(15);
                    layoutParams.addRule(11);
                    break;
                case 7:
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case 8:
                    layoutParams.addRule(10);
                    layoutParams.addRule(14);
                    break;
                case 9:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
                default:
                    layoutParams.addRule(12);
                    layoutParams.addRule(14);
                    break;
            }
            layoutParams.leftMargin = locationAttribute.marginL;
            layoutParams.rightMargin = locationAttribute.marginR;
            layoutParams.topMargin = locationAttribute.marginV;
        }
        return layoutParams;
    }

    private LocationAttribute getLocationAttribute(AssDialogue assDialogue, AssStyle assStyle) {
        LocationAttribute locationAttribute = new LocationAttribute();
        locationAttribute.mAlignment = assStyle.mAlignment;
        locationAttribute.marginL = assStyle.mMarginL;
        locationAttribute.marginR = assStyle.mMarginR;
        locationAttribute.marginV = assStyle.mMarginV;
        int i11 = assDialogue.mMarginL;
        if (i11 != 0) {
            locationAttribute.marginL = i11;
        }
        int i12 = assDialogue.mMarginR;
        if (i12 != 0) {
            locationAttribute.marginR = i12;
        }
        int i13 = assDialogue.mMarginV;
        if (i13 != 0) {
            locationAttribute.marginV = i13;
        }
        locationAttribute.mAngle = assStyle.mAngle;
        locationAttribute.mScaleX = assStyle.mScaleX;
        locationAttribute.mScaleY = assStyle.mScaleY;
        return locationAttribute;
    }

    private Map<String, Object> parseOverrideStyle(String str) {
        String strReplaceAll = str.substring(str.indexOf("{") + 1, str.lastIndexOf("}")).replaceAll("\\\\", "\\$");
        if (!strReplaceAll.contains("$")) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str2 : strReplaceAll.split("\\$")) {
            if (str2.startsWith("fn")) {
                map.put("fontName", str2.substring(2).trim());
            } else if (str2.startsWith(TmcStartParams.KEY_FULLSCREEN_SHORT)) {
                try {
                    map.put(TtmlNode.ATTR_TTS_FONT_SIZE, Double.valueOf(str2.substring(2).trim()));
                } catch (Exception unused) {
                }
            } else if (str2.startsWith(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                map.put(TtmlNode.BOLD, Boolean.valueOf(str2.startsWith("b1")));
            } else if (str2.startsWith("i")) {
                map.put(TtmlNode.ITALIC, Boolean.valueOf(str2.startsWith("i1")));
            } else if (str2.startsWith(TmcStartParams.KEY_URL_SHORT)) {
                map.put(TtmlNode.UNDERLINE, Boolean.valueOf(str2.startsWith("u1")));
            } else if (str2.startsWith("s")) {
                map.put("strikeOut", Boolean.valueOf(str2.startsWith("s1")));
            } else if (str2.startsWith("c&H") || str2.startsWith("1c&H")) {
                String strTrim = str2.substring(0, str2.lastIndexOf(UrlUtils.AND_MARK)).trim();
                map.put("primaryColour", Integer.valueOf(Color.parseColor(strTrim.startsWith("c&H") ? Utils.SEPARATOR + convertRgbColor(strTrim.substring(3).trim()) : Utils.SEPARATOR + convertRgbColor(strTrim.substring(4).trim()))));
            } else if (str2.startsWith("pos")) {
                String[] strArrSplit = str2.substring(4, str2.length() - 1).split(",");
                map.put("posX", Double.valueOf(strArrSplit[0]));
                map.put("posY", Double.valueOf(strArrSplit[1]));
            }
        }
        return map;
    }

    private int rgbaToArgb(int i11) {
        return Color.parseColor(Utils.SEPARATOR + String.format("%02x", Integer.valueOf(255 - (i11 & 255))) + String.format("%06x", Integer.valueOf(i11 >>> 8)));
    }

    private double scaleXSize(double d11) {
        int i11;
        int i12 = this.videoDisplayWidth;
        return (i12 <= 0 || (i11 = this.mAssHeader.mPlayResX) <= 0) ? d11 : (d11 * ((double) i12)) / ((double) i11);
    }

    private double scaleYSize(double d11) {
        int i11;
        int i12 = this.videoDisplayHeight;
        return (i12 <= 0 || (i11 = this.mAssHeader.mPlayResY) <= 0) ? d11 : (d11 * ((double) i12)) / ((double) i11);
    }

    private LinkedList<ContentAttribute> splitContent(AssDialogue assDialogue) {
        ContentAttribute contentAttribute;
        LinkedList<ContentAttribute> linkedList = new LinkedList<>();
        Matcher matcher = pattern.matcher(assDialogue.mText);
        if (matcher.find()) {
            String[] strArrSplit = assDialogue.mText.split(TEXT_PATTERN, -1);
            for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                if (TextUtils.isEmpty(strArrSplit[i11])) {
                    contentAttribute = null;
                } else {
                    contentAttribute = new ContentAttribute();
                    contentAttribute.text = strArrSplit[i11];
                }
                if (i11 != 0) {
                    String strGroup = matcher.group();
                    if (contentAttribute != null) {
                        contentAttribute.overrideStyle = strGroup;
                    }
                }
                if (contentAttribute != null) {
                    linkedList.add(contentAttribute);
                }
            }
        } else {
            ContentAttribute contentAttribute2 = new ContentAttribute();
            contentAttribute2.text = assDialogue.mText;
            linkedList.add(contentAttribute2);
        }
        return linkedList;
    }

    public void destroy() {
    }

    public void dismiss(AssTextView assTextView) {
        TextViewPool textViewPool = this.mTextViewPool;
        if (textViewPool != null) {
            textViewPool.recycle(assTextView);
        }
    }

    public AssTextView setAssDialog(String str) {
        AssTextView assTextViewObtain = this.mTextViewPool.obtain();
        assTextViewObtain.setContent(str);
        AssDialogue assDialogue = AssUtils.parseAssDialogue(this.mAssHeader, str);
        AssStyle assStyle = this.mAssHeader.mStyles.get(assDialogue.mStyle.replace("*", ""));
        if (assDialogue.mText.contains("{\\p0}")) {
            return assTextViewObtain;
        }
        LinkedList<ContentAttribute> linkedListSplitContent = splitContent(assDialogue);
        LocationAttribute locationAttribute = getLocationAttribute(assDialogue, assStyle);
        fillContentAttribute(assStyle, linkedListSplitContent, locationAttribute);
        assTextViewObtain.setText(getFinalStr(linkedListSplitContent), TextView.BufferType.SPANNABLE);
        assTextViewObtain.setScaleX((float) locationAttribute.mScaleX);
        assTextViewObtain.setScaleY((float) locationAttribute.mScaleY);
        assTextViewObtain.setRotation((float) locationAttribute.mAngle);
        assTextViewObtain.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        float measuredWidth = assTextViewObtain.getMeasuredWidth();
        float measuredHeight = assTextViewObtain.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams = getLayoutParams(locationAttribute, measuredWidth, measuredHeight);
        layoutParams.width = (int) measuredWidth;
        layoutParams.height = (int) measuredHeight;
        assTextViewObtain.setLayoutParams(layoutParams);
        assTextViewObtain.setGravity(17);
        return assTextViewObtain;
    }

    public void setAssHeaders(String str) {
        this.mAssHeader = AssUtils.parseAssHeader(str);
    }

    public void setFontTypeMap(Map<String, Typeface> map) {
    }

    public void setVideoDisplaySize(int i11, int i12) {
        this.videoDisplayWidth = i11;
        this.videoDisplayHeight = i12;
    }
}
