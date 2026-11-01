package o3;

import android.text.Layout;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.b1;
import androidx.media3.common.util.k;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;
import i3.i;
import i3.r;
import i3.s;
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

/* JADX INFO: loaded from: classes2.dex */
public final class d implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f70677b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f70678c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f70679d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Pattern f70680e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Pattern f70681f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f70682g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f70683h = Pattern.compile("^(\\d+) (\\d+)$");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final a f70684i = new a(30.0f, 1, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final XmlPullParserFactory f70685a;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f70686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f70687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f70688c;

        a(float f11, int i11, int i12) {
            this.f70686a = f11;
            this.f70687b = i11;
            this.f70688c = i12;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f70689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f70690b;

        b(int i11, int i12) {
            this.f70689a = i11;
            this.f70690b = i12;
        }
    }

    public d() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f70685a = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e11) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e11);
        }
    }

    private static g d(g gVar) {
        return gVar == null ? new g() : gVar;
    }

    private static boolean e(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals(TtmlNode.TAG_STYLE) || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(TtmlNode.TAG_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals("information");
    }

    private static Layout.Alignment f(String str) {
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

    private static int g(XmlPullParser xmlPullParser, int i11) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return i11;
        }
        Matcher matcher = f70683h.matcher(attributeValue);
        if (!matcher.matches()) {
            u.h("TtmlParser", "Ignoring malformed cell resolution: " + attributeValue);
            return i11;
        }
        boolean z10 = true;
        try {
            int i12 = Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(1)));
            int i13 = Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(2)));
            if (i12 == 0 || i13 == 0) {
                z10 = false;
            }
            androidx.media3.common.util.a.b(z10, "Invalid cell resolution " + i12 + " " + i13);
            return i13;
        } catch (NumberFormatException unused) {
            u.h("TtmlParser", "Ignoring malformed cell resolution: " + attributeValue);
            return i11;
        }
    }

    private static void h(String str, g gVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrO1 = a1.o1(str, "\\s+");
        if (strArrO1.length == 1) {
            matcher = f70679d.matcher(str);
        } else {
            if (strArrO1.length != 2) {
                throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrO1.length + ".");
            }
            matcher = f70679d.matcher(strArrO1[1]);
            u.h("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) androidx.media3.common.util.a.e(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                gVar.C(3);
                break;
            case "em":
                gVar.C(2);
                break;
            case "px":
                gVar.C(1);
                break;
            default:
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
        }
        gVar.B(Float.parseFloat((String) androidx.media3.common.util.a.e(matcher.group(1))));
    }

    private static a i(XmlPullParser xmlPullParser) {
        float f11;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i11 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrO1 = a1.o1(attributeValue2, " ");
            androidx.media3.common.util.a.b(strArrO1.length == 2, "frameRateMultiplier doesn't have 2 parts");
            f11 = Integer.parseInt(strArrO1[0]) / Integer.parseInt(strArrO1[1]);
        } else {
            f11 = 1.0f;
        }
        a aVar = f70684i;
        int i12 = aVar.f70687b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i12 = Integer.parseInt(attributeValue3);
        }
        int i13 = aVar.f70688c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i13 = Integer.parseInt(attributeValue4);
        }
        return new a(i11 * f11, i12, i13);
    }

    private static Map j(XmlPullParser xmlPullParser, Map map, int i11, b bVar, Map map2, Map map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, TtmlNode.TAG_STYLE)) {
                String strA = b1.a(xmlPullParser, TtmlNode.TAG_STYLE);
                g gVarO = o(xmlPullParser, new g());
                if (strA != null) {
                    for (String str : p(strA)) {
                        gVarO.a((g) map.get(str));
                    }
                }
                String strH = gVarO.h();
                if (strH != null) {
                    map.put(strH, gVarO);
                }
            } else if (b1.f(xmlPullParser, TtmlNode.TAG_REGION)) {
                e eVarM = m(xmlPullParser, i11, bVar, map);
                if (eVarM != null) {
                    map2.put(eVarM.f70691a, eVarM);
                }
            } else if (b1.f(xmlPullParser, TtmlNode.TAG_METADATA)) {
                k(xmlPullParser, map3);
            }
        } while (!b1.d(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void k(XmlPullParser xmlPullParser, Map map) throws XmlPullParserException, IOException {
        String strA;
        do {
            xmlPullParser.next();
            if (b1.f(xmlPullParser, "image") && (strA = b1.a(xmlPullParser, "id")) != null) {
                map.put(strA, xmlPullParser.nextText());
            }
        } while (!b1.d(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    private static c l(XmlPullParser xmlPullParser, c cVar, Map map, a aVar) throws SubtitleDecoderException {
        long j11;
        long j12;
        int attributeCount = xmlPullParser.getAttributeCount();
        g gVarO = o(xmlPullParser, null);
        String strSubstring = null;
        String str = "";
        long jQ = C.TIME_UNSET;
        long jQ2 = C.TIME_UNSET;
        long jQ3 = C.TIME_UNSET;
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
                    jQ3 = q(attributeValue, aVar);
                    break;
                case "end":
                    jQ2 = q(attributeValue, aVar);
                    break;
                case "begin":
                    jQ = q(attributeValue, aVar);
                    break;
                case "style":
                    String[] strArrP = p(attributeValue);
                    if (strArrP.length > 0) {
                        strArr = strArrP;
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
        if (cVar != null) {
            long j13 = cVar.f70667d;
            j11 = C.TIME_UNSET;
            if (j13 != C.TIME_UNSET) {
                if (jQ != C.TIME_UNSET) {
                    jQ += j13;
                }
                if (jQ2 != C.TIME_UNSET) {
                    jQ2 += j13;
                }
            }
        } else {
            j11 = C.TIME_UNSET;
        }
        long j14 = jQ;
        if (jQ2 != j11) {
            j12 = jQ2;
        } else if (jQ3 != j11) {
            j12 = j14 + jQ3;
        } else if (cVar != null) {
            long j15 = cVar.f70668e;
            if (j15 != j11) {
                j12 = j15;
            } else {
                j12 = jQ2;
            }
        } else {
            j12 = jQ2;
        }
        return c.c(xmlPullParser.getName(), j14, j12, gVarO, strArr, str, strSubstring, cVar);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:90:0x0239  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static e m(XmlPullParser xmlPullParser, int i11, b bVar, Map map) {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        int i12;
        int i13;
        float f16;
        String strA;
        g gVar;
        String strA2;
        g gVar2;
        int i14 = 1;
        String strA3 = b1.a(xmlPullParser, "id");
        if (strA3 == null) {
            return null;
        }
        String strA4 = b1.a(xmlPullParser, "origin");
        if (strA4 == null && (strA2 = b1.a(xmlPullParser, TtmlNode.TAG_STYLE)) != null && (gVar2 = (g) map.get(strA2)) != null) {
            strA4 = gVar2.j();
        }
        if (strA4 != null) {
            Matcher matcher = f70681f.matcher(strA4);
            Matcher matcher2 = f70682g.matcher(strA4);
            if (matcher.matches()) {
                try {
                    f12 = Float.parseFloat((String) androidx.media3.common.util.a.e(matcher.group(1))) / 100.0f;
                    f11 = Float.parseFloat((String) androidx.media3.common.util.a.e(matcher.group(2))) / 100.0f;
                } catch (NumberFormatException unused) {
                    u.h("TtmlParser", "Ignoring region with malformed origin: " + strA4);
                    return null;
                }
            } else {
                if (!matcher2.matches()) {
                    u.h("TtmlParser", "Ignoring region with unsupported origin: " + strA4);
                    return null;
                }
                if (bVar == null) {
                    u.h("TtmlParser", "Ignoring region with missing tts:extent: " + strA4);
                    return null;
                }
                try {
                    int i15 = Integer.parseInt((String) androidx.media3.common.util.a.e(matcher2.group(1)));
                    int i16 = Integer.parseInt((String) androidx.media3.common.util.a.e(matcher2.group(2)));
                    float f17 = i15 / bVar.f70689a;
                    f11 = i16 / bVar.f70690b;
                    f12 = f17;
                } catch (NumberFormatException unused2) {
                    u.h("TtmlParser", "Ignoring region with malformed origin: " + strA4);
                    return null;
                }
            }
        } else {
            f11 = 0.0f;
            f12 = 0.0f;
        }
        String strA5 = b1.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA5 == null && (strA = b1.a(xmlPullParser, TtmlNode.TAG_STYLE)) != null && (gVar = (g) map.get(strA)) != null) {
            strA5 = gVar.c();
        }
        if (strA5 != null) {
            Matcher matcher3 = f70681f.matcher(strA5);
            Matcher matcher4 = f70682g.matcher(strA5);
            if (matcher3.matches()) {
                try {
                    f16 = Float.parseFloat((String) androidx.media3.common.util.a.e(matcher3.group(1))) / 100.0f;
                    f13 = Float.parseFloat((String) androidx.media3.common.util.a.e(matcher3.group(2))) / 100.0f;
                } catch (NumberFormatException unused3) {
                    u.h("TtmlParser", "Ignoring region with malformed extent: " + strA4);
                    return null;
                }
            } else {
                if (!matcher4.matches()) {
                    u.h("TtmlParser", "Ignoring region with unsupported extent: " + strA4);
                    return null;
                }
                if (bVar == null) {
                    u.h("TtmlParser", "Ignoring region with missing tts:extent: " + strA4);
                    return null;
                }
                try {
                    int i17 = Integer.parseInt((String) androidx.media3.common.util.a.e(matcher4.group(1)));
                    int i18 = Integer.parseInt((String) androidx.media3.common.util.a.e(matcher4.group(2)));
                    float f18 = i17 / bVar.f70689a;
                    f13 = i18 / bVar.f70690b;
                    f16 = f18;
                } catch (NumberFormatException unused4) {
                    u.h("TtmlParser", "Ignoring region with malformed extent: " + strA4);
                    return null;
                }
            }
            f14 = f16;
        } else {
            f13 = 1.0f;
            f14 = 1.0f;
        }
        String strA6 = b1.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
        if (strA6 != null) {
            String strE = com.google.common.base.a.e(strA6);
            strE.hashCode();
            if (strE.equals(TtmlNode.CENTER)) {
                f15 = f11 + (f13 / 2.0f);
                i12 = 1;
            } else if (strE.equals("after")) {
                f15 = f11 + f13;
                i12 = 2;
            } else {
                f15 = f11;
                i12 = 0;
            }
        } else {
            f15 = f11;
            i12 = 0;
        }
        float f19 = 1.0f / i11;
        String strA7 = b1.a(xmlPullParser, "writingMode");
        if (strA7 != null) {
            String strE2 = com.google.common.base.a.e(strA7);
            strE2.hashCode();
            byte b11 = -1;
            switch (strE2.hashCode()) {
                case 3694:
                    if (strE2.equals("tb")) {
                        b11 = 0;
                    }
                    break;
                case 3553396:
                    if (strE2.equals("tblr")) {
                        b11 = 1;
                    }
                    break;
                case 3553576:
                    if (strE2.equals("tbrl")) {
                        b11 = 2;
                    }
                    break;
            }
            switch (b11) {
                case 0:
                case 1:
                    i13 = 2;
                    break;
                default:
                    i14 = Integer.MIN_VALUE;
                case 2:
                    i13 = i14;
                    break;
            }
        } else {
            i14 = Integer.MIN_VALUE;
            i13 = i14;
        }
        return new e(strA3, f12, f15, 0, i12, f14, f13, 1, f19, i13);
    }

    private static float n(String str) {
        Matcher matcher = f70680e.matcher(str);
        if (!matcher.matches()) {
            u.h("TtmlParser", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) androidx.media3.common.util.a.e(matcher.group(1)))));
        } catch (NumberFormatException e11) {
            u.i("TtmlParser", "Failed to parse shear: " + str, e11);
            return Float.MAX_VALUE;
        }
    }

    private static g o(XmlPullParser xmlPullParser, g gVar) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            String attributeValue = xmlPullParser.getAttributeValue(i11);
            String attributeName = xmlPullParser.getAttributeName(i11);
            attributeName.hashCode();
            switch (attributeName) {
                case "fontStyle":
                    gVar = d(gVar).E(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case "extent":
                    gVar = d(gVar).y(attributeValue);
                    break;
                case "fontFamily":
                    gVar = d(gVar).A(attributeValue);
                    break;
                case "textAlign":
                    gVar = d(gVar).L(f(attributeValue));
                    break;
                case "origin":
                    gVar = d(gVar).H(attributeValue);
                    break;
                case "textDecoration":
                    String strE = com.google.common.base.a.e(attributeValue);
                    strE.hashCode();
                    switch (strE) {
                        case "nounderline":
                            gVar = d(gVar).O(false);
                            break;
                        case "underline":
                            gVar = d(gVar).O(true);
                            break;
                        case "nolinethrough":
                            gVar = d(gVar).F(false);
                            break;
                        case "linethrough":
                            gVar = d(gVar).F(true);
                            break;
                    }
                    break;
                case "fontWeight":
                    gVar = d(gVar).x(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case "id":
                    if (!TtmlNode.TAG_STYLE.equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        gVar = d(gVar).D(attributeValue);
                        break;
                    }
                    break;
                case "ruby":
                    String strE2 = com.google.common.base.a.e(attributeValue);
                    strE2.hashCode();
                    switch (strE2) {
                        case "baseContainer":
                        case "base":
                            gVar = d(gVar).J(2);
                            break;
                        case "container":
                            gVar = d(gVar).J(1);
                            break;
                        case "delimiter":
                            gVar = d(gVar).J(4);
                            break;
                        case "textContainer":
                        case "text":
                            gVar = d(gVar).J(3);
                            break;
                    }
                    break;
                case "color":
                    gVar = d(gVar);
                    try {
                        gVar.z(k.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        u.h("TtmlParser", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                    break;
                case "shear":
                    gVar = d(gVar).K(n(attributeValue));
                    break;
                case "textCombine":
                    String strE3 = com.google.common.base.a.e(attributeValue);
                    strE3.hashCode();
                    if (!strE3.equals(IntegrationConstants.NAVIGATION_BAR_ALL_ACTION)) {
                        if (strE3.equals("none")) {
                            gVar = d(gVar).M(false);
                        }
                        break;
                    } else {
                        gVar = d(gVar).M(true);
                        break;
                    }
                    break;
                case "fontSize":
                    try {
                        gVar = d(gVar);
                        h(attributeValue, gVar);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        u.h("TtmlParser", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                    break;
                case "textEmphasis":
                    gVar = d(gVar).N(o3.b.a(attributeValue));
                    break;
                case "rubyPosition":
                    String strE4 = com.google.common.base.a.e(attributeValue);
                    strE4.hashCode();
                    if (!strE4.equals("before")) {
                        if (strE4.equals("after")) {
                            gVar = d(gVar).I(2);
                        }
                        break;
                    } else {
                        gVar = d(gVar).I(1);
                        break;
                    }
                    break;
                case "backgroundColor":
                    gVar = d(gVar);
                    try {
                        gVar.w(k.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        u.h("TtmlParser", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                    break;
                case "multiRowAlign":
                    gVar = d(gVar).G(f(attributeValue));
                    break;
            }
        }
        return gVar;
    }

    private static String[] p(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : a1.o1(strTrim, "\\s+");
    }

    private static long q(String str, a aVar) throws SubtitleDecoderException {
        double d11;
        double d12;
        byte b11 = 4;
        Matcher matcher = f70677b.matcher(str);
        if (matcher.matches()) {
            double d13 = (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(1))) * 3600) + (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(2))) * 60) + Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(3)));
            String strGroup = matcher.group(4);
            double d14 = d13 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d15 = d14 + (strGroup2 != null ? Long.parseLong(strGroup2) / aVar.f70686a : 0.0d);
            String strGroup3 = matcher.group(6);
            return (long) ((d15 + (strGroup3 != null ? (Long.parseLong(strGroup3) / ((double) aVar.f70687b)) / ((double) aVar.f70686a) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = f70678c.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException("Malformed time expression: " + str);
        }
        double d16 = Double.parseDouble((String) androidx.media3.common.util.a.e(matcher2.group(1)));
        String str2 = (String) androidx.media3.common.util.a.e(matcher2.group(2));
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
                d11 = aVar.f70686a;
                d16 /= d11;
                return (long) (d16 * 1000000.0d);
            case 1:
                d12 = 3600.0d;
                break;
            case 2:
                d12 = 60.0d;
                break;
            case 3:
                d11 = aVar.f70688c;
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

    private static b r(XmlPullParser xmlPullParser) {
        String strA = b1.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA == null) {
            return null;
        }
        Matcher matcher = f70682g.matcher(strA);
        if (!matcher.matches()) {
            u.h("TtmlParser", "Ignoring non-pixel tts extent: " + strA);
            return null;
        }
        try {
            return new b(Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(1))), Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            u.h("TtmlParser", "Ignoring malformed tts extent: " + strA);
            return null;
        }
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        i.c(b(bArr, i11, i12), bVar, mVar);
    }

    @Override // i3.s
    public i3.k b(byte[] bArr, int i11, int i12) {
        char c11;
        a aVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f70685a.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new e(""));
            b bVarR = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i11, i12), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            a aVarI = f70684i;
            h hVar = null;
            int i13 = 0;
            int iG = 15;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                c cVar = (c) arrayDeque.peek();
                if (i13 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            aVarI = i(xmlPullParserNewPullParser);
                            c11 = 15;
                            iG = g(xmlPullParserNewPullParser, 15);
                            bVarR = r(xmlPullParserNewPullParser);
                        } else {
                            c11 = 15;
                        }
                        b bVar = bVarR;
                        a aVar2 = aVarI;
                        int i14 = iG;
                        if (e(name)) {
                            if (TtmlNode.TAG_HEAD.equals(name)) {
                                aVar = aVar2;
                                j(xmlPullParserNewPullParser, map, i14, bVar, map2, map3);
                            } else {
                                aVar = aVar2;
                                try {
                                    c cVarL = l(xmlPullParserNewPullParser, cVar, map2, aVar);
                                    arrayDeque.push(cVarL);
                                    if (cVar != null) {
                                        cVar.a(cVarL);
                                    }
                                } catch (SubtitleDecoderException e11) {
                                    u.i("TtmlParser", "Suppressing parser error", e11);
                                    i13++;
                                }
                            }
                            aVarI = aVar;
                            bVarR = bVar;
                            iG = i14;
                        } else {
                            u.f("TtmlParser", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i13++;
                            aVarI = aVar2;
                            bVarR = bVar;
                            iG = i14;
                        }
                    } else if (eventType == 4) {
                        ((c) androidx.media3.common.util.a.e(cVar)).a(c.d(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            hVar = new h((c) androidx.media3.common.util.a.e((c) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i13++;
                } else if (eventType == 3) {
                    i13--;
                }
                xmlPullParserNewPullParser.next();
            }
            return (i3.k) androidx.media3.common.util.a.e(hVar);
        } catch (IOException e12) {
            throw new IllegalStateException("Unexpected error when reading input.", e12);
        } catch (XmlPullParserException e13) {
            throw new IllegalStateException("Unable to decode source", e13);
        }
    }

    @Override // i3.s
    public int c() {
        return 1;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}
