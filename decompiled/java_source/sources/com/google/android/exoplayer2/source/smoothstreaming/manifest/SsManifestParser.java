package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.util.f;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import o9.l;
import o9.p;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes3.dex */
public class SsManifestParser implements b0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final XmlPullParserFactory f26577a;

    public static class MissingFieldException extends ParserException {
        /* JADX WARN: Illegal instructions before constructor call */
        public MissingFieldException(String str) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "Missing required field: ".concat(strValueOf) : new String("Missing required field: "), null, true, 4);
        }
    }

    private static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f26579b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f26580c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f26581d = new LinkedList();

        public a(a aVar, String str, String str2) {
            this.f26580c = aVar;
            this.f26578a = str;
            this.f26579b = str2;
        }

        private a e(a aVar, String str, String str2) {
            if ("QualityLevel".equals(str)) {
                return new c(aVar, str2);
            }
            if ("Protection".equals(str)) {
                return new b(aVar, str2);
            }
            if ("StreamIndex".equals(str)) {
                return new e(aVar, str2);
            }
            return null;
        }

        protected void a(Object obj) {
        }

        protected abstract Object b();

        protected final Object c(String str) {
            for (int i11 = 0; i11 < this.f26581d.size(); i11++) {
                Pair pair = (Pair) this.f26581d.get(i11);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            a aVar = this.f26580c;
            if (aVar == null) {
                return null;
            }
            return aVar.c(str);
        }

        protected boolean d(String str) {
            return false;
        }

        public final Object f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z10 = false;
            int i11 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.f26579b.equals(name)) {
                        n(xmlPullParser);
                        z10 = true;
                    } else if (z10) {
                        if (i11 > 0) {
                            i11++;
                        } else if (d(name)) {
                            n(xmlPullParser);
                        } else {
                            a aVarE = e(this, name, this.f26578a);
                            if (aVarE == null) {
                                i11 = 1;
                            } else {
                                a(aVarE.f(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z10 && i11 == 0) {
                        o(xmlPullParser);
                    }
                } else if (!z10) {
                    continue;
                } else if (i11 > 0) {
                    i11--;
                } else {
                    String name2 = xmlPullParser.getName();
                    h(xmlPullParser);
                    if (!d(name2)) {
                        return b();
                    }
                }
                xmlPullParser.next();
            }
        }

        protected final boolean g(XmlPullParser xmlPullParser, String str, boolean z10) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z10;
        }

        protected void h(XmlPullParser xmlPullParser) {
        }

        protected final int i(XmlPullParser xmlPullParser, String str, int i11) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i11;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedManifest(null, e11);
            }
        }

        protected final long j(XmlPullParser xmlPullParser, String str, long j11) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j11;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedManifest(null, e11);
            }
        }

        protected final int k(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedManifest(null, e11);
            }
        }

        protected final long l(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedManifest(null, e11);
            }
        }

        protected final String m(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected abstract void n(XmlPullParser xmlPullParser);

        protected void o(XmlPullParser xmlPullParser) {
        }

        protected final void p(String str, Object obj) {
            this.f26581d.add(Pair.create(str, obj));
        }
    }

    private static class b extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f26582e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private UUID f26583f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[] f26584g;

        public b(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        private static p[] q(byte[] bArr) {
            return new p[]{new p(true, null, 8, r(bArr), 0, 0, null)};
        }

        private static byte[] r(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder();
            for (int i11 = 0; i11 < bArr.length; i11 += 2) {
                sb2.append((char) bArr[i11]);
            }
            String string = sb2.toString();
            byte[] bArrDecode = Base64.decode(string.substring(string.indexOf("<KID>") + 5, string.indexOf("</KID>")), 0);
            t(bArrDecode, 0, 3);
            t(bArrDecode, 1, 2);
            t(bArrDecode, 4, 5);
            t(bArrDecode, 6, 7);
            return bArrDecode;
        }

        private static String s(String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }

        private static void t(byte[] bArr, int i11, int i12) {
            byte b11 = bArr[i11];
            bArr[i11] = bArr[i12];
            bArr[i12] = b11;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object b() {
            UUID uuid = this.f26583f;
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0377a(uuid, l.a(uuid, this.f26584g), q(this.f26584g));
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public boolean d(String str) {
            return "ProtectionHeader".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void h(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f26582e = false;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void n(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f26582e = true;
                this.f26583f = UUID.fromString(s(xmlPullParser.getAttributeValue(null, "SystemID")));
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void o(XmlPullParser xmlPullParser) {
            if (this.f26582e) {
                this.f26584g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    private static class c extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private o1 f26585e;

        public c(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        private static List q(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] bArrJ = p0.J(str);
                byte[][] bArrI = f.i(bArrJ);
                if (bArrI == null) {
                    arrayList.add(bArrJ);
                } else {
                    Collections.addAll(arrayList, bArrI);
                }
            }
            return arrayList;
        }

        private static String r(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return MimeTypes.VIDEO_H264;
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return MimeTypes.AUDIO_AAC;
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return MimeTypes.APPLICATION_TTML;
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return MimeTypes.AUDIO_AC3;
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return MimeTypes.AUDIO_E_AC3;
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return MimeTypes.AUDIO_DTS;
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return MimeTypes.AUDIO_DTS_HD;
            }
            if (str.equalsIgnoreCase("dtse")) {
                return MimeTypes.AUDIO_DTS_EXPRESS;
            }
            if (str.equalsIgnoreCase("opus")) {
                return MimeTypes.AUDIO_OPUS;
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object b() {
            return this.f26585e;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x00b0  */
        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            int i11;
            o1.b bVar = new o1.b();
            String strR = r(m(xmlPullParser, "FourCC"));
            int iIntValue = ((Integer) c("Type")).intValue();
            if (iIntValue == 2) {
                bVar.K(MimeTypes.VIDEO_MP4).j0(k(xmlPullParser, "MaxWidth")).Q(k(xmlPullParser, "MaxHeight")).T(q(xmlPullParser.getAttributeValue(null, "CodecPrivateData")));
            } else if (iIntValue == 1) {
                if (strR == null) {
                    strR = MimeTypes.AUDIO_AAC;
                }
                int iK = k(xmlPullParser, "Channels");
                int iK2 = k(xmlPullParser, "SamplingRate");
                List listQ = q(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
                if (listQ.isEmpty() && MimeTypes.AUDIO_AAC.equals(strR)) {
                    listQ = Collections.singletonList(com.google.android.exoplayer2.audio.a.a(iK2, iK));
                }
                bVar.K(MimeTypes.AUDIO_MP4).H(iK).f0(iK2).T(listQ);
            } else if (iIntValue == 3) {
                String str = (String) c("Subtype");
                if (str == null) {
                    i11 = 0;
                } else if (str.equals("CAPT")) {
                    i11 = 64;
                } else if (str.equals("DESC")) {
                    i11 = 1024;
                } else {
                    i11 = 0;
                }
                bVar.K(MimeTypes.APPLICATION_MP4).c0(i11);
            } else {
                bVar.K(MimeTypes.APPLICATION_MP4);
            }
            this.f26585e = bVar.S(xmlPullParser.getAttributeValue(null, "Index")).U((String) c("Name")).e0(strR).G(k(xmlPullParser, "Bitrate")).V((String) c("Language")).E();
        }
    }

    private static class d extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f26586e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f26587f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f26588g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f26589h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f26590i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f26591j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f26592k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f26593l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0377a f26594m;

        public d(a aVar, String str) {
            super(aVar, str, "SmoothStreamingMedia");
            this.f26592k = -1;
            this.f26594m = null;
            this.f26586e = new LinkedList();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void a(Object obj) {
            if (obj instanceof com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b) {
                this.f26586e.add((com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b) obj);
            } else if (obj instanceof com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0377a) {
                com.google.android.exoplayer2.util.a.g(this.f26594m == null);
                this.f26594m = (com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0377a) obj;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object b() {
            int size = this.f26586e.size();
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[] bVarArr = new com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[size];
            this.f26586e.toArray(bVarArr);
            if (this.f26594m != null) {
                com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0377a c0377a = this.f26594m;
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(c0377a.f26617a, MimeTypes.VIDEO_MP4, c0377a.f26618b));
                for (int i11 = 0; i11 < size; i11++) {
                    com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = bVarArr[i11];
                    int i12 = bVar.f26620a;
                    if (i12 == 2 || i12 == 1) {
                        o1[] o1VarArr = bVar.f26629j;
                        for (int i13 = 0; i13 < o1VarArr.length; i13++) {
                            o1VarArr[i13] = o1VarArr[i13].b().M(drmInitData).E();
                        }
                    }
                }
            }
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a(this.f26587f, this.f26588g, this.f26589h, this.f26590i, this.f26591j, this.f26592k, this.f26593l, this.f26594m, bVarArr);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void n(XmlPullParser xmlPullParser) {
            this.f26587f = k(xmlPullParser, "MajorVersion");
            this.f26588g = k(xmlPullParser, "MinorVersion");
            this.f26589h = j(xmlPullParser, "TimeScale", 10000000L);
            this.f26590i = l(xmlPullParser, "Duration");
            this.f26591j = j(xmlPullParser, "DVRWindowLength", 0L);
            this.f26592k = i(xmlPullParser, "LookaheadCount", -1);
            this.f26593l = g(xmlPullParser, "IsLive", false);
            p("TimeScale", Long.valueOf(this.f26589h));
        }
    }

    private static class e extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f26595e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List f26596f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f26597g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f26598h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f26599i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f26600j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f26601k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f26602l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f26603m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f26604n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f26605o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f26606p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private ArrayList f26607q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private long f26608r;

        public e(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f26595e = str;
            this.f26596f = new LinkedList();
        }

        private void q(XmlPullParser xmlPullParser) throws ParserException {
            int iS = s(xmlPullParser);
            this.f26597g = iS;
            p("Type", Integer.valueOf(iS));
            if (this.f26597g == 3) {
                this.f26598h = m(xmlPullParser, "Subtype");
            } else {
                this.f26598h = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            p("Subtype", this.f26598h);
            String attributeValue = xmlPullParser.getAttributeValue(null, "Name");
            this.f26600j = attributeValue;
            p("Name", attributeValue);
            this.f26601k = m(xmlPullParser, "Url");
            this.f26602l = i(xmlPullParser, "MaxWidth", -1);
            this.f26603m = i(xmlPullParser, "MaxHeight", -1);
            this.f26604n = i(xmlPullParser, "DisplayWidth", -1);
            this.f26605o = i(xmlPullParser, "DisplayHeight", -1);
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "Language");
            this.f26606p = attributeValue2;
            p("Language", attributeValue2);
            long jI = i(xmlPullParser, "TimeScale", -1);
            this.f26599i = jI;
            if (jI == -1) {
                this.f26599i = ((Long) c("TimeScale")).longValue();
            }
            this.f26607q = new ArrayList();
        }

        private void r(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.f26607q.size();
            long j11 = j(xmlPullParser, "t", C.TIME_UNSET);
            int i11 = 1;
            if (j11 == C.TIME_UNSET) {
                if (size == 0) {
                    j11 = 0;
                } else {
                    if (this.f26608r == -1) {
                        throw ParserException.createForMalformedManifest("Unable to infer start time", null);
                    }
                    j11 = this.f26608r + ((Long) this.f26607q.get(size - 1)).longValue();
                }
            }
            this.f26607q.add(Long.valueOf(j11));
            this.f26608r = j(xmlPullParser, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, C.TIME_UNSET);
            long j12 = j(xmlPullParser, CampaignEx.JSON_KEY_AD_R, 1L);
            if (j12 > 1 && this.f26608r == C.TIME_UNSET) {
                throw ParserException.createForMalformedManifest("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j13 = i11;
                if (j13 >= j12) {
                    return;
                }
                this.f26607q.add(Long.valueOf((this.f26608r * j13) + j11));
                i11++;
            }
        }

        private int s(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new MissingFieldException("Type");
            }
            if (MimeTypes.BASE_TYPE_AUDIO.equalsIgnoreCase(attributeValue)) {
                return 1;
            }
            if ("video".equalsIgnoreCase(attributeValue)) {
                return 2;
            }
            if (MimeTypes.BASE_TYPE_TEXT.equalsIgnoreCase(attributeValue)) {
                return 3;
            }
            StringBuilder sb2 = new StringBuilder(attributeValue.length() + 19);
            sb2.append("Invalid key value[");
            sb2.append(attributeValue);
            sb2.append("]");
            throw ParserException.createForMalformedManifest(sb2.toString(), null);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void a(Object obj) {
            if (obj instanceof o1) {
                this.f26596f.add((o1) obj);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object b() {
            o1[] o1VarArr = new o1[this.f26596f.size()];
            this.f26596f.toArray(o1VarArr);
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b(this.f26595e, this.f26601k, this.f26597g, this.f26598h, this.f26599i, this.f26600j, this.f26602l, this.f26603m, this.f26604n, this.f26605o, this.f26606p, o1VarArr, this.f26607q, this.f26608r);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public boolean d(String str) {
            return "c".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            if ("c".equals(xmlPullParser.getName())) {
                r(xmlPullParser);
            } else {
                q(xmlPullParser);
            }
        }
    }

    public SsManifestParser() {
        try {
            this.f26577a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e11) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b0.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.a parse(Uri uri, InputStream inputStream) throws ParserException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f26577a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            return (com.google.android.exoplayer2.source.smoothstreaming.manifest.a) new d(null, uri.toString()).f(xmlPullParserNewPullParser);
        } catch (XmlPullParserException e11) {
            throw ParserException.createForMalformedManifest(null, e11);
        }
    }
}
