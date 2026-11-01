package com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    /* JADX WARN: Code duplicated, block: B:40:0x00ff A[PHI: r3 r4 r7 r8 r18
  0x00ff: PHI (r3v13 java.lang.String) = (r3v7 java.lang.String), (r3v8 java.lang.String), (r3v9 java.lang.String), (r3v14 java.lang.String) binds: [B:59:0x016b, B:56:0x0150, B:51:0x013e, B:39:0x00fd] A[DONT_GENERATE, DONT_INLINE]
  0x00ff: PHI (r4v18 java.lang.String) = (r4v11 java.lang.String), (r4v12 java.lang.String), (r4v13 java.lang.String), (r4v19 java.lang.String) binds: [B:59:0x016b, B:56:0x0150, B:51:0x013e, B:39:0x00fd] A[DONT_GENERATE, DONT_INLINE]
  0x00ff: PHI (r7v19 java.lang.String) = (r7v11 java.lang.String), (r7v12 java.lang.String), (r7v13 java.lang.String), (r28v1 java.lang.String) binds: [B:59:0x016b, B:56:0x0150, B:51:0x013e, B:39:0x00fd] A[DONT_GENERATE, DONT_INLINE]
  0x00ff: PHI (r8v19 java.lang.String) = (r8v10 java.lang.String), (r8v12 java.lang.String), (r8v13 java.lang.String), (r27v1 java.lang.String) binds: [B:59:0x016b, B:56:0x0150, B:51:0x013e, B:39:0x00fd] A[DONT_GENERATE, DONT_INLINE]
  0x00ff: PHI (r18v11 int) = (r18v2 int), (r18v4 int), (r18v5 int), (r8v6 int) binds: [B:59:0x016b, B:56:0x0150, B:51:0x013e, B:39:0x00fd] A[DONT_GENERATE, DONT_INLINE]] */
    public static com.bytedance.sdk.openadsdk.core.Ym.sP Sj(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String str;
        com.bytedance.sdk.openadsdk.core.Ym.sP sPVar;
        String str2;
        int i11;
        String str3 = "HTMLResource";
        String str4 = "IconClicks";
        String str5 = "StaticResource";
        String str6 = "IFrameResource";
        String str7 = "IconViewTracking";
        int i12 = 2;
        int i13 = 3;
        com.bytedance.sdk.openadsdk.core.Ym.sP sPVar2 = null;
        while (true) {
            if (xmlPullParser.getEventType() == i13 && xmlPullParser.getName().equals("Icons")) {
                return sPVar2;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == i12 && xmlPullParser.getName().equals("Icon")) {
                String str8 = HiB.Jcg;
                int iSP = HiB.sP(xmlPullParser.getAttributeValue(str8, "width"));
                int iSP2 = HiB.sP(xmlPullParser.getAttributeValue(str8, "height"));
                if (iSP <= 0 || iSP > 300 || iSP2 <= 0 || iSP2 > 300) {
                    HiB.Sj(xmlPullParser);
                    str4 = str4;
                    str6 = str6;
                    str7 = str7;
                    sPVar2 = sPVar2;
                    str3 = str3;
                    i12 = 2;
                    i13 = 3;
                } else {
                    int iSj = com.bytedance.sdk.openadsdk.core.Ym.sP.Sj.Sj(xmlPullParser.getAttributeValue(str8, "offset"));
                    int iSj2 = com.bytedance.sdk.openadsdk.core.Ym.sP.Sj.Sj(xmlPullParser.getAttributeValue(str8, "duration"));
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    String str9 = str6;
                    String str10 = str7;
                    HiB.Sj sj2 = null;
                    String strSP = null;
                    while (true) {
                        if (xmlPullParser.next() == i13 && xmlPullParser.getName().equals("Icon")) {
                            if (sj2 != null && (sPVar2 == null || TextUtils.isEmpty(sPVar2.vS()))) {
                                com.bytedance.sdk.openadsdk.core.Ym.sP sPVar3 = new com.bytedance.sdk.openadsdk.core.Ym.sP(iSP, iSP2, iSj, iSj2, sj2.sP, sj2.TKC, sj2.Sj, arrayList, arrayList2, strSP);
                                HiB.Sj(xmlPullParser, "Icons", i13);
                                sPVar2 = sPVar3;
                            }
                            str7 = str10;
                            str6 = str9;
                            str4 = str4;
                            str5 = str5;
                            i12 = 2;
                        } else {
                            String str11 = str4;
                            String str12 = str5;
                            if (xmlPullParser.getEventType() == 2) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                switch (name.hashCode()) {
                                    case -1044238411:
                                        iSj2 = iSj2;
                                        str10 = str10;
                                        str9 = str9;
                                        str2 = str11;
                                        str5 = str12;
                                        if (!name.equals(str10)) {
                                            i11 = -1;
                                        } else {
                                            i11 = 0;
                                        }
                                        break;
                                    case -375340334:
                                        str9 = str9;
                                        str2 = str11;
                                        str5 = str12;
                                        if (!name.equals(str9)) {
                                            iSj2 = iSj2;
                                            str10 = str10;
                                            i11 = -1;
                                        } else {
                                            i11 = 1;
                                            iSj2 = iSj2;
                                            str10 = str10;
                                        }
                                        break;
                                    case 676623548:
                                        str2 = str11;
                                        str5 = str12;
                                        iSj2 = iSj2;
                                        str10 = str10;
                                        str9 = str9;
                                        if (!name.equals(str5)) {
                                            i11 = -1;
                                        } else {
                                            i11 = 2;
                                        }
                                        break;
                                    case 1030746596:
                                        str2 = str11;
                                        if (!name.equals(str2)) {
                                            str5 = str12;
                                            i11 = -1;
                                        } else {
                                            i11 = i13;
                                            str5 = str12;
                                        }
                                        break;
                                    case 1928285401:
                                        if (name.equals(str3)) {
                                            i11 = 4;
                                            str2 = str11;
                                            str5 = str12;
                                            break;
                                        }
                                    default:
                                        str2 = str11;
                                        str5 = str12;
                                        i11 = -1;
                                        break;
                                }
                                switch (i11) {
                                    case 0:
                                        str = str3;
                                        sPVar = sPVar2;
                                        arrayList2.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(HiB.sP(xmlPullParser, str10)).Sj());
                                        break;
                                    case 1:
                                        str = str3;
                                        sPVar = sPVar2;
                                        if (sj2 != null) {
                                            HiB.Sj(xmlPullParser);
                                        } else {
                                            sj2 = new HiB.Sj(HiB.sP(xmlPullParser, str9), com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.NONE, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.IFRAME_RESOURCE);
                                        }
                                        break;
                                    case 2:
                                        str = str3;
                                        sPVar = sPVar2;
                                        com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj enumC0267Sj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.NONE;
                                        String lowerCase = xmlPullParser.getAttributeValue(HiB.Jcg, "creativeType").toLowerCase();
                                        Set<String> set = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj;
                                        sj2 = new HiB.Sj((set.contains(lowerCase) || com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.contains(lowerCase)) ? HiB.sP(xmlPullParser, str5) : null, set.contains(lowerCase) ? com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.IMAGE : com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.JAVASCRIPT, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.STATIC_RESOURCE);
                                        break;
                                    case 3:
                                        str = str3;
                                        sPVar = sPVar2;
                                        while (true) {
                                            if (xmlPullParser.next() != 3 || !xmlPullParser.getName().equals(str2)) {
                                                if (xmlPullParser.getEventType() == 2) {
                                                    if (xmlPullParser.getName().equals("IconClickThrough")) {
                                                        strSP = HiB.sP(xmlPullParser, "IconClickThrough");
                                                    } else if (xmlPullParser.getName().equals("IconClickTracking")) {
                                                        arrayList.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(HiB.sP(xmlPullParser, "IconClickTracking")).Sj());
                                                    }
                                                }
                                            }
                                        }
                                        break;
                                    case 4:
                                        if (sj2 != null) {
                                            sPVar = sPVar2;
                                            if (sj2.TKC != com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.IFRAME_RESOURCE) {
                                                str = str3;
                                                HiB.Sj(xmlPullParser);
                                                break;
                                            }
                                        } else {
                                            sPVar = sPVar2;
                                        }
                                        str = str3;
                                        sj2 = new HiB.Sj(HiB.sP(xmlPullParser, str3), com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj.NONE, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.HTML_RESOURCE);
                                        break;
                                    default:
                                        str = str3;
                                        sPVar = sPVar2;
                                        HiB.Sj(xmlPullParser);
                                        break;
                                }
                            } else {
                                str = str3;
                                iSj2 = iSj2;
                                sPVar = sPVar2;
                                str10 = str10;
                                str9 = str9;
                                str2 = str11;
                                str5 = str12;
                            }
                            str4 = str2;
                            str9 = str9;
                            str10 = str10;
                            sPVar2 = sPVar;
                            iSj2 = iSj2;
                            str3 = str;
                            i13 = 3;
                        }
                    }
                }
            } else {
                str4 = str4;
                str6 = str6;
                str7 = str7;
                sPVar2 = sPVar2;
                str3 = str3;
                i12 = 2;
                i13 = 3;
            }
        }
    }

    private static String Sj(XmlPullParser xmlPullParser, int i11, double d11, com.bytedance.sdk.openadsdk.core.Ym.Sj sj2) throws XmlPullParserException, IOException {
        double d12 = Double.NEGATIVE_INFINITY;
        String str = null;
        int i12 = Integer.MIN_VALUE;
        int i13 = Integer.MIN_VALUE;
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("MediaFiles")) {
                break;
            }
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("MediaFile")) {
                String str2 = HiB.Jcg;
                String attributeValue = xmlPullParser.getAttributeValue(str2, NativeComponentConstants.KEY_COMPONENT_TYPE);
                int iSP = HiB.sP(xmlPullParser.getAttributeValue(str2, "width"));
                int iSP2 = HiB.sP(xmlPullParser.getAttributeValue(str2, "height"));
                int iSP3 = HiB.sP(xmlPullParser.getAttributeValue(str2, "bitrate"));
                String strSP = HiB.sP(xmlPullParser, "MediaFile");
                if (iSP > 0 && iSP2 > 0 && com.bytedance.sdk.openadsdk.core.Ym.TKC.EjP.Sj.contains(attributeValue) && !TextUtils.isEmpty(strSP)) {
                    double dSj = com.bytedance.sdk.openadsdk.core.Ym.TKC.EjP.Sj(i11, d11, iSP, iSP2, iSP3, attributeValue);
                    if (dSj > d12) {
                        str = strSP;
                        d12 = dSj;
                        i12 = iSP;
                        i13 = iSP2;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            sj2.EjP(str);
            sj2.Sj(i12);
            sj2.sP(i13);
        }
        return str;
    }

    public static void Sj(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.Ym.EjP ejP) throws XmlPullParserException, IOException {
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("TrackingEvents")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                if ("Tracking".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(HiB.Jcg, NotificationCompat.CATEGORY_EVENT);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        attributeValue.hashCode();
                        switch (attributeValue) {
                            case "midpoint":
                                ejP.Sj(HiB.sP(xmlPullParser, "Tracking"), 0.5f);
                                break;
                            case "thirdQuartile":
                                ejP.Sj(HiB.sP(xmlPullParser, "Tracking"), 0.75f);
                                break;
                            case "resume":
                                ejP.TKC(TKC(xmlPullParser));
                                break;
                            case "unmute":
                                ejP.aa(TKC(xmlPullParser));
                                break;
                            case "complete":
                                ejP.EjP(TKC(xmlPullParser));
                                break;
                            case "mute":
                                ejP.Ym(TKC(xmlPullParser));
                                break;
                            case "skip":
                                ejP.vS(TKC(xmlPullParser));
                                break;
                            case "close":
                                ejP.HiB(TKC(xmlPullParser));
                                break;
                            case "pause":
                                ejP.sP(TKC(xmlPullParser));
                                break;
                            case "start":
                            case "creativeView":
                                ejP.Sj(HiB.sP(xmlPullParser, "Tracking"), 0L);
                                break;
                            case "firstQuartile":
                                ejP.Sj(HiB.sP(xmlPullParser, "Tracking"), 0.25f);
                                break;
                        }
                    } else {
                        HiB.Sj(xmlPullParser, "Tracking", 3);
                    }
                } else if (xmlPullParser.getEventType() == 4) {
                    xmlPullParser.nextTag();
                } else {
                    HiB.Sj(xmlPullParser);
                }
            }
        }
    }

    private static void Sj(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.Ym.Sj sj2) throws XmlPullParserException, IOException {
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("VideoClicks")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                if (name.equals("ClickThrough")) {
                    sj2.TKC(HiB.sP(xmlPullParser, "ClickThrough"));
                } else if (name.equals("ClickTracking")) {
                    sj2.Sj().Jcg(HiB.Sj(xmlPullParser, "ClickTracking"));
                } else {
                    HiB.Sj(xmlPullParser);
                }
            }
        }
    }

    public static void Sj(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.Ym.Sj sj2, int i11, double d11) throws XmlPullParserException, IOException {
        boolean z10 = false;
        while (true) {
            if (xmlPullParser.next() != 3 || !xmlPullParser.getName().equals("Linear")) {
                if (xmlPullParser.getEventType() == 2) {
                    if (z10 && TextUtils.isEmpty(sj2.Jcg())) {
                        HiB.Sj(xmlPullParser);
                    }
                    String name = xmlPullParser.getName();
                    name.hashCode();
                    switch (name) {
                        case "VideoClicks":
                            Sj(xmlPullParser, sj2);
                            break;
                        case "Duration":
                            sj2.Sj(sP(xmlPullParser));
                            break;
                        case "MediaFiles":
                            Sj(xmlPullParser, i11, d11, sj2);
                            z10 = true;
                            break;
                        case "Icons":
                            com.bytedance.sdk.openadsdk.core.Ym.sP sPVarSj = Sj(xmlPullParser);
                            if (sPVarSj != null && sj2.sP() == null) {
                                sj2.Sj(sPVarSj);
                                break;
                            } else {
                                break;
                            }
                            break;
                        case "TrackingEvents":
                            Sj(xmlPullParser, sj2.Sj());
                            break;
                        default:
                            HiB.Sj(xmlPullParser);
                            break;
                    }
                }
            } else {
                return;
            }
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> TKC(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return HiB.Sj(xmlPullParser, "Tracking");
    }

    public static double sP(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String[] strArrSplit = HiB.sP(xmlPullParser, "Duration").split(":");
        if (strArrSplit.length != 3) {
            return 0.0d;
        }
        try {
            return (Integer.parseInt(strArrSplit[0].trim()) * 3600) + (Integer.parseInt(strArrSplit[1].trim()) * 60) + Float.parseFloat(strArrSplit[2].trim());
        } catch (Exception unused) {
            return 0.0d;
        }
    }
}
