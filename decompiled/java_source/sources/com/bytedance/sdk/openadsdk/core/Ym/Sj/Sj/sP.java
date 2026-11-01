package com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    public static com.bytedance.sdk.openadsdk.core.Ym.Sj Sj(Context context, XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list, int i11, double d11) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, HiB.Jcg, "InLine");
        com.bytedance.sdk.openadsdk.core.Ym.Sj sj2 = new com.bytedance.sdk.openadsdk.core.Ym.Sj();
        while (true) {
            if (xmlPullParser.next() == 3 && "InLine".equals(xmlPullParser.getName())) {
                sj2.Sj().TEQ(list);
                return sj2;
            }
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                switch (name) {
                    case "AdVerifications":
                        sj2.Sj(EjP.Sj(xmlPullParser));
                        continue;
                        break;
                    case "Creatives":
                        if (!TextUtils.isEmpty(sj2.Jcg()) && sj2.TKC() != null) {
                            break;
                        } else {
                            while (xmlPullParser.next() != 3) {
                                if (xmlPullParser.getEventType() == 2) {
                                    if ("Creative".equals(xmlPullParser.getName())) {
                                        Sj(context, xmlPullParser, sj2, i11, d11);
                                    } else {
                                        HiB.Sj(xmlPullParser);
                                    }
                                }
                            }
                            break;
                        }
                        break;
                    case "Description":
                        sj2.sP(HiB.sP(xmlPullParser, name));
                        continue;
                        break;
                    case "Error":
                        list.addAll(HiB.Sj(xmlPullParser, name));
                        continue;
                        break;
                    case "Extensions":
                        while (true) {
                            if (xmlPullParser.getEventType() == 3 && "Extensions".equals(xmlPullParser.getName())) {
                                continue;
                                break;
                            } else {
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == 2 && "AdVerifications".equals(xmlPullParser.getName())) {
                                    sj2.Sj(EjP.Sj(xmlPullParser));
                                }
                            }
                        }
                        break;
                    case "AdTitle":
                        sj2.Sj(HiB.sP(xmlPullParser, name));
                        continue;
                        break;
                    case "Impression":
                        sj2.Sj().Sj(HiB.Sj(xmlPullParser, name));
                        continue;
                        break;
                }
                HiB.Sj(xmlPullParser);
            }
        }
    }

    public static void Sj(Context context, XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.Ym.Sj sj2, int i11, double d11) throws XmlPullParserException, IOException {
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Linear".equals(xmlPullParser.getName()) && TextUtils.isEmpty(sj2.Jcg())) {
                    TKC.Sj(xmlPullParser, sj2, i11, d11);
                } else if ("CompanionAds".equals(xmlPullParser.getName()) && sj2.TKC() == null) {
                    sj2.Sj(Sj.Sj(context, xmlPullParser));
                } else {
                    HiB.Sj(xmlPullParser);
                }
            }
        }
    }
}
