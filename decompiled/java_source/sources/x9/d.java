package x9;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.q0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
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

/* JADX INFO: loaded from: classes4.dex */
public class d extends DefaultHandler implements b0.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f78074b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f78075c = Pattern.compile("CC([1-4])=.*");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f78076d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f78077e = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final XmlPullParserFactory f78078a;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final o1 f78079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableList f78080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final k f78081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f78082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f78083e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f78084f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f78085g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f78086h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final List f78087i;

        public a(o1 o1Var, List list, k kVar, String str, ArrayList arrayList, ArrayList arrayList2, List list2, List list3, long j11) {
            this.f78079a = o1Var;
            this.f78080b = ImmutableList.copyOf((Collection) list);
            this.f78081c = kVar;
            this.f78082d = str;
            this.f78083e = arrayList;
            this.f78084f = arrayList2;
            this.f78086h = list2;
            this.f78087i = list3;
            this.f78085g = j11;
        }
    }

    public d() {
        try {
            this.f78078a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e11) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e11);
        }
    }

    protected static int B(List list) {
        String str;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f78088a) && (str = eVar.f78089b) != null) {
                Matcher matcher = f78075c.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                String strValueOf = String.valueOf(eVar.f78089b);
                s.i("MpdParser", strValueOf.length() != 0 ? "Unable to parse CEA-608 channel number from: ".concat(strValueOf) : new String("Unable to parse CEA-608 channel number from: "));
            }
        }
        return -1;
    }

    protected static int C(List list) {
        String str;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f78088a) && (str = eVar.f78089b) != null) {
                Matcher matcher = f78076d.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                String strValueOf = String.valueOf(eVar.f78089b);
                s.i("MpdParser", strValueOf.length() != 0 ? "Unable to parse CEA-708 service block number from: ".concat(strValueOf) : new String("Unable to parse CEA-708 service block number from: "));
            }
        }
        return -1;
    }

    protected static long F(XmlPullParser xmlPullParser, String str, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j11 : p0.I0(attributeValue);
    }

    protected static e G(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strN0 = n0(xmlPullParser, "schemeIdUri", "");
        String strN1 = n0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, null);
        String strN2 = n0(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!q0.d(xmlPullParser, str));
        return new e(strN0, strN1, strN2);
    }

    protected static int H(XmlPullParser xmlPullParser) {
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
            case "f801":
                return 6;
            case "fa01":
                return 8;
            default:
                return -1;
        }
    }

    protected static long I(XmlPullParser xmlPullParser, String str, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j11 : p0.J0(attributeValue);
    }

    protected static String J(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            String str = eVar.f78088a;
            if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) && "JOC".equals(eVar.f78089b)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(eVar.f78089b)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
        }
        return MimeTypes.AUDIO_E_AC3;
    }

    protected static float N(XmlPullParser xmlPullParser, String str, float f11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f11 : Float.parseFloat(attributeValue);
    }

    protected static float O(XmlPullParser xmlPullParser, float f11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f11;
        }
        Matcher matcher = f78074b.matcher(attributeValue);
        if (!matcher.matches()) {
            return f11;
        }
        int i11 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        return !TextUtils.isEmpty(strGroup) ? i11 / Integer.parseInt(strGroup) : i11;
    }

    protected static int Q(XmlPullParser xmlPullParser, String str, int i11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i11 : Integer.parseInt(attributeValue);
    }

    protected static long S(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("http://dashif.org/guidelines/last-segment-number", eVar.f78088a)) {
                return Long.parseLong(eVar.f78089b);
            }
        }
        return -1L;
    }

    protected static long T(XmlPullParser xmlPullParser, String str, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j11 : Long.parseLong(attributeValue);
    }

    protected static int V(XmlPullParser xmlPullParser) {
        int iQ = Q(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (iQ < 0) {
            return -1;
        }
        int[] iArr = f78077e;
        if (iQ < iArr.length) {
            return iArr[iQ];
        }
        return -1;
    }

    private long a(List list, long j11, long j12, int i11, long j13) {
        int iM = i11 >= 0 ? i11 + 1 : (int) p0.m(j13 - j11, j12);
        for (int i12 = 0; i12 < iM; i12++) {
            list.add(l(j11, j12));
            j11 += j12;
        }
        return j11;
    }

    protected static String n0(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    private static int o(int i11, int i12) {
        if (i11 == -1) {
            return i12;
        }
        if (i12 == -1) {
            return i11;
        }
        com.google.android.exoplayer2.util.a.g(i11 == i12);
        return i11;
    }

    protected static String o0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String text = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                u(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, str));
        return text;
    }

    private static String p(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        com.google.android.exoplayer2.util.a.g(str.equals(str2));
        return str;
    }

    private static void q(ArrayList arrayList) {
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

    private static long r(long j11, long j12) {
        if (j12 != C.TIME_UNSET) {
            j11 = j12;
        }
        return j11 == Long.MAX_VALUE ? C.TIME_UNSET : j11;
    }

    private static String s(String str, String str2) {
        if (w.p(str)) {
            return w.c(str2);
        }
        if (w.t(str)) {
            return w.o(str2);
        }
        if (w.s(str)) {
            return MimeTypes.APPLICATION_RAWCC.equals(str) ? w.j(str2) : str;
        }
        if (w.q(str)) {
            return str;
        }
        if (!MimeTypes.APPLICATION_MP4.equals(str)) {
            return null;
        }
        String strG = w.g(str2);
        return MimeTypes.TEXT_VTT.equals(strG) ? MimeTypes.APPLICATION_MP4VTT : strG;
    }

    private boolean t(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    public static void u(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (q0.e(xmlPullParser)) {
            int i11 = 1;
            while (i11 != 0) {
                xmlPullParser.next();
                if (q0.e(xmlPullParser)) {
                    i11++;
                } else if (q0.c(xmlPullParser)) {
                    i11--;
                }
            }
        }
    }

    protected List A(XmlPullParser xmlPullParser, List list, boolean z10) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i11 = attributeValue != null ? Integer.parseInt(attributeValue) : z10 ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i12 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String strO0 = o0(xmlPullParser, "BaseURL");
        if (n0.b(strO0)) {
            if (attributeValue3 == null) {
                attributeValue3 = strO0;
            }
            return Lists.l(new b(strO0, attributeValue3, i11, i12));
        }
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < list.size(); i13++) {
            b bVar = (b) list.get(i13);
            String strD = n0.d(bVar.f78057a, strO0);
            String str = attributeValue3 == null ? strD : attributeValue3;
            if (z10) {
                i11 = bVar.f78059c;
                i12 = bVar.f78060d;
                str = bVar.f78058b;
            }
            arrayList.add(new b(strD, str, i11, i12));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0084  */
    /* JADX WARN: Code duplicated, block: B:58:0x00eb  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    protected Pair D(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        UUID uuid;
        String attributeValue;
        String str;
        String attributeValue2;
        ?? A;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue3 != null) {
            String strE = com.google.common.base.a.e(attributeValue3);
            strE.hashCode();
            switch (strE) {
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid = com.google.android.exoplayer2.l.f25190e;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid = com.google.android.exoplayer2.l.f25189d;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    String strB = q0.b(xmlPullParser, "default_KID");
                    if (!TextUtils.isEmpty(strB) && !"00000000-0000-0000-0000-000000000000".equals(strB)) {
                        String[] strArrSplit = strB.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                            uuidArr[i11] = UUID.fromString(strArrSplit[i11]);
                        }
                        uuid = com.google.android.exoplayer2.l.f25187b;
                        byte[] bArrB = o9.l.b(uuid, uuidArr, null);
                        attributeValue2 = null;
                        A = bArrB;
                        break;
                    } else {
                        uuid = null;
                        str = null;
                        attributeValue2 = str;
                        A = str;
                        break;
                    }
                    break;
                default:
                    uuid = null;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
            }
        } else {
            uuid = null;
            attributeValue = null;
            str = attributeValue;
            attributeValue2 = str;
            A = str;
        }
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "ms:laurl")) {
                A = A;
                attributeValue2 = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (A == 0 && q0.g(xmlPullParser, "pssh") && xmlPullParser.next() == 4) {
                byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                UUID uuidF = o9.l.f(bArrDecode);
                if (uuidF == null) {
                    s.i("MpdParser", "Skipping malformed cenc:pssh data");
                    uuid = uuidF;
                    A = 0;
                    attributeValue2 = attributeValue2;
                } else {
                    A = bArrDecode;
                    uuid = uuidF;
                    attributeValue2 = attributeValue2;
                }
            } else if (A == 0) {
                UUID uuid2 = com.google.android.exoplayer2.l.f25190e;
                if (uuid2.equals(uuid) && q0.f(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    A = o9.l.a(uuid2, Base64.decode(xmlPullParser.getText(), 0));
                    attributeValue2 = attributeValue2;
                } else {
                    u(xmlPullParser);
                    A = A;
                    attributeValue2 = attributeValue2;
                }
            } else {
                u(xmlPullParser);
                A = A;
                attributeValue2 = attributeValue2;
            }
        } while (!q0.d(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new DrmInitData.SchemeData(uuid, attributeValue2, MimeTypes.VIDEO_MP4, A) : null);
    }

    protected int E(XmlPullParser xmlPullParser) {
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
        return MimeTypes.BASE_TYPE_TEXT.equals(attributeValue) ? 3 : -1;
    }

    protected Pair K(XmlPullParser xmlPullParser, String str, String str2, long j11, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        long jT = T(xmlPullParser, "id", 0L);
        long jT2 = T(xmlPullParser, "duration", C.TIME_UNSET);
        long jT3 = T(xmlPullParser, "presentationTime", 0L);
        long jN0 = p0.N0(jT2, 1000L, j11);
        long jN1 = p0.N0(jT3, 1000000L, j11);
        String strN0 = n0(xmlPullParser, "messageData", null);
        byte[] bArrL = L(xmlPullParser, byteArrayOutputStream);
        Long lValueOf = Long.valueOf(jN1);
        if (strN0 != null) {
            bArrL = p0.n0(strN0);
        }
        return Pair.create(lValueOf, c(str, str2, jT, jN0, bArrL));
    }

    protected byte[] L(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, com.google.common.base.c.f30228c.name());
        xmlPullParser.nextToken();
        while (!q0.d(xmlPullParser, "Event")) {
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

    protected f M(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strN0 = n0(xmlPullParser, "schemeIdUri", "");
        String strN1 = n0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, "");
        long jT = T(xmlPullParser, "timescale", 1L);
        ArrayList arrayList = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Event")) {
                arrayList.add(K(xmlPullParser, strN0, strN1, jT, byteArrayOutputStream));
            } else {
                u(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "EventStream"));
        long[] jArr = new long[arrayList.size()];
        EventMessage[] eventMessageArr = new EventMessage[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            Pair pair = (Pair) arrayList.get(i11);
            jArr[i11] = ((Long) pair.first).longValue();
            eventMessageArr[i11] = (EventMessage) pair.second;
        }
        return d(strN0, strN1, jT, jArr, eventMessageArr);
    }

    protected i P(XmlPullParser xmlPullParser) {
        return Z(xmlPullParser, "sourceURL", "range");
    }

    protected String R(XmlPullParser xmlPullParser) {
        return o0(xmlPullParser, "Label");
    }

    /* JADX WARN: Code duplicated, block: B:66:0x019d  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:76:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:80:0x01de A[LOOP:0: B:24:0x00a0->B:80:0x01de, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x0199 A[SYNTHETIC] */
    protected c U(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        long j11;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j12;
        Throwable th2;
        ArrayList arrayList3;
        long j13;
        d dVar = this;
        boolean z10 = true;
        boolean zT = dVar.t(dVar.X(xmlPullParser, "profiles", new String[0]));
        long j14 = C.TIME_UNSET;
        long jF = F(xmlPullParser, "availabilityStartTime", C.TIME_UNSET);
        long jI = I(xmlPullParser, "mediaPresentationDuration", C.TIME_UNSET);
        long jI2 = I(xmlPullParser, "minBufferTime", C.TIME_UNSET);
        Throwable th3 = null;
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, NativeComponentConstants.KEY_COMPONENT_TYPE));
        long jI3 = zEquals ? I(xmlPullParser, "minimumUpdatePeriod", C.TIME_UNSET) : -9223372036854775807L;
        long jI4 = zEquals ? I(xmlPullParser, "timeShiftBufferDepth", C.TIME_UNSET) : -9223372036854775807L;
        long jI5 = zEquals ? I(xmlPullParser, "suggestedPresentationDelay", C.TIME_UNSET) : -9223372036854775807L;
        long jF2 = F(xmlPullParser, "publishTime", C.TIME_UNSET);
        long jZ = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListL = Lists.l(new b(uri.toString(), uri.toString(), zT ? 1 : Integer.MIN_VALUE, 1));
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        boolean z11 = false;
        boolean z12 = false;
        long j15 = zEquals ? -9223372036854775807L : 0L;
        h hVarY = null;
        o oVarR0 = null;
        Uri uriE = null;
        l lVarM0 = null;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "BaseURL")) {
                if (!z11) {
                    jZ = dVar.z(xmlPullParser, jZ);
                    z11 = z10;
                }
                arrayList5.addAll(dVar.A(xmlPullParser, arrayListL, zT));
            } else if (q0.f(xmlPullParser, "ProgramInformation")) {
                hVarY = Y(xmlPullParser);
            } else if (q0.f(xmlPullParser, "UTCTiming")) {
                oVarR0 = r0(xmlPullParser);
            } else if (q0.f(xmlPullParser, HttpHeaders.LOCATION)) {
                uriE = n0.e(uri.toString(), xmlPullParser.nextText());
            } else {
                if (q0.f(xmlPullParser, "ServiceDescription")) {
                    lVarM0 = m0(xmlPullParser);
                } else {
                    if (!q0.f(xmlPullParser, "Period") || z12) {
                        j11 = jZ;
                        arrayList = arrayList5;
                        arrayList2 = arrayListL;
                        j12 = j14;
                        th2 = th3;
                        arrayList3 = arrayList4;
                        u(xmlPullParser);
                    } else {
                        j11 = jZ;
                        arrayList = arrayList5;
                        arrayList2 = arrayListL;
                        arrayList3 = arrayList4;
                        j12 = j14;
                        th2 = th3;
                        Pair pairW = W(xmlPullParser, !arrayList5.isEmpty() ? arrayList5 : arrayListL, j15, j11, jF, jI4, zT);
                        g gVar = (g) pairW.first;
                        if (gVar.f78097b != j12) {
                            long jLongValue = ((Long) pairW.second).longValue();
                            long j16 = jLongValue == j12 ? j12 : gVar.f78097b + jLongValue;
                            arrayList3.add(gVar);
                            j15 = j16;
                        } else {
                            if (!zEquals) {
                                int size = arrayList3.size();
                                StringBuilder sb2 = new StringBuilder(47);
                                sb2.append("Unable to determine start of period ");
                                sb2.append(size);
                                throw ParserException.createForMalformedManifest(sb2.toString(), th2);
                            }
                            arrayList3 = arrayList3;
                            z12 = true;
                        }
                    }
                    jZ = j11;
                }
                if (q0.d(xmlPullParser, "MPD")) {
                    if (jI != j12) {
                        j13 = jI;
                    } else if (j15 != j12) {
                        j13 = j15;
                    } else {
                        if (!zEquals) {
                            throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", th2);
                        }
                        j13 = jI;
                    }
                    if (arrayList3.isEmpty()) {
                        throw ParserException.createForMalformedManifest("No periods found.", th2);
                    }
                    return f(jF, j13, jI2, zEquals, jI3, jI4, jI5, jF2, hVarY, oVarR0, lVarM0, uriE, arrayList3);
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
            if (q0.d(xmlPullParser, "MPD")) {
                if (jI != j12) {
                    j13 = jI;
                } else if (j15 != j12) {
                    j13 = j15;
                } else {
                    if (!zEquals) {
                        throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", th2);
                    }
                    j13 = jI;
                }
                if (arrayList3.isEmpty()) {
                    return f(jF, j13, jI2, zEquals, jI3, jI4, jI5, jF2, hVarY, oVarR0, lVarM0, uriE, arrayList3);
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

    protected Pair W(XmlPullParser xmlPullParser, List list, long j11, long j12, long j13, long j14, boolean z10) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        List list2;
        List list3;
        Object obj;
        long j15;
        k kVarH0;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Object obj2 = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "id");
        long jI = I(xmlPullParser2, "start", j11);
        long j16 = C.TIME_UNSET;
        long j17 = j13 != C.TIME_UNSET ? j13 + jI : -9223372036854775807L;
        long jI2 = I(xmlPullParser2, "duration", C.TIME_UNSET);
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        long jZ = j12;
        boolean z11 = false;
        long j18 = -9223372036854775807L;
        k kVarF0 = null;
        e eVarG = null;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    jZ = z(xmlPullParser2, jZ);
                    z11 = true;
                }
                arrayList4.addAll(A(xmlPullParser2, list, z10));
                list3 = arrayList3;
                arrayList = arrayList4;
                j15 = j16;
                obj = obj2;
                list2 = arrayList2;
            } else {
                if (q0.f(xmlPullParser2, "AdaptationSet")) {
                    jZ = jZ;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    list2.add(w(xmlPullParser, !arrayList4.isEmpty() ? arrayList4 : list, kVarF0, jI2, jZ, j18, j17, j14, z10));
                    xmlPullParser2 = xmlPullParser;
                    list3 = arrayList3;
                } else {
                    jZ = jZ;
                    List list4 = arrayList3;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    xmlPullParser2 = xmlPullParser;
                    if (q0.f(xmlPullParser2, "EventStream")) {
                        list4.add(M(xmlPullParser));
                        list3 = list4;
                    } else if (q0.f(xmlPullParser2, "SegmentBase")) {
                        list3 = list4;
                        kVarF0 = f0(xmlPullParser2, null);
                        obj = null;
                        jZ = jZ;
                        j15 = C.TIME_UNSET;
                    } else {
                        list3 = list4;
                        if (q0.f(xmlPullParser2, "SegmentList")) {
                            long jZ2 = z(xmlPullParser2, C.TIME_UNSET);
                            obj = null;
                            kVarH0 = g0(xmlPullParser, null, j17, jI2, jZ, jZ2, j14);
                            j18 = jZ2;
                            j15 = C.TIME_UNSET;
                        } else {
                            obj = null;
                            if (q0.f(xmlPullParser2, "SegmentTemplate")) {
                                long jZ3 = z(xmlPullParser2, C.TIME_UNSET);
                                j15 = -9223372036854775807L;
                                kVarH0 = h0(xmlPullParser, null, ImmutableList.of(), j17, jI2, jZ, jZ3, j14);
                                j18 = jZ3;
                            } else {
                                j15 = C.TIME_UNSET;
                                if (q0.f(xmlPullParser2, "AssetIdentifier")) {
                                    eVarG = G(xmlPullParser2, "AssetIdentifier");
                                } else {
                                    u(xmlPullParser);
                                }
                                jZ = jZ;
                            }
                        }
                        kVarF0 = kVarH0;
                    }
                }
                obj = null;
                j15 = C.TIME_UNSET;
                jZ = jZ;
            }
            if (q0.d(xmlPullParser2, "Period")) {
                return Pair.create(g(attributeValue, jI, list2, list3, eVarG), Long.valueOf(jI2));
            }
            arrayList2 = list2;
            arrayList4 = arrayList;
            obj2 = obj;
            arrayList3 = list3;
            j16 = j15;
        }
    }

    protected String[] X(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? strArr : attributeValue.split(",");
    }

    protected h Y(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strNextText = null;
        String strN0 = n0(xmlPullParser, "moreInformationURL", null);
        String strN1 = n0(xmlPullParser, "lang", null);
        String strNextText2 = null;
        String strNextText3 = null;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Title")) {
                strNextText = xmlPullParser.nextText();
            } else if (q0.f(xmlPullParser, "Source")) {
                strNextText2 = xmlPullParser.nextText();
            } else if (q0.f(xmlPullParser, "Copyright")) {
                strNextText3 = xmlPullParser.nextText();
            } else {
                u(xmlPullParser);
            }
            String str = strNextText3;
            if (q0.d(xmlPullParser, "ProgramInformation")) {
                return new h(strNextText, strNextText2, str, strN0, strN1);
            }
            strNextText3 = str;
        }
    }

    protected i Z(XmlPullParser xmlPullParser, String str, String str2) {
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

    /* JADX WARN: Code duplicated, block: B:57:0x01ee A[LOOP:0: B:3:0x006a->B:57:0x01ee, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0198 A[EDGE_INSN: B:58:0x0198->B:47:0x0198 BREAK  A[LOOP:0: B:3:0x006a->B:57:0x01ee], SYNTHETIC] */
    protected a a0(XmlPullParser xmlPullParser, List list, String str, String str2, int i11, int i12, float f11, int i13, int i14, String str3, List list2, List list3, List list4, List list5, k kVar, long j11, long j12, long j13, long j14, long j15, boolean z10) throws XmlPullParserException, IOException {
        long j16;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        long jZ;
        ArrayList arrayList6;
        k eVar;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int iQ = Q(xmlPullParser, "bandwidth", -1);
        String strN0 = n0(xmlPullParser, "mimeType", str);
        String strN1 = n0(xmlPullParser, "codecs", str2);
        int iQ2 = Q(xmlPullParser, "width", i11);
        int iQ3 = Q(xmlPullParser, "height", i12);
        float fO = O(xmlPullParser, f11);
        int iQ4 = Q(xmlPullParser, "audioSamplingRate", i14);
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList(list4);
        ArrayList arrayList13 = new ArrayList(list5);
        int iY = i13;
        long jZ2 = j13;
        boolean z11 = false;
        String str4 = null;
        k kVarH0 = kVar;
        long j17 = j14;
        ArrayList arrayList14 = new ArrayList();
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "BaseURL")) {
                if (!z11) {
                    jZ2 = z(xmlPullParser, jZ2);
                    z11 = true;
                }
                arrayList14.addAll(A(xmlPullParser, list, z10));
            } else {
                if (q0.f(xmlPullParser, "AudioChannelConfiguration")) {
                    eVar = kVarH0;
                    iY = y(xmlPullParser);
                    arrayList4 = arrayList11;
                    arrayList5 = arrayList13;
                    arrayList9 = arrayList14;
                } else if (q0.f(xmlPullParser, "SegmentBase")) {
                    kVarH0 = f0(xmlPullParser, (k.e) kVarH0);
                } else {
                    if (q0.f(xmlPullParser, "SegmentList")) {
                        jZ = z(xmlPullParser, j17);
                        j16 = jZ2;
                        arrayList8 = arrayList14;
                        arrayList = arrayList13;
                        arrayList2 = arrayList11;
                        arrayList3 = arrayList12;
                        kVarH0 = g0(xmlPullParser, (k.b) kVarH0, j11, j12, j16, jZ, j15);
                    } else {
                        j16 = jZ2;
                        ArrayList arrayList15 = arrayList14;
                        arrayList = arrayList13;
                        arrayList2 = arrayList11;
                        arrayList3 = arrayList12;
                        if (q0.f(xmlPullParser, "SegmentTemplate")) {
                            jZ = z(xmlPullParser, j17);
                            kVarH0 = h0(xmlPullParser, (k.c) kVarH0, list5, j11, j12, j16, jZ, j15);
                            arrayList8 = arrayList15;
                        } else {
                            arrayList10 = arrayList10;
                            if (q0.f(xmlPullParser, "ContentProtection")) {
                                Pair pairD = D(xmlPullParser);
                                Object obj = pairD.first;
                                if (obj != null) {
                                    str4 = (String) obj;
                                }
                                Object obj2 = pairD.second;
                                if (obj2 != null) {
                                    arrayList10.add((DrmInitData.SchemeData) obj2);
                                }
                                arrayList7 = arrayList15;
                                jZ2 = j16;
                                arrayList5 = arrayList;
                                arrayList4 = arrayList2;
                                arrayList12 = arrayList3;
                                arrayList6 = arrayList7;
                            } else {
                                if (q0.f(xmlPullParser, "InbandEventStream")) {
                                    arrayList4 = arrayList2;
                                    arrayList4.add(G(xmlPullParser, "InbandEventStream"));
                                    arrayList5 = arrayList;
                                    arrayList12 = arrayList3;
                                } else {
                                    arrayList4 = arrayList2;
                                    if (q0.f(xmlPullParser, "EssentialProperty")) {
                                        arrayList12 = arrayList3;
                                        arrayList12.add(G(xmlPullParser, "EssentialProperty"));
                                        arrayList5 = arrayList;
                                    } else {
                                        arrayList12 = arrayList3;
                                        if (q0.f(xmlPullParser, "SupplementalProperty")) {
                                            arrayList5 = arrayList;
                                            arrayList5.add(G(xmlPullParser, "SupplementalProperty"));
                                        } else {
                                            arrayList5 = arrayList;
                                            u(xmlPullParser);
                                        }
                                    }
                                }
                                iY = iY;
                                jZ2 = j16;
                                arrayList6 = arrayList15;
                            }
                        }
                        eVar = kVarH0;
                        arrayList9 = arrayList6;
                    }
                    j17 = jZ;
                    arrayList7 = arrayList8;
                    jZ2 = j16;
                    arrayList5 = arrayList;
                    arrayList4 = arrayList2;
                    arrayList12 = arrayList3;
                    arrayList6 = arrayList7;
                    eVar = kVarH0;
                    arrayList9 = arrayList6;
                }
                if (q0.d(xmlPullParser, "Representation")) {
                    break;
                }
                arrayList13 = arrayList5;
                arrayList11 = arrayList4;
                arrayList10 = arrayList10;
                kVarH0 = eVar;
                iY = iY;
                arrayList14 = arrayList9;
            }
            iY = iY;
            eVar = kVarH0;
            arrayList4 = arrayList11;
            arrayList5 = arrayList13;
            arrayList9 = arrayList14;
            if (q0.d(xmlPullParser, "Representation")) {
                break;
                break;
            }
            arrayList13 = arrayList5;
            arrayList11 = arrayList4;
            arrayList10 = arrayList10;
            kVarH0 = eVar;
            iY = iY;
            arrayList14 = arrayList9;
        }
        List list6 = arrayList5;
        List list7 = arrayList12;
        ArrayList arrayList16 = arrayList4;
        o1 o1VarE = e(attributeValue, strN0, iQ2, iQ3, fO, iY, iQ4, iQ, str3, list2, list3, strN1, list7, list6);
        if (eVar == null) {
            eVar = new k.e();
        }
        boolean zIsEmpty = arrayList9.isEmpty();
        List list8 = arrayList9;
        if (zIsEmpty) {
            list8 = list;
        }
        return new a(o1VarE, list8, eVar, str4, arrayList10, arrayList16, list7, list6, -1L);
    }

    protected x9.a b(int i11, int i12, List list, List list2, List list3, List list4) {
        return new x9.a(i11, i12, list, list2, list3, list4);
    }

    protected int b0(List list) {
        int iP0;
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            e eVar = (e) list.get(i12);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f78088a)) {
                iP0 = c0(eVar.f78089b);
            } else {
                if (com.google.common.base.a.a("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar.f78088a)) {
                    iP0 = p0(eVar.f78089b);
                }
            }
            i11 |= iP0;
        }
        return i11;
    }

    protected EventMessage c(String str, String str2, long j11, long j12, byte[] bArr) {
        return new EventMessage(str, str2, j12, j11, bArr);
    }

    protected int c0(String str) {
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

    protected f d(String str, String str2, long j11, long[] jArr, EventMessage[] eventMessageArr) {
        return new f(str, str2, j11, jArr, eventMessageArr);
    }

    protected int d0(List list) {
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (com.google.common.base.a.a("http://dashif.org/guidelines/trickmode", ((e) list.get(i12)).f78088a)) {
                i11 = 16384;
            }
        }
        return i11;
    }

    protected o1 e(String str, String str2, int i11, int i12, float f11, int i13, int i14, int i15, String str3, List list, List list2, String str4, List list3, List list4) {
        int iC;
        String str5 = str4;
        String strS = s(str2, str5);
        if (MimeTypes.AUDIO_E_AC3.equals(strS)) {
            strS = J(list4);
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(strS)) {
                str5 = "ec+3";
            }
        }
        o1.b bVarV = new o1.b().S(str).K(str2).e0(strS).I(str5).Z(i15).g0(l0(list)).c0(e0(list) | b0(list2) | d0(list3) | d0(list4)).V(str3);
        if (w.t(strS)) {
            bVarV.j0(i11).Q(i12).P(f11);
        } else if (w.p(strS)) {
            bVarV.H(i13).f0(i14);
        } else if (w.s(strS)) {
            if (MimeTypes.APPLICATION_CEA608.equals(strS)) {
                iC = B(list2);
            } else {
                iC = MimeTypes.APPLICATION_CEA708.equals(strS) ? C(list2) : -1;
            }
            bVarV.F(iC);
        } else if (w.q(strS)) {
            bVarV.j0(i11).Q(i12);
        }
        return bVarV.E();
    }

    protected int e0(List list) {
        int iC0 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f78088a)) {
                iC0 |= c0(eVar.f78089b);
            }
        }
        return iC0;
    }

    protected c f(long j11, long j12, long j13, boolean z10, long j14, long j15, long j16, long j17, h hVar, o oVar, l lVar, Uri uri, List list) {
        return new c(j11, j12, j13, z10, j14, j15, j16, j17, hVar, oVar, lVar, uri, list);
    }

    protected k.e f0(XmlPullParser xmlPullParser, k.e eVar) throws XmlPullParserException, IOException {
        long j11;
        long j12;
        long jT = T(xmlPullParser, "timescale", eVar != null ? eVar.f78125b : 1L);
        long jT2 = T(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.f78126c : 0L);
        long j13 = eVar != null ? eVar.f78139d : 0L;
        long j14 = eVar != null ? eVar.f78140e : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            j12 = Long.parseLong(strArrSplit[0]);
            j11 = (Long.parseLong(strArrSplit[1]) - j12) + 1;
        } else {
            j11 = j14;
            j12 = j13;
        }
        i iVarP = eVar != null ? eVar.f78124a : null;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Initialization")) {
                iVarP = P(xmlPullParser);
            } else {
                u(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentBase"));
        return m(iVarP, jT, jT2, j12, j11);
    }

    protected g g(String str, long j11, List list, List list2, e eVar) {
        return new g(str, j11, list, list2, eVar);
    }

    protected k.b g0(XmlPullParser xmlPullParser, k.b bVar, long j11, long j12, long j13, long j14, long j15) throws XmlPullParserException, IOException {
        long jT = T(xmlPullParser, "timescale", bVar != null ? bVar.f78125b : 1L);
        long jT2 = T(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.f78126c : 0L);
        long jT3 = T(xmlPullParser, "duration", bVar != null ? bVar.f78128e : C.TIME_UNSET);
        long jT4 = T(xmlPullParser, "startNumber", bVar != null ? bVar.f78127d : 1L);
        long jR = r(j13, j14);
        List listI0 = null;
        List arrayList = null;
        i iVarP = null;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Initialization")) {
                iVarP = P(xmlPullParser);
            } else if (q0.f(xmlPullParser, "SegmentTimeline")) {
                listI0 = i0(xmlPullParser, jT, j12);
            } else if (q0.f(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(j0(xmlPullParser));
            } else {
                u(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            if (iVarP == null) {
                iVarP = bVar.f78124a;
            }
            if (listI0 == null) {
                listI0 = bVar.f78129f;
            }
            if (arrayList == null) {
                arrayList = bVar.f78133j;
            }
        }
        return j(iVarP, jT, jT2, jT4, jT3, listI0, jR, arrayList, j15, j11);
    }

    protected i h(String str, long j11, long j12) {
        return new i(str, j11, j12);
    }

    protected k.c h0(XmlPullParser xmlPullParser, k.c cVar, List list, long j11, long j12, long j13, long j14, long j15) throws XmlPullParserException, IOException {
        long jT = T(xmlPullParser, "timescale", cVar != null ? cVar.f78125b : 1L);
        long jT2 = T(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.f78126c : 0L);
        long jT3 = T(xmlPullParser, "duration", cVar != null ? cVar.f78128e : C.TIME_UNSET);
        long jT4 = T(xmlPullParser, "startNumber", cVar != null ? cVar.f78127d : 1L);
        long jS = S(list);
        long jR = r(j13, j14);
        List listI0 = null;
        n nVarQ0 = q0(xmlPullParser, "media", cVar != null ? cVar.f78135k : null);
        n nVarQ1 = q0(xmlPullParser, "initialization", cVar != null ? cVar.f78134j : null);
        i iVarP = null;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Initialization")) {
                iVarP = P(xmlPullParser);
            } else if (q0.f(xmlPullParser, "SegmentTimeline")) {
                listI0 = i0(xmlPullParser, jT, j12);
            } else {
                u(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (iVarP == null) {
                iVarP = cVar.f78124a;
            }
            if (listI0 == null) {
                listI0 = cVar.f78129f;
            }
        }
        return k(iVarP, jT, jT2, jT4, jS, jT3, listI0, jR, nVarQ1, nVarQ0, j15, j11);
    }

    protected j i(a aVar, String str, String str2, ArrayList arrayList, ArrayList arrayList2) {
        o1.b bVarB = aVar.f78079a.b();
        if (str != null) {
            bVarB.U(str);
        }
        String str3 = aVar.f78082d;
        if (str3 != null) {
            str2 = str3;
        }
        ArrayList arrayList3 = aVar.f78083e;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            q(arrayList3);
            bVarB.M(new DrmInitData(str2, arrayList3));
        }
        ArrayList arrayList4 = aVar.f78084f;
        arrayList4.addAll(arrayList2);
        return j.n(aVar.f78085g, bVarB.E(), aVar.f78080b, aVar.f78081c, arrayList4, aVar.f78086h, aVar.f78087i, null);
    }

    protected List i0(XmlPullParser xmlPullParser, long j11, long j12) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jA = 0;
        long jT = -9223372036854775807L;
        boolean z10 = false;
        int iQ = 0;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "S")) {
                long jT2 = T(xmlPullParser, "t", C.TIME_UNSET);
                if (z10) {
                    jA = a(arrayList, jA, jT, iQ, jT2);
                }
                if (jT2 == C.TIME_UNSET) {
                    jT2 = jA;
                }
                jT = T(xmlPullParser, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, C.TIME_UNSET);
                iQ = Q(xmlPullParser, CampaignEx.JSON_KEY_AD_R, 0);
                z10 = true;
                jA = jT2;
            } else {
                u(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentTimeline"));
        if (z10) {
            a(arrayList, jA, jT, iQ, p0.N0(j12, j11, 1000L));
        }
        return arrayList;
    }

    protected k.b j(i iVar, long j11, long j12, long j13, long j14, List list, long j15, List list2, long j16, long j17) {
        return new k.b(iVar, j11, j12, j13, j14, list, j15, list2, p0.B0(j16), p0.B0(j17));
    }

    protected i j0(XmlPullParser xmlPullParser) {
        return Z(xmlPullParser, "media", "mediaRange");
    }

    protected k.c k(i iVar, long j11, long j12, long j13, long j14, long j15, List list, long j16, n nVar, n nVar2, long j17, long j18) {
        return new k.c(iVar, j11, j12, j13, j14, j15, list, j16, nVar, nVar2, p0.B0(j17), p0.B0(j18));
    }

    protected int k0(String str) {
        if (str == null) {
            return 0;
        }
        return (str.equals("forced_subtitle") || str.equals("forced-subtitle")) ? 2 : 0;
    }

    protected k.d l(long j11, long j12) {
        return new k.d(j11, j12);
    }

    protected int l0(List list) {
        int iK0 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f78088a)) {
                iK0 |= k0(eVar.f78089b);
            }
        }
        return iK0;
    }

    protected k.e m(i iVar, long j11, long j12, long j13, long j14) {
        return new k.e(iVar, j11, j12, j13, j14);
    }

    protected l m0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        long jT = -9223372036854775807L;
        long jT2 = -9223372036854775807L;
        long jT3 = -9223372036854775807L;
        float fN = -3.4028235E38f;
        float fN2 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Latency")) {
                jT = T(xmlPullParser, "target", C.TIME_UNSET);
                jT2 = T(xmlPullParser, "min", C.TIME_UNSET);
                jT3 = T(xmlPullParser, "max", C.TIME_UNSET);
            } else if (q0.f(xmlPullParser, "PlaybackRate")) {
                fN = N(xmlPullParser, "min", -3.4028235E38f);
                fN2 = N(xmlPullParser, "max", -3.4028235E38f);
            }
            long j11 = jT;
            long j12 = jT2;
            long j13 = jT3;
            float f11 = fN;
            float f12 = fN2;
            if (q0.d(xmlPullParser, "ServiceDescription")) {
                return new l(j11, j12, j13, f11, f12);
            }
            jT = j11;
            jT2 = j12;
            jT3 = j13;
            fN = f11;
            fN2 = f12;
        }
    }

    protected o n(String str, String str2) {
        return new o(str, str2);
    }

    protected int p0(String str) {
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

    protected n q0(XmlPullParser xmlPullParser, String str, n nVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? n.b(attributeValue) : nVar;
    }

    protected o r0(XmlPullParser xmlPullParser) {
        return n(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    @Override // com.google.android.exoplayer2.upstream.b0.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public c parse(Uri uri, InputStream inputStream) throws ParserException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f78078a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return U(xmlPullParserNewPullParser, uri);
            }
            throw ParserException.createForMalformedManifest("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e11) {
            throw ParserException.createForMalformedManifest(null, e11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x030e A[LOOP:0: B:3:0x007c->B:71:0x030e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x02ce A[EDGE_INSN: B:72:0x02ce->B:65:0x02ce BREAK  A[LOOP:0: B:3:0x007c->B:71:0x030e], SYNTHETIC] */
    protected x9.a w(XmlPullParser xmlPullParser, List list, k kVar, long j11, long j12, long j13, long j14, long j15, boolean z10) throws XmlPullParserException, IOException {
        long j16;
        ArrayList arrayList;
        Object obj;
        long j17;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        String strP;
        ArrayList arrayList6;
        int iO;
        ArrayList arrayList7;
        long jZ;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        int iQ = Q(xmlPullParser2, "id", -1);
        int iE = E(xmlPullParser);
        String attributeValue = xmlPullParser2.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "codecs");
        int iQ2 = Q(xmlPullParser2, "width", -1);
        int iQ3 = Q(xmlPullParser2, "height", -1);
        float fO = O(xmlPullParser2, -1.0f);
        int iQ4 = Q(xmlPullParser2, "audioSamplingRate", -1);
        String str = "lang";
        String attributeValue3 = xmlPullParser2.getAttributeValue(null, "lang");
        String attributeValue4 = xmlPullParser2.getAttributeValue(null, "label");
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        k kVarH0 = kVar;
        int i11 = iE;
        int iY = -1;
        String str2 = attributeValue3;
        String strR = attributeValue4;
        String str3 = null;
        boolean z11 = false;
        long jZ2 = j12;
        long j18 = j13;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    jZ2 = z(xmlPullParser2, jZ2);
                    z11 = true;
                }
                j16 = j18;
                arrayList = arrayList9;
                arrayList15.addAll(A(xmlPullParser2, list, z10));
            } else {
                j16 = j18;
                arrayList = arrayList9;
                if (q0.f(xmlPullParser2, "ContentProtection")) {
                    Pair pairD = D(xmlPullParser);
                    Object obj2 = pairD.first;
                    if (obj2 != null) {
                        str3 = (String) obj2;
                    }
                    Object obj3 = pairD.second;
                    if (obj3 != null) {
                        arrayList8.add((DrmInitData.SchemeData) obj3);
                    }
                } else {
                    if (q0.f(xmlPullParser2, "ContentComponent")) {
                        strP = p(str2, xmlPullParser2.getAttributeValue(null, str));
                        obj = null;
                        j17 = jZ2;
                        arrayList6 = arrayList14;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList12;
                        arrayList4 = arrayList11;
                        arrayList5 = arrayList10;
                        iO = o(i11, E(xmlPullParser));
                        arrayList7 = arrayList;
                    } else {
                        int i12 = i11;
                        String str4 = str2;
                        if (q0.f(xmlPullParser2, "Role")) {
                            arrayList11.add(G(xmlPullParser2, "Role"));
                        } else if (q0.f(xmlPullParser2, "AudioChannelConfiguration")) {
                            iY = y(xmlPullParser);
                        } else if (q0.f(xmlPullParser2, "Accessibility")) {
                            arrayList10.add(G(xmlPullParser2, "Accessibility"));
                        } else if (q0.f(xmlPullParser2, "EssentialProperty")) {
                            arrayList12.add(G(xmlPullParser2, "EssentialProperty"));
                        } else if (q0.f(xmlPullParser2, "SupplementalProperty")) {
                            arrayList13.add(G(xmlPullParser2, "SupplementalProperty"));
                        } else if (q0.f(xmlPullParser2, "Representation")) {
                            j17 = jZ2;
                            arrayList2 = arrayList13;
                            arrayList3 = arrayList12;
                            arrayList4 = arrayList11;
                            arrayList5 = arrayList10;
                            obj = null;
                            strP = str4;
                            a aVarA0 = a0(xmlPullParser, !arrayList15.isEmpty() ? arrayList15 : list, attributeValue, attributeValue2, iQ2, iQ3, fO, iY, iQ4, str4, arrayList4, arrayList5, arrayList3, arrayList2, kVarH0, j14, j11, j17, j16, j15, z10);
                            int iO2 = o(i12, w.l(aVarA0.f78079a.f25496l));
                            arrayList6 = arrayList14;
                            arrayList6.add(aVarA0);
                            xmlPullParser2 = xmlPullParser;
                            iO = iO2;
                            arrayList7 = arrayList;
                        } else {
                            obj = null;
                            j17 = jZ2;
                            arrayList15 = arrayList15;
                            arrayList2 = arrayList13;
                            arrayList3 = arrayList12;
                            arrayList4 = arrayList11;
                            arrayList5 = arrayList10;
                            arrayList8 = arrayList8;
                            str = str;
                            strP = str4;
                            arrayList6 = arrayList14;
                            xmlPullParser2 = xmlPullParser;
                            if (q0.f(xmlPullParser2, "SegmentBase")) {
                                kVarH0 = f0(xmlPullParser2, (k.e) kVarH0);
                                iO = i12;
                                arrayList7 = arrayList;
                                j18 = j16;
                                xmlPullParser2 = xmlPullParser2;
                            } else {
                                if (q0.f(xmlPullParser2, "SegmentList")) {
                                    jZ = z(xmlPullParser2, j16);
                                    iO = i12;
                                    kVarH0 = g0(xmlPullParser, (k.b) kVarH0, j14, j11, j17, jZ, j15);
                                } else {
                                    j18 = j16;
                                    iO = i12;
                                    if (q0.f(xmlPullParser2, "SegmentTemplate")) {
                                        jZ = z(xmlPullParser2, j18);
                                        kVarH0 = h0(xmlPullParser, (k.c) kVarH0, arrayList2, j14, j11, j17, jZ, j15);
                                    } else {
                                        xmlPullParser2 = xmlPullParser2;
                                        if (q0.f(xmlPullParser2, "InbandEventStream")) {
                                            arrayList7 = arrayList;
                                            arrayList7.add(G(xmlPullParser2, "InbandEventStream"));
                                        } else {
                                            arrayList7 = arrayList;
                                            if (q0.f(xmlPullParser2, "Label")) {
                                                strR = R(xmlPullParser);
                                            } else if (q0.e(xmlPullParser)) {
                                                x(xmlPullParser);
                                            }
                                        }
                                    }
                                }
                                j18 = jZ;
                                arrayList7 = arrayList;
                            }
                        }
                        obj = null;
                        j17 = jZ2;
                        arrayList15 = arrayList15;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList12;
                        arrayList4 = arrayList11;
                        arrayList5 = arrayList10;
                        arrayList8 = arrayList8;
                        str = str;
                        iO = i12;
                        strP = str4;
                        arrayList7 = arrayList;
                        j18 = j16;
                        arrayList6 = arrayList14;
                    }
                    j18 = j16;
                }
                if (q0.d(xmlPullParser2, "AdaptationSet")) {
                    break;
                }
                arrayList9 = arrayList7;
                arrayList14 = arrayList6;
                arrayList15 = arrayList15;
                arrayList13 = arrayList2;
                jZ2 = j17;
                arrayList12 = arrayList3;
                arrayList11 = arrayList4;
                arrayList10 = arrayList5;
                arrayList8 = arrayList8;
                str = str;
                i11 = iO;
                str2 = strP;
            }
            j18 = j16;
            j17 = jZ2;
            arrayList6 = arrayList14;
            arrayList3 = arrayList12;
            arrayList4 = arrayList11;
            arrayList5 = arrayList10;
            arrayList8 = arrayList8;
            str = str;
            arrayList7 = arrayList;
            iO = i11;
            strP = str2;
            obj = null;
            arrayList15 = arrayList15;
            arrayList2 = arrayList13;
            if (q0.d(xmlPullParser2, "AdaptationSet")) {
                break;
                break;
            }
            arrayList9 = arrayList7;
            arrayList14 = arrayList6;
            arrayList15 = arrayList15;
            arrayList13 = arrayList2;
            jZ2 = j17;
            arrayList12 = arrayList3;
            arrayList11 = arrayList4;
            arrayList10 = arrayList5;
            arrayList8 = arrayList8;
            str = str;
            i11 = iO;
            str2 = strP;
        }
        List arrayList16 = new ArrayList(arrayList6.size());
        for (int i13 = 0; i13 < arrayList6.size(); i13++) {
            arrayList16.add(i((a) arrayList6.get(i13), strR, str3, arrayList8, arrayList7));
        }
        return b(iQ, iO, arrayList16, arrayList5, arrayList3, arrayList2);
    }

    protected void x(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        u(xmlPullParser);
    }

    protected int y(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strN0 = n0(xmlPullParser, "schemeIdUri", null);
        strN0.hashCode();
        int iQ = -1;
        switch (strN0) {
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                iQ = Q(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                iQ = H(xmlPullParser);
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                iQ = V(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!q0.d(xmlPullParser, "AudioChannelConfiguration"));
        return iQ;
    }

    protected long z(XmlPullParser xmlPullParser, long j11) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j11;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }
}
