package com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.Ym.TEQ;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    public static Set<TEQ> Sj(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        TEQ teqSj;
        if (xmlPullParser == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Verification".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(HiB.Jcg, "vendor");
                    String strSP = null;
                    String strSP2 = null;
                    String strSP3 = null;
                    while (true) {
                        if (xmlPullParser.getEventType() != 3 || !"Verification".equals(xmlPullParser.getName())) {
                            xmlPullParser.next();
                            if (xmlPullParser.getEventType() == 2) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                switch (name) {
                                    case "Tracking":
                                        if (!"verificationNotExecuted".equals(xmlPullParser.getAttributeValue(HiB.Jcg, NotificationCompat.CATEGORY_EVENT))) {
                                            break;
                                        } else {
                                            strSP3 = HiB.sP(xmlPullParser, "Tracking");
                                            break;
                                        }
                                        break;
                                    case "JavaScriptResource":
                                        if (!CampaignEx.KEY_OMID.equals(xmlPullParser.getAttributeValue(HiB.Jcg, "apiFramework"))) {
                                            break;
                                        } else {
                                            strSP = HiB.sP(xmlPullParser, "JavaScriptResource");
                                            break;
                                        }
                                        break;
                                    case "VerificationParameters":
                                        strSP2 = HiB.sP(xmlPullParser, "VerificationParameters");
                                        break;
                                }
                            }
                        } else if (!TextUtils.isEmpty(strSP) && (teqSj = TEQ.Sj(CampaignEx.KEY_OMID, strSP, attributeValue, strSP2, strSP3)) != null) {
                            hashSet.add(teqSj);
                        }
                    }
                } else {
                    HiB.Sj(xmlPullParser);
                }
            }
        }
        return hashSet;
    }
}
