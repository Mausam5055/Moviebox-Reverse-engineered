package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.l;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.gslb.Utils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class HlsPlaylistParser implements b0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f26088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f26089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f26064c = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f26065d = Pattern.compile("VIDEO=\"(.+?)\"");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f26066e = Pattern.compile("AUDIO=\"(.+?)\"");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f26067f = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f26068g = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f26069h = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f26070i = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f26071j = Pattern.compile("CODECS=\"(.+?)\"");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f26072k = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Pattern f26073l = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f26074m = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Pattern f26075n = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Pattern f26076o = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Pattern f26077p = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Pattern f26078q = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Pattern f26079r = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Pattern f26080s = b("CAN-SKIP-DATERANGES");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Pattern f26081t = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Pattern f26082u = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Pattern f26083v = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final Pattern f26084w = b("CAN-BLOCK-RELOAD");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Pattern f26085x = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Pattern f26086y = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final Pattern f26087z = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern A = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern B = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern C = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern D = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern E = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern F = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern G = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern H = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern I = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern J = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern K = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern L = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern M = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern N = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern O = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern P = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern Q = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern R = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern S = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern T = b("AUTOSELECT");
    private static final Pattern U = b("DEFAULT");
    private static final Pattern V = b("FORCED");
    private static final Pattern W = b("INDEPENDENT");
    private static final Pattern X = b("GAP");
    private static final Pattern Y = b("PRECISE");
    private static final Pattern Z = Pattern.compile("VALUE=\"(.+?)\"");

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final Pattern f26062a0 = Pattern.compile("IMPORT=\"(.+?)\"");

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final Pattern f26063b0 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    public static final class DeltaUpdateException extends IOException {
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BufferedReader f26090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Queue f26091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f26092c;

        public a(Queue queue, BufferedReader bufferedReader) {
            this.f26091b = queue;
            this.f26090a = bufferedReader;
        }

        public boolean a() throws IOException {
            String strTrim;
            if (this.f26092c != null) {
                return true;
            }
            if (!this.f26091b.isEmpty()) {
                this.f26092c = (String) com.google.android.exoplayer2.util.a.e((String) this.f26091b.poll());
                return true;
            }
            do {
                String line = this.f26090a.readLine();
                this.f26092c = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.f26092c = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public String b() {
            if (!a()) {
                throw new NoSuchElementException();
            }
            String str = this.f26092c;
            this.f26092c = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(e.f26165n, null);
    }

    public HlsPlaylistParser(e eVar, d dVar) {
        this.f26088a = eVar;
        this.f26089b = dVar;
    }

    private static String A(String str, Map map) {
        Matcher matcher = f26063b0.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement((String) map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static int B(BufferedReader bufferedReader, boolean z10, int i11) throws IOException {
        while (i11 != -1 && Character.isWhitespace(i11) && (z10 || !p0.v0(i11))) {
            i11 = bufferedReader.read();
        }
        return i11;
    }

    private static boolean a(BufferedReader bufferedReader) throws IOException {
        int i11 = bufferedReader.read();
        if (i11 == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i11 = bufferedReader.read();
        }
        int iB = B(bufferedReader, true, i11);
        for (int i12 = 0; i12 < 7; i12++) {
            if (iB != "#EXTM3U".charAt(i12)) {
                return false;
            }
            iB = bufferedReader.read();
        }
        return p0.v0(B(bufferedReader, false, iB));
    }

    private static Pattern b(String str) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 9);
        sb2.append(str);
        sb2.append("=(");
        sb2.append("NO");
        sb2.append("|");
        sb2.append("YES");
        sb2.append(")");
        return Pattern.compile(sb2.toString());
    }

    private static DrmInitData c(String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i11 = 0; i11 < schemeDataArr.length; i11++) {
            schemeDataArr2[i11] = schemeDataArr[i11].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    private static String d(long j11, String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j11);
    }

    private static e.b e(ArrayList arrayList, String str) {
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            e.b bVar = (e.b) arrayList.get(i11);
            if (str.equals(bVar.f26183d)) {
                return bVar;
            }
        }
        return null;
    }

    private static e.b f(ArrayList arrayList, String str) {
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            e.b bVar = (e.b) arrayList.get(i11);
            if (str.equals(bVar.f26184e)) {
                return bVar;
            }
        }
        return null;
    }

    private static e.b g(ArrayList arrayList, String str) {
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            e.b bVar = (e.b) arrayList.get(i11);
            if (str.equals(bVar.f26182c)) {
                return bVar;
            }
        }
        return null;
    }

    private static double i(String str, Pattern pattern) {
        return Double.parseDouble(y(str, pattern, Collections.emptyMap()));
    }

    private static DrmInitData.SchemeData j(String str, String str2, Map map) throws ParserException {
        String strT = t(str, J, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String strY = y(str, K, map);
            return new DrmInitData.SchemeData(l.f25189d, MimeTypes.VIDEO_MP4, Base64.decode(strY.substring(strY.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(l.f25189d, "hls", p0.n0(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(strT)) {
            return null;
        }
        String strY2 = y(str, K, map);
        byte[] bArrDecode = Base64.decode(strY2.substring(strY2.indexOf(44)), 0);
        UUID uuid = l.f25190e;
        return new DrmInitData.SchemeData(uuid, MimeTypes.VIDEO_MP4, o9.l.a(uuid, bArrDecode));
    }

    private static String k(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? C.CENC_TYPE_cenc : C.CENC_TYPE_cbcs;
    }

    private static int l(String str, Pattern pattern) {
        return Integer.parseInt(y(str, pattern, Collections.emptyMap()));
    }

    private static long m(String str, Pattern pattern) {
        return Long.parseLong(y(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static d n(e eVar, d dVar, a aVar, String str) throws DeltaUpdateException, ParserException {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        boolean z10;
        int i11;
        d.b bVar;
        String strU;
        long j11;
        long j12;
        long j13;
        long j14;
        boolean z11;
        Object drmInitData;
        eVar = eVar;
        dVar = dVar;
        boolean z12 = eVar.f78952c;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        d.f fVar = new d.f(C.TIME_UNSET, false, C.TIME_UNSET, C.TIME_UNSET, false);
        TreeMap treeMap = new TreeMap();
        boolean z13 = false;
        String str3 = "";
        boolean z14 = z12;
        d.f fVarX = fVar;
        int i12 = 0;
        boolean zP = false;
        boolean z15 = false;
        int i13 = 0;
        boolean z16 = false;
        boolean z17 = false;
        int i14 = 0;
        boolean z18 = false;
        String strT = str3;
        String strY = null;
        long jI = C.TIME_UNSET;
        long jB0 = 0;
        long j15 = 0;
        int iL = 1;
        long jL = C.TIME_UNSET;
        long jI2 = C.TIME_UNSET;
        DrmInitData drmInitDataC = null;
        long j16 = 0;
        Object obj = null;
        long j17 = 0;
        long j18 = -1;
        String str4 = null;
        String strK = null;
        long j19 = 0;
        long jM = 0;
        d.C0373d c0373d = null;
        long jZ = 0;
        long j20 = 0;
        ArrayList arrayList7 = arrayList4;
        d.b bVar2 = null;
        while (aVar.a()) {
            String strB = aVar.b();
            if (strB.startsWith("#EXT")) {
                arrayList6.add(strB);
            }
            if (strB.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String strY2 = y(strB, f26078q, map);
                if ("VOD".equals(strY2)) {
                    i12 = 1;
                } else if ("EVENT".equals(strY2)) {
                    i12 = 2;
                }
            } else if (strB.equals("#EXT-X-I-FRAMES-ONLY")) {
                z18 = true;
            } else if (strB.startsWith("#EXT-X-START")) {
                jI = (long) (i(strB, C) * 1000000.0d);
                zP = p(strB, Y, z13);
            } else if (strB.startsWith("#EXT-X-SERVER-CONTROL")) {
                fVarX = x(strB);
            } else if (strB.startsWith("#EXT-X-PART-INF")) {
                jI2 = (long) (i(strB, f26076o) * 1000000.0d);
            } else if (strB.startsWith("#EXT-X-MAP")) {
                String strY3 = y(strB, K, map);
                String strU2 = u(strB, E, map);
                if (strU2 != null) {
                    String[] strArrS0 = p0.S0(strU2, "@");
                    j18 = Long.parseLong(strArrS0[z13 ? 1 : 0]);
                    if (strArrS0.length > 1) {
                        j16 = Long.parseLong(strArrS0[1]);
                    }
                }
                if (j18 == -1) {
                    j16 = 0;
                }
                String str5 = str4;
                if (strY != null && str5 == null) {
                    throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
                c0373d = new d.C0373d(strY3, j16, j18, strY, str5);
                if (j18 != -1) {
                    j16 += j18;
                }
                str4 = str5;
                j18 = -1;
            } else {
                String str6 = str4;
                if (strB.startsWith("#EXT-X-TARGETDURATION")) {
                    jL = 1000000 * ((long) l(strB, f26074m));
                } else {
                    if (strB.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                        jM = m(strB, f26085x);
                        str4 = str6;
                        j15 = jM;
                    } else if (strB.startsWith("#EXT-X-VERSION")) {
                        iL = l(strB, f26077p);
                    } else {
                        if (strB.startsWith("#EXT-X-DEFINE")) {
                            String strU3 = u(strB, f26062a0, map);
                            if (strU3 != null) {
                                String str7 = (String) eVar.f26174l.get(strU3);
                                if (str7 != null) {
                                    map.put(strU3, str7);
                                }
                            } else {
                                map.put(y(strB, P, map), y(strB, Z, map));
                            }
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            str2 = strK;
                            z10 = false;
                            i11 = i12;
                        } else if (strB.startsWith("#EXTINF")) {
                            jZ = z(strB, f26086y);
                            strT = t(strB, f26087z, str3, map);
                        } else {
                            String str8 = str3;
                            if (strB.startsWith("#EXT-X-SKIP")) {
                                int iL2 = l(strB, f26081t);
                                com.google.android.exoplayer2.util.a.g(dVar != null && arrayList3.isEmpty());
                                int i15 = (int) (j15 - ((d) p0.j(dVar)).f26130k);
                                int i16 = iL2 + i15;
                                if (i15 < 0 || i16 > dVar.f26137r.size()) {
                                    throw new DeltaUpdateException();
                                }
                                str3 = str8;
                                String str9 = str6;
                                long j21 = j19;
                                while (i15 < i16) {
                                    d.C0373d c0373dB = (d.C0373d) dVar.f26137r.get(i15);
                                    ArrayList arrayList8 = arrayList7;
                                    ArrayList arrayList9 = arrayList6;
                                    if (j15 != dVar.f26130k) {
                                        c0373dB = c0373dB.b(j21, (dVar.f26129j - i13) + c0373dB.f26152d);
                                    }
                                    arrayList3.add(c0373dB);
                                    j21 += c0373dB.f26151c;
                                    long j22 = c0373dB.f26158j;
                                    if (j22 != -1) {
                                        j16 = c0373dB.f26157i + j22;
                                    }
                                    int i17 = c0373dB.f26152d;
                                    d.C0373d c0373d2 = c0373dB.f26150b;
                                    DrmInitData drmInitData2 = c0373dB.f26154f;
                                    String str10 = c0373dB.f26155g;
                                    String str11 = c0373dB.f26156h;
                                    if (str11 == null || !str11.equals(Long.toHexString(jM))) {
                                        str9 = c0373dB.f26156h;
                                    }
                                    jM++;
                                    i15++;
                                    dVar = dVar;
                                    obj = drmInitData2;
                                    strY = str10;
                                    j17 = j21;
                                    i16 = i16;
                                    i14 = i17;
                                    c0373d = c0373d2;
                                    arrayList7 = arrayList8;
                                    arrayList6 = arrayList9;
                                }
                                eVar = eVar;
                                dVar = dVar;
                                j19 = j21;
                                str4 = str9;
                            } else {
                                ArrayList arrayList10 = arrayList7;
                                arrayList2 = arrayList6;
                                str3 = str8;
                                if (strB.startsWith("#EXT-X-KEY")) {
                                    String strY4 = y(strB, H, map);
                                    String strT2 = t(strB, I, "identity", map);
                                    if ("NONE".equals(strY4)) {
                                        treeMap.clear();
                                        strU = null;
                                        strY = null;
                                    } else {
                                        strU = u(strB, L, map);
                                        if ("identity".equals(strT2)) {
                                            if ("AES-128".equals(strY4)) {
                                                strY = y(strB, K, map);
                                            }
                                            str4 = strU;
                                        } else {
                                            String str12 = strK;
                                            strK = str12 == null ? k(strY4) : str12;
                                            DrmInitData.SchemeData schemeDataJ = j(strB, strT2, map);
                                            if (schemeDataJ != null) {
                                                treeMap.put(strT2, schemeDataJ);
                                                strY = null;
                                            }
                                            str4 = strU;
                                        }
                                        strY = null;
                                        str4 = strU;
                                    }
                                    obj = strY;
                                    str4 = strU;
                                } else {
                                    String str13 = strK;
                                    if (strB.startsWith("#EXT-X-BYTERANGE")) {
                                        String[] strArrS1 = p0.S0(y(strB, D, map), "@");
                                        j18 = Long.parseLong(strArrS1[0]);
                                        if (strArrS1.length > 1) {
                                            j16 = Long.parseLong(strArrS1[1]);
                                        }
                                    } else if (strB.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                        i13 = Integer.parseInt(strB.substring(strB.indexOf(58) + 1));
                                        eVar = eVar;
                                        dVar = dVar;
                                        strK = str13;
                                        str4 = str6;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z13 = false;
                                        z15 = true;
                                    } else if (strB.equals("#EXT-X-DISCONTINUITY")) {
                                        i14++;
                                    } else {
                                        if (strB.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                            if (jB0 == 0) {
                                                jB0 = p0.B0(p0.I0(strB.substring(strB.indexOf(58) + 1))) - j19;
                                            } else {
                                                i11 = i12;
                                                str2 = str13;
                                            }
                                        } else if (strB.equals("#EXT-X-GAP")) {
                                            eVar = eVar;
                                            dVar = dVar;
                                            strK = str13;
                                            str4 = str6;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z13 = false;
                                            z17 = true;
                                        } else if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                            eVar = eVar;
                                            dVar = dVar;
                                            strK = str13;
                                            str4 = str6;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z13 = false;
                                            z14 = true;
                                        } else if (strB.equals("#EXT-X-ENDLIST")) {
                                            eVar = eVar;
                                            dVar = dVar;
                                            strK = str13;
                                            str4 = str6;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z13 = false;
                                            z16 = true;
                                        } else if (strB.startsWith("#EXT-X-RENDITION-REPORT")) {
                                            i11 = i12;
                                            str2 = str13;
                                            arrayList5.add(new d.c(Uri.parse(n0.d(str, y(strB, K, map))), s(strB, A, -1L), r(strB, B, -1)));
                                        } else {
                                            i11 = i12;
                                            str2 = str13;
                                            if (!strB.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                jM = jM;
                                                if (strB.startsWith("#EXT-X-PART")) {
                                                    String strD = d(jM, strY, str6);
                                                    String strY5 = y(strB, K, map);
                                                    long jI3 = (long) (i(strB, f26075n) * 1000000.0d);
                                                    d.b bVar3 = bVar2;
                                                    boolean zP2 = p(strB, W, false) | (z14 && arrayList10.isEmpty());
                                                    boolean zP3 = p(strB, X, false);
                                                    String strU4 = u(strB, E, map);
                                                    if (strU4 != null) {
                                                        String[] strArrS2 = p0.S0(strU4, "@");
                                                        j12 = Long.parseLong(strArrS2[0]);
                                                        if (strArrS2.length > 1) {
                                                            j20 = Long.parseLong(strArrS2[1]);
                                                        }
                                                        j11 = -1;
                                                    } else {
                                                        j11 = -1;
                                                        j12 = -1;
                                                    }
                                                    if (j12 == j11) {
                                                        j20 = 0;
                                                    }
                                                    if (obj == null && !treeMap.isEmpty()) {
                                                        DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        DrmInitData drmInitData3 = new DrmInitData(str2, schemeDataArr);
                                                        if (drmInitDataC == null) {
                                                            drmInitDataC = c(str2, schemeDataArr);
                                                        }
                                                        obj = drmInitData3;
                                                    }
                                                    arrayList10.add(new d.b(strY5, c0373d, jI3, i14, j17, obj, strY, strD, j20, j12, zP3, zP2, false));
                                                    j17 += jI3;
                                                    if (j12 != j11) {
                                                        j20 += j12;
                                                    }
                                                    eVar = eVar;
                                                    dVar = dVar;
                                                    str4 = str6;
                                                    i12 = i11;
                                                    bVar2 = bVar3;
                                                    jM = jM;
                                                    strK = str2;
                                                    arrayList7 = arrayList10;
                                                    arrayList6 = arrayList2;
                                                } else {
                                                    bVar = bVar2;
                                                    arrayList = arrayList10;
                                                    if (strB.startsWith(Utils.SEPARATOR)) {
                                                        z10 = false;
                                                        eVar = eVar;
                                                        str4 = str6;
                                                        i12 = i11;
                                                        bVar2 = bVar;
                                                        jM = jM;
                                                        strK = str2;
                                                        arrayList7 = arrayList;
                                                        arrayList6 = arrayList2;
                                                        z13 = z10;
                                                        dVar = dVar;
                                                    } else {
                                                        String strD2 = d(jM, strY, str6);
                                                        long j23 = jM + 1;
                                                        String strA = A(strB, map);
                                                        d.C0373d c0373d3 = (d.C0373d) map2.get(strA);
                                                        if (j18 == -1) {
                                                            j13 = 0;
                                                        } else {
                                                            if (z18 && c0373d == null && c0373d3 == null) {
                                                                c0373d3 = new d.C0373d(strA, 0L, j16, null, null);
                                                                map2.put(strA, c0373d3);
                                                            }
                                                            j13 = j16;
                                                        }
                                                        if (obj != null || treeMap.isEmpty()) {
                                                            j14 = j23;
                                                            z11 = false;
                                                            drmInitData = obj;
                                                        } else {
                                                            j14 = j23;
                                                            z11 = false;
                                                            DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            drmInitData = new DrmInitData(str2, schemeDataArr2);
                                                            if (drmInitDataC == null) {
                                                                drmInitDataC = c(str2, schemeDataArr2);
                                                            }
                                                        }
                                                        arrayList3.add(new d.C0373d(strA, c0373d != null ? c0373d : c0373d3, strT, jZ, i14, j19, drmInitData, strY, strD2, j13, j18, z17, arrayList));
                                                        j17 = j19 + jZ;
                                                        arrayList7 = new ArrayList();
                                                        if (j18 != -1) {
                                                            j13 += j18;
                                                        }
                                                        j16 = j13;
                                                        eVar = eVar;
                                                        z17 = z11;
                                                        str4 = str6;
                                                        obj = drmInitData;
                                                        strT = str3;
                                                        j19 = j17;
                                                        i12 = i11;
                                                        bVar2 = bVar;
                                                        arrayList6 = arrayList2;
                                                        j18 = -1;
                                                        jZ = 0;
                                                        strK = str2;
                                                        jM = j14;
                                                        dVar = dVar;
                                                        z13 = z17;
                                                    }
                                                }
                                            } else if (bVar2 == null && "PART".equals(y(strB, N, map))) {
                                                String strY6 = y(strB, K, map);
                                                long jS = s(strB, F, -1L);
                                                long jS2 = s(strB, G, -1L);
                                                long j24 = jM;
                                                String strD3 = d(j24, strY, str6);
                                                if (obj == null && !treeMap.isEmpty()) {
                                                    DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                    DrmInitData drmInitData4 = new DrmInitData(str2, schemeDataArr3);
                                                    if (drmInitDataC == null) {
                                                        drmInitDataC = c(str2, schemeDataArr3);
                                                    }
                                                    obj = drmInitData4;
                                                }
                                                if (jS == -1 || jS2 != -1) {
                                                    bVar2 = new d.b(strY6, c0373d, 0L, i14, j17, obj, strY, strD3, jS != -1 ? jS : 0L, jS2, false, false, true);
                                                }
                                                eVar = eVar;
                                                dVar = dVar;
                                                jM = j24;
                                                str4 = str6;
                                                arrayList7 = arrayList10;
                                                i12 = i11;
                                                arrayList6 = arrayList2;
                                                strK = str2;
                                            }
                                        }
                                        arrayList = arrayList10;
                                        z10 = false;
                                    }
                                    strK = str13;
                                    str4 = str6;
                                }
                                arrayList7 = arrayList10;
                                arrayList6 = arrayList2;
                            }
                        }
                        bVar = bVar2;
                        eVar = eVar;
                        str4 = str6;
                        i12 = i11;
                        bVar2 = bVar;
                        jM = jM;
                        strK = str2;
                        arrayList7 = arrayList;
                        arrayList6 = arrayList2;
                        z13 = z10;
                        dVar = dVar;
                    }
                    z13 = false;
                }
                str4 = str6;
                z13 = false;
            }
        }
        int i18 = i12;
        d.b bVar4 = bVar2;
        ArrayList arrayList11 = arrayList7;
        ArrayList arrayList12 = arrayList6;
        Object[] objArr = z13 ? 1 : 0;
        HashMap map3 = new HashMap();
        for (int i19 = objArr == true ? 1 : 0; i19 < arrayList5.size(); i19++) {
            d.c cVar = (d.c) arrayList5.get(i19);
            long size = cVar.f26145b;
            if (size == -1) {
                size = (j15 + ((long) arrayList3.size())) - (arrayList11.isEmpty() ? 1L : 0L);
            }
            int size2 = cVar.f26146c;
            if (size2 == -1 && jI2 != C.TIME_UNSET) {
                size2 = (arrayList11.isEmpty() ? ((d.C0373d) g3.g(arrayList3)).f26148m : arrayList11).size() - 1;
            }
            Uri uri = cVar.f26144a;
            map3.put(uri, new d.c(uri, size, size2));
        }
        if (bVar4 != null) {
            arrayList11.add(bVar4);
        }
        return new d(i18, str, arrayList12, jI, zP, jB0, z15, i13, j15, iL, jL, jI2, z14, z16, jB0 != 0, drmInitDataC, arrayList3, arrayList11, fVarX, map3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:77:0x0316  */
    /* JADX WARN: Failed to find 'out' block for switch in B:94:0x0343. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private static e o(a aVar, String str) throws IOException {
        ArrayList arrayList;
        String strG;
        int i11;
        String str2;
        int i12;
        String strG2;
        int i13;
        int i14;
        int i15;
        Uri uriE;
        HashMap map;
        int i16 = 1;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        int i17 = 0;
        boolean zContains = false;
        while (true) {
            boolean zA = aVar.a();
            String str3 = MimeTypes.APPLICATION_M3U8;
            if (!zA) {
                HashMap map4 = map2;
                ArrayList arrayList10 = arrayList3;
                ArrayList arrayList11 = arrayList4;
                ArrayList arrayList12 = arrayList5;
                ArrayList arrayList13 = arrayList6;
                ArrayList arrayList14 = arrayList7;
                ArrayList arrayList15 = arrayList8;
                ArrayList arrayList16 = arrayList9;
                ArrayList arrayList17 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i18 = 0;
                while (i18 < arrayList2.size()) {
                    e.b bVar = (e.b) arrayList2.get(i18);
                    if (hashSet.add(bVar.f26180a)) {
                        com.google.android.exoplayer2.util.a.g(bVar.f26181b.f25494j == null);
                        i13 = 1;
                        arrayList17.add(bVar.a(bVar.f26181b.b().X(new Metadata(new HlsTrackMetadataEntry(null, null, (List) com.google.android.exoplayer2.util.a.e((ArrayList) map4.get(bVar.f26180a))))).E()));
                    } else {
                        i13 = 1;
                    }
                    i18 += i13;
                }
                Uri uri = null;
                ArrayList arrayList18 = null;
                o1 o1VarE = null;
                int i19 = 0;
                while (i19 < arrayList14.size()) {
                    ArrayList arrayList19 = arrayList14;
                    String str4 = (String) arrayList19.get(i19);
                    String strY = y(str4, Q, map3);
                    String strY2 = y(str4, P, map3);
                    o1.b bVar2 = new o1.b();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strY).length() + 1 + String.valueOf(strY2).length());
                    sb2.append(strY);
                    sb2.append(":");
                    sb2.append(strY2);
                    o1.b bVarV = bVar2.S(sb2.toString()).U(strY2).K(str3).g0(w(str4)).c0(v(str4, map3)).V(u(str4, O, map3));
                    String strU = u(str4, K, map3);
                    Uri uriE2 = strU == null ? uri : n0.e(str, strU);
                    String str5 = str3;
                    arrayList14 = arrayList19;
                    Metadata metadata = new Metadata(new HlsTrackMetadataEntry(strY, strY2, Collections.emptyList()));
                    String strY3 = y(str4, M, map3);
                    strY3.hashCode();
                    switch (strY3) {
                        case "SUBTITLES":
                            arrayList11 = arrayList11;
                            arrayList = arrayList10;
                            e.b bVarF = f(arrayList2, strY);
                            if (bVarF != null) {
                                String strL = p0.L(bVarF.f26181b.f25493i, 3);
                                bVarV.I(strL);
                                strG = w.g(strL);
                            } else {
                                strG = null;
                            }
                            if (strG == null) {
                                strG = MimeTypes.TEXT_VTT;
                            }
                            bVarV.e0(strG).X(metadata);
                            if (uriE2 != null) {
                                e.a aVar2 = new e.a(uriE2, bVarV.E(), strY, strY2);
                                arrayList12 = arrayList12;
                                arrayList12.add(aVar2);
                            } else {
                                arrayList12 = arrayList12;
                                s.i("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            i12 = 1;
                            break;
                        case "CLOSED-CAPTIONS":
                            arrayList11 = arrayList11;
                            arrayList = arrayList10;
                            String strY4 = y(str4, S, map3);
                            if (strY4.startsWith("CC")) {
                                i11 = Integer.parseInt(strY4.substring(2));
                                str2 = MimeTypes.APPLICATION_CEA608;
                            } else {
                                i11 = Integer.parseInt(strY4.substring(7));
                                str2 = MimeTypes.APPLICATION_CEA708;
                            }
                            if (arrayList18 == null) {
                                arrayList18 = new ArrayList();
                            }
                            bVarV.e0(str2).F(i11);
                            arrayList18.add(bVarV.E());
                            i12 = 1;
                            break;
                        case "AUDIO":
                            arrayList = arrayList10;
                            e.b bVarE = e(arrayList2, strY);
                            if (bVarE != null) {
                                String strL2 = p0.L(bVarE.f26181b.f25493i, 1);
                                bVarV.I(strL2);
                                strG2 = w.g(strL2);
                            } else {
                                strG2 = null;
                            }
                            String strU2 = u(str4, f26070i, map3);
                            if (strU2 != null) {
                                bVarV.H(Integer.parseInt(p0.T0(strU2, "/")[0]));
                                if (MimeTypes.AUDIO_E_AC3.equals(strG2) && strU2.endsWith("/JOC")) {
                                    bVarV.I("ec+3");
                                    strG2 = MimeTypes.AUDIO_E_AC3_JOC;
                                }
                            }
                            bVarV.e0(strG2);
                            if (uriE2 == null) {
                                arrayList11 = arrayList11;
                                if (bVarE != null) {
                                    o1VarE = bVarV.E();
                                    i12 = 1;
                                }
                                break;
                            } else {
                                bVarV.X(metadata);
                                arrayList11 = arrayList11;
                                arrayList11.add(new e.a(uriE2, bVarV.E(), strY, strY2));
                            }
                            arrayList12 = arrayList12;
                            i12 = 1;
                            break;
                        case "VIDEO":
                            e.b bVarG = g(arrayList2, strY);
                            if (bVarG != null) {
                                o1 o1Var = bVarG.f26181b;
                                String strL3 = p0.L(o1Var.f25493i, 2);
                                bVarV.I(strL3).e0(w.g(strL3)).j0(o1Var.f25501q).Q(o1Var.f25502r).P(o1Var.f25503s);
                            }
                            if (uriE2 != null) {
                                bVarV.X(metadata);
                                arrayList = arrayList10;
                                arrayList.add(new e.a(uriE2, bVarV.E(), strY, strY2));
                            }
                            i12 = 1;
                        default:
                            arrayList = arrayList10;
                            i12 = 1;
                            break;
                    }
                    i19 += i12;
                    arrayList10 = arrayList;
                    arrayList12 = arrayList12;
                    arrayList11 = arrayList11;
                    str3 = str5;
                    uri = null;
                }
                return new e(str, arrayList16, arrayList17, arrayList10, arrayList11, arrayList12, arrayList13, o1VarE, zContains ? Collections.emptyList() : arrayList18, i17, map3, arrayList15);
            }
            String strB = aVar.b();
            if (strB.startsWith("#EXT")) {
                arrayList9.add(strB);
            }
            boolean zStartsWith = strB.startsWith("#EXT-X-I-FRAME-STREAM-INF");
            if (strB.startsWith("#EXT-X-DEFINE")) {
                map3.put(y(strB, P, map3), y(strB, Z, map3));
            } else if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                i17 = i16;
            } else if (strB.startsWith("#EXT-X-MEDIA")) {
                arrayList7.add(strB);
            } else if (strB.startsWith("#EXT-X-SESSION-KEY")) {
                DrmInitData.SchemeData schemeDataJ = j(strB, t(strB, I, "identity", map3), map3);
                if (schemeDataJ != null) {
                    String strK = k(y(strB, H, map3));
                    DrmInitData.SchemeData[] schemeDataArr = new DrmInitData.SchemeData[i16];
                    schemeDataArr[0] = schemeDataJ;
                    arrayList8.add(new DrmInitData(strK, schemeDataArr));
                }
            } else {
                if (strB.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                    zContains |= strB.contains("CLOSED-CAPTIONS=NONE");
                    int i20 = zStartsWith ? 16384 : 0;
                    int iL = l(strB, f26069h);
                    int iR = r(strB, f26064c, -1);
                    String strU3 = u(strB, f26071j, map3);
                    String strU4 = u(strB, f26072k, map3);
                    if (strU4 != null) {
                        String[] strArrS0 = p0.S0(strU4, "x");
                        i15 = Integer.parseInt(strArrS0[0]);
                        i14 = Integer.parseInt(strArrS0[1]);
                        if (i15 <= 0 || i14 <= 0) {
                            i14 = -1;
                            i15 = -1;
                        }
                    } else {
                        i14 = -1;
                        i15 = -1;
                    }
                    String strU5 = u(strB, f26073l, map3);
                    float f11 = strU5 != null ? Float.parseFloat(strU5) : -1.0f;
                    String strU6 = u(strB, f26065d, map3);
                    String strU7 = u(strB, f26066e, map3);
                    HashMap map5 = map2;
                    String strU8 = u(strB, f26067f, map3);
                    String strU9 = u(strB, f26068g, map3);
                    if (zStartsWith) {
                        uriE = n0.e(str, y(strB, K, map3));
                    } else {
                        if (!aVar.a()) {
                            throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        uriE = n0.e(str, A(aVar.b(), map3));
                    }
                    arrayList2.add(new e.b(uriE, new o1.b().R(arrayList2.size()).K(MimeTypes.APPLICATION_M3U8).I(strU3).G(iR).Z(iL).j0(i15).Q(i14).P(f11).c0(i20).E(), strU6, strU7, strU8, strU9));
                    map = map5;
                    ArrayList arrayList20 = (ArrayList) map.get(uriE);
                    if (arrayList20 == null) {
                        arrayList20 = new ArrayList();
                        map.put(uriE, arrayList20);
                    }
                    arrayList20.add(new HlsTrackMetadataEntry.VariantInfo(iR, iL, strU6, strU7, strU8, strU9));
                }
                map2 = map;
                arrayList8 = arrayList8;
                arrayList6 = arrayList6;
                arrayList9 = arrayList9;
                arrayList5 = arrayList5;
                arrayList4 = arrayList4;
                arrayList3 = arrayList3;
                arrayList7 = arrayList7;
                i16 = 1;
            }
            map = map2;
            arrayList4 = arrayList4;
            arrayList5 = arrayList5;
            map2 = map;
            arrayList8 = arrayList8;
            arrayList6 = arrayList6;
            arrayList9 = arrayList9;
            arrayList5 = arrayList5;
            arrayList4 = arrayList4;
            arrayList3 = arrayList3;
            arrayList7 = arrayList7;
            i16 = 1;
        }
    }

    private static boolean p(String str, Pattern pattern, boolean z10) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? "YES".equals(matcher.group(1)) : z10;
    }

    private static double q(String str, Pattern pattern, double d11) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) : d11;
    }

    private static int r(String str, Pattern pattern, int i11) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) : i11;
    }

    private static long s(String str, Pattern pattern, long j11) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) : j11;
    }

    private static String t(String str, Pattern pattern, String str2, Map map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : A(str2, map);
    }

    private static String u(String str, Pattern pattern, Map map) {
        return t(str, pattern, null, map);
    }

    private static int v(String str, Map map) {
        String strU = u(str, R, map);
        if (TextUtils.isEmpty(strU)) {
            return 0;
        }
        String[] strArrS0 = p0.S0(strU, ",");
        int i11 = p0.s(strArrS0, "public.accessibility.describes-video") ? 512 : 0;
        if (p0.s(strArrS0, "public.accessibility.transcribes-spoken-dialog")) {
            i11 |= 4096;
        }
        if (p0.s(strArrS0, "public.accessibility.describes-music-and-sound")) {
            i11 |= 1024;
        }
        return p0.s(strArrS0, "public.easy-to-read") ? i11 | 8192 : i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int w(String str) {
        boolean zP = p(str, U, false);
        ?? r11 = zP;
        if (p(str, V, false)) {
            r11 = (zP ? 1 : 0) | 2;
        }
        return p(str, T, false) ? r11 | 4 : r11;
    }

    private static d.f x(String str) {
        double dQ = q(str, f26079r, -9.223372036854776E18d);
        long j11 = C.TIME_UNSET;
        long j12 = dQ == -9.223372036854776E18d ? -9223372036854775807L : (long) (dQ * 1000000.0d);
        boolean zP = p(str, f26080s, false);
        double dQ2 = q(str, f26082u, -9.223372036854776E18d);
        long j13 = dQ2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dQ2 * 1000000.0d);
        double dQ3 = q(str, f26083v, -9.223372036854776E18d);
        if (dQ3 != -9.223372036854776E18d) {
            j11 = (long) (dQ3 * 1000000.0d);
        }
        return new d.f(j12, zP, j13, j11, p(str, f26084w, false));
    }

    private static String y(String str, Pattern pattern, Map map) throws ParserException {
        String strU = u(str, pattern, map);
        if (strU != null) {
            return strU;
        }
        String strPattern = pattern.pattern();
        StringBuilder sb2 = new StringBuilder(String.valueOf(strPattern).length() + 19 + String.valueOf(str).length());
        sb2.append("Couldn't match ");
        sb2.append(strPattern);
        sb2.append(" in ");
        sb2.append(str);
        throw ParserException.createForMalformedManifest(sb2.toString(), null);
    }

    private static long z(String str, Pattern pattern) {
        return new BigDecimal(y(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    @Override // com.google.android.exoplayer2.upstream.b0.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public y9.d parse(Uri uri, InputStream inputStream) throws ParserException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!a(bufferedReader)) {
                throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    p0.n(bufferedReader);
                    throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                        arrayDeque.add(strTrim);
                        e eVarO = o(new a(arrayDeque, bufferedReader), uri.toString());
                        p0.n(bufferedReader);
                        return eVarO;
                    }
                    if (!strTrim.startsWith("#EXT-X-TARGETDURATION") && !strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") && !strTrim.startsWith("#EXTINF") && !strTrim.startsWith("#EXT-X-KEY") && !strTrim.startsWith("#EXT-X-BYTERANGE") && !strTrim.equals("#EXT-X-DISCONTINUITY") && !strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") && !strTrim.equals("#EXT-X-ENDLIST")) {
                        arrayDeque.add(strTrim);
                    }
                    arrayDeque.add(strTrim);
                    d dVarN = n(this.f26088a, this.f26089b, new a(arrayDeque, bufferedReader), uri.toString());
                    p0.n(bufferedReader);
                    return dVarN;
                }
            }
        } catch (Throwable th2) {
            p0.n(bufferedReader);
            throw th2;
        }
    }
}
