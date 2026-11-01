package a2;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.r;
import androidx.media3.common.s;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.b1;
import androidx.media3.common.util.r0;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import androidx.media3.exoplayer.upstream.q;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import f3.p;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class d extends DefaultHandler implements q.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f58b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f59c = Pattern.compile("CC([1-4])=.*");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f60d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f61e = {2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f62f = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final XmlPullParserFactory f63a;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final r f64a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableList f65b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final k f66c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f67d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f68e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f69f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f70g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f71h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final List f72i;

        public a(r rVar, List list, k kVar, String str, ArrayList arrayList, ArrayList arrayList2, List list2, List list3, long j11) {
            this.f64a = rVar;
            this.f65b = ImmutableList.copyOf((Collection) list);
            this.f66c = kVar;
            this.f67d = str;
            this.f68e = arrayList;
            this.f69f = arrayList2;
            this.f71h = list2;
            this.f72i = list3;
            this.f70g = j11;
        }
    }

    public d() {
        try {
            this.f63a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e11) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e11);
        }
    }

    protected static int C(List list) {
        String str;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f73a) && (str = eVar.f74b) != null) {
                Matcher matcher = f59c.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                u.h("MpdParser", "Unable to parse CEA-608 channel number from: " + eVar.f74b);
            }
        }
        return -1;
    }

    protected static int D(List list) {
        String str;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f73a) && (str = eVar.f74b) != null) {
                Matcher matcher = f60d.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                u.h("MpdParser", "Unable to parse CEA-708 service block number from: " + eVar.f74b);
            }
        }
        return -1;
    }

    protected static long G(XmlPullParser xmlPullParser, String str, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j11 : a1.Z0(attributeValue);
    }

    protected static e H(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strT0 = t0(xmlPullParser, "schemeIdUri", "");
        String strT1 = t0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, null);
        String strT2 = t0(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!b1.d(xmlPullParser, str));
        return new e(strT0, strT1, strT2);
    }

    protected static int I(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null || attributeValue.length() != 6) {
            return -1;
        }
        int i11 = Integer.parseInt(attributeValue, 16);
        return (8388608 & i11) != 0 ? K(str) : J(i11);
    }

    private static int J(int i11) {
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = f61e;
            if (i12 >= iArr.length) {
                break;
            }
            i13 += ((i11 >> i12) & 1) * iArr[i12];
            i12++;
        }
        if (i13 == 0) {
            return -1;
        }
        return i13;
    }

    private static int K(String str) {
        String[] strArrQ1 = a1.q1(str);
        if (strArrQ1.length == 0) {
            return -1;
        }
        List listI = com.google.common.base.o.f('.').i(com.google.common.base.a.e(strArrQ1[0].trim()));
        if (listI.size() != 4 || !((String) listI.get(0)).equals("ac-4")) {
            return -1;
        }
        String str2 = (String) listI.get(3);
        str2.hashCode();
        if (str2.equals("03")) {
            return 18;
        }
        return !str2.equals("04") ? -1 : 21;
    }

    protected static int L(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null) {
            return -1;
        }
        String strE = com.google.common.base.a.e(attributeValue);
        strE.hashCode();
        switch (strE) {
            case "4000":
                return 1;
            case "a000":
                return 2;
            case "f800":
                return 5;
            case "f801":
                return 6;
            case "fa01":
                return 8;
            default:
                return -1;
        }
    }

    protected static int M(XmlPullParser xmlPullParser) {
        int iW = W(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (iW <= 0 || iW >= 33) {
            return -1;
        }
        return iW;
    }

    protected static int N(XmlPullParser xmlPullParser) {
        int iBitCount;
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null || (iBitCount = Integer.bitCount(Integer.parseInt(attributeValue, 16))) == 0) {
            return -1;
        }
        return iBitCount;
    }

    protected static long O(XmlPullParser xmlPullParser, String str, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j11 : a1.a1(attributeValue);
    }

    protected static String P(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            String str = eVar.f73a;
            if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) && "JOC".equals(eVar.f74b)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(eVar.f74b)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
        }
        return MimeTypes.AUDIO_E_AC3;
    }

    protected static float T(XmlPullParser xmlPullParser, String str, float f11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f11 : Float.parseFloat(attributeValue);
    }

    protected static float U(XmlPullParser xmlPullParser, float f11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f11;
        }
        Matcher matcher = f58b.matcher(attributeValue);
        if (!matcher.matches()) {
            return f11;
        }
        int i11 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        return !TextUtils.isEmpty(strGroup) ? i11 / Integer.parseInt(strGroup) : i11;
    }

    protected static int W(XmlPullParser xmlPullParser, String str, int i11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i11 : Integer.parseInt(attributeValue);
    }

    protected static long Y(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("http://dashif.org/guidelines/last-segment-number", eVar.f73a)) {
                return Long.parseLong(eVar.f74b);
            }
        }
        return -1L;
    }

    protected static long Z(XmlPullParser xmlPullParser, String str, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j11 : Long.parseLong(attributeValue);
    }

    private long a(List list, long j11, long j12, int i11, long j13) {
        int iL = i11 >= 0 ? i11 + 1 : (int) a1.l(j13 - j11, j12);
        for (int i12 = 0; i12 < iL; i12++) {
            list.add(l(j11, j12));
            j11 += j12;
        }
        return j11;
    }

    protected static int b0(XmlPullParser xmlPullParser) {
        int iW = W(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (iW < 0) {
            return -1;
        }
        int[] iArr = f62f;
        if (iW < iArr.length) {
            return iArr[iW];
        }
        return -1;
    }

    private static int o(int i11, int i12) {
        if (i11 == -1) {
            return i12;
        }
        if (i12 == -1) {
            return i11;
        }
        androidx.media3.common.util.a.g(i11 == i12);
        return i11;
    }

    private static String p(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        androidx.media3.common.util.a.g(str.equals(str2));
        return str;
    }

    private static void q(ArrayList arrayList) {
        String str;
        int i11 = 0;
        while (true) {
            if (i11 >= arrayList.size()) {
                str = null;
                break;
            }
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) arrayList.get(i11);
            if (androidx.media3.common.h.f9983c.equals(schemeData.uuid) && (str = schemeData.licenseServerUrl) != null) {
                arrayList.remove(i11);
                break;
            }
            i11++;
        }
        if (str == null) {
            return;
        }
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            DrmInitData.SchemeData schemeData2 = (DrmInitData.SchemeData) arrayList.get(i12);
            if (androidx.media3.common.h.f9982b.equals(schemeData2.uuid) && schemeData2.licenseServerUrl == null) {
                arrayList.set(i12, new DrmInitData.SchemeData(androidx.media3.common.h.f9983c, str, schemeData2.mimeType, schemeData2.data));
            }
        }
    }

    private static void r(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) arrayList.get(size);
            if (!schemeData.hasData()) {
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    if (((DrmInitData.SchemeData) arrayList.get(i11)).canReplace(schemeData)) {
                        arrayList.remove(size);
                        break;
                    }
                }
            }
        }
    }

    private static long s(long j11, long j12) {
        if (j12 != C.TIME_UNSET) {
            j11 = j12;
        }
        return j11 == Long.MAX_VALUE ? C.TIME_UNSET : j11;
    }

    private static String t(String str, String str2) {
        if (y.o(str)) {
            return y.c(str2);
        }
        if (y.t(str)) {
            return y.n(str2);
        }
        if (y.s(str) || y.q(str)) {
            return str;
        }
        if (!MimeTypes.APPLICATION_MP4.equals(str)) {
            return null;
        }
        String strG = y.g(str2);
        return MimeTypes.TEXT_VTT.equals(strG) ? MimeTypes.APPLICATION_MP4VTT : strG;
    }

    protected static String t0(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    private boolean u(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    protected static String u0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String text = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                v(xmlPullParser);
            }
        } while (!b1.d(xmlPullParser, str));
        return text;
    }

    public static void v(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (b1.e(xmlPullParser)) {
            int i11 = 1;
            while (i11 != 0) {
                xmlPullParser.next();
                if (b1.e(xmlPullParser)) {
                    i11++;
                } else if (b1.c(xmlPullParser)) {
                    i11--;
                }
            }
        }
    }

    protected long A(XmlPullParser xmlPullParser, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j11;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    protected List B(XmlPullParser xmlPullParser, List list, boolean z10) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i11 = attributeValue != null ? Integer.parseInt(attributeValue) : z10 ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i12 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String strU0 = u0(xmlPullParser, "BaseURL");
        if (r0.c(strU0)) {
            if (attributeValue3 == null) {
                attributeValue3 = strU0;
            }
            return Lists.l(new b(strU0, attributeValue3, i11, i12));
        }
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < list.size(); i13++) {
            b bVar = (b) list.get(i13);
            String strE = r0.e(bVar.f41a, strU0);
            String str = attributeValue3 == null ? strE : attributeValue3;
            if (z10) {
                i11 = bVar.f43c;
                i12 = bVar.f44d;
                str = bVar.f42b;
            }
            arrayList.add(new b(strE, str, i11, i12));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0099  */
    /* JADX WARN: Code duplicated, block: B:69:0x0119  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v9 */
    protected Pair E(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        UUID uuid;
        String attributeValue;
        String str;
        String text;
        ?? A;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue2 != null) {
            String strE = com.google.common.base.a.e(attributeValue2);
            strE.hashCode();
            switch (strE) {
                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                    uuid = androidx.media3.common.h.f9983c;
                    attributeValue = null;
                    str = attributeValue;
                    text = str;
                    A = str;
                    break;
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid = androidx.media3.common.h.f9985e;
                    attributeValue = null;
                    str = attributeValue;
                    text = str;
                    A = str;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid = androidx.media3.common.h.f9984d;
                    attributeValue = null;
                    str = attributeValue;
                    text = str;
                    A = str;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    String strB = b1.b(xmlPullParser, "default_KID");
                    if (!TextUtils.isEmpty(strB) && !"00000000-0000-0000-0000-000000000000".equals(strB)) {
                        String[] strArrSplit = strB.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                            uuidArr[i11] = UUID.fromString(strArrSplit[i11]);
                        }
                        uuid = androidx.media3.common.h.f9982b;
                        byte[] bArrB = p.b(uuid, uuidArr, null);
                        text = null;
                        A = bArrB;
                        break;
                    } else {
                        u.h("MpdParser", "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute.");
                        uuid = null;
                        str = null;
                        text = str;
                        A = str;
                        break;
                    }
                    break;
                default:
                    uuid = null;
                    attributeValue = null;
                    str = attributeValue;
                    text = str;
                    A = str;
                    break;
            }
        } else {
            uuid = null;
            attributeValue = null;
            str = attributeValue;
            text = str;
            A = str;
        }
        do {
            xmlPullParser.next();
            if ((b1.f(xmlPullParser, "clearkey:Laurl") || b1.f(xmlPullParser, "dashif:Laurl")) && xmlPullParser.next() == 4) {
                A = A;
                text = xmlPullParser.getText();
            } else if (b1.f(xmlPullParser, "ms:laurl")) {
                A = A;
                text = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (A == 0 && b1.g(xmlPullParser, "pssh") && xmlPullParser.next() == 4) {
                byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                UUID uuidF = p.f(bArrDecode);
                if (uuidF == null) {
                    u.h("MpdParser", "Skipping malformed cenc:pssh data");
                    uuid = uuidF;
                    A = 0;
                    text = text;
                } else {
                    A = bArrDecode;
                    uuid = uuidF;
                    text = text;
                }
            } else if (A == 0) {
                UUID uuid2 = androidx.media3.common.h.f9985e;
                if (uuid2.equals(uuid) && b1.f(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    A = p.a(uuid2, Base64.decode(xmlPullParser.getText(), 0));
                    text = text;
                } else {
                    v(xmlPullParser);
                    A = A;
                    text = text;
                }
            } else {
                v(xmlPullParser);
                A = A;
                text = text;
            }
        } while (!b1.d(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new DrmInitData.SchemeData(uuid, text, MimeTypes.VIDEO_MP4, A) : null);
    }

    protected int F(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if (MimeTypes.BASE_TYPE_AUDIO.equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if (MimeTypes.BASE_TYPE_TEXT.equals(attributeValue)) {
            return 3;
        }
        return "image".equals(attributeValue) ? 4 : -1;
    }

    protected Pair Q(XmlPullParser xmlPullParser, String str, String str2, long j11, long j12, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        long jZ = Z(xmlPullParser, "id", 0L);
        long jZ2 = Z(xmlPullParser, "duration", C.TIME_UNSET);
        long jZ3 = Z(xmlPullParser, "presentationTime", 0L);
        long jE1 = a1.e1(jZ2, 1000L, j11);
        long jE2 = a1.e1(jZ3 - j12, 1000000L, j11);
        String strT0 = t0(xmlPullParser, "messageData", null);
        byte[] bArrR = R(xmlPullParser, byteArrayOutputStream);
        Long lValueOf = Long.valueOf(jE2);
        if (strT0 != null) {
            bArrR = a1.u0(strT0);
        }
        return Pair.create(lValueOf, c(str, str2, jZ, jE1, bArrR));
    }

    protected byte[] R(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, StandardCharsets.UTF_8.name());
        xmlPullParser.nextToken();
        while (!b1.d(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    xmlSerializerNewSerializer.startDocument(null, Boolean.FALSE);
                    break;
                case 1:
                    xmlSerializerNewSerializer.endDocument();
                    break;
                case 2:
                    xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i11 = 0; i11 < xmlPullParser.getAttributeCount(); i11++) {
                        xmlSerializerNewSerializer.attribute(xmlPullParser.getAttributeNamespace(i11), xmlPullParser.getAttributeName(i11), xmlPullParser.getAttributeValue(i11));
                    }
                    break;
                case 3:
                    xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    xmlSerializerNewSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        xmlSerializerNewSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    protected f S(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        ArrayList arrayList;
        String strT0 = t0(xmlPullParser, "schemeIdUri", "");
        String strT1 = t0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, "");
        long jZ = Z(xmlPullParser, "timescale", 1L);
        long jZ2 = Z(xmlPullParser, "presentationTimeOffset", 0L);
        ArrayList arrayList2 = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(512);
        while (true) {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "Event")) {
                byteArrayOutputStream = byteArrayOutputStream2;
                long j11 = jZ2;
                arrayList = arrayList2;
                arrayList.add(Q(xmlPullParser, strT0, strT1, jZ, j11, byteArrayOutputStream));
            } else {
                byteArrayOutputStream = byteArrayOutputStream2;
                arrayList = arrayList2;
                v(xmlPullParser);
            }
            if (b1.d(xmlPullParser, "EventStream")) {
                break;
            }
            arrayList2 = arrayList;
            byteArrayOutputStream2 = byteArrayOutputStream;
            jZ2 = jZ2;
        }
        long[] jArr = new long[arrayList.size()];
        w2.a[] aVarArr = new w2.a[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            Pair pair = (Pair) arrayList.get(i11);
            jArr[i11] = ((Long) pair.first).longValue();
            aVarArr[i11] = (w2.a) pair.second;
        }
        return d(strT0, strT1, jZ, jArr, aVarArr);
    }

    protected i V(XmlPullParser xmlPullParser) {
        return f0(xmlPullParser, "sourceURL", "range");
    }

    protected s X(XmlPullParser xmlPullParser) {
        return new s(xmlPullParser.getAttributeValue(null, "lang"), u0(xmlPullParser, "Label"));
    }

    /* JADX WARN: Code duplicated, block: B:66:0x019b  */
    /* JADX WARN: Code duplicated, block: B:68:0x019f  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:76:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:80:0x01dc A[LOOP:0: B:24:0x00a0->B:80:0x01dc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x0197 A[SYNTHETIC] */
    protected c a0(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        long j11;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j12;
        Throwable th2;
        ArrayList arrayList3;
        long j13;
        d dVar = this;
        boolean z10 = true;
        boolean zU = dVar.u(dVar.d0(xmlPullParser, "profiles", new String[0]));
        long j14 = C.TIME_UNSET;
        long jG = G(xmlPullParser, "availabilityStartTime", C.TIME_UNSET);
        long jO = O(xmlPullParser, "mediaPresentationDuration", C.TIME_UNSET);
        long jO2 = O(xmlPullParser, "minBufferTime", C.TIME_UNSET);
        Throwable th3 = null;
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, NativeComponentConstants.KEY_COMPONENT_TYPE));
        long jO3 = zEquals ? O(xmlPullParser, "minimumUpdatePeriod", C.TIME_UNSET) : -9223372036854775807L;
        long jO4 = zEquals ? O(xmlPullParser, "timeShiftBufferDepth", C.TIME_UNSET) : -9223372036854775807L;
        long jO5 = zEquals ? O(xmlPullParser, "suggestedPresentationDelay", C.TIME_UNSET) : -9223372036854775807L;
        long jG2 = G(xmlPullParser, "publishTime", C.TIME_UNSET);
        long jA = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListL = Lists.l(new b(uri.toString(), uri.toString(), zU ? 1 : Integer.MIN_VALUE, 1));
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        boolean z11 = false;
        boolean z12 = false;
        long j15 = zEquals ? -9223372036854775807L : 0L;
        h hVarE0 = null;
        o oVarY0 = null;
        Uri uriF = null;
        l lVarS0 = null;
        while (true) {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "BaseURL")) {
                if (!z11) {
                    jA = dVar.A(xmlPullParser, jA);
                    z11 = z10;
                }
                arrayList5.addAll(dVar.B(xmlPullParser, arrayListL, zU));
            } else if (b1.f(xmlPullParser, "ProgramInformation")) {
                hVarE0 = e0(xmlPullParser);
            } else if (b1.f(xmlPullParser, "UTCTiming")) {
                oVarY0 = y0(xmlPullParser);
            } else if (b1.f(xmlPullParser, HttpHeaders.LOCATION)) {
                uriF = r0.f(uri.toString(), xmlPullParser.nextText());
            } else {
                if (b1.f(xmlPullParser, "ServiceDescription")) {
                    lVarS0 = s0(xmlPullParser);
                } else {
                    if (!b1.f(xmlPullParser, "Period") || z12) {
                        j11 = jA;
                        arrayList = arrayList5;
                        arrayList2 = arrayListL;
                        j12 = j14;
                        th2 = th3;
                        arrayList3 = arrayList4;
                        v(xmlPullParser);
                    } else {
                        j11 = jA;
                        arrayList = arrayList5;
                        arrayList2 = arrayListL;
                        arrayList3 = arrayList4;
                        j12 = j14;
                        th2 = th3;
                        Pair pairC0 = c0(xmlPullParser, !arrayList5.isEmpty() ? arrayList5 : arrayListL, j15, j11, jG, jO4, zU);
                        g gVar = (g) pairC0.first;
                        if (gVar.f82b != j12) {
                            long jLongValue = ((Long) pairC0.second).longValue();
                            long j16 = jLongValue == j12 ? j12 : gVar.f82b + jLongValue;
                            arrayList3.add(gVar);
                            j15 = j16;
                        } else {
                            if (!zEquals) {
                                throw ParserException.createForMalformedManifest("Unable to determine start of period " + arrayList3.size(), th2);
                            }
                            arrayList3 = arrayList3;
                            z12 = true;
                        }
                    }
                    jA = j11;
                }
                if (b1.d(xmlPullParser, "MPD")) {
                    if (jO != j12) {
                        j13 = jO;
                    } else if (j15 != j12) {
                        j13 = j15;
                    } else {
                        if (!zEquals) {
                            throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", th2);
                        }
                        j13 = jO;
                    }
                    if (arrayList3.isEmpty()) {
                        throw ParserException.createForMalformedManifest("No periods found.", th2);
                    }
                    return f(jG, j13, jO2, zEquals, jO3, jO4, jO5, jG2, hVarE0, oVarY0, lVarS0, uriF, arrayList3);
                }
                dVar = this;
                arrayList4 = arrayList3;
                th3 = th2;
                arrayList5 = arrayList;
                arrayListL = arrayList2;
                j14 = j12;
                z10 = true;
            }
            arrayList = arrayList5;
            arrayList2 = arrayListL;
            j12 = j14;
            th2 = th3;
            arrayList3 = arrayList4;
            if (b1.d(xmlPullParser, "MPD")) {
                if (jO != j12) {
                    j13 = jO;
                } else if (j15 != j12) {
                    j13 = j15;
                } else {
                    if (!zEquals) {
                        throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", th2);
                    }
                    j13 = jO;
                }
                if (arrayList3.isEmpty()) {
                    return f(jG, j13, jO2, zEquals, jO3, jO4, jO5, jG2, hVarE0, oVarY0, lVarS0, uriF, arrayList3);
                }
                throw ParserException.createForMalformedManifest("No periods found.", th2);
            }
            dVar = this;
            arrayList4 = arrayList3;
            th3 = th2;
            arrayList5 = arrayList;
            arrayListL = arrayList2;
            j14 = j12;
            z10 = true;
        }
    }

    protected a2.a b(long j11, int i11, List list, List list2, List list3, List list4) {
        return new a2.a(j11, i11, list, list2, list3, list4);
    }

    protected w2.a c(String str, String str2, long j11, long j12, byte[] bArr) {
        return new w2.a(str, str2, j12, j11, bArr);
    }

    protected Pair c0(XmlPullParser xmlPullParser, List list, long j11, long j12, long j13, long j14, boolean z10) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        List list2;
        List list3;
        Object obj;
        long j15;
        k kVarN0;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Object obj2 = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "id");
        long jO = O(xmlPullParser2, "start", j11);
        long j16 = C.TIME_UNSET;
        long j17 = j13 != C.TIME_UNSET ? j13 + jO : -9223372036854775807L;
        long jO2 = O(xmlPullParser2, "duration", C.TIME_UNSET);
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        long jA = j12;
        boolean z11 = false;
        long j18 = -9223372036854775807L;
        k kVarL0 = null;
        e eVarH = null;
        while (true) {
            xmlPullParser.next();
            if (b1.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    jA = A(xmlPullParser2, jA);
                    z11 = true;
                }
                arrayList4.addAll(B(xmlPullParser2, list, z10));
                list3 = arrayList3;
                arrayList = arrayList4;
                j15 = j16;
                obj = obj2;
                list2 = arrayList2;
            } else {
                if (b1.f(xmlPullParser2, "AdaptationSet")) {
                    jA = jA;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    list2.add(x(xmlPullParser, !arrayList4.isEmpty() ? arrayList4 : list, kVarL0, jO2, jA, j18, j17, j14, z10));
                    xmlPullParser2 = xmlPullParser;
                    list3 = arrayList3;
                } else {
                    jA = jA;
                    List list4 = arrayList3;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    xmlPullParser2 = xmlPullParser;
                    if (b1.f(xmlPullParser2, "EventStream")) {
                        list4.add(S(xmlPullParser));
                        list3 = list4;
                    } else if (b1.f(xmlPullParser2, "SegmentBase")) {
                        list3 = list4;
                        kVarL0 = l0(xmlPullParser2, null);
                        obj = null;
                        jA = jA;
                        j15 = C.TIME_UNSET;
                    } else {
                        list3 = list4;
                        if (b1.f(xmlPullParser2, "SegmentList")) {
                            long jA2 = A(xmlPullParser2, C.TIME_UNSET);
                            obj = null;
                            kVarN0 = m0(xmlPullParser, null, j17, jO2, jA, jA2, j14);
                            j18 = jA2;
                            j15 = C.TIME_UNSET;
                        } else {
                            obj = null;
                            if (b1.f(xmlPullParser2, "SegmentTemplate")) {
                                long jA3 = A(xmlPullParser2, C.TIME_UNSET);
                                j15 = -9223372036854775807L;
                                kVarN0 = n0(xmlPullParser, null, ImmutableList.of(), j17, jO2, jA, jA3, j14);
                                j18 = jA3;
                            } else {
                                j15 = C.TIME_UNSET;
                                if (b1.f(xmlPullParser2, "AssetIdentifier")) {
                                    eVarH = H(xmlPullParser2, "AssetIdentifier");
                                } else {
                                    v(xmlPullParser);
                                }
                                jA = jA;
                            }
                        }
                        kVarL0 = kVarN0;
                    }
                }
                obj = null;
                j15 = C.TIME_UNSET;
                jA = jA;
            }
            if (b1.d(xmlPullParser2, "Period")) {
                return Pair.create(g(attributeValue, jO, list2, list3, eVarH), Long.valueOf(jO2));
            }
            arrayList2 = list2;
            arrayList4 = arrayList;
            obj2 = obj;
            arrayList3 = list3;
            j16 = j15;
        }
    }

    protected f d(String str, String str2, long j11, long[] jArr, w2.a[] aVarArr) {
        return new f(str, str2, j11, jArr, aVarArr);
    }

    protected String[] d0(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? strArr : attributeValue.split(",");
    }

    protected r e(String str, String str2, int i11, int i12, float f11, int i13, int i14, int i15, String str3, List list, List list2, String str4, String str5, String str6, List list3, List list4) {
        String str7 = str5;
        String str8 = str4;
        String strT = t(str2, str8);
        if (MimeTypes.AUDIO_E_AC3.equals(strT)) {
            strT = P(list4);
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(strT)) {
                str8 = "ec+3";
            }
        }
        if (y.p(str8, str7)) {
            if (str7 == null) {
                str7 = str8;
            }
            strT = "video/dolby-vision";
            str8 = str7;
        }
        int iR0 = r0(list);
        int iK0 = k0(list) | h0(list2) | j0(list3) | j0(list4);
        Pair pairV0 = v0(list3);
        r.b bVarJ0 = new r.b().f0(str).U(str2).u0(strT).S(str8).p0(i15).w0(iR0).s0(iK0).j0(str3);
        int iD = -1;
        r.b bVarA0 = bVarJ0.z0(pairV0 != null ? ((Integer) pairV0.first).intValue() : -1).A0(pairV0 != null ? ((Integer) pairV0.second).intValue() : -1);
        if (y.t(strT)) {
            bVarA0.B0(i11).d0(i12).b0(f11);
        } else if (y.o(strT)) {
            bVarA0.R(i13).v0(i14);
        } else if (y.s(strT)) {
            if (MimeTypes.APPLICATION_CEA608.equals(strT)) {
                iD = C(list2);
            } else if (MimeTypes.APPLICATION_CEA708.equals(strT)) {
                iD = D(list2);
            }
            bVarA0.O(iD);
        } else if (y.q(strT)) {
            bVarA0.B0(i11).d0(i12);
        }
        return bVarA0.N();
    }

    protected h e0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strNextText = null;
        String strT0 = t0(xmlPullParser, "moreInformationURL", null);
        String strT1 = t0(xmlPullParser, "lang", null);
        String strNextText2 = null;
        String strNextText3 = null;
        while (true) {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "Title")) {
                strNextText = xmlPullParser.nextText();
            } else if (b1.f(xmlPullParser, "Source")) {
                strNextText2 = xmlPullParser.nextText();
            } else if (b1.f(xmlPullParser, "Copyright")) {
                strNextText3 = xmlPullParser.nextText();
            } else {
                v(xmlPullParser);
            }
            String str = strNextText3;
            if (b1.d(xmlPullParser, "ProgramInformation")) {
                return new h(strNextText, strNextText2, str, strT0, strT1);
            }
            strNextText3 = str;
        }
    }

    protected c f(long j11, long j12, long j13, boolean z10, long j14, long j15, long j16, long j17, h hVar, o oVar, l lVar, Uri uri, List list) {
        return new c(j11, j12, j13, z10, j14, j15, j16, j17, hVar, oVar, lVar, uri, list);
    }

    protected i f0(XmlPullParser xmlPullParser, String str, String str2) {
        long j11;
        long j12;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j11 = Long.parseLong(strArrSplit[0]);
            if (strArrSplit.length == 2) {
                j12 = (Long.parseLong(strArrSplit[1]) - j11) + 1;
            }
            return h(attributeValue, j11, j12);
        }
        j11 = 0;
        j12 = -1;
        return h(attributeValue, j11, j12);
    }

    protected g g(String str, long j11, List list, List list2, e eVar) {
        return new g(str, j11, list, list2, eVar);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x021c A[LOOP:0: B:3:0x007a->B:59:0x021c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:60:0x01c0 A[EDGE_INSN: B:60:0x01c0->B:49:0x01c0 BREAK  A[LOOP:0: B:3:0x007a->B:59:0x021c], SYNTHETIC] */
    protected a g0(XmlPullParser xmlPullParser, List list, String str, String str2, String str3, String str4, int i11, int i12, float f11, int i13, int i14, String str5, List list2, List list3, List list4, List list5, k kVar, long j11, long j12, long j13, long j14, long j15, boolean z10) throws XmlPullParserException, IOException {
        long j16;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        long jA;
        ArrayList arrayList7;
        k eVar;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int iW = W(xmlPullParser, "bandwidth", -1);
        String strT0 = t0(xmlPullParser, "mimeType", str);
        String strT1 = t0(xmlPullParser, "codecs", str2);
        String strT2 = t0(xmlPullParser, "scte214:supplementalCodecs", str3);
        String strT3 = t0(xmlPullParser, "scte214:supplementalProfiles", str4);
        int iW2 = W(xmlPullParser, "width", i11);
        int iW3 = W(xmlPullParser, "height", i12);
        float fU = U(xmlPullParser, f11);
        int iW4 = W(xmlPullParser, "audioSamplingRate", i14);
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList(list4);
        ArrayList arrayList14 = new ArrayList(list5);
        int iZ = i13;
        long jA2 = j13;
        boolean z11 = false;
        String str6 = null;
        k kVarN0 = kVar;
        long j17 = j14;
        ArrayList arrayList15 = new ArrayList();
        while (true) {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "BaseURL")) {
                if (!z11) {
                    jA2 = A(xmlPullParser, jA2);
                    z11 = true;
                }
                arrayList15.addAll(B(xmlPullParser, list, z10));
                jA2 = jA2;
            } else {
                if (b1.f(xmlPullParser, "AudioChannelConfiguration")) {
                    eVar = kVarN0;
                    iZ = z(xmlPullParser, strT1);
                    arrayList5 = arrayList11;
                    arrayList6 = arrayList13;
                    arrayList10 = arrayList15;
                } else if (b1.f(xmlPullParser, "SegmentBase")) {
                    kVarN0 = l0(xmlPullParser, (k.e) kVarN0);
                } else {
                    if (b1.f(xmlPullParser, "SegmentList")) {
                        jA = A(xmlPullParser, j17);
                        j16 = jA2;
                        arrayList9 = arrayList15;
                        arrayList = arrayList13;
                        arrayList2 = arrayList14;
                        arrayList3 = arrayList11;
                        arrayList4 = arrayList12;
                        kVarN0 = m0(xmlPullParser, (k.b) kVarN0, j11, j12, j16, jA, j15);
                    } else {
                        j16 = jA2;
                        ArrayList arrayList16 = arrayList15;
                        arrayList = arrayList13;
                        arrayList2 = arrayList14;
                        arrayList3 = arrayList11;
                        arrayList4 = arrayList12;
                        if (b1.f(xmlPullParser, "SegmentTemplate")) {
                            jA = A(xmlPullParser, j17);
                            kVarN0 = n0(xmlPullParser, (k.c) kVarN0, list5, j11, j12, j16, jA, j15);
                            arrayList9 = arrayList16;
                        } else {
                            strT1 = strT1;
                            if (b1.f(xmlPullParser, "ContentProtection")) {
                                Pair pairE = E(xmlPullParser);
                                Object obj = pairE.first;
                                if (obj != null) {
                                    str6 = (String) obj;
                                }
                                Object obj2 = pairE.second;
                                if (obj2 != null) {
                                    arrayList5 = arrayList3;
                                    arrayList5.add((DrmInitData.SchemeData) obj2);
                                } else {
                                    arrayList5 = arrayList3;
                                }
                                jA2 = j16;
                                arrayList6 = arrayList;
                                arrayList14 = arrayList2;
                                arrayList8 = arrayList16;
                                arrayList12 = arrayList4;
                                arrayList7 = arrayList8;
                            } else {
                                arrayList5 = arrayList3;
                                if (b1.f(xmlPullParser, "InbandEventStream")) {
                                    arrayList12 = arrayList4;
                                    arrayList12.add(H(xmlPullParser, "InbandEventStream"));
                                    arrayList6 = arrayList;
                                } else {
                                    arrayList12 = arrayList4;
                                    if (b1.f(xmlPullParser, "EssentialProperty")) {
                                        arrayList6 = arrayList;
                                        arrayList6.add(H(xmlPullParser, "EssentialProperty"));
                                    } else {
                                        arrayList6 = arrayList;
                                        if (b1.f(xmlPullParser, "SupplementalProperty")) {
                                            arrayList14 = arrayList2;
                                            arrayList14.add(H(xmlPullParser, "SupplementalProperty"));
                                        } else {
                                            arrayList14 = arrayList2;
                                            v(xmlPullParser);
                                        }
                                    }
                                    iZ = iZ;
                                    jA2 = j16;
                                    arrayList7 = arrayList16;
                                }
                                arrayList14 = arrayList2;
                                iZ = iZ;
                                jA2 = j16;
                                arrayList7 = arrayList16;
                            }
                        }
                        eVar = kVarN0;
                        arrayList10 = arrayList7;
                    }
                    j17 = jA;
                    jA2 = j16;
                    arrayList6 = arrayList;
                    arrayList14 = arrayList2;
                    arrayList5 = arrayList3;
                    arrayList8 = arrayList9;
                    arrayList12 = arrayList4;
                    arrayList7 = arrayList8;
                    eVar = kVarN0;
                    arrayList10 = arrayList7;
                }
                if (b1.d(xmlPullParser, "Representation")) {
                    break;
                }
                arrayList13 = arrayList6;
                arrayList11 = arrayList5;
                kVarN0 = eVar;
                arrayList15 = arrayList10;
                strT1 = strT1;
                iZ = iZ;
            }
            iZ = iZ;
            eVar = kVarN0;
            arrayList5 = arrayList11;
            arrayList6 = arrayList13;
            arrayList10 = arrayList15;
            if (b1.d(xmlPullParser, "Representation")) {
                break;
                break;
            }
            arrayList13 = arrayList6;
            arrayList11 = arrayList5;
            kVarN0 = eVar;
            arrayList15 = arrayList10;
            strT1 = strT1;
            iZ = iZ;
        }
        List list6 = arrayList14;
        List list7 = arrayList6;
        ArrayList arrayList17 = arrayList12;
        ArrayList arrayList18 = arrayList5;
        r rVarE = e(attributeValue, strT0, iW2, iW3, fU, iZ, iW4, iW, str5, list2, list3, strT1, strT2, strT3, list7, list6);
        if (eVar == null) {
            eVar = new k.e();
        }
        boolean zIsEmpty = arrayList10.isEmpty();
        List list8 = arrayList10;
        if (zIsEmpty) {
            list8 = list;
        }
        return new a(rVarE, list8, eVar, str6, arrayList18, arrayList17, list7, list6, -1L);
    }

    protected i h(String str, long j11, long j12) {
        return new i(str, j11, j12);
    }

    protected int h0(List list) {
        int iW0;
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            e eVar = (e) list.get(i12);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f73a)) {
                iW0 = i0(eVar.f74b);
            } else {
                if (com.google.common.base.a.a("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar.f73a)) {
                    iW0 = w0(eVar.f74b);
                }
            }
            i11 |= iW0;
        }
        return i11;
    }

    protected j i(a aVar, String str, List list, String str2, ArrayList arrayList, ArrayList arrayList2) {
        r.b bVarB = aVar.f64a.b();
        if (str == null || !list.isEmpty()) {
            bVarB.i0(list);
        } else {
            bVarB.h0(str);
        }
        String str3 = aVar.f67d;
        if (str3 == null) {
            str3 = str2;
        }
        ArrayList arrayList3 = aVar.f68e;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            q(arrayList3);
            r(arrayList3);
            bVarB.Y(new DrmInitData(str3, arrayList3));
        }
        ArrayList arrayList4 = aVar.f69f;
        arrayList4.addAll(arrayList2);
        return j.n(aVar.f70g, bVarB.N(), aVar.f65b, aVar.f66c, arrayList4, aVar.f71h, aVar.f72i, null);
    }

    protected int i0(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "subtitle":
            case "forced_subtitle":
            case "forced-subtitle":
                return 128;
            case "description":
                return 512;
            case "enhanced-audio-intelligibility":
                return 2048;
            case "alternate":
                return 2;
            case "dub":
                return 16;
            case "main":
                return 1;
            case "sign":
                return 256;
            case "caption":
                return 64;
            case "commentary":
                return 8;
            case "emergency":
                return 32;
            case "supplementary":
                return 4;
            default:
                return 0;
        }
    }

    protected k.b j(i iVar, long j11, long j12, long j13, long j14, List list, long j15, List list2, long j16, long j17) {
        return new k.b(iVar, j11, j12, j13, j14, list, j15, list2, a1.R0(j16), a1.R0(j17));
    }

    protected int j0(List list) {
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (com.google.common.base.a.a("http://dashif.org/guidelines/trickmode", ((e) list.get(i12)).f73a)) {
                i11 = 16384;
            }
        }
        return i11;
    }

    protected k.c k(i iVar, long j11, long j12, long j13, long j14, long j15, List list, long j16, n nVar, n nVar2, long j17, long j18) {
        return new k.c(iVar, j11, j12, j13, j14, j15, list, j16, nVar, nVar2, a1.R0(j17), a1.R0(j18));
    }

    protected int k0(List list) {
        int iI0 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f73a)) {
                iI0 |= i0(eVar.f74b);
            }
        }
        return iI0;
    }

    protected k.d l(long j11, long j12) {
        return new k.d(j11, j12);
    }

    protected k.e l0(XmlPullParser xmlPullParser, k.e eVar) throws XmlPullParserException, IOException {
        long j11;
        long j12;
        long jZ = Z(xmlPullParser, "timescale", eVar != null ? eVar.f110b : 1L);
        long jZ2 = Z(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.f111c : 0L);
        long j13 = eVar != null ? eVar.f124d : 0L;
        long j14 = eVar != null ? eVar.f125e : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            j12 = Long.parseLong(strArrSplit[0]);
            j11 = (Long.parseLong(strArrSplit[1]) - j12) + 1;
        } else {
            j11 = j14;
            j12 = j13;
        }
        i iVarV = eVar != null ? eVar.f109a : null;
        do {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "Initialization")) {
                iVarV = V(xmlPullParser);
            } else {
                v(xmlPullParser);
            }
        } while (!b1.d(xmlPullParser, "SegmentBase"));
        return m(iVarV, jZ, jZ2, j12, j11);
    }

    protected k.e m(i iVar, long j11, long j12, long j13, long j14) {
        return new k.e(iVar, j11, j12, j13, j14);
    }

    protected k.b m0(XmlPullParser xmlPullParser, k.b bVar, long j11, long j12, long j13, long j14, long j15) throws XmlPullParserException, IOException {
        long jZ = Z(xmlPullParser, "timescale", bVar != null ? bVar.f110b : 1L);
        long jZ2 = Z(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.f111c : 0L);
        long jZ3 = Z(xmlPullParser, "duration", bVar != null ? bVar.f113e : C.TIME_UNSET);
        long jZ4 = Z(xmlPullParser, "startNumber", bVar != null ? bVar.f112d : 1L);
        long jS = s(j13, j14);
        List listO0 = null;
        List arrayList = null;
        i iVarV = null;
        do {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "Initialization")) {
                iVarV = V(xmlPullParser);
            } else if (b1.f(xmlPullParser, "SegmentTimeline")) {
                listO0 = o0(xmlPullParser, jZ, j12);
            } else if (b1.f(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(p0(xmlPullParser));
            } else {
                v(xmlPullParser);
            }
        } while (!b1.d(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            if (iVarV == null) {
                iVarV = bVar.f109a;
            }
            if (listO0 == null) {
                listO0 = bVar.f114f;
            }
            if (arrayList == null) {
                arrayList = bVar.f118j;
            }
        }
        return j(iVarV, jZ, jZ2, jZ4, jZ3, listO0, jS, arrayList, j15, j11);
    }

    protected o n(String str, String str2) {
        return new o(str, str2);
    }

    protected k.c n0(XmlPullParser xmlPullParser, k.c cVar, List list, long j11, long j12, long j13, long j14, long j15) throws XmlPullParserException, IOException {
        long jZ = Z(xmlPullParser, "timescale", cVar != null ? cVar.f110b : 1L);
        long jZ2 = Z(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.f111c : 0L);
        long jZ3 = Z(xmlPullParser, "duration", cVar != null ? cVar.f113e : C.TIME_UNSET);
        long jZ4 = Z(xmlPullParser, "startNumber", cVar != null ? cVar.f112d : 1L);
        long jY = Y(list);
        long jS = s(j13, j14);
        List listO0 = null;
        n nVarX0 = x0(xmlPullParser, "media", cVar != null ? cVar.f120k : null);
        n nVarX1 = x0(xmlPullParser, "initialization", cVar != null ? cVar.f119j : null);
        i iVarV = null;
        do {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "Initialization")) {
                iVarV = V(xmlPullParser);
            } else if (b1.f(xmlPullParser, "SegmentTimeline")) {
                listO0 = o0(xmlPullParser, jZ, j12);
            } else {
                v(xmlPullParser);
            }
        } while (!b1.d(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (iVarV == null) {
                iVarV = cVar.f109a;
            }
            if (listO0 == null) {
                listO0 = cVar.f114f;
            }
        }
        return k(iVarV, jZ, jZ2, jZ4, jY, jZ3, listO0, jS, nVarX1, nVarX0, j15, j11);
    }

    protected List o0(XmlPullParser xmlPullParser, long j11, long j12) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jA = 0;
        long jZ = -9223372036854775807L;
        boolean z10 = false;
        int iW = 0;
        do {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "S")) {
                long jZ2 = Z(xmlPullParser, "t", C.TIME_UNSET);
                if (z10) {
                    jA = a(arrayList, jA, jZ, iW, jZ2);
                }
                if (jZ2 == C.TIME_UNSET) {
                    jZ2 = jA;
                }
                jZ = Z(xmlPullParser, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, C.TIME_UNSET);
                iW = W(xmlPullParser, CampaignEx.JSON_KEY_AD_R, 0);
                z10 = true;
                jA = jZ2;
            } else {
                v(xmlPullParser);
            }
        } while (!b1.d(xmlPullParser, "SegmentTimeline"));
        if (z10) {
            a(arrayList, jA, jZ, iW, a1.e1(j12, j11, 1000L));
        }
        return arrayList;
    }

    protected i p0(XmlPullParser xmlPullParser) {
        return f0(xmlPullParser, "media", "mediaRange");
    }

    protected int q0(String str) {
        if (str == null) {
            return 0;
        }
        return (str.equals("forced_subtitle") || str.equals("forced-subtitle")) ? 2 : 0;
    }

    protected int r0(List list) {
        int iQ0 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f73a)) {
                iQ0 |= q0(eVar.f74b);
            }
        }
        return iQ0;
    }

    protected l s0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        long jZ = -9223372036854775807L;
        long jZ2 = -9223372036854775807L;
        long jZ3 = -9223372036854775807L;
        float fT = -3.4028235E38f;
        float fT2 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "Latency")) {
                jZ = Z(xmlPullParser, "target", C.TIME_UNSET);
                jZ2 = Z(xmlPullParser, "min", C.TIME_UNSET);
                jZ3 = Z(xmlPullParser, "max", C.TIME_UNSET);
            } else if (b1.f(xmlPullParser, "PlaybackRate")) {
                fT = T(xmlPullParser, "min", -3.4028235E38f);
                fT2 = T(xmlPullParser, "max", -3.4028235E38f);
            }
            long j11 = jZ;
            long j12 = jZ2;
            long j13 = jZ3;
            float f11 = fT;
            float f12 = fT2;
            if (b1.d(xmlPullParser, "ServiceDescription")) {
                return new l(j11, j12, j13, f11, f12);
            }
            jZ = j11;
            jZ2 = j12;
            jZ3 = j13;
            fT = f11;
            fT2 = f12;
        }
    }

    protected Pair v0(List list) {
        String str;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if ((com.google.common.base.a.a("http://dashif.org/thumbnail_tile", eVar.f73a) || com.google.common.base.a.a("http://dashif.org/guidelines/thumbnail_tile", eVar.f73a)) && (str = eVar.f74b) != null) {
                String[] strArrO1 = a1.o1(str, "x");
                if (strArrO1.length != 2) {
                    continue;
                } else {
                    try {
                        return Pair.create(Integer.valueOf(Integer.parseInt(strArrO1[0])), Integer.valueOf(Integer.parseInt(strArrO1[1])));
                    } catch (NumberFormatException unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.upstream.q.a
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public c parse(Uri uri, InputStream inputStream) throws ParserException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f63a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return a0(xmlPullParserNewPullParser, uri);
            }
            throw ParserException.createForMalformedManifest("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e11) {
            throw ParserException.createForMalformedManifest(null, e11);
        }
    }

    protected int w0(String str) {
        if (str == null) {
            return 0;
        }
        byte b11 = -1;
        switch (str.hashCode()) {
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                if (str.equals("1")) {
                    b11 = 0;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    b11 = 1;
                }
                break;
            case AD_REWARD_USER_VALUE:
                if (str.equals("3")) {
                    b11 = 2;
                }
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (str.equals("4")) {
                    b11 = 3;
                }
                break;
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (str.equals(PrepareException.ERROR_NO_URL)) {
                    b11 = 4;
                }
                break;
        }
        switch (b11) {
            case 0:
                return 512;
            case 1:
                return 2048;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0361 A[LOOP:0: B:3:0x008c->B:76:0x0361, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x031f A[EDGE_INSN: B:77:0x031f->B:70:0x031f BREAK  A[LOOP:0: B:3:0x008c->B:76:0x0361], SYNTHETIC] */
    protected a2.a x(XmlPullParser xmlPullParser, List list, k kVar, long j11, long j12, long j13, long j14, long j15, boolean z10) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        Object obj;
        String str;
        List list2;
        ArrayList arrayList2;
        long j16;
        long j17;
        int i11;
        ArrayList arrayList3;
        long jA;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        long jZ = Z(xmlPullParser2, "id", -1L);
        int iF = F(xmlPullParser);
        String attributeValue = xmlPullParser2.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "codecs");
        String attributeValue3 = xmlPullParser2.getAttributeValue(null, "scte214:supplementalCodecs");
        String attributeValue4 = xmlPullParser2.getAttributeValue(null, "scte214:supplementalProfiles");
        int iW = W(xmlPullParser2, "width", -1);
        int iW2 = W(xmlPullParser2, "height", -1);
        float fU = U(xmlPullParser2, -1.0f);
        int iW3 = W(xmlPullParser2, "audioSamplingRate", -1);
        String str2 = "lang";
        String attributeValue5 = xmlPullParser2.getAttributeValue(null, "lang");
        String attributeValue6 = xmlPullParser2.getAttributeValue(null, "label");
        List arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        k kVarN0 = kVar;
        int iZ = -1;
        List list3 = arrayList4;
        boolean z11 = false;
        String str3 = null;
        String str4 = attributeValue5;
        long jA2 = j12;
        long j18 = j13;
        while (true) {
            xmlPullParser.next();
            arrayList = arrayList11;
            if (b1.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    jA2 = A(xmlPullParser2, jA2);
                    z11 = true;
                }
                arrayList12.addAll(B(xmlPullParser2, list, z10));
                jA2 = jA2;
                arrayList3 = arrayList6;
            } else {
                long j19 = jA2;
                ArrayList arrayList13 = arrayList6;
                if (b1.f(xmlPullParser2, "ContentProtection")) {
                    Pair pairE = E(xmlPullParser);
                    Object obj2 = pairE.first;
                    if (obj2 != null) {
                        str3 = (String) obj2;
                    }
                    Object obj3 = pairE.second;
                    if (obj3 != null) {
                        arrayList5.add((DrmInitData.SchemeData) obj3);
                    }
                    arrayList3 = arrayList13;
                    jA2 = j19;
                } else {
                    if (b1.f(xmlPullParser2, "ContentComponent")) {
                        obj = null;
                        String strP = p(str4, xmlPullParser2.getAttributeValue(null, str2));
                        iF = o(iF, F(xmlPullParser));
                        str4 = strP;
                    } else {
                        obj = null;
                        if (b1.f(xmlPullParser2, "Role")) {
                            arrayList8.add(H(xmlPullParser2, "Role"));
                        } else if (b1.f(xmlPullParser2, "AudioChannelConfiguration")) {
                            iZ = z(xmlPullParser2, attributeValue2);
                        } else if (b1.f(xmlPullParser2, "Accessibility")) {
                            arrayList7.add(H(xmlPullParser2, "Accessibility"));
                        } else if (b1.f(xmlPullParser2, "EssentialProperty")) {
                            arrayList9.add(H(xmlPullParser2, "EssentialProperty"));
                        } else if (b1.f(xmlPullParser2, "SupplementalProperty")) {
                            arrayList10.add(H(xmlPullParser2, "SupplementalProperty"));
                        } else {
                            if (b1.f(xmlPullParser2, "Representation")) {
                                int i12 = iF;
                                arrayList10 = arrayList10;
                                arrayList9 = arrayList9;
                                arrayList8 = arrayList8;
                                arrayList7 = arrayList7;
                                arrayList2 = arrayList13;
                                arrayList5 = arrayList5;
                                str = str4;
                                list2 = list3;
                                str2 = str2;
                                attributeValue2 = attributeValue2;
                                arrayList12 = arrayList12;
                                a aVarG0 = g0(xmlPullParser, !arrayList12.isEmpty() ? arrayList12 : list, attributeValue, attributeValue2, attributeValue3, attributeValue4, iW, iW2, fU, iZ, iW3, str, arrayList8, arrayList7, arrayList9, arrayList10, kVarN0, j14, j11, j19, j18, j15, z10);
                                int iO = o(i12, y.k(aVarG0.f64a.f10161o));
                                arrayList = arrayList;
                                arrayList.add(aVarG0);
                                xmlPullParser2 = xmlPullParser;
                                jA = j18;
                                iF = iO;
                                jA2 = j19;
                            } else {
                                int i13 = iF;
                                arrayList10 = arrayList10;
                                arrayList9 = arrayList9;
                                arrayList8 = arrayList8;
                                arrayList7 = arrayList7;
                                arrayList5 = arrayList5;
                                str = str4;
                                str2 = str2;
                                attributeValue2 = attributeValue2;
                                arrayList12 = arrayList12;
                                list2 = list3;
                                arrayList = arrayList;
                                arrayList2 = arrayList13;
                                j16 = j19;
                                xmlPullParser2 = xmlPullParser;
                                if (b1.f(xmlPullParser2, "SegmentBase")) {
                                    jA = j18;
                                    kVarN0 = l0(xmlPullParser2, (k.e) kVarN0);
                                    iF = i13;
                                    jA2 = j16;
                                    arrayList3 = arrayList2;
                                    list3 = list2;
                                    str4 = str;
                                    xmlPullParser2 = xmlPullParser2;
                                } else {
                                    if (b1.f(xmlPullParser2, "SegmentList")) {
                                        jA = A(xmlPullParser2, j18);
                                        i11 = i13;
                                        kVarN0 = m0(xmlPullParser, (k.b) kVarN0, j14, j11, j16, jA, j15);
                                    } else {
                                        j17 = j18;
                                        i11 = i13;
                                        if (b1.f(xmlPullParser2, "SegmentTemplate")) {
                                            jA = A(xmlPullParser2, j17);
                                            kVarN0 = n0(xmlPullParser, (k.c) kVarN0, arrayList10, j14, j11, j16, jA, j15);
                                        } else {
                                            xmlPullParser2 = xmlPullParser2;
                                            if (b1.f(xmlPullParser2, "InbandEventStream")) {
                                                arrayList3 = arrayList2;
                                                arrayList3.add(H(xmlPullParser2, "InbandEventStream"));
                                                list3 = list2;
                                            } else {
                                                arrayList3 = arrayList2;
                                                if (b1.f(xmlPullParser2, "Label")) {
                                                    list3 = list2;
                                                    list3.add(X(xmlPullParser));
                                                } else {
                                                    list3 = list2;
                                                    if (b1.e(xmlPullParser)) {
                                                        y(xmlPullParser);
                                                    }
                                                }
                                            }
                                            jA = j17;
                                            jA2 = j16;
                                            iF = i11;
                                            str4 = str;
                                        }
                                    }
                                    jA2 = j16;
                                    iF = i11;
                                }
                            }
                            arrayList3 = arrayList2;
                            list3 = list2;
                            str4 = str;
                        }
                        i11 = iF;
                        arrayList10 = arrayList10;
                        arrayList9 = arrayList9;
                        arrayList8 = arrayList8;
                        arrayList7 = arrayList7;
                        arrayList5 = arrayList5;
                        str = str4;
                        str2 = str2;
                        attributeValue2 = attributeValue2;
                        arrayList12 = arrayList12;
                        list3 = list3;
                        arrayList = arrayList;
                        arrayList3 = arrayList13;
                        j16 = j19;
                        j17 = j18;
                        jA = j17;
                        jA2 = j16;
                        iF = i11;
                        str4 = str;
                    }
                    arrayList10 = arrayList10;
                    arrayList9 = arrayList9;
                    arrayList8 = arrayList8;
                    arrayList7 = arrayList7;
                    arrayList5 = arrayList5;
                    str2 = str2;
                    attributeValue2 = attributeValue2;
                    arrayList12 = arrayList12;
                    list3 = list3;
                    arrayList = arrayList;
                    arrayList3 = arrayList13;
                    jA2 = j19;
                    jA = j18;
                }
                if (b1.d(xmlPullParser2, "AdaptationSet")) {
                    break;
                }
                arrayList6 = arrayList3;
                arrayList11 = arrayList;
                j18 = jA;
                arrayList9 = arrayList9;
                arrayList8 = arrayList8;
                arrayList7 = arrayList7;
                arrayList5 = arrayList5;
                str2 = str2;
                attributeValue2 = attributeValue2;
                arrayList12 = arrayList12;
                list3 = list3;
                arrayList10 = arrayList10;
            }
            jA = j18;
            if (b1.d(xmlPullParser2, "AdaptationSet")) {
                break;
                break;
            }
            arrayList6 = arrayList3;
            arrayList11 = arrayList;
            j18 = jA;
            arrayList9 = arrayList9;
            arrayList8 = arrayList8;
            arrayList7 = arrayList7;
            arrayList5 = arrayList5;
            str2 = str2;
            attributeValue2 = attributeValue2;
            arrayList12 = arrayList12;
            list3 = list3;
            arrayList10 = arrayList10;
        }
        List arrayList14 = new ArrayList(arrayList.size());
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            arrayList14.add(i((a) arrayList.get(i14), attributeValue6, list3, str3, arrayList5, arrayList3));
        }
        return b(jZ, iF, arrayList14, arrayList7, arrayList9, arrayList10);
    }

    protected n x0(XmlPullParser xmlPullParser, String str, n nVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? n.b(attributeValue) : nVar;
    }

    protected void y(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        v(xmlPullParser);
    }

    protected o y0(XmlPullParser xmlPullParser) {
        return n(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    protected int z(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strT0 = t0(xmlPullParser, "schemeIdUri", null);
        strT0.hashCode();
        int iM = -1;
        switch (strT0) {
            case "urn:dts:dash:audio_channel_configuration:2012":
            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                iM = M(xmlPullParser);
                break;
            case "tag:dolby.com,2015:dash:audio_channel_configuration:2015":
                iM = I(xmlPullParser, str);
                break;
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                iM = W(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                iM = L(xmlPullParser);
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                iM = b0(xmlPullParser);
                break;
            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                iM = N(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!b1.d(xmlPullParser, "AudioChannelConfiguration"));
        return iM;
    }
}
