package com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.io.IOException;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    public static com.bytedance.sdk.openadsdk.core.Ym.TKC Sj(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i11;
        Context context2;
        String str;
        HiB.Sj sj2;
        String str2;
        String str3;
        byte b11;
        Context context3 = context;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        String str4 = "HTMLResource";
        String str5 = "IFrameResource";
        int i12 = 2;
        int i13 = 3;
        if (context3 == null) {
            HiB.Sj(xmlPullParser);
            return null;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i14 = displayMetrics.widthPixels;
        int i15 = displayMetrics.heightPixels;
        float f11 = displayMetrics.density;
        int i16 = (int) (i14 / f11);
        int i17 = (int) (i15 / f11);
        float f12 = Float.MIN_VALUE;
        com.bytedance.sdk.openadsdk.core.Ym.TKC tkc = null;
        while (true) {
            if (xmlPullParser.getEventType() == i13 && xmlPullParser.getName().equals("CompanionAds")) {
                return tkc;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == i12) {
                String str6 = "Companion";
                if (xmlPullParser.getName().equals("Companion")) {
                    String str7 = HiB.Jcg;
                    int iSP = HiB.sP(xmlPullParser2.getAttributeValue(str7, "width"));
                    int iSP2 = HiB.sP(xmlPullParser2.getAttributeValue(str7, "height"));
                    if (iSP < 300 || iSP2 < 250) {
                        i11 = 2;
                        HiB.Sj(xmlPullParser);
                        i12 = i11;
                        str5 = str5;
                        str4 = str4;
                        i16 = i16;
                        i13 = i13;
                        context3 = context3;
                        xmlPullParser2 = xmlPullParser2;
                        i17 = i17;
                    } else {
                        HiB.Sj sj3 = new HiB.Sj();
                        while (true) {
                            if (xmlPullParser.getEventType() == i13 && xmlPullParser.getName().equals(str6)) {
                                if (!TextUtils.isEmpty(sj3.Sj) && sj3.Jcg >= f12) {
                                    com.bytedance.sdk.openadsdk.core.Ym.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.Ym.TKC(iSP, iSP2, sj3.sP, sj3.TKC, sj3.Sj, sj3.HiB, sj3.vS, sj3.EjP);
                                    f12 = sj3.Jcg;
                                    tkc = tkc2;
                                }
                                context3 = context;
                                xmlPullParser2 = xmlPullParser;
                                i17 = i17;
                                i16 = i16;
                                i12 = 2;
                                i13 = 3;
                            } else {
                                i17 = i17;
                                i16 = i16;
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == 2) {
                                    String name = xmlPullParser.getName();
                                    name.hashCode();
                                    byte b12 = -1;
                                    switch (name.hashCode()) {
                                        case -375340334:
                                            if (name.equals(str5)) {
                                                b11 = 0;
                                                b12 = b11;
                                                break;
                                            }
                                            break;
                                        case -348198615:
                                            if (name.equals("CompanionClickThrough")) {
                                                b11 = 1;
                                                b12 = b11;
                                                break;
                                            }
                                            break;
                                        case 611554000:
                                            if (name.equals("TrackingEvents")) {
                                                b12 = 2;
                                            }
                                            break;
                                        case 676623548:
                                            if (name.equals("StaticResource")) {
                                                b12 = 3;
                                            }
                                            break;
                                        case 1877773523:
                                            if (name.equals("CompanionClickTracking")) {
                                                b11 = 4;
                                                b12 = b11;
                                                break;
                                            }
                                            break;
                                        case 1928285401:
                                            if (name.equals(str4)) {
                                                b11 = 5;
                                                b12 = b11;
                                                break;
                                            }
                                            break;
                                    }
                                    switch (b12) {
                                        case 0:
                                            str3 = str4;
                                            String str8 = str5;
                                            HiB.Sj sj4 = sj3;
                                            str2 = str6;
                                            Point pointSj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj(context, iSP, iSP2, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.HTML_RESOURCE);
                                            int i18 = pointSj.x;
                                            int i19 = pointSj.y;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.IFRAME_RESOURCE;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj enumC0267Sj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.NONE;
                                            float fSj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj(i16, i17, i18, i19, sPVar, enumC0267Sj);
                                            String strSP = HiB.sP(xmlPullParser, str8);
                                            if (!TextUtils.isEmpty(strSP) && fSj > sj4.Jcg && fSj > f12) {
                                                sj4.Jcg = fSj;
                                                sj4.Sj(strSP, enumC0267Sj, sPVar);
                                                sj3 = sj4;
                                                str5 = str8;
                                                str6 = str2;
                                                str4 = str3;
                                            } else {
                                                HiB.Sj(xmlPullParser, str8, 3);
                                                sj3 = sj4;
                                                str5 = str8;
                                                str6 = str2;
                                                str4 = str3;
                                                i13 = 3;
                                            }
                                            break;
                                        case 1:
                                            str3 = str4;
                                            sj3.EjP = HiB.sP(xmlPullParser, "CompanionClickThrough");
                                            str5 = str5;
                                            str4 = str3;
                                            break;
                                        case 2:
                                            context2 = context;
                                            str3 = str4;
                                            str = str5;
                                            sj2 = sj3;
                                            str2 = str6;
                                            while (true) {
                                                if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("TrackingEvents")) {
                                                    sj3 = sj2;
                                                    str5 = str;
                                                    str6 = str2;
                                                    str4 = str3;
                                                    break;
                                                } else if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Tracking")) {
                                                    sj2.sP(HiB.sP(xmlPullParser, "Tracking"));
                                                }
                                            }
                                            break;
                                        case 3:
                                            context2 = context;
                                            str = str5;
                                            sj2 = sj3;
                                            str2 = str6;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj enumC0267Sj2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.NONE;
                                            String lowerCase = xmlPullParser.getAttributeValue(HiB.Jcg, "creativeType").toLowerCase();
                                            Set<String> set = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj enumC0267Sj3 = set.contains(lowerCase) ? com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.IMAGE : com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.JAVASCRIPT;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.STATIC_RESOURCE;
                                            Point pointSj2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj(context2, iSP, iSP2, sPVar2);
                                            str3 = str4;
                                            float fSj2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj(i16, i17, pointSj2.x, pointSj2.y, sPVar2, enumC0267Sj3);
                                            String strSP2 = (set.contains(lowerCase) || com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.contains(lowerCase)) ? HiB.sP(xmlPullParser, "StaticResource") : null;
                                            if (fSj2 >= sj2.Jcg && fSj2 > f12 && !TextUtils.isEmpty(strSP2)) {
                                                sj2.Jcg = fSj2;
                                                sj2.Sj(strSP2, enumC0267Sj3, sPVar2);
                                                sj3 = sj2;
                                                str5 = str;
                                                str6 = str2;
                                                str4 = str3;
                                            } else {
                                                HiB.Sj(xmlPullParser, "StaticResource", 3);
                                                i13 = 3;
                                                sj3 = sj2;
                                                str5 = str;
                                                str6 = str2;
                                                str4 = str3;
                                            }
                                            break;
                                        case 4:
                                            sj3.Sj(HiB.sP(xmlPullParser, "CompanionClickTracking"));
                                            str5 = str5;
                                            break;
                                        case 5:
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar3 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.HTML_RESOURCE;
                                            Point pointSj3 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj(context, iSP, iSP2, sPVar3);
                                            int i20 = pointSj3.x;
                                            int i21 = pointSj3.y;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj enumC0267Sj4 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.NONE;
                                            String str9 = str5;
                                            HiB.Sj sj5 = sj3;
                                            String str10 = str6;
                                            float fSj3 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj(i16, i17, i20, i21, sPVar3, enumC0267Sj4);
                                            String strSP3 = HiB.sP(xmlPullParser, str4);
                                            if (!TextUtils.isEmpty(strSP3) && fSj3 > sj5.Jcg && fSj3 > f12) {
                                                sj5.Jcg = fSj3;
                                                sj5.Sj(strSP3, enumC0267Sj4, sPVar3);
                                                sj3 = sj5;
                                                str5 = str9;
                                                str6 = str10;
                                            } else {
                                                HiB.Sj(xmlPullParser, str4, 3);
                                                i13 = 3;
                                                sj3 = sj5;
                                                str5 = str9;
                                                str6 = str10;
                                            }
                                            break;
                                        default:
                                            HiB.Sj(xmlPullParser);
                                            context2 = context;
                                            str3 = str4;
                                            str = str5;
                                            sj2 = sj3;
                                            str2 = str6;
                                            sj3 = sj2;
                                            str5 = str;
                                            str6 = str2;
                                            str4 = str3;
                                            break;
                                    }
                                }
                                i13 = 3;
                            }
                        }
                    }
                }
            }
            i11 = i12;
            i12 = i11;
            str5 = str5;
            str4 = str4;
            i16 = i16;
            i13 = i13;
            context3 = context3;
            xmlPullParser2 = xmlPullParser2;
            i17 = i17;
        }
    }
}
