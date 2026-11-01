package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.h;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.r0;
import androidx.media3.common.util.u;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.exoplayer.hls.s;
import androidx.media3.exoplayer.upstream.q;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.gslb.Utils;
import f3.p;
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

/* JADX INFO: loaded from: classes2.dex */
public final class HlsPlaylistParser implements q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f11835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f11836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f11794c = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f11796d = Pattern.compile("VIDEO=\"(.+?)\"");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f11798e = Pattern.compile("AUDIO=\"(.+?)\"");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f11800f = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f11802g = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f11804h = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f11806i = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f11808j = Pattern.compile("VIDEO-RANGE=(SDR|PQ|HLG)");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f11810k = Pattern.compile("CODECS=\"(.+?)\"");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Pattern f11812l = Pattern.compile("SUPPLEMENTAL-CODECS=\"(.+?)\"");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f11814m = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Pattern f11816n = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Pattern f11818o = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Pattern f11820p = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Pattern f11822q = Pattern.compile("[:,]DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Pattern f11824r = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Pattern f11826s = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Pattern f11828t = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Pattern f11829u = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Pattern f11830v = b("CAN-SKIP-DATERANGES");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final Pattern f11831w = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Pattern f11832x = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Pattern f11833y = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final Pattern f11834z = b("CAN-BLOCK-RELOAD");
    private static final Pattern A = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern B = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern C = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern D = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern E = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern F = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern G = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern H = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern I = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern J = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern K = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern L = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern M = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern N = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern O = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern P = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern Q = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern R = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern S = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern T = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern U = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern V = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern W = b("AUTOSELECT");
    private static final Pattern X = b("DEFAULT");
    private static final Pattern Y = b("FORCED");
    private static final Pattern Z = b("INDEPENDENT");

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final Pattern f11792a0 = b("GAP");

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final Pattern f11793b0 = b("PRECISE");

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final Pattern f11795c0 = Pattern.compile("VALUE=\"(.+?)\"");

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final Pattern f11797d0 = Pattern.compile("IMPORT=\"(.+?)\"");

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final Pattern f11799e0 = Pattern.compile("[:,]ID=\"(.+?)\"");

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final Pattern f11801f0 = Pattern.compile("CLASS=\"(.+?)\"");

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final Pattern f11803g0 = Pattern.compile("START-DATE=\"(.+?)\"");

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final Pattern f11805h0 = Pattern.compile("CUE=\"(.+?)\"");

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final Pattern f11807i0 = Pattern.compile("END-DATE=\"(.+?)\"");

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final Pattern f11809j0 = Pattern.compile("PLANNED-DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final Pattern f11811k0 = b("END-ON-NEXT");

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final Pattern f11813l0 = Pattern.compile("X-ASSET-URI=\"(.+?)\"");

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final Pattern f11815m0 = Pattern.compile("X-ASSET-LIST=\"(.+?)\"");

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final Pattern f11817n0 = Pattern.compile("X-RESUME-OFFSET=(-?[\\d\\.]+)\\b");

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static final Pattern f11819o0 = Pattern.compile("X-PLAYOUT-LIMIT=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final Pattern f11821p0 = Pattern.compile("X-SNAP=\"(.+?)\"");

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static final Pattern f11823q0 = Pattern.compile("X-RESTRICT=\"(.+?)\"");

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static final Pattern f11825r0 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final Pattern f11827s0 = Pattern.compile("\\b(X-[A-Z0-9-]+)=");

    public static final class DeltaUpdateException extends IOException {
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BufferedReader f11837a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Queue f11838b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f11839c;

        public a(Queue queue, BufferedReader bufferedReader) {
            this.f11838b = queue;
            this.f11837a = bufferedReader;
        }

        public boolean a() throws IOException {
            String strTrim;
            if (this.f11839c != null) {
                return true;
            }
            if (!this.f11838b.isEmpty()) {
                this.f11839c = (String) androidx.media3.common.util.a.e((String) this.f11838b.poll());
                return true;
            }
            do {
                String line = this.f11837a.readLine();
                this.f11839c = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.f11839c = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public String b() {
            if (!a()) {
                throw new NoSuchElementException();
            }
            String str = this.f11839c;
            this.f11839c = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(d.f11932n, null);
    }

    public HlsPlaylistParser(d dVar, c cVar) {
        this.f11835a = dVar;
        this.f11836b = cVar;
    }

    private static String A(String str, Pattern pattern, Map map) throws ParserException {
        String strW = w(str, pattern, map);
        if (strW != null) {
            return strW;
        }
        throw ParserException.createForMalformedManifest("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static long B(String str, Pattern pattern) {
        return new BigDecimal(A(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static String C(String str, Map map) {
        Matcher matcher = f11825r0.matcher(str);
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

    private static int D(BufferedReader bufferedReader, boolean z10, int i11) throws IOException {
        while (i11 != -1 && Character.isWhitespace(i11) && (z10 || !a1.I0(i11))) {
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
        int iD = D(bufferedReader, true, i11);
        for (int i12 = 0; i12 < 7; i12++) {
            if (iD != "#EXTM3U".charAt(i12)) {
                return false;
            }
            iD = bufferedReader.read();
        }
        return a1.I0(D(bufferedReader, false, iD));
    }

    private static Pattern b(String str) {
        return Pattern.compile(str + "=(NO|YES)");
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

    private static d.b e(ArrayList arrayList, String str) {
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            d.b bVar = (d.b) arrayList.get(i11);
            if (str.equals(bVar.f11950d)) {
                return bVar;
            }
        }
        return null;
    }

    private static d.b f(ArrayList arrayList, String str) {
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            d.b bVar = (d.b) arrayList.get(i11);
            if (str.equals(bVar.f11951e)) {
                return bVar;
            }
        }
        return null;
    }

    private static d.b g(ArrayList arrayList, String str) {
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            d.b bVar = (d.b) arrayList.get(i11);
            if (str.equals(bVar.f11949c)) {
                return bVar;
            }
        }
        return null;
    }

    private static boolean h(String str, String str2, String str3, String str4) {
        if (!y.p(str2, str3)) {
            return false;
        }
        if (str3 == null) {
            return true;
        }
        if (str == null || str4 == null) {
            return false;
        }
        return (!str.equals("PQ") || str4.equals("db1p")) && (!str.equals("SDR") || str4.equals("db2g")) && (!str.equals("HLG") || str4.startsWith("db4"));
    }

    private static c.b j(String str, String str2, Map map) {
        String str3 = str2 + UrlUtils.EQUAL_MARK;
        int iIndexOf = str.indexOf(str3) + str3.length();
        String strSubstring = str.substring(iIndexOf, (str.length() == iIndexOf + 1 ? 1 : 2) + iIndexOf);
        if (strSubstring.startsWith("\"")) {
            return new c.b(str2, A(str, Pattern.compile(str2 + "=\"(.+?)\""), map), 0);
        }
        if (strSubstring.equals("0x") || strSubstring.equals("0X")) {
            return new c.b(str2, A(str, Pattern.compile(str2 + "=(0[xX][A-F0-9]+)"), map), 1);
        }
        return new c.b(str2, k(str, Pattern.compile(str2 + "=([\\d\\.]+)\\b")));
    }

    private static double k(String str, Pattern pattern) {
        return Double.parseDouble(A(str, pattern, Collections.emptyMap()));
    }

    private static DrmInitData.SchemeData l(String str, String str2, Map map) throws ParserException {
        String strV = v(str, M, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String strA = A(str, N, map);
            return new DrmInitData.SchemeData(h.f9984d, MimeTypes.VIDEO_MP4, Base64.decode(strA.substring(strA.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(h.f9984d, "hls", a1.u0(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(strV)) {
            return null;
        }
        String strA2 = A(str, N, map);
        byte[] bArrDecode = Base64.decode(strA2.substring(strA2.indexOf(44)), 0);
        UUID uuid = h.f9985e;
        return new DrmInitData.SchemeData(uuid, MimeTypes.VIDEO_MP4, p.a(uuid, bArrDecode));
    }

    private static String m(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? C.CENC_TYPE_cenc : C.CENC_TYPE_cbcs;
    }

    private static int n(String str, Pattern pattern) {
        return Integer.parseInt(A(str, pattern, Collections.emptyMap()));
    }

    private static long o(String str, Pattern pattern) {
        return Long.parseLong(A(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0318 A[PHI: r82
  0x0318: PHI (r82v14 java.lang.String) = (r82v12 java.lang.String), (r82v1 java.lang.String) binds: [B:119:0x032a, B:111:0x030f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:233:0x0669 A[PHI: r47
  0x0669: PHI (r47v14 java.lang.String[]) = (r47v10 java.lang.String[]), (r47v11 java.lang.String[]), (r47v12 java.lang.String[]), (r47v15 java.lang.String[]) binds: [B:243:0x068d, B:239:0x0680, B:235:0x0673, B:232:0x0667] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:296:0x07a5 A[PHI: r45
  0x07a5: PHI (r45v25 java.util.regex.Matcher) = 
  (r45v18 java.util.regex.Matcher)
  (r45v19 java.util.regex.Matcher)
  (r45v20 java.util.regex.Matcher)
  (r45v21 java.util.regex.Matcher)
  (r45v22 java.util.regex.Matcher)
  (r45v23 java.util.regex.Matcher)
  (r45v26 java.util.regex.Matcher)
 binds: [B:318:0x07f0, B:314:0x07e3, B:310:0x07d6, B:306:0x07c9, B:302:0x07bc, B:298:0x07af, B:295:0x07a3] A[DONT_GENERATE, DONT_INLINE]] */
    private static c p(d dVar, c cVar, a aVar, String str) throws DeltaUpdateException, ParserException {
        int i11;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        c.d dVar2;
        String strW;
        String strA;
        long j11;
        long j12;
        String str3;
        long j13;
        long j14;
        String str4;
        DrmInitData drmInitData;
        Matcher matcher;
        byte b11;
        String[] strArr;
        byte b12;
        dVar = dVar;
        cVar = cVar;
        boolean z10 = dVar.f16986c;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        c.h hVar = new c.h(C.TIME_UNSET, false, C.TIME_UNSET, C.TIME_UNSET, false);
        TreeMap treeMap = new TreeMap();
        boolean z11 = false;
        String str5 = "";
        boolean z12 = z10;
        c.h hVarZ = hVar;
        int i12 = 0;
        boolean zR = false;
        boolean z13 = false;
        int i13 = 0;
        boolean z14 = false;
        boolean z15 = false;
        int i14 = 0;
        boolean z16 = false;
        long jK = -9223372036854775807L;
        long jN = -9223372036854775807L;
        long jK2 = -9223372036854775807L;
        long jR0 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long j18 = 0;
        long jO = 0;
        long jB = 0;
        long j19 = 0;
        String strV = str5;
        int iN = 1;
        DrmInitData drmInitDataC = null;
        DrmInitData drmInitData2 = null;
        String str6 = null;
        long j20 = -1;
        String str7 = null;
        String strM = null;
        c.f fVar = null;
        ArrayList arrayList8 = arrayList4;
        c.d dVar3 = null;
        while (aVar.a()) {
            String strB = aVar.b();
            if (strB.startsWith("#EXT")) {
                arrayList6.add(strB);
            }
            if (strB.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String strA2 = A(strB, f11828t, map);
                if ("VOD".equals(strA2)) {
                    i12 = 1;
                } else if ("EVENT".equals(strA2)) {
                    i12 = 2;
                }
            } else if (strB.equals("#EXT-X-I-FRAMES-ONLY")) {
                z16 = true;
            } else {
                if (strB.startsWith("#EXT-X-START")) {
                    arrayList3 = arrayList3;
                    jK = (long) (k(strB, F) * 1000000.0d);
                    zR = r(strB, f11793b0, z11);
                } else {
                    arrayList3 = arrayList3;
                    if (strB.startsWith("#EXT-X-SERVER-CONTROL")) {
                        hVarZ = z(strB);
                    } else if (strB.startsWith("#EXT-X-PART-INF")) {
                        jK2 = (long) (k(strB, f11824r) * 1000000.0d);
                    } else if (strB.startsWith("#EXT-X-MAP")) {
                        String strA3 = A(strB, N, map);
                        String strW2 = w(strB, H, map);
                        if (strW2 != null) {
                            String[] strArrO1 = a1.o1(strW2, "@");
                            j20 = Long.parseLong(strArrO1[z11 ? 1 : 0]);
                            if (strArrO1.length > 1) {
                                j16 = Long.parseLong(strArrO1[1]);
                            }
                        }
                        if (j20 == -1) {
                            j16 = 0;
                        }
                        String str8 = str6;
                        if (str8 != null && str7 == null) {
                            throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                        }
                        fVar = new c.f(strA3, j16, j20, str8, str7);
                        if (j20 != -1) {
                            j16 += j20;
                        }
                        arrayList3 = arrayList3;
                        str6 = str8;
                        j20 = -1;
                    } else {
                        str6 = str6;
                        str7 = str7;
                        if (strB.startsWith("#EXT-X-TARGETDURATION")) {
                            arrayList7 = arrayList7;
                            jN = 1000000 * ((long) n(strB, f11818o));
                        } else {
                            arrayList7 = arrayList7;
                            if (strB.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                jO = o(strB, A);
                                arrayList7 = arrayList7;
                                j15 = jO;
                                z11 = false;
                            } else if (strB.startsWith("#EXT-X-VERSION")) {
                                iN = n(strB, f11826s);
                            } else {
                                if (strB.startsWith("#EXT-X-DEFINE")) {
                                    String strW3 = w(strB, f11797d0, map);
                                    if (strW3 != null) {
                                        String str9 = (String) dVar.f11941l.get(strW3);
                                        if (str9 != null) {
                                            map.put(strW3, str9);
                                        }
                                    } else {
                                        map.put(A(strB, S, map), A(strB, f11795c0, map));
                                    }
                                    arrayList = arrayList8;
                                    arrayList2 = arrayList6;
                                    str2 = strM;
                                } else if (strB.startsWith("#EXTINF")) {
                                    jB = B(strB, B);
                                    strV = v(strB, C, str5, map);
                                } else {
                                    String str10 = str5;
                                    if (strB.startsWith("#EXT-X-SKIP")) {
                                        int iN2 = n(strB, f11831w);
                                        androidx.media3.common.util.a.g(cVar != null && arrayList3.isEmpty());
                                        str5 = str10;
                                        int i15 = (int) (j15 - ((c) a1.i(cVar)).f11878k);
                                        int i16 = iN2 + i15;
                                        if (i15 < 0 || i16 > cVar.f11885r.size()) {
                                            throw new DeltaUpdateException();
                                        }
                                        long j21 = j18;
                                        while (i15 < i16) {
                                            c.f fVarB = (c.f) cVar.f11885r.get(i15);
                                            ArrayList arrayList9 = arrayList8;
                                            ArrayList arrayList10 = arrayList6;
                                            if (j15 != cVar.f11878k) {
                                                fVarB = fVarB.b(j21, (cVar.f11877j - i13) + fVarB.f11919d);
                                            }
                                            arrayList3.add(fVarB);
                                            j21 += fVarB.f11918c;
                                            long j22 = fVarB.f11925j;
                                            if (j22 != -1) {
                                                j16 = fVarB.f11924i + j22;
                                            }
                                            int i17 = fVarB.f11919d;
                                            c.f fVar2 = fVarB.f11917b;
                                            DrmInitData drmInitData3 = fVarB.f11921f;
                                            String str11 = fVarB.f11922g;
                                            String str12 = fVarB.f11923h;
                                            if (str12 == null || !str12.equals(Long.toHexString(jO))) {
                                                str7 = fVarB.f11923h;
                                            }
                                            jO++;
                                            i15++;
                                            cVar = cVar;
                                            str6 = str11;
                                            j17 = j21;
                                            i14 = i17;
                                            fVar = fVar2;
                                            arrayList6 = arrayList10;
                                            drmInitData2 = drmInitData3;
                                            arrayList8 = arrayList9;
                                        }
                                        dVar = dVar;
                                        cVar = cVar;
                                        str6 = str6;
                                        j18 = j21;
                                        arrayList7 = arrayList7;
                                        str7 = str7;
                                        z11 = false;
                                    } else {
                                        arrayList8 = arrayList8;
                                        arrayList2 = arrayList6;
                                        str5 = str10;
                                        if (strB.startsWith("#EXT-X-KEY")) {
                                            String strA4 = A(strB, K, map);
                                            String strV2 = v(strB, L, "identity", map);
                                            if ("NONE".equals(strA4)) {
                                                treeMap.clear();
                                                strA = null;
                                                strW = null;
                                                drmInitData2 = null;
                                            } else {
                                                strW = w(strB, O, map);
                                                if (!"identity".equals(strV2)) {
                                                    String str13 = strM;
                                                    strM = str13 == null ? m(strA4) : str13;
                                                    DrmInitData.SchemeData schemeDataL = l(strB, strV2, map);
                                                    if (schemeDataL != null) {
                                                        treeMap.put(strV2, schemeDataL);
                                                        strA = null;
                                                        drmInitData2 = null;
                                                    } else {
                                                        strA = null;
                                                    }
                                                } else if ("AES-128".equals(strA4)) {
                                                    strA = A(strB, N, map);
                                                } else {
                                                    strA = null;
                                                }
                                            }
                                            str6 = strA;
                                            z11 = false;
                                        } else {
                                            strM = strM;
                                            if (strB.startsWith("#EXT-X-BYTERANGE")) {
                                                String[] strArrO2 = a1.o1(A(strB, G, map), "@");
                                                j20 = Long.parseLong(strArrO2[0]);
                                                if (strArrO2.length > 1) {
                                                    j16 = Long.parseLong(strArrO2[1]);
                                                }
                                            } else if (strB.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                                i13 = Integer.parseInt(strB.substring(strB.indexOf(58) + 1));
                                                z13 = true;
                                                str6 = str6;
                                                arrayList8 = arrayList8;
                                                arrayList7 = arrayList7;
                                                arrayList6 = arrayList2;
                                                z11 = false;
                                            } else if (strB.equals("#EXT-X-DISCONTINUITY")) {
                                                i14++;
                                            } else {
                                                if (strB.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                                    if (jR0 == 0) {
                                                        jR0 = a1.R0(a1.Z0(strB.substring(strB.indexOf(58) + 1))) - j18;
                                                    }
                                                } else if (strB.equals("#EXT-X-GAP")) {
                                                    dVar = dVar;
                                                    cVar = cVar;
                                                    arrayList3 = arrayList3;
                                                    strM = strM;
                                                    str6 = str6;
                                                    arrayList8 = arrayList8;
                                                    arrayList7 = arrayList7;
                                                    str7 = str7;
                                                    arrayList6 = arrayList2;
                                                    z11 = false;
                                                    z15 = true;
                                                } else if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                                    dVar = dVar;
                                                    cVar = cVar;
                                                    arrayList3 = arrayList3;
                                                    strM = strM;
                                                    str6 = str6;
                                                    arrayList8 = arrayList8;
                                                    arrayList7 = arrayList7;
                                                    str7 = str7;
                                                    arrayList6 = arrayList2;
                                                    z11 = false;
                                                    z12 = true;
                                                } else if (strB.equals("#EXT-X-ENDLIST")) {
                                                    dVar = dVar;
                                                    cVar = cVar;
                                                    arrayList3 = arrayList3;
                                                    strM = strM;
                                                    str6 = str6;
                                                    arrayList8 = arrayList8;
                                                    arrayList7 = arrayList7;
                                                    str7 = str7;
                                                    arrayList6 = arrayList2;
                                                    z11 = false;
                                                    z14 = true;
                                                } else if (strB.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                    arrayList5.add(new c.e(Uri.parse(r0.e(str, A(strB, N, map))), u(strB, D, -1L), t(strB, E, -1)));
                                                } else {
                                                    if (!strB.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                        long j23 = jO;
                                                        str7 = str7;
                                                        if (strB.startsWith("#EXT-X-PART")) {
                                                            String strD = d(j23, str6, str7);
                                                            String strA5 = A(strB, N, map);
                                                            c.d dVar4 = dVar3;
                                                            ArrayList arrayList11 = arrayList5;
                                                            long jK3 = (long) (k(strB, f11820p) * 1000000.0d);
                                                            int i18 = i12;
                                                            boolean zR2 = r(strB, Z, false) | (z12 && arrayList8.isEmpty());
                                                            boolean zR3 = r(strB, f11792a0, false);
                                                            String strW4 = w(strB, H, map);
                                                            if (strW4 != null) {
                                                                String[] strArrO3 = a1.o1(strW4, "@");
                                                                j12 = Long.parseLong(strArrO3[0]);
                                                                if (strArrO3.length > 1) {
                                                                    j19 = Long.parseLong(strArrO3[1]);
                                                                }
                                                                j11 = -1;
                                                            } else {
                                                                j11 = -1;
                                                                j12 = -1;
                                                            }
                                                            if (j12 == j11) {
                                                                j19 = 0;
                                                            }
                                                            if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                                DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                DrmInitData drmInitData4 = new DrmInitData(strM, schemeDataArr);
                                                                if (drmInitDataC == null) {
                                                                    drmInitDataC = c(strM, schemeDataArr);
                                                                }
                                                                drmInitData2 = drmInitData4;
                                                            }
                                                            arrayList8.add(new c.d(strA5, fVar, jK3, i14, j17, drmInitData2, str6, strD, j19, j12, zR3, zR2, false));
                                                            j17 += jK3;
                                                            if (j12 != j11) {
                                                                j19 += j12;
                                                            }
                                                            arrayList5 = arrayList11;
                                                            str6 = str6;
                                                            arrayList7 = arrayList7;
                                                            i12 = i18;
                                                            dVar3 = dVar4;
                                                            z11 = false;
                                                            jO = j23;
                                                            strM = strM;
                                                            str7 = str7;
                                                            arrayList8 = arrayList8;
                                                            arrayList6 = arrayList2;
                                                            dVar = dVar;
                                                            cVar = cVar;
                                                        } else {
                                                            i12 = i12;
                                                            dVar2 = dVar3;
                                                            arrayList5 = arrayList5;
                                                            arrayList = arrayList8;
                                                            if (strB.startsWith("#EXT-X-DATERANGE")) {
                                                                str5 = str5;
                                                                if (v(strB, f11801f0, str5, map).equals("com.apple.hls.interstitial")) {
                                                                    String strA6 = A(strB, f11799e0, map);
                                                                    String strW5 = w(strB, f11813l0, map);
                                                                    Uri uri = strW5 != null ? Uri.parse(strW5) : null;
                                                                    String strW6 = w(strB, f11815m0, map);
                                                                    Uri uri2 = strW6 != null ? Uri.parse(strW6) : null;
                                                                    long jR1 = a1.R0(a1.Z0(A(strB, f11803g0, map)));
                                                                    String strW7 = w(strB, f11807i0, map);
                                                                    long jR2 = strW7 != null ? a1.R0(a1.Z0(strW7)) : -9223372036854775807L;
                                                                    ArrayList arrayList12 = new ArrayList();
                                                                    String strW8 = w(strB, f11805h0, map);
                                                                    if (strW8 != null) {
                                                                        String[] strArrO4 = a1.o1(strW8, ",");
                                                                        int length = strArrO4.length;
                                                                        int i19 = 0;
                                                                        while (i19 < length) {
                                                                            int i20 = length;
                                                                            String strTrim = strArrO4[i19].trim();
                                                                            strTrim.hashCode();
                                                                            switch (strTrim.hashCode()) {
                                                                                case 79491:
                                                                                    strArr = strArrO4;
                                                                                    if (!strTrim.equals("PRE")) {
                                                                                        b12 = -1;
                                                                                    } else {
                                                                                        b12 = 0;
                                                                                    }
                                                                                    break;
                                                                                case 2430593:
                                                                                    strArr = strArrO4;
                                                                                    if (!strTrim.equals("ONCE")) {
                                                                                        b12 = -1;
                                                                                    } else {
                                                                                        b12 = 1;
                                                                                    }
                                                                                    break;
                                                                                case 2461856:
                                                                                    strArr = strArrO4;
                                                                                    if (!strTrim.equals("POST")) {
                                                                                        b12 = -1;
                                                                                    } else {
                                                                                        b12 = 2;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    strArr = strArrO4;
                                                                                    b12 = -1;
                                                                                    break;
                                                                            }
                                                                            switch (b12) {
                                                                                case 0:
                                                                                case 1:
                                                                                case 2:
                                                                                    arrayList12.add(strTrim);
                                                                                    break;
                                                                            }
                                                                            i19++;
                                                                            strArrO4 = strArr;
                                                                            length = i20;
                                                                        }
                                                                    }
                                                                    str3 = strM;
                                                                    double dS = s(strB, f11822q, -1.0d);
                                                                    long j24 = dS >= 0.0d ? (long) (dS * 1000000.0d) : -9223372036854775807L;
                                                                    double dS2 = s(strB, f11809j0, -1.0d);
                                                                    long j25 = dS2 >= 0.0d ? (long) (dS2 * 1000000.0d) : -9223372036854775807L;
                                                                    boolean zR4 = r(strB, f11811k0, false);
                                                                    double dS3 = s(strB, f11817n0, Double.MIN_VALUE);
                                                                    long j26 = dS3 != Double.MIN_VALUE ? (long) (dS3 * 1000000.0d) : -9223372036854775807L;
                                                                    double dS4 = s(strB, f11819o0, -1.0d);
                                                                    long j27 = dS4 >= 0.0d ? (long) (dS4 * 1000000.0d) : -9223372036854775807L;
                                                                    ArrayList arrayList13 = new ArrayList();
                                                                    String strW9 = w(strB, f11821p0, map);
                                                                    if (strW9 != null) {
                                                                        String[] strArrO5 = a1.o1(strW9, ",");
                                                                        int length2 = strArrO5.length;
                                                                        int i21 = 0;
                                                                        while (i21 < length2) {
                                                                            String[] strArr2 = strArrO5;
                                                                            String strTrim2 = strArrO5[i21].trim();
                                                                            strTrim2.hashCode();
                                                                            int i22 = length2;
                                                                            if (strTrim2.equals("IN") || strTrim2.equals("OUT")) {
                                                                                arrayList13.add(strTrim2);
                                                                            }
                                                                            i21++;
                                                                            length2 = i22;
                                                                            strArrO5 = strArr2;
                                                                        }
                                                                    }
                                                                    ArrayList arrayList14 = new ArrayList();
                                                                    String strW10 = w(strB, f11823q0, map);
                                                                    if (strW10 != null) {
                                                                        String[] strArrO6 = a1.o1(strW10, ",");
                                                                        int length3 = strArrO6.length;
                                                                        int i23 = 0;
                                                                        while (i23 < length3) {
                                                                            String[] strArr3 = strArrO6;
                                                                            String strTrim3 = strArrO6[i23].trim();
                                                                            strTrim3.hashCode();
                                                                            int i24 = length3;
                                                                            if (strTrim3.equals("JUMP") || strTrim3.equals("SKIP")) {
                                                                                arrayList14.add(strTrim3);
                                                                            }
                                                                            i23++;
                                                                            length3 = i24;
                                                                            strArrO6 = strArr3;
                                                                        }
                                                                    }
                                                                    ImmutableList.a aVar2 = new ImmutableList.a();
                                                                    String strSubstring = strB.substring(17);
                                                                    Matcher matcher2 = f11827s0.matcher(strSubstring);
                                                                    while (matcher2.find()) {
                                                                        String strGroup = matcher2.group();
                                                                        strGroup.hashCode();
                                                                        switch (strGroup.hashCode()) {
                                                                            case -2136701954:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-SNAP=")) {
                                                                                    b11 = -1;
                                                                                } else {
                                                                                    b11 = 0;
                                                                                }
                                                                                break;
                                                                            case -148960310:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-PLAYOUT-LIMIT=")) {
                                                                                    b11 = -1;
                                                                                } else {
                                                                                    b11 = 1;
                                                                                }
                                                                                break;
                                                                            case 397239341:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-ASSET-LIST=")) {
                                                                                    b11 = -1;
                                                                                } else {
                                                                                    b11 = 2;
                                                                                }
                                                                                break;
                                                                            case 1472528844:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-RESTRICT=")) {
                                                                                    b11 = -1;
                                                                                } else {
                                                                                    b11 = 3;
                                                                                }
                                                                                break;
                                                                            case 1748487807:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-RESUME-OFFSET=")) {
                                                                                    b11 = -1;
                                                                                } else {
                                                                                    b11 = 4;
                                                                                }
                                                                                break;
                                                                            case 1814205923:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-ASSET-URI=")) {
                                                                                    b11 = -1;
                                                                                } else {
                                                                                    b11 = 5;
                                                                                }
                                                                                break;
                                                                            default:
                                                                                matcher = matcher2;
                                                                                b11 = -1;
                                                                                break;
                                                                        }
                                                                        switch (b11) {
                                                                            case 0:
                                                                            case 1:
                                                                            case 2:
                                                                            case 3:
                                                                            case 4:
                                                                            case 5:
                                                                                break;
                                                                            default:
                                                                                aVar2.a(j(strSubstring, strGroup.substring(0, strGroup.length() - 1), map));
                                                                                break;
                                                                        }
                                                                        matcher2 = matcher;
                                                                        arrayList3 = arrayList3;
                                                                    }
                                                                    arrayList3 = arrayList3;
                                                                    if ((uri2 != null || uri == null) && (uri2 == null || uri != null)) {
                                                                        arrayList7 = arrayList7;
                                                                    } else {
                                                                        arrayList7 = arrayList7;
                                                                        arrayList7.add(new c.C0099c(strA6, uri, uri2, jR1, jR2, j24, j25, arrayList12, zR4, j26, j27, arrayList13, arrayList14, aVar2.e()));
                                                                    }
                                                                } else {
                                                                    str5 = str5;
                                                                }
                                                                jO = j23;
                                                                str2 = str3;
                                                                arrayList3 = arrayList3;
                                                                arrayList7 = arrayList7;
                                                                str7 = str7;
                                                                arrayList8 = arrayList;
                                                                arrayList5 = arrayList5;
                                                                i12 = i12;
                                                                dVar3 = dVar2;
                                                                arrayList6 = arrayList2;
                                                                z11 = false;
                                                                strM = str2;
                                                                arrayList3 = arrayList3;
                                                                jO = jO;
                                                            }
                                                            str3 = strM;
                                                            arrayList5 = arrayList5;
                                                            arrayList7 = arrayList7;
                                                            if (strB.startsWith(Utils.SEPARATOR)) {
                                                                jO = j23;
                                                                str2 = str3;
                                                                arrayList3 = arrayList3;
                                                                arrayList7 = arrayList7;
                                                                str7 = str7;
                                                                arrayList8 = arrayList;
                                                                arrayList5 = arrayList5;
                                                                i12 = i12;
                                                                dVar3 = dVar2;
                                                                arrayList6 = arrayList2;
                                                                z11 = false;
                                                                strM = str2;
                                                                arrayList3 = arrayList3;
                                                                jO = jO;
                                                            } else {
                                                                String strD2 = d(j23, str6, str7);
                                                                long j28 = j23 + 1;
                                                                String strC = C(strB, map);
                                                                c.f fVar3 = (c.f) map2.get(strC);
                                                                if (j20 == -1) {
                                                                    j13 = 0;
                                                                } else {
                                                                    if (z16 && fVar == null && fVar3 == null) {
                                                                        fVar3 = new c.f(strC, 0L, j16, null, null);
                                                                        map2.put(strC, fVar3);
                                                                    }
                                                                    j13 = j16;
                                                                }
                                                                if (drmInitData2 != null || treeMap.isEmpty()) {
                                                                    j14 = j28;
                                                                    str4 = str3;
                                                                    drmInitData = drmInitData2;
                                                                } else {
                                                                    j14 = j28;
                                                                    DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                    str4 = str3;
                                                                    drmInitData = new DrmInitData(str4, schemeDataArr2);
                                                                    if (drmInitDataC == null) {
                                                                        drmInitDataC = c(str4, schemeDataArr2);
                                                                    }
                                                                }
                                                                arrayList3.add(new c.f(strC, fVar != null ? fVar : fVar3, strV, jB, i14, j18, drmInitData, str6, strD2, j13, j20, z15, arrayList));
                                                                j17 = j18 + jB;
                                                                ArrayList arrayList15 = new ArrayList();
                                                                if (j20 != -1) {
                                                                    j13 += j20;
                                                                }
                                                                j16 = j13;
                                                                arrayList8 = arrayList15;
                                                                arrayList3 = arrayList3;
                                                                str7 = str7;
                                                                drmInitData2 = drmInitData;
                                                                jB = 0;
                                                                strV = str5;
                                                                j18 = j17;
                                                                arrayList5 = arrayList5;
                                                                i12 = i12;
                                                                dVar3 = dVar2;
                                                                arrayList6 = arrayList2;
                                                                z11 = false;
                                                                z15 = false;
                                                                j20 = -1;
                                                                strM = str4;
                                                                arrayList7 = arrayList7;
                                                                jO = j14;
                                                            }
                                                        }
                                                    } else if (dVar3 == null && "PART".equals(A(strB, Q, map))) {
                                                        String strA7 = A(strB, N, map);
                                                        long jU = u(strB, I, -1L);
                                                        long jU2 = u(strB, J, -1L);
                                                        long j29 = jO;
                                                        strW = str7;
                                                        String strD3 = d(j29, str6, strW);
                                                        if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                            DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            DrmInitData drmInitData5 = new DrmInitData(strM, schemeDataArr3);
                                                            if (drmInitDataC == null) {
                                                                drmInitDataC = c(strM, schemeDataArr3);
                                                            }
                                                            drmInitData2 = drmInitData5;
                                                        }
                                                        if (jU == -1 || jU2 != -1) {
                                                            dVar3 = new c.d(strA7, fVar, 0L, i14, j17, drmInitData2, str6, strD3, jU != -1 ? jU : 0L, jU2, false, false, true);
                                                        }
                                                        strM = strM;
                                                        str6 = str6;
                                                        jO = j29;
                                                        z11 = false;
                                                    }
                                                    dVar = dVar;
                                                }
                                                str2 = strM;
                                                arrayList = arrayList8;
                                            }
                                            str6 = str6;
                                            arrayList8 = arrayList8;
                                            arrayList7 = arrayList7;
                                            arrayList6 = arrayList2;
                                            z11 = false;
                                        }
                                        str7 = strW;
                                        arrayList6 = arrayList2;
                                    }
                                }
                                dVar2 = dVar3;
                                arrayList7 = arrayList7;
                                str7 = str7;
                                arrayList8 = arrayList;
                                arrayList5 = arrayList5;
                                i12 = i12;
                                dVar3 = dVar2;
                                arrayList6 = arrayList2;
                                z11 = false;
                                strM = str2;
                                arrayList3 = arrayList3;
                                jO = jO;
                                dVar = dVar;
                            }
                        }
                        arrayList7 = arrayList7;
                        z11 = false;
                    }
                }
                arrayList3 = arrayList3;
            }
        }
        int i25 = i12;
        c.d dVar5 = dVar3;
        ArrayList arrayList16 = arrayList5;
        ArrayList arrayList17 = arrayList6;
        ArrayList arrayList18 = arrayList3;
        ArrayList arrayList19 = arrayList7;
        ArrayList arrayList20 = arrayList8;
        HashMap map3 = new HashMap();
        int i26 = 0;
        while (i26 < arrayList16.size()) {
            ArrayList arrayList21 = arrayList16;
            c.e eVar = (c.e) arrayList21.get(i26);
            long size = eVar.f11912b;
            if (size == -1) {
                size = (j15 + ((long) arrayList18.size())) - (arrayList20.isEmpty() ? 1L : 0L);
            }
            int size2 = eVar.f11913c;
            if (size2 != -1 || jK2 == C.TIME_UNSET) {
                i11 = 1;
            } else {
                i11 = 1;
                size2 = (arrayList20.isEmpty() ? ((c.f) g3.g(arrayList18)).f11915m : arrayList20).size() - 1;
            }
            Uri uri3 = eVar.f11911a;
            map3.put(uri3, new c.e(uri3, size, size2));
            i26 += i11;
            arrayList16 = arrayList21;
        }
        if (dVar5 != null) {
            arrayList20.add(dVar5);
        }
        return new c(i25, str, arrayList17, jK, zR, jR0, z13, i13, j15, iN, jN, jK2, z12, z14, jR0 != 0, drmInitDataC, arrayList18, arrayList20, hVarZ, map3, arrayList19);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:165:0x025c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0155 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0158  */
    /* JADX WARN: Code duplicated, block: B:47:0x015f  */
    /* JADX WARN: Code duplicated, block: B:51:0x017a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0192  */
    /* JADX WARN: Code duplicated, block: B:57:0x019c  */
    /* JADX WARN: Code duplicated, block: B:58:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:61:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:62:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:64:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:67:0x022b  */
    /* JADX WARN: Code duplicated, block: B:93:0x036c  */
    /* JADX WARN: Failed to find 'out' block for switch in B:110:0x0399. Please report as an issue. */
    /* JADX WARN: Instruction removed from duplicated block: B:47:0x015f, please report this as an issue */
    private static d q(a aVar, String str) throws IOException {
        ArrayList arrayList;
        String strG;
        int i11;
        String str2;
        r rVarN;
        int i12;
        String strG2;
        int i13;
        ArrayList arrayList2;
        String str3;
        String str4;
        String strS;
        String strW;
        int i14;
        int i15;
        String strW2;
        float f11;
        Uri uriF;
        HashMap map;
        ArrayList arrayList3;
        String strT;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        boolean z10 = false;
        boolean zContains = false;
        while (true) {
            boolean zA = aVar.a();
            String str5 = MimeTypes.APPLICATION_M3U8;
            if (!zA) {
                HashMap map4 = map2;
                ArrayList arrayList12 = arrayList5;
                ArrayList arrayList13 = arrayList6;
                ArrayList arrayList14 = arrayList7;
                ArrayList arrayList15 = arrayList8;
                ArrayList arrayList16 = arrayList9;
                ArrayList arrayList17 = arrayList10;
                ArrayList arrayList18 = arrayList11;
                ArrayList arrayList19 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i16 = 0;
                while (i16 < arrayList4.size()) {
                    d.b bVar = (d.b) arrayList4.get(i16);
                    if (hashSet.add(bVar.f11947a)) {
                        androidx.media3.common.util.a.g(bVar.f11948b.f10158l == null);
                        i13 = 1;
                        arrayList19.add(bVar.a(bVar.f11948b.b().n0(new x(new s(null, null, (List) androidx.media3.common.util.a.e((ArrayList) map4.get(bVar.f11947a))))).N()));
                    } else {
                        i13 = 1;
                    }
                    i16 += i13;
                }
                Uri uri = null;
                ArrayList arrayList20 = null;
                r rVar = null;
                int i17 = 0;
                while (i17 < arrayList16.size()) {
                    ArrayList arrayList21 = arrayList16;
                    String str6 = (String) arrayList21.get(i17);
                    String strA = A(str6, T, map3);
                    String strA2 = A(str6, S, map3);
                    r.b bVarJ0 = new r.b().f0(strA + ":" + strA2).h0(strA2).U(str5).w0(y(str6)).s0(x(str6, map3)).j0(w(str6, R, map3));
                    String strW3 = w(str6, N, map3);
                    Uri uriF2 = strW3 == null ? uri : r0.f(str, strW3);
                    String str7 = str5;
                    arrayList16 = arrayList21;
                    x xVar = new x(new s(strA, strA2, Collections.emptyList()));
                    String strA3 = A(str6, P, map3);
                    strA3.hashCode();
                    switch (strA3) {
                        case "SUBTITLES":
                            rVar = rVar;
                            arrayList13 = arrayList13;
                            arrayList = arrayList12;
                            d.b bVarF = f(arrayList4, strA);
                            if (bVarF != null) {
                                String strS2 = a1.S(bVarF.f11948b.f10157k, 3);
                                bVarJ0.S(strS2);
                                strG = y.g(strS2);
                            } else {
                                strG = null;
                            }
                            if (strG == null) {
                                strG = MimeTypes.TEXT_VTT;
                            }
                            bVarJ0.u0(strG).n0(xVar);
                            if (uriF2 != null) {
                                d.a aVar2 = new d.a(uriF2, bVarJ0.N(), strA, strA2);
                                arrayList14 = arrayList14;
                                arrayList14.add(aVar2);
                            } else {
                                arrayList14 = arrayList14;
                                u.h("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            rVarN = rVar;
                            i12 = 1;
                            break;
                        case "CLOSED-CAPTIONS":
                            r rVar2 = rVar;
                            arrayList13 = arrayList13;
                            arrayList = arrayList12;
                            String strA4 = A(str6, V, map3);
                            if (strA4.startsWith("CC")) {
                                i11 = Integer.parseInt(strA4.substring(2));
                                str2 = MimeTypes.APPLICATION_CEA608;
                            } else {
                                i11 = Integer.parseInt(strA4.substring(7));
                                str2 = MimeTypes.APPLICATION_CEA708;
                            }
                            if (arrayList20 == null) {
                                arrayList20 = new ArrayList();
                            }
                            bVarJ0.u0(str2).O(i11);
                            arrayList20.add(bVarJ0.N());
                            rVarN = rVar2;
                            i12 = 1;
                            break;
                        case "AUDIO":
                            arrayList = arrayList12;
                            d.b bVarE = e(arrayList4, strA);
                            if (bVarE != null) {
                                String strS3 = a1.S(bVarE.f11948b.f10157k, 1);
                                bVarJ0.S(strS3);
                                strG2 = y.g(strS3);
                            } else {
                                strG2 = null;
                            }
                            String strW4 = w(str6, f11806i, map3);
                            if (strW4 != null) {
                                bVarJ0.R(Integer.parseInt(a1.p1(strW4, "/")[0]));
                                if (MimeTypes.AUDIO_E_AC3.equals(strG2) && strW4.endsWith("/JOC")) {
                                    bVarJ0.S("ec+3");
                                    strG2 = MimeTypes.AUDIO_E_AC3_JOC;
                                }
                            }
                            bVarJ0.u0(strG2);
                            if (uriF2 == null) {
                                arrayList13 = arrayList13;
                                if (bVarE != null) {
                                    rVarN = bVarJ0.N();
                                    i12 = 1;
                                }
                                break;
                            } else {
                                bVarJ0.n0(xVar);
                                arrayList13 = arrayList13;
                                arrayList13.add(new d.a(uriF2, bVarJ0.N(), strA, strA2));
                            }
                            arrayList14 = arrayList14;
                            rVarN = rVar;
                            i12 = 1;
                            break;
                        case "VIDEO":
                            d.b bVarG = g(arrayList4, strA);
                            if (bVarG != null) {
                                r rVar3 = bVarG.f11948b;
                                String strS4 = a1.S(rVar3.f10157k, 2);
                                bVarJ0.S(strS4).u0(y.g(strS4)).B0(rVar3.f10168v).d0(rVar3.f10169w).b0(rVar3.f10170x);
                            }
                            if (uriF2 != null) {
                                bVarJ0.n0(xVar);
                                arrayList = arrayList12;
                                arrayList.add(new d.a(uriF2, bVarJ0.N(), strA, strA2));
                            }
                            rVarN = rVar;
                            i12 = 1;
                        default:
                            arrayList = arrayList12;
                            rVarN = rVar;
                            i12 = 1;
                            break;
                    }
                    i17 += i12;
                    arrayList12 = arrayList;
                    arrayList13 = arrayList13;
                    arrayList14 = arrayList14;
                    uri = null;
                    rVar = rVarN;
                    str5 = str7;
                }
                return new d(str, arrayList18, arrayList19, arrayList12, arrayList13, arrayList14, arrayList15, rVar, zContains ? Collections.emptyList() : arrayList20, z10, map3, arrayList17);
            }
            String strB = aVar.b();
            if (strB.startsWith("#EXT")) {
                arrayList11.add(strB);
            }
            boolean zStartsWith = strB.startsWith("#EXT-X-I-FRAME-STREAM-INF");
            if (strB.startsWith("#EXT-X-DEFINE")) {
                map3.put(A(strB, S, map3), A(strB, f11795c0, map3));
            } else {
                if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                    map = map2;
                    arrayList2 = arrayList9;
                    arrayList10 = arrayList10;
                    z10 = true;
                } else if (strB.startsWith("#EXT-X-MEDIA")) {
                    arrayList9.add(strB);
                } else if (strB.startsWith("#EXT-X-SESSION-KEY")) {
                    DrmInitData.SchemeData schemeDataL = l(strB, v(strB, L, "identity", map3), map3);
                    if (schemeDataL != null) {
                        arrayList10.add(new DrmInitData(m(A(strB, K, map3)), schemeDataL));
                    }
                } else if (strB.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                    zContains |= strB.contains("CLOSED-CAPTIONS=NONE");
                    int i18 = zStartsWith ? 16384 : 0;
                    int iN = n(strB, f11804h);
                    int iT = t(strB, f11794c, -1);
                    String strW5 = w(strB, f11808j, map3);
                    String strW6 = w(strB, f11810k, map3);
                    String strW7 = w(strB, f11812l, map3);
                    if (strW7 != null) {
                        String[] strArrO1 = a1.o1(a1.p1(strW7, ",")[0], "/");
                        String str8 = strArrO1[0];
                        arrayList2 = arrayList9;
                        if (strArrO1.length > 1) {
                            str4 = strArrO1[1];
                            map2 = map2;
                            str3 = str8;
                        } else {
                            str3 = str8;
                        }
                        strS = a1.S(strW6, 2);
                        if (h(strW5, strS, str3, str4)) {
                            if (str3 == null) {
                                str3 = strS;
                            }
                            strT = a1.T(strW6, 2);
                            if (strT != null) {
                                str3 = str3 + "," + strT;
                            }
                            strW6 = str3;
                        }
                        strW = w(strB, f11814m, map3);
                        if (strW != null) {
                            String[] strArrO2 = a1.o1(strW, "x");
                            i15 = Integer.parseInt(strArrO2[0]);
                            i14 = Integer.parseInt(strArrO2[1]);
                            if (i15 > 0 || i14 <= 0) {
                                i14 = -1;
                                i15 = -1;
                            }
                        } else {
                            i14 = -1;
                            i15 = -1;
                        }
                        strW2 = w(strB, f11816n, map3);
                        if (strW2 != null) {
                            f11 = Float.parseFloat(strW2);
                        } else {
                            f11 = -1.0f;
                        }
                        String strW8 = w(strB, f11796d, map3);
                        String strW9 = w(strB, f11798e, map3);
                        String strW10 = w(strB, f11800f, map3);
                        String strW11 = w(strB, f11802g, map3);
                        if (zStartsWith) {
                            uriF = r0.f(str, A(strB, N, map3));
                        } else {
                            if (aVar.a()) {
                                throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                            }
                            uriF = r0.f(str, C(aVar.b(), map3));
                        }
                        arrayList4.add(new d.b(uriF, new r.b().e0(arrayList4.size()).U(MimeTypes.APPLICATION_M3U8).S(strW6).Q(iT).p0(iN).B0(i15).d0(i14).b0(f11).s0(i18).N(), strW8, strW9, strW10, strW11));
                        map = map2;
                        arrayList3 = (ArrayList) map.get(uriF);
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                            map.put(uriF, arrayList3);
                        }
                        arrayList3.add(new s.a(iT, iN, strW8, strW9, strW10, strW11));
                    } else {
                        arrayList2 = arrayList9;
                        str3 = null;
                    }
                    str4 = null;
                    strS = a1.S(strW6, 2);
                    if (h(strW5, strS, str3, str4)) {
                        if (str3 == null) {
                            str3 = strS;
                        }
                        strT = a1.T(strW6, 2);
                        if (strT != null) {
                            str3 = str3 + "," + strT;
                        }
                        strW6 = str3;
                    }
                    strW = w(strB, f11814m, map3);
                    if (strW != null) {
                        String[] strArrO3 = a1.o1(strW, "x");
                        i15 = Integer.parseInt(strArrO3[0]);
                        i14 = Integer.parseInt(strArrO3[1]);
                        if (i15 > 0) {
                            i14 = -1;
                            i15 = -1;
                        } else {
                            i14 = -1;
                            i15 = -1;
                        }
                    } else {
                        i14 = -1;
                        i15 = -1;
                    }
                    strW2 = w(strB, f11816n, map3);
                    if (strW2 != null) {
                        f11 = Float.parseFloat(strW2);
                    } else {
                        f11 = -1.0f;
                    }
                    String strW12 = w(strB, f11796d, map3);
                    String strW13 = w(strB, f11798e, map3);
                    String strW14 = w(strB, f11800f, map3);
                    String strW15 = w(strB, f11802g, map3);
                    if (zStartsWith) {
                        uriF = r0.f(str, A(strB, N, map3));
                    } else {
                        if (aVar.a()) {
                            throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        uriF = r0.f(str, C(aVar.b(), map3));
                    }
                    arrayList4.add(new d.b(uriF, new r.b().e0(arrayList4.size()).U(MimeTypes.APPLICATION_M3U8).S(strW6).Q(iT).p0(iN).B0(i15).d0(i14).b0(f11).s0(i18).N(), strW12, strW13, strW14, strW15));
                    map = map2;
                    arrayList3 = (ArrayList) map.get(uriF);
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                        map.put(uriF, arrayList3);
                    }
                    arrayList3.add(new s.a(iT, iN, strW12, strW13, strW14, strW15));
                }
                map2 = map;
                arrayList10 = arrayList10;
                arrayList8 = arrayList8;
                arrayList11 = arrayList11;
                arrayList7 = arrayList7;
                arrayList6 = arrayList6;
                arrayList5 = arrayList5;
                arrayList9 = arrayList2;
            }
            map = map2;
            arrayList2 = arrayList9;
            arrayList10 = arrayList10;
            map2 = map;
            arrayList10 = arrayList10;
            arrayList8 = arrayList8;
            arrayList11 = arrayList11;
            arrayList7 = arrayList7;
            arrayList6 = arrayList6;
            arrayList5 = arrayList5;
            arrayList9 = arrayList2;
        }
    }

    private static boolean r(String str, Pattern pattern, boolean z10) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? "YES".equals(matcher.group(1)) : z10;
    }

    private static double s(String str, Pattern pattern, double d11) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) androidx.media3.common.util.a.e(matcher.group(1))) : d11;
    }

    private static int t(String str, Pattern pattern, int i11) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(1))) : i11;
    }

    private static long u(String str, Pattern pattern, long j11) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(1))) : j11;
    }

    private static String v(String str, Pattern pattern, String str2, Map map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) androidx.media3.common.util.a.e(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : C(str2, map);
    }

    private static String w(String str, Pattern pattern, Map map) {
        return v(str, pattern, null, map);
    }

    private static int x(String str, Map map) {
        String strW = w(str, U, map);
        if (TextUtils.isEmpty(strW)) {
            return 0;
        }
        String[] strArrO1 = a1.o1(strW, ",");
        int i11 = a1.s(strArrO1, "public.accessibility.describes-video") ? 512 : 0;
        if (a1.s(strArrO1, "public.accessibility.transcribes-spoken-dialog")) {
            i11 |= 4096;
        }
        if (a1.s(strArrO1, "public.accessibility.describes-music-and-sound")) {
            i11 |= 1024;
        }
        return a1.s(strArrO1, "public.easy-to-read") ? i11 | 8192 : i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int y(String str) {
        boolean zR = r(str, X, false);
        ?? r11 = zR;
        if (r(str, Y, false)) {
            r11 = (zR ? 1 : 0) | 2;
        }
        return r(str, W, false) ? r11 | 4 : r11;
    }

    private static c.h z(String str) {
        double dS = s(str, f11829u, -9.223372036854776E18d);
        long j11 = C.TIME_UNSET;
        long j12 = dS == -9.223372036854776E18d ? -9223372036854775807L : (long) (dS * 1000000.0d);
        boolean zR = r(str, f11830v, false);
        double dS2 = s(str, f11832x, -9.223372036854776E18d);
        long j13 = dS2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dS2 * 1000000.0d);
        double dS3 = s(str, f11833y, -9.223372036854776E18d);
        if (dS3 != -9.223372036854776E18d) {
            j11 = (long) (dS3 * 1000000.0d);
        }
        return new c.h(j12, zR, j13, j11, r(str, f11834z, false));
    }

    @Override // androidx.media3.exoplayer.upstream.q.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c2.d parse(Uri uri, InputStream inputStream) throws ParserException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!a(bufferedReader)) {
                throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    a1.m(bufferedReader);
                    throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                        arrayDeque.add(strTrim);
                        d dVarQ = q(new a(arrayDeque, bufferedReader), uri.toString());
                        a1.m(bufferedReader);
                        return dVarQ;
                    }
                    if (!strTrim.startsWith("#EXT-X-TARGETDURATION") && !strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") && !strTrim.startsWith("#EXTINF") && !strTrim.startsWith("#EXT-X-KEY") && !strTrim.startsWith("#EXT-X-BYTERANGE") && !strTrim.equals("#EXT-X-DISCONTINUITY") && !strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") && !strTrim.equals("#EXT-X-ENDLIST")) {
                        arrayDeque.add(strTrim);
                    }
                    arrayDeque.add(strTrim);
                    c cVarP = p(this.f11835a, this.f11836b, new a(arrayDeque, bufferedReader), uri.toString());
                    a1.m(bufferedReader);
                    return cVarP;
                }
            }
        } catch (Throwable th2) {
            a1.m(bufferedReader);
            throw th2;
        }
    }
}
