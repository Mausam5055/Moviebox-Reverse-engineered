package ia;

import android.text.Layout;
import ba.i;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.q0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends ba.h {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Pattern f65087p = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Pattern f65088q = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Pattern f65089r = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final Pattern f65090s = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final Pattern f65091t = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Pattern f65092u = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Pattern f65093v = Pattern.compile("^(\\d+) (\\d+)$");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final b f65094w = new b(30.0f, 1, 1);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final a f65095x = new a(32, 15);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final XmlPullParserFactory f65096o;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f65097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f65098b;

        a(int i11, int i12) {
            this.f65097a = i11;
            this.f65098b = i12;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f65099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f65100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f65101c;

        b(float f11, int i11, int i12) {
            this.f65099a = f11;
            this.f65100b = i11;
            this.f65101c = i12;
        }
    }

    /* JADX INFO: renamed from: ia.c$c, reason: collision with other inner class name */
    private static final class C0788c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f65102a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f65103b;

        C0788c(int i11, int i12) {
            this.f65102a = i11;
            this.f65103b = i12;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f65096o = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e11) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e11);
        }
    }

    private static a A(XmlPullParser xmlPullParser, a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f65093v.matcher(attributeValue);
        if (!matcher.matches()) {
            s.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int i11 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            int i12 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
            if (i11 != 0 && i12 != 0) {
                return new a(i11, i12);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + i11 + " " + i12);
        } catch (NumberFormatException unused) {
            s.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    private static void B(String str, g gVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrS0 = p0.S0(str, "\\s+");
        if (strArrS0.length == 1) {
            matcher = f65089r.matcher(str);
        } else {
            if (strArrS0.length != 2) {
                throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrS0.length + ".");
            }
            matcher = f65089r.matcher(strArrS0[1]);
            s.i("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                gVar.z(3);
                break;
            case "em":
                gVar.z(2);
                break;
            case "px":
                gVar.z(1);
                break;
            default:
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
        }
        gVar.y(Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))));
    }

    private static b C(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        float f11;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i11 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrS0 = p0.S0(attributeValue2, " ");
            if (strArrS0.length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f11 = Integer.parseInt(strArrS0[0]) / Integer.parseInt(strArrS0[1]);
        } else {
            f11 = 1.0f;
        }
        b bVar = f65094w;
        int i12 = bVar.f65100b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i12 = Integer.parseInt(attributeValue3);
        }
        int i13 = bVar.f65101c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i13 = Integer.parseInt(attributeValue4);
        }
        return new b(i11 * f11, i12, i13);
    }

    private static Map D(XmlPullParser xmlPullParser, Map map, a aVar, C0788c c0788c, Map map2, Map map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, TtmlNode.TAG_STYLE)) {
                String strA = q0.a(xmlPullParser, TtmlNode.TAG_STYLE);
                g gVarI = I(xmlPullParser, new g());
                if (strA != null) {
                    for (String str : J(strA)) {
                        gVarI.a((g) map.get(str));
                    }
                }
                String strG = gVarI.g();
                if (strG != null) {
                    map.put(strG, gVarI);
                }
            } else if (q0.f(xmlPullParser, TtmlNode.TAG_REGION)) {
                e eVarG = G(xmlPullParser, aVar, c0788c);
                if (eVarG != null) {
                    map2.put(eVarG.f65117a, eVarG);
                }
            } else if (q0.f(xmlPullParser, TtmlNode.TAG_METADATA)) {
                E(xmlPullParser, map3);
            }
        } while (!q0.d(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void E(XmlPullParser xmlPullParser, Map map) throws XmlPullParserException, IOException {
        String strA;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "image") && (strA = q0.a(xmlPullParser, "id")) != null) {
                map.put(strA, xmlPullParser.nextText());
            }
        } while (!q0.d(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    private static d F(XmlPullParser xmlPullParser, d dVar, Map map, b bVar) throws SubtitleDecoderException {
        long j11;
        long j12;
        int attributeCount = xmlPullParser.getAttributeCount();
        g gVarI = I(xmlPullParser, null);
        String strSubstring = null;
        String str = "";
        long jK = C.TIME_UNSET;
        long jK2 = C.TIME_UNSET;
        long jK3 = C.TIME_UNSET;
        String[] strArr = null;
        for (int i11 = 0; i11 < attributeCount; i11++) {
            String attributeName = xmlPullParser.getAttributeName(i11);
            String attributeValue = xmlPullParser.getAttributeValue(i11);
            attributeName.hashCode();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    break;
                case "dur":
                    jK3 = K(attributeValue, bVar);
                    break;
                case "end":
                    jK2 = K(attributeValue, bVar);
                    break;
                case "begin":
                    jK = K(attributeValue, bVar);
                    break;
                case "style":
                    String[] strArrJ = J(attributeValue);
                    if (strArrJ.length > 0) {
                        strArr = strArrJ;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith(Utils.SEPARATOR)) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j13 = dVar.f65107d;
            j11 = C.TIME_UNSET;
            if (j13 != C.TIME_UNSET) {
                if (jK != C.TIME_UNSET) {
                    jK += j13;
                }
                if (jK2 != C.TIME_UNSET) {
                    jK2 += j13;
                }
            }
        } else {
            j11 = C.TIME_UNSET;
        }
        long j14 = jK;
        if (jK2 != j11) {
            j12 = jK2;
        } else if (jK3 != j11) {
            j12 = j14 + jK3;
        } else if (dVar != null) {
            long j15 = dVar.f65108e;
            if (j15 != j11) {
                j12 = j15;
            } else {
                j12 = jK2;
            }
        } else {
            j12 = jK2;
        }
        return d.c(xmlPullParser.getName(), j14, j12, gVarI, strArr, str, strSubstring, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x016c  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b9  */
    private static e G(XmlPullParser xmlPullParser, a aVar, C0788c c0788c) {
        float f11;
        float f12;
        float f13;
        float f14;
        int i11;
        int i12;
        byte b11 = 0;
        int i13 = 1;
        String strA = q0.a(xmlPullParser, "id");
        if (strA == null) {
            return null;
        }
        String strA2 = q0.a(xmlPullParser, "origin");
        if (strA2 == null) {
            s.i("TtmlDecoder", "Ignoring region without an origin");
            return null;
        }
        Pattern pattern = f65091t;
        Matcher matcher = pattern.matcher(strA2);
        Pattern pattern2 = f65092u;
        Matcher matcher2 = pattern2.matcher(strA2);
        if (matcher.matches()) {
            try {
                float f15 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) / 100.0f;
                f11 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))) / 100.0f;
                f12 = f15;
            } catch (NumberFormatException unused) {
                s.i("TtmlDecoder", "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        } else {
            if (!matcher2.matches()) {
                s.i("TtmlDecoder", "Ignoring region with unsupported origin: " + strA2);
                return null;
            }
            if (c0788c == null) {
                s.i("TtmlDecoder", "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i14 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher2.group(1)));
                int i15 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher2.group(2)));
                f12 = i14 / c0788c.f65102a;
                f11 = i15 / c0788c.f65103b;
            } catch (NumberFormatException unused2) {
                s.i("TtmlDecoder", "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        }
        String strA3 = q0.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA3 == null) {
            s.i("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        Matcher matcher3 = pattern.matcher(strA3);
        Matcher matcher4 = pattern2.matcher(strA3);
        if (matcher3.matches()) {
            try {
                f13 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher3.group(1))) / 100.0f;
                f14 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher3.group(2))) / 100.0f;
            } catch (NumberFormatException unused3) {
                s.i("TtmlDecoder", "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        } else {
            if (!matcher4.matches()) {
                s.i("TtmlDecoder", "Ignoring region with unsupported extent: " + strA2);
                return null;
            }
            if (c0788c == null) {
                s.i("TtmlDecoder", "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i16 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher4.group(1)));
                int i17 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher4.group(2)));
                f13 = i16 / c0788c.f65102a;
                f14 = i17 / c0788c.f65103b;
            } catch (NumberFormatException unused4) {
                s.i("TtmlDecoder", "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        }
        String strA4 = q0.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
        if (strA4 != null) {
            String strE = com.google.common.base.a.e(strA4);
            strE.hashCode();
            if (strE.equals(TtmlNode.CENTER)) {
                f11 += f14 / 2.0f;
                i11 = 1;
            } else if (strE.equals("after")) {
                f11 += f14;
                i11 = 2;
            } else {
                i11 = 0;
            }
        } else {
            i11 = 0;
        }
        float f16 = f11;
        float f17 = 1.0f / aVar.f65098b;
        String strA5 = q0.a(xmlPullParser, "writingMode");
        if (strA5 != null) {
            String strE2 = com.google.common.base.a.e(strA5);
            strE2.hashCode();
            switch (strE2.hashCode()) {
                case 3694:
                    if (!strE2.equals("tb")) {
                        b11 = -1;
                    }
                    break;
                case 3553396:
                    b11 = !strE2.equals("tblr") ? (byte) -1 : (byte) 1;
                    break;
                case 3553576:
                    b11 = !strE2.equals("tbrl") ? (byte) -1 : (byte) 2;
                    break;
                default:
                    b11 = -1;
                    break;
            }
            switch (b11) {
                case 0:
                case 1:
                    i12 = 2;
                    break;
                default:
                    i13 = Integer.MIN_VALUE;
                case 2:
                    i12 = i13;
                    break;
            }
        } else {
            i13 = Integer.MIN_VALUE;
            i12 = i13;
        }
        return new e(strA, f12, f16, 0, i11, f13, f14, 1, f17, i12);
    }

    private static float H(String str) {
        Matcher matcher = f65090s.matcher(str);
        if (!matcher.matches()) {
            s.i("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)))));
        } catch (NumberFormatException e11) {
            s.j("TtmlDecoder", "Failed to parse shear: " + str, e11);
            return Float.MAX_VALUE;
        }
    }

    private static g I(XmlPullParser xmlPullParser, g gVar) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            String attributeValue = xmlPullParser.getAttributeValue(i11);
            String attributeName = xmlPullParser.getAttributeName(i11);
            attributeName.hashCode();
            switch (attributeName) {
                case "fontStyle":
                    gVar = x(gVar).B(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case "fontFamily":
                    gVar = x(gVar).x(attributeValue);
                    break;
                case "textAlign":
                    gVar = x(gVar).H(z(attributeValue));
                    break;
                case "textDecoration":
                    String strE = com.google.common.base.a.e(attributeValue);
                    strE.hashCode();
                    switch (strE) {
                        case "nounderline":
                            gVar = x(gVar).K(false);
                            break;
                        case "underline":
                            gVar = x(gVar).K(true);
                            break;
                        case "nolinethrough":
                            gVar = x(gVar).C(false);
                            break;
                        case "linethrough":
                            gVar = x(gVar).C(true);
                            break;
                    }
                    break;
                case "fontWeight":
                    gVar = x(gVar).v(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case "id":
                    if (!TtmlNode.TAG_STYLE.equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        gVar = x(gVar).A(attributeValue);
                        break;
                    }
                    break;
                case "ruby":
                    String strE2 = com.google.common.base.a.e(attributeValue);
                    strE2.hashCode();
                    switch (strE2) {
                        case "baseContainer":
                        case "base":
                            gVar = x(gVar).F(2);
                            break;
                        case "container":
                            gVar = x(gVar).F(1);
                            break;
                        case "delimiter":
                            gVar = x(gVar).F(4);
                            break;
                        case "textContainer":
                        case "text":
                            gVar = x(gVar).F(3);
                            break;
                    }
                    break;
                case "color":
                    gVar = x(gVar);
                    try {
                        gVar.w(com.google.android.exoplayer2.util.g.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        s.i("TtmlDecoder", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                    break;
                case "shear":
                    gVar = x(gVar).G(H(attributeValue));
                    break;
                case "textCombine":
                    String strE3 = com.google.common.base.a.e(attributeValue);
                    strE3.hashCode();
                    if (!strE3.equals(IntegrationConstants.NAVIGATION_BAR_ALL_ACTION)) {
                        if (strE3.equals("none")) {
                            gVar = x(gVar).I(false);
                        }
                        break;
                    } else {
                        gVar = x(gVar).I(true);
                        break;
                    }
                    break;
                case "fontSize":
                    try {
                        gVar = x(gVar);
                        B(attributeValue, gVar);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        s.i("TtmlDecoder", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                    break;
                case "textEmphasis":
                    gVar = x(gVar).J(ia.b.a(attributeValue));
                    break;
                case "rubyPosition":
                    String strE4 = com.google.common.base.a.e(attributeValue);
                    strE4.hashCode();
                    if (!strE4.equals("before")) {
                        if (strE4.equals("after")) {
                            gVar = x(gVar).E(2);
                        }
                        break;
                    } else {
                        gVar = x(gVar).E(1);
                        break;
                    }
                    break;
                case "backgroundColor":
                    gVar = x(gVar);
                    try {
                        gVar.u(com.google.android.exoplayer2.util.g.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        s.i("TtmlDecoder", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                    break;
                case "multiRowAlign":
                    gVar = x(gVar).D(z(attributeValue));
                    break;
            }
        }
        return gVar;
    }

    private static String[] J(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : p0.S0(strTrim, "\\s+");
    }

    private static long K(String str, b bVar) throws SubtitleDecoderException {
        double d11;
        double d12;
        byte b11 = 4;
        Matcher matcher = f65087p.matcher(str);
        if (matcher.matches()) {
            double d13 = (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) * 3600) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))) * 60) + Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(3)));
            String strGroup = matcher.group(4);
            double d14 = d13 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d15 = d14 + (strGroup2 != null ? Long.parseLong(strGroup2) / bVar.f65099a : 0.0d);
            String strGroup3 = matcher.group(6);
            return (long) ((d15 + (strGroup3 != null ? (Long.parseLong(strGroup3) / ((double) bVar.f65100b)) / ((double) bVar.f65099a) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = f65088q.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException("Malformed time expression: " + str);
        }
        double d16 = Double.parseDouble((String) com.google.android.exoplayer2.util.a.e(matcher2.group(1)));
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher2.group(2));
        str2.hashCode();
        switch (str2.hashCode()) {
            case 102:
                b11 = !str2.equals("f") ? (byte) -1 : (byte) 0;
                break;
            case 104:
                b11 = !str2.equals("h") ? (byte) -1 : (byte) 1;
                break;
            case 109:
                b11 = !str2.equals("m") ? (byte) -1 : (byte) 2;
                break;
            case GZIP_ENCODE_ERROR_VALUE:
                b11 = !str2.equals("t") ? (byte) -1 : (byte) 3;
                break;
            case 3494:
                if (!str2.equals("ms")) {
                    b11 = -1;
                }
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                d11 = bVar.f65099a;
                d16 /= d11;
                return (long) (d16 * 1000000.0d);
            case 1:
                d12 = 3600.0d;
                break;
            case 2:
                d12 = 60.0d;
                break;
            case 3:
                d11 = bVar.f65101c;
                d16 /= d11;
                return (long) (d16 * 1000000.0d);
            case 4:
                d11 = 1000.0d;
                d16 /= d11;
                return (long) (d16 * 1000000.0d);
            default:
                return (long) (d16 * 1000000.0d);
        }
        d16 *= d12;
        return (long) (d16 * 1000000.0d);
    }

    private static C0788c L(XmlPullParser xmlPullParser) {
        String strA = q0.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA == null) {
            return null;
        }
        Matcher matcher = f65092u.matcher(strA);
        if (!matcher.matches()) {
            s.i("TtmlDecoder", "Ignoring non-pixel tts extent: " + strA);
            return null;
        }
        try {
            return new C0788c(Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))), Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            s.i("TtmlDecoder", "Ignoring malformed tts extent: " + strA);
            return null;
        }
    }

    private static g x(g gVar) {
        return gVar == null ? new g() : gVar;
    }

    private static boolean y(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals(TtmlNode.TAG_STYLE) || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(TtmlNode.TAG_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals("information");
    }

    private static Layout.Alignment z(String str) {
        String strE = com.google.common.base.a.e(str);
        strE.hashCode();
        switch (strE) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    @Override // ba.h
    protected i v(byte[] bArr, int i11, boolean z10) throws SubtitleDecoderException {
        b bVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f65096o.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new e(""));
            C0788c c0788cL = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i11), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVarC = f65094w;
            a aVarA = f65095x;
            int i12 = 0;
            h hVar = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i12 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            bVarC = C(xmlPullParserNewPullParser);
                            aVarA = A(xmlPullParserNewPullParser, f65095x);
                            c0788cL = L(xmlPullParserNewPullParser);
                        }
                        C0788c c0788c = c0788cL;
                        b bVar2 = bVarC;
                        a aVar = aVarA;
                        if (y(name)) {
                            if (TtmlNode.TAG_HEAD.equals(name)) {
                                bVar = bVar2;
                                D(xmlPullParserNewPullParser, map, aVar, c0788c, map2, map3);
                            } else {
                                bVar = bVar2;
                                try {
                                    d dVarF = F(xmlPullParserNewPullParser, dVar, map2, bVar);
                                    arrayDeque.push(dVarF);
                                    if (dVar != null) {
                                        dVar.a(dVarF);
                                    }
                                } catch (SubtitleDecoderException e11) {
                                    s.j("TtmlDecoder", "Suppressing parser error", e11);
                                    i12++;
                                }
                            }
                            bVarC = bVar;
                        } else {
                            s.f("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i12++;
                            bVarC = bVar2;
                        }
                        c0788cL = c0788c;
                        aVarA = aVar;
                    } else if (eventType == 4) {
                        ((d) com.google.android.exoplayer2.util.a.e(dVar)).a(d.d(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            hVar = new h((d) com.google.android.exoplayer2.util.a.e((d) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i12++;
                } else if (eventType == 3) {
                    i12--;
                }
                xmlPullParserNewPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e12) {
            throw new IllegalStateException("Unexpected error when reading input.", e12);
        } catch (XmlPullParserException e13) {
            throw new SubtitleDecoderException("Unable to decode source", e13);
        }
    }
}
