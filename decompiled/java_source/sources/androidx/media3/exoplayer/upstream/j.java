package androidx.media3.exoplayer.upstream;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.z;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.search.bean.HotRankItem;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements e, w1.n {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final ImmutableList f12974r = ImmutableList.of(4300000L, 3200000L, 2400000L, 1700000L, 860000L);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final ImmutableList f12975s = ImmutableList.of(1500000L, 980000L, 750000L, 520000L, 290000L);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final ImmutableList f12976t = ImmutableList.of(2000000L, 1300000L, 1000000L, 860000L, 610000L);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final ImmutableList f12977u = ImmutableList.of(2500000L, 1700000L, 1200000L, 970000L, 680000L);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final ImmutableList f12978v = ImmutableList.of(4700000L, 2800000L, 2100000L, 1700000L, 980000L);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final ImmutableList f12979w = ImmutableList.of(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static j f12980x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ImmutableMap f12982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.a.C0102a f12983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.util.i f12984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f12985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t f12986f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12987g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f12988h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f12989i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f12990j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f12991k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f12992l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f12993m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f12994n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f12995o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f12996p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f12997q;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f12998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f12999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f13000c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.common.util.i f13001d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f13002e;

        public b(Context context) {
            this.f12998a = context == null ? null : context.getApplicationContext();
            this.f13000c = 2000;
            this.f13001d = androidx.media3.common.util.i.f10387a;
            this.f13002e = true;
            HashMap map = new HashMap(8);
            this.f12999b = map;
            map.put(0, 1000000L);
            map.put(2, Long.valueOf(C.TIME_UNSET));
            map.put(3, Long.valueOf(C.TIME_UNSET));
            map.put(4, Long.valueOf(C.TIME_UNSET));
            map.put(5, Long.valueOf(C.TIME_UNSET));
            map.put(10, Long.valueOf(C.TIME_UNSET));
            map.put(9, Long.valueOf(C.TIME_UNSET));
            map.put(7, Long.valueOf(C.TIME_UNSET));
        }

        public j a() {
            return new j(this.f12998a, this.f12999b, this.f13000c, this.f13001d, this.f13002e);
        }
    }

    private j(Context context, Map map, int i11, androidx.media3.common.util.i iVar, boolean z10) {
        this.f12981a = context == null ? null : context.getApplicationContext();
        this.f12982b = ImmutableMap.copyOf(map);
        this.f12983c = new e.a.C0102a();
        this.f12986f = new t(i11);
        this.f12984d = iVar;
        this.f12985e = z10;
        if (context == null) {
            this.f12994n = 0;
            this.f12992l = 1000000L;
            return;
        }
        z zVarE = z.e(context);
        int iG = zVarE.g();
        this.f12994n = iG;
        this.f12992l = k(iG);
        zVarE.l(new z.c() { // from class: androidx.media3.exoplayer.upstream.i
            @Override // androidx.media3.common.util.z.c
            public final void a(int i12) {
                this.f12973a.p(i12);
            }
        }, androidx.media3.common.util.c.a());
    }

    private static int[] j(String str) {
        byte b11 = 4;
        str.hashCode();
        switch (str.hashCode()) {
            case 2083:
                b11 = !str.equals("AD") ? (byte) -1 : (byte) 0;
                break;
            case 2084:
                b11 = !str.equals("AE") ? (byte) -1 : (byte) 1;
                break;
            case 2085:
                b11 = !str.equals("AF") ? (byte) -1 : (byte) 2;
                break;
            case 2086:
                b11 = !str.equals("AG") ? (byte) -1 : (byte) 3;
                break;
            case 2088:
                if (!str.equals("AI")) {
                    b11 = -1;
                }
                break;
            case 2091:
                b11 = !str.equals("AL") ? (byte) -1 : (byte) 5;
                break;
            case 2092:
                b11 = !str.equals("AM") ? (byte) -1 : (byte) 6;
                break;
            case 2094:
                b11 = !str.equals("AO") ? (byte) -1 : (byte) 7;
                break;
            case 2096:
                b11 = !str.equals("AQ") ? (byte) -1 : (byte) 8;
                break;
            case 2097:
                b11 = !str.equals("AR") ? (byte) -1 : (byte) 9;
                break;
            case 2098:
                b11 = !str.equals("AS") ? (byte) -1 : (byte) 10;
                break;
            case 2099:
                b11 = !str.equals("AT") ? (byte) -1 : (byte) 11;
                break;
            case 2100:
                b11 = !str.equals("AU") ? (byte) -1 : (byte) 12;
                break;
            case 2102:
                b11 = !str.equals("AW") ? (byte) -1 : (byte) 13;
                break;
            case 2103:
                b11 = !str.equals("AX") ? (byte) -1 : (byte) 14;
                break;
            case 2105:
                b11 = !str.equals("AZ") ? (byte) -1 : (byte) 15;
                break;
            case 2111:
                b11 = !str.equals("BA") ? (byte) -1 : (byte) 16;
                break;
            case 2112:
                b11 = !str.equals("BB") ? (byte) -1 : (byte) 17;
                break;
            case 2114:
                b11 = !str.equals("BD") ? (byte) -1 : (byte) 18;
                break;
            case 2115:
                b11 = !str.equals("BE") ? (byte) -1 : (byte) 19;
                break;
            case 2116:
                b11 = !str.equals("BF") ? (byte) -1 : (byte) 20;
                break;
            case 2117:
                b11 = !str.equals("BG") ? (byte) -1 : (byte) 21;
                break;
            case 2118:
                b11 = !str.equals("BH") ? (byte) -1 : (byte) 22;
                break;
            case 2119:
                b11 = !str.equals("BI") ? (byte) -1 : (byte) 23;
                break;
            case 2120:
                b11 = !str.equals("BJ") ? (byte) -1 : (byte) 24;
                break;
            case 2122:
                b11 = !str.equals("BL") ? (byte) -1 : (byte) 25;
                break;
            case 2123:
                b11 = !str.equals("BM") ? (byte) -1 : (byte) 26;
                break;
            case 2124:
                b11 = !str.equals("BN") ? (byte) -1 : (byte) 27;
                break;
            case 2125:
                b11 = !str.equals("BO") ? (byte) -1 : (byte) 28;
                break;
            case 2127:
                b11 = !str.equals("BQ") ? (byte) -1 : (byte) 29;
                break;
            case 2128:
                b11 = !str.equals("BR") ? (byte) -1 : (byte) 30;
                break;
            case 2129:
                b11 = !str.equals("BS") ? (byte) -1 : (byte) 31;
                break;
            case 2130:
                b11 = !str.equals("BT") ? (byte) -1 : (byte) 32;
                break;
            case 2133:
                b11 = !str.equals("BW") ? (byte) -1 : (byte) 33;
                break;
            case 2135:
                b11 = !str.equals("BY") ? (byte) -1 : (byte) 34;
                break;
            case 2136:
                b11 = !str.equals("BZ") ? (byte) -1 : (byte) 35;
                break;
            case 2142:
                b11 = !str.equals("CA") ? (byte) -1 : (byte) 36;
                break;
            case 2145:
                b11 = !str.equals("CD") ? (byte) -1 : (byte) 37;
                break;
            case 2147:
                b11 = !str.equals("CF") ? (byte) -1 : (byte) 38;
                break;
            case 2148:
                b11 = !str.equals("CG") ? (byte) -1 : (byte) 39;
                break;
            case 2149:
                b11 = !str.equals("CH") ? (byte) -1 : (byte) 40;
                break;
            case 2150:
                b11 = !str.equals("CI") ? (byte) -1 : (byte) 41;
                break;
            case 2152:
                b11 = !str.equals("CK") ? (byte) -1 : (byte) 42;
                break;
            case 2153:
                b11 = !str.equals("CL") ? (byte) -1 : (byte) 43;
                break;
            case 2154:
                b11 = !str.equals("CM") ? (byte) -1 : (byte) 44;
                break;
            case 2155:
                b11 = !str.equals("CN") ? (byte) -1 : (byte) 45;
                break;
            case 2156:
                b11 = !str.equals("CO") ? (byte) -1 : (byte) 46;
                break;
            case 2159:
                b11 = !str.equals("CR") ? (byte) -1 : (byte) 47;
                break;
            case 2162:
                b11 = !str.equals("CU") ? (byte) -1 : (byte) 48;
                break;
            case 2163:
                b11 = !str.equals("CV") ? (byte) -1 : (byte) 49;
                break;
            case 2164:
                b11 = !str.equals("CW") ? (byte) -1 : (byte) 50;
                break;
            case 2165:
                b11 = !str.equals("CX") ? (byte) -1 : (byte) 51;
                break;
            case 2166:
                b11 = !str.equals("CY") ? (byte) -1 : (byte) 52;
                break;
            case 2167:
                b11 = !str.equals("CZ") ? (byte) -1 : (byte) 53;
                break;
            case 2177:
                b11 = !str.equals("DE") ? (byte) -1 : (byte) 54;
                break;
            case 2182:
                b11 = !str.equals("DJ") ? (byte) -1 : (byte) 55;
                break;
            case 2183:
                b11 = !str.equals("DK") ? (byte) -1 : (byte) 56;
                break;
            case 2185:
                b11 = !str.equals("DM") ? (byte) -1 : (byte) 57;
                break;
            case 2187:
                b11 = !str.equals("DO") ? (byte) -1 : (byte) 58;
                break;
            case 2198:
                b11 = !str.equals("DZ") ? (byte) -1 : (byte) 59;
                break;
            case 2206:
                b11 = !str.equals("EC") ? (byte) -1 : (byte) 60;
                break;
            case 2208:
                b11 = !str.equals("EE") ? (byte) -1 : (byte) 61;
                break;
            case 2210:
                b11 = !str.equals("EG") ? (byte) -1 : (byte) 62;
                break;
            case 2221:
                b11 = !str.equals("ER") ? (byte) -1 : Utf8.REPLACEMENT_BYTE;
                break;
            case 2222:
                b11 = !str.equals("ES") ? (byte) -1 : (byte) 64;
                break;
            case 2223:
                b11 = !str.equals("ET") ? (byte) -1 : (byte) 65;
                break;
            case 2243:
                b11 = !str.equals("FI") ? (byte) -1 : (byte) 66;
                break;
            case 2244:
                b11 = !str.equals("FJ") ? (byte) -1 : (byte) 67;
                break;
            case 2245:
                b11 = !str.equals("FK") ? (byte) -1 : (byte) 68;
                break;
            case 2247:
                b11 = !str.equals("FM") ? (byte) -1 : (byte) 69;
                break;
            case 2249:
                b11 = !str.equals("FO") ? (byte) -1 : (byte) 70;
                break;
            case 2252:
                b11 = !str.equals("FR") ? (byte) -1 : (byte) 71;
                break;
            case 2266:
                b11 = !str.equals("GA") ? (byte) -1 : (byte) 72;
                break;
            case 2267:
                b11 = !str.equals("GB") ? (byte) -1 : (byte) 73;
                break;
            case 2269:
                b11 = !str.equals("GD") ? (byte) -1 : (byte) 74;
                break;
            case 2270:
                b11 = !str.equals("GE") ? (byte) -1 : (byte) 75;
                break;
            case 2271:
                b11 = !str.equals("GF") ? (byte) -1 : (byte) 76;
                break;
            case 2272:
                b11 = !str.equals("GG") ? (byte) -1 : (byte) 77;
                break;
            case 2273:
                b11 = !str.equals("GH") ? (byte) -1 : (byte) 78;
                break;
            case 2274:
                b11 = !str.equals("GI") ? (byte) -1 : (byte) 79;
                break;
            case 2277:
                b11 = !str.equals("GL") ? (byte) -1 : (byte) 80;
                break;
            case 2278:
                b11 = !str.equals("GM") ? (byte) -1 : (byte) 81;
                break;
            case 2279:
                b11 = !str.equals("GN") ? (byte) -1 : (byte) 82;
                break;
            case 2281:
                b11 = !str.equals("GP") ? (byte) -1 : (byte) 83;
                break;
            case 2282:
                b11 = !str.equals("GQ") ? (byte) -1 : (byte) 84;
                break;
            case 2283:
                b11 = !str.equals("GR") ? (byte) -1 : (byte) 85;
                break;
            case 2285:
                b11 = !str.equals("GT") ? (byte) -1 : (byte) 86;
                break;
            case 2286:
                b11 = !str.equals("GU") ? (byte) -1 : (byte) 87;
                break;
            case 2288:
                b11 = !str.equals("GW") ? (byte) -1 : (byte) 88;
                break;
            case 2290:
                b11 = !str.equals("GY") ? (byte) -1 : (byte) 89;
                break;
            case 2307:
                b11 = !str.equals("HK") ? (byte) -1 : (byte) 90;
                break;
            case 2314:
                b11 = !str.equals("HR") ? (byte) -1 : (byte) 91;
                break;
            case 2316:
                b11 = !str.equals("HT") ? (byte) -1 : (byte) 92;
                break;
            case 2317:
                b11 = !str.equals("HU") ? (byte) -1 : (byte) 93;
                break;
            case 2331:
                b11 = !str.equals("ID") ? (byte) -1 : (byte) 94;
                break;
            case 2332:
                b11 = !str.equals("IE") ? (byte) -1 : (byte) 95;
                break;
            case 2339:
                b11 = !str.equals("IL") ? (byte) -1 : (byte) 96;
                break;
            case 2340:
                b11 = !str.equals("IM") ? (byte) -1 : (byte) 97;
                break;
            case 2341:
                b11 = !str.equals("IN") ? (byte) -1 : (byte) 98;
                break;
            case 2342:
                b11 = !str.equals("IO") ? (byte) -1 : (byte) 99;
                break;
            case 2344:
                b11 = !str.equals("IQ") ? (byte) -1 : (byte) 100;
                break;
            case 2345:
                b11 = !str.equals("IR") ? (byte) -1 : (byte) 101;
                break;
            case 2346:
                b11 = !str.equals("IS") ? (byte) -1 : (byte) 102;
                break;
            case 2347:
                b11 = !str.equals("IT") ? (byte) -1 : (byte) 103;
                break;
            case 2363:
                b11 = !str.equals("JE") ? (byte) -1 : (byte) 104;
                break;
            case 2371:
                b11 = !str.equals("JM") ? (byte) -1 : (byte) 105;
                break;
            case 2373:
                b11 = !str.equals("JO") ? (byte) -1 : (byte) 106;
                break;
            case 2374:
                b11 = !str.equals("JP") ? (byte) -1 : (byte) 107;
                break;
            case 2394:
                b11 = !str.equals("KE") ? (byte) -1 : (byte) 108;
                break;
            case 2396:
                b11 = !str.equals("KG") ? (byte) -1 : (byte) 109;
                break;
            case 2397:
                b11 = !str.equals("KH") ? (byte) -1 : (byte) 110;
                break;
            case 2398:
                b11 = !str.equals("KI") ? (byte) -1 : (byte) 111;
                break;
            case 2402:
                b11 = !str.equals("KM") ? (byte) -1 : (byte) 112;
                break;
            case 2403:
                b11 = !str.equals("KN") ? (byte) -1 : (byte) 113;
                break;
            case 2407:
                b11 = !str.equals("KR") ? (byte) -1 : (byte) 114;
                break;
            case 2412:
                b11 = !str.equals("KW") ? (byte) -1 : (byte) 115;
                break;
            case 2414:
                b11 = !str.equals("KY") ? (byte) -1 : (byte) 116;
                break;
            case 2415:
                b11 = !str.equals("KZ") ? (byte) -1 : (byte) 117;
                break;
            case 2421:
                b11 = !str.equals("LA") ? (byte) -1 : (byte) 118;
                break;
            case 2422:
                b11 = !str.equals("LB") ? (byte) -1 : (byte) 119;
                break;
            case 2423:
                b11 = !str.equals("LC") ? (byte) -1 : (byte) 120;
                break;
            case 2429:
                b11 = !str.equals("LI") ? (byte) -1 : (byte) 121;
                break;
            case 2431:
                b11 = !str.equals("LK") ? (byte) -1 : (byte) 122;
                break;
            case 2438:
                b11 = !str.equals("LR") ? (byte) -1 : (byte) 123;
                break;
            case 2439:
                b11 = !str.equals("LS") ? (byte) -1 : (byte) 124;
                break;
            case 2440:
                b11 = !str.equals("LT") ? (byte) -1 : (byte) 125;
                break;
            case 2441:
                b11 = !str.equals("LU") ? (byte) -1 : (byte) 126;
                break;
            case 2442:
                b11 = !str.equals("LV") ? (byte) -1 : (byte) 127;
                break;
            case 2445:
                b11 = !str.equals("LY") ? (byte) -1 : (byte) 128;
                break;
            case 2452:
                b11 = !str.equals("MA") ? (byte) -1 : (byte) 129;
                break;
            case 2454:
                b11 = !str.equals("MC") ? (byte) -1 : (byte) 130;
                break;
            case 2455:
                b11 = !str.equals("MD") ? (byte) -1 : (byte) 131;
                break;
            case 2456:
                b11 = !str.equals(BottomTabType.TAB_CODE_ME) ? (byte) -1 : (byte) 132;
                break;
            case 2457:
                b11 = !str.equals("MF") ? (byte) -1 : (byte) 133;
                break;
            case 2458:
                b11 = !str.equals("MG") ? (byte) -1 : (byte) 134;
                break;
            case 2459:
                b11 = !str.equals("MH") ? (byte) -1 : (byte) 135;
                break;
            case 2462:
                b11 = !str.equals("MK") ? (byte) -1 : (byte) 136;
                break;
            case 2463:
                b11 = !str.equals("ML") ? (byte) -1 : (byte) 137;
                break;
            case 2464:
                b11 = !str.equals("MM") ? (byte) -1 : (byte) 138;
                break;
            case 2465:
                b11 = !str.equals("MN") ? (byte) -1 : (byte) 139;
                break;
            case 2466:
                b11 = !str.equals("MO") ? (byte) -1 : (byte) 140;
                break;
            case 2467:
                b11 = !str.equals("MP") ? (byte) -1 : (byte) 141;
                break;
            case 2468:
                b11 = !str.equals("MQ") ? (byte) -1 : (byte) 142;
                break;
            case 2469:
                b11 = !str.equals("MR") ? (byte) -1 : (byte) 143;
                break;
            case 2470:
                b11 = !str.equals("MS") ? (byte) -1 : (byte) 144;
                break;
            case 2471:
                b11 = !str.equals("MT") ? (byte) -1 : (byte) 145;
                break;
            case 2472:
                b11 = !str.equals("MU") ? (byte) -1 : (byte) 146;
                break;
            case 2473:
                b11 = !str.equals("MV") ? (byte) -1 : (byte) 147;
                break;
            case 2474:
                b11 = !str.equals("MW") ? (byte) -1 : (byte) 148;
                break;
            case 2475:
                b11 = !str.equals("MX") ? (byte) -1 : (byte) 149;
                break;
            case 2476:
                b11 = !str.equals("MY") ? (byte) -1 : (byte) 150;
                break;
            case 2477:
                b11 = !str.equals("MZ") ? (byte) -1 : (byte) 151;
                break;
            case 2483:
                b11 = !str.equals("NA") ? (byte) -1 : (byte) 152;
                break;
            case 2485:
                b11 = !str.equals("NC") ? (byte) -1 : (byte) 153;
                break;
            case 2487:
                b11 = !str.equals("NE") ? (byte) -1 : (byte) 154;
                break;
            case 2488:
                b11 = !str.equals("NF") ? (byte) -1 : (byte) 155;
                break;
            case 2489:
                b11 = !str.equals("NG") ? (byte) -1 : (byte) 156;
                break;
            case 2491:
                b11 = !str.equals("NI") ? (byte) -1 : (byte) 157;
                break;
            case 2494:
                b11 = !str.equals("NL") ? (byte) -1 : (byte) 158;
                break;
            case 2497:
                b11 = !str.equals("NO") ? (byte) -1 : (byte) 159;
                break;
            case 2498:
                b11 = !str.equals("NP") ? (byte) -1 : (byte) 160;
                break;
            case DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS /* 2500 */:
                b11 = !str.equals("NR") ? (byte) -1 : (byte) 161;
                break;
            case 2503:
                b11 = !str.equals("NU") ? (byte) -1 : (byte) 162;
                break;
            case 2508:
                b11 = !str.equals("NZ") ? (byte) -1 : (byte) 163;
                break;
            case 2526:
                b11 = !str.equals("OM") ? (byte) -1 : (byte) 164;
                break;
            case 2545:
                b11 = !str.equals("PA") ? (byte) -1 : (byte) 165;
                break;
            case 2549:
                b11 = !str.equals("PE") ? (byte) -1 : (byte) 166;
                break;
            case 2550:
                b11 = !str.equals("PF") ? (byte) -1 : (byte) 167;
                break;
            case 2551:
                b11 = !str.equals("PG") ? (byte) -1 : (byte) 168;
                break;
            case 2552:
                b11 = !str.equals("PH") ? (byte) -1 : (byte) 169;
                break;
            case 2555:
                b11 = !str.equals("PK") ? (byte) -1 : (byte) 170;
                break;
            case 2556:
                b11 = !str.equals("PL") ? (byte) -1 : (byte) 171;
                break;
            case 2557:
                b11 = !str.equals("PM") ? (byte) -1 : (byte) 172;
                break;
            case 2562:
                b11 = !str.equals("PR") ? (byte) -1 : (byte) 173;
                break;
            case 2563:
                b11 = !str.equals("PS") ? (byte) -1 : (byte) 174;
                break;
            case 2564:
                b11 = !str.equals("PT") ? (byte) -1 : (byte) 175;
                break;
            case 2567:
                b11 = !str.equals("PW") ? (byte) -1 : (byte) 176;
                break;
            case 2569:
                b11 = !str.equals("PY") ? (byte) -1 : (byte) 177;
                break;
            case 2576:
                b11 = !str.equals("QA") ? (byte) -1 : (byte) 178;
                break;
            case 2611:
                b11 = !str.equals("RE") ? (byte) -1 : (byte) 179;
                break;
            case 2621:
                b11 = !str.equals("RO") ? (byte) -1 : (byte) 180;
                break;
            case 2625:
                b11 = !str.equals("RS") ? (byte) -1 : (byte) 181;
                break;
            case 2627:
                b11 = !str.equals("RU") ? (byte) -1 : (byte) 182;
                break;
            case 2629:
                b11 = !str.equals("RW") ? (byte) -1 : (byte) 183;
                break;
            case 2638:
                b11 = !str.equals("SA") ? (byte) -1 : (byte) 184;
                break;
            case 2639:
                b11 = !str.equals("SB") ? (byte) -1 : (byte) 185;
                break;
            case 2640:
                b11 = !str.equals("SC") ? (byte) -1 : (byte) 186;
                break;
            case 2641:
                b11 = !str.equals("SD") ? (byte) -1 : (byte) 187;
                break;
            case 2642:
                b11 = !str.equals("SE") ? (byte) -1 : (byte) 188;
                break;
            case 2644:
                b11 = !str.equals("SG") ? (byte) -1 : (byte) 189;
                break;
            case 2645:
                b11 = !str.equals("SH") ? (byte) -1 : (byte) 190;
                break;
            case 2646:
                b11 = !str.equals("SI") ? (byte) -1 : (byte) 191;
                break;
            case 2647:
                b11 = !str.equals("SJ") ? (byte) -1 : (byte) 192;
                break;
            case 2648:
                b11 = !str.equals("SK") ? (byte) -1 : (byte) 193;
                break;
            case 2649:
                b11 = !str.equals("SL") ? (byte) -1 : (byte) 194;
                break;
            case 2650:
                b11 = !str.equals("SM") ? (byte) -1 : (byte) 195;
                break;
            case 2651:
                b11 = !str.equals("SN") ? (byte) -1 : (byte) 196;
                break;
            case 2652:
                b11 = !str.equals("SO") ? (byte) -1 : (byte) 197;
                break;
            case 2655:
                b11 = !str.equals("SR") ? (byte) -1 : (byte) 198;
                break;
            case 2656:
                b11 = !str.equals("SS") ? (byte) -1 : (byte) 199;
                break;
            case 2657:
                b11 = !str.equals("ST") ? (byte) -1 : (byte) 200;
                break;
            case 2659:
                b11 = !str.equals("SV") ? (byte) -1 : (byte) 201;
                break;
            case 2661:
                b11 = !str.equals("SX") ? (byte) -1 : (byte) 202;
                break;
            case 2662:
                b11 = !str.equals("SY") ? (byte) -1 : (byte) 203;
                break;
            case 2663:
                b11 = !str.equals("SZ") ? (byte) -1 : (byte) 204;
                break;
            case 2671:
                b11 = !str.equals("TC") ? (byte) -1 : (byte) 205;
                break;
            case 2672:
                b11 = !str.equals("TD") ? (byte) -1 : (byte) 206;
                break;
            case 2675:
                b11 = !str.equals("TG") ? (byte) -1 : (byte) 207;
                break;
            case 2676:
                b11 = !str.equals("TH") ? (byte) -1 : (byte) 208;
                break;
            case 2678:
                b11 = !str.equals("TJ") ? (byte) -1 : (byte) 209;
                break;
            case 2680:
                b11 = !str.equals("TL") ? (byte) -1 : (byte) 210;
                break;
            case 2681:
                b11 = !str.equals("TM") ? (byte) -1 : (byte) 211;
                break;
            case 2682:
                b11 = !str.equals("TN") ? (byte) -1 : (byte) 212;
                break;
            case 2683:
                b11 = !str.equals("TO") ? (byte) -1 : (byte) 213;
                break;
            case 2686:
                b11 = !str.equals("TR") ? (byte) -1 : (byte) 214;
                break;
            case 2688:
                b11 = !str.equals("TT") ? (byte) -1 : (byte) 215;
                break;
            case 2690:
                b11 = !str.equals(HotRankItem.CATE_TV) ? (byte) -1 : (byte) 216;
                break;
            case 2691:
                b11 = !str.equals("TW") ? (byte) -1 : (byte) 217;
                break;
            case 2694:
                b11 = !str.equals("TZ") ? (byte) -1 : (byte) 218;
                break;
            case 2700:
                b11 = !str.equals("UA") ? (byte) -1 : (byte) 219;
                break;
            case 2706:
                b11 = !str.equals("UG") ? (byte) -1 : (byte) 220;
                break;
            case 2718:
                b11 = !str.equals("US") ? (byte) -1 : (byte) 221;
                break;
            case 2724:
                b11 = !str.equals("UY") ? (byte) -1 : (byte) 222;
                break;
            case 2725:
                b11 = !str.equals("UZ") ? (byte) -1 : (byte) 223;
                break;
            case 2731:
                b11 = !str.equals("VA") ? (byte) -1 : (byte) 224;
                break;
            case 2733:
                b11 = !str.equals("VC") ? (byte) -1 : (byte) 225;
                break;
            case 2735:
                b11 = !str.equals("VE") ? (byte) -1 : (byte) 226;
                break;
            case 2737:
                b11 = !str.equals("VG") ? (byte) -1 : (byte) 227;
                break;
            case 2739:
                b11 = !str.equals("VI") ? (byte) -1 : (byte) 228;
                break;
            case 2744:
                b11 = !str.equals("VN") ? (byte) -1 : (byte) 229;
                break;
            case 2751:
                b11 = !str.equals("VU") ? (byte) -1 : (byte) 230;
                break;
            case 2767:
                b11 = !str.equals("WF") ? (byte) -1 : (byte) 231;
                break;
            case 2780:
                b11 = !str.equals("WS") ? (byte) -1 : (byte) 232;
                break;
            case 2803:
                b11 = !str.equals("XK") ? (byte) -1 : (byte) 233;
                break;
            case 2828:
                b11 = !str.equals("YE") ? (byte) -1 : (byte) 234;
                break;
            case 2843:
                b11 = !str.equals("YT") ? (byte) -1 : (byte) 235;
                break;
            case 2855:
                b11 = !str.equals("ZA") ? (byte) -1 : (byte) 236;
                break;
            case 2867:
                b11 = !str.equals("ZM") ? (byte) -1 : (byte) 237;
                break;
            case 2877:
                b11 = !str.equals("ZW") ? (byte) -1 : (byte) 238;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
            case 4:
            case 17:
            case NOTIFICATION_REDIRECT_VALUE:
            case 50:
            case 57:
            case 113:
            case GZIP_ENCODE_ERROR_VALUE:
            case AD_CONSUMED_VALUE:
            case 225:
                return new int[]{1, 2, 0, 0, 2, 2};
            case 1:
                return new int[]{1, 4, 2, 3, 4, 1};
            case 2:
            case AD_ALREADY_LOADED_VALUE:
                return new int[]{4, 4, 3, 4, 2, 2};
            case 3:
            case 41:
                return new int[]{2, 4, 3, 4, 2, 2};
            case 5:
                return new int[]{1, 1, 1, 2, 2, 2};
            case 6:
            case 165:
                return new int[]{2, 3, 2, 3, 2, 2};
            case 7:
                return new int[]{3, 4, 4, 3, 2, 2};
            case 8:
            case 63:
            case 162:
            case 186:
            case 190:
                return new int[]{4, 2, 2, 2, 2, 2};
            case 9:
                return new int[]{2, 2, 2, 2, 1, 2};
            case 10:
                return new int[]{2, 2, 3, 3, 2, 2};
            case 11:
            case 61:
            case 93:
            case 102:
            case 127:
            case 145:
            case 188:
                return new int[]{0, 0, 0, 0, 0, 2};
            case 12:
                return new int[]{0, 3, 1, 1, 3, 0};
            case 13:
                return new int[]{2, 2, 3, 4, 2, 2};
            case 14:
            case AD_REWARD_USER_VALUE:
            case TPAT_ERROR_VALUE:
            case 144:
            case 172:
            case 195:
            case 224:
                return new int[]{0, 2, 2, 2, 2, 2};
            case 15:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 128:
            case 194:
                return new int[]{4, 2, 3, 3, 2, 2};
            case 16:
            case 106:
            case INVALID_GZIP_BID_PAYLOAD_VALUE:
                return new int[]{1, 1, 1, 1, 2, 2};
            case 18:
                return new int[]{2, 1, 3, 2, 4, 2};
            case 19:
                return new int[]{0, 0, 1, 0, 1, 2};
            case 20:
            case 187:
            case AD_IS_LOADING_VALUE:
            case AD_ALREADY_FAILED_VALUE:
                return new int[]{4, 3, 4, 4, 2, 2};
            case 21:
            case 175:
            case 191:
                return new int[]{0, 0, 0, 0, 1, 2};
            case 22:
                return new int[]{1, 3, 1, 3, 4, 2};
            case 23:
            case 84:
            case 92:
            case 154:
            case 226:
            case 234:
                return new int[]{4, 4, 4, 4, 2, 2};
            case 24:
                return new int[]{4, 4, 2, 3, 2, 2};
            case 25:
            case 141:
            case 177:
                return new int[]{1, 2, 2, 2, 2, 2};
            case 26:
                return new int[]{0, 2, 0, 0, 2, 2};
            case 27:
                return new int[]{3, 2, 0, 0, 2, 2};
            case 28:
                return new int[]{1, 2, 4, 4, 2, 2};
            case 30:
                return new int[]{1, 1, 1, 1, 2, 4};
            case TEMPLATE_HTML_SIZE_VALUE:
                return new int[]{3, 2, 1, 1, 2, 2};
            case 32:
                return new int[]{3, 1, 2, 2, 3, 2};
            case 33:
                return new int[]{3, 2, 1, 0, 2, 2};
            case 34:
                return new int[]{1, 2, 3, 3, 2, 2};
            case 35:
            case 42:
                return new int[]{2, 2, 2, 1, 2, 2};
            case 36:
            case MRAID_JS_COPY_FAILED_VALUE:
                return new int[]{0, 2, 1, 2, 3, 3};
            case 37:
            case TPAT_RETRY_FAILED_VALUE:
                return new int[]{3, 3, 2, 2, 2, 2};
            case 38:
                return new int[]{4, 2, 4, 2, 2, 2};
            case 39:
            case 62:
            case 134:
                return new int[]{3, 4, 3, 3, 2, 2};
            case 40:
                return new int[]{0, 1, 0, 0, 0, 2};
            case 43:
            case INVALID_BID_PAYLOAD_VALUE:
                return new int[]{0, 1, 2, 2, 2, 2};
            case 44:
            case 143:
                return new int[]{4, 3, 3, 4, 2, 2};
            case 45:
                return new int[]{2, 0, 1, 1, 3, 1};
            case 46:
                return new int[]{2, 3, 3, 2, 2, 2};
            case 47:
            case 157:
                return new int[]{2, 4, 4, 4, 2, 2};
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case 111:
            case 161:
            case AD_NOT_LOADED_VALUE:
                return new int[]{4, 2, 4, 4, 2, 2};
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return new int[]{2, 3, 0, 1, 2, 2};
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                return new int[]{1, 0, 1, 0, 0, 2};
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                return new int[]{0, 0, 2, 0, 1, 2};
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                return new int[]{0, 1, 4, 2, 2, 1};
            case AD_VISIBILITY_VALUE:
                return new int[]{0, 0, 2, 0, 0, 2};
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case INVALID_RI_ENDPOINT_VALUE:
                return new int[]{3, 4, 4, 4, 2, 2};
            case 59:
            case INVALID_JSON_BID_PAYLOAD_VALUE:
                return new int[]{3, 3, 4, 4, 2, 2};
            case 60:
                return new int[]{1, 3, 2, 1, 2, 2};
            case 64:
                return new int[]{0, 0, 0, 0, 1, 0};
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                return new int[]{4, 3, 4, 4, 4, 2};
            case 66:
                return new int[]{0, 0, 0, 1, 0, 2};
            case 67:
                return new int[]{3, 2, 2, 3, 2, 2};
            case 68:
            case 155:
            case PsExtractor.AUDIO_STREAM /* 192 */:
                return new int[]{3, 2, 2, 2, 2, 2};
            case 69:
                return new int[]{4, 2, 4, 0, 2, 2};
            case 70:
                return new int[]{0, 2, 2, 0, 2, 2};
            case 71:
                return new int[]{1, 1, 1, 1, 0, 2};
            case 72:
                return new int[]{3, 4, 0, 0, 2, 2};
            case 73:
                return new int[]{1, 1, 3, 2, 2, 2};
            case 74:
                return new int[]{2, 2, 0, 0, 2, 2};
            case 75:
                return new int[]{1, 1, 0, 2, 2, 2};
            case 76:
                return new int[]{3, 2, 3, 3, 2, 2};
            case 77:
                return new int[]{0, 2, 1, 1, 2, 2};
            case 78:
                return new int[]{3, 3, 3, 2, 2, 2};
            case 79:
            case 97:
            case 104:
                return new int[]{0, 2, 0, 1, 2, 2};
            case 80:
            case 130:
                return new int[]{1, 2, 2, 0, 2, 2};
            case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
            case 199:
                return new int[]{4, 3, 2, 4, 2, 2};
            case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                return new int[]{3, 4, 4, 2, 2, 2};
            case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                return new int[]{2, 1, 1, 3, 2, 2};
            case 85:
                return new int[]{1, 0, 0, 0, 1, 2};
            case 86:
                return new int[]{2, 1, 2, 1, 2, 2};
            case 87:
                return new int[]{2, 2, 4, 3, 3, 2};
            case 88:
                return new int[]{4, 4, 1, 2, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                return new int[]{3, 1, 1, 3, 2, 2};
            case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                return new int[]{0, 1, 0, 1, 1, 0};
            case 91:
            case INVALID_INDEX_URL_VALUE:
                return new int[]{1, 0, 0, 0, 0, 2};
            case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                return new int[]{3, 1, 3, 3, 2, 4};
            case 95:
                return new int[]{1, 1, 1, 1, 1, 2};
            case 96:
                return new int[]{1, 2, 2, 3, 4, 2};
            case 98:
                return new int[]{1, 1, 3, 2, 2, 3};
            case 99:
                return new int[]{3, 2, 2, 0, 2, 2};
            case 100:
                return new int[]{3, 2, 3, 2, 2, 2};
            case 101:
                return new int[]{4, 2, 3, 3, 4, 3};
            case 103:
                return new int[]{0, 1, 1, 2, 1, 2};
            case 105:
                return new int[]{2, 4, 3, 1, 2, 2};
            case 107:
                return new int[]{0, 3, 2, 3, 4, 2};
            case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                return new int[]{3, 2, 1, 1, 1, 2};
            case 109:
                return new int[]{2, 1, 1, 2, 2, 2};
            case 110:
                return new int[]{1, 0, 4, 2, 2, 2};
            case 112:
            case 230:
                return new int[]{4, 3, 3, 2, 2, 2};
            case ASSET_WRITE_ERROR_VALUE:
                return new int[]{0, 2, 2, 4, 4, 4};
            case ASSET_FAILED_STATUS_CODE_VALUE:
                return new int[]{2, 1, 2, 2, 3, 2};
            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                return new int[]{1, 2, 1, 3, 2, 2};
            case JSON_ENCODE_ERROR_VALUE:
                return new int[]{3, 1, 1, 2, 2, 2};
            case 120:
                return new int[]{2, 2, 1, 1, 2, 2};
            case INVALID_ADS_ENDPOINT_VALUE:
            case 138:
                return new int[]{3, 2, 3, 3, 4, 2};
            case INVALID_LOG_ERROR_ENDPOINT_VALUE:
            case 168:
                return new int[]{4, 3, 3, 3, 2, 2};
            case INVALID_METRICS_ENDPOINT_VALUE:
                return new int[]{0, 1, 0, 1, 0, 2};
            case 126:
                return new int[]{4, 0, 3, 2, 1, 3};
            case 129:
                return new int[]{3, 3, 1, 1, 2, 2};
            case MRAID_JS_WRITE_FAILED_VALUE:
                return new int[]{1, 0, 0, 0, 2, 2};
            case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                return new int[]{2, 0, 0, 1, 3, 2};
            case OMSDK_JS_WRITE_FAILED_VALUE:
                return new int[]{1, 2, 2, 3, 2, 2};
            case 135:
            case 211:
            case AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE:
            case 231:
                return new int[]{4, 2, 2, 4, 2, 2};
            case PRIVACY_URL_ERROR_VALUE:
                return new int[]{1, 0, 0, 1, 3, 2};
            case 139:
                return new int[]{2, 0, 2, 2, 2, 2};
            case 140:
                return new int[]{0, 2, 4, 4, 3, 1};
            case 142:
                return new int[]{2, 1, 2, 3, 2, 2};
            case 146:
                return new int[]{3, 1, 0, 2, 2, 2};
            case 147:
                return new int[]{3, 2, 1, 3, 4, 2};
            case 148:
                return new int[]{3, 2, 2, 1, 2, 2};
            case 149:
                return new int[]{2, 4, 4, 4, 3, 2};
            case 150:
                return new int[]{1, 0, 4, 1, 1, 0};
            case 151:
            case 232:
                return new int[]{3, 1, 2, 2, 2, 2};
            case 152:
                return new int[]{3, 4, 3, 2, 2, 2};
            case 153:
            case 235:
                return new int[]{2, 3, 3, 4, 2, 2};
            case 156:
                return new int[]{3, 4, 2, 1, 2, 2};
            case 158:
                return new int[]{2, 1, 4, 3, 0, 4};
            case 159:
                return new int[]{0, 0, 3, 0, 0, 2};
            case 160:
                return new int[]{2, 2, 4, 3, 2, 2};
            case 163:
                return new int[]{0, 0, 1, 2, 4, 2};
            case 164:
                return new int[]{2, 3, 1, 2, 4, 2};
            case 166:
                return new int[]{1, 2, 4, 4, 3, 2};
            case 167:
                return new int[]{2, 2, 3, 1, 2, 2};
            case 169:
                return new int[]{2, 1, 2, 3, 2, 1};
            case 170:
                return new int[]{3, 3, 3, 3, 2, 2};
            case 171:
                return new int[]{1, 0, 2, 2, 4, 4};
            case 173:
                return new int[]{2, 0, 2, 1, 2, 0};
            case 174:
                return new int[]{3, 4, 1, 3, 2, 2};
            case 176:
                return new int[]{2, 2, 4, 1, 2, 2};
            case 178:
                return new int[]{1, 4, 4, 4, 4, 2};
            case 179:
                return new int[]{0, 3, 2, 3, 1, 2};
            case 180:
                return new int[]{0, 0, 1, 1, 3, 2};
            case 181:
                return new int[]{1, 0, 0, 1, 2, 2};
            case 182:
                return new int[]{1, 0, 0, 1, 3, 3};
            case 183:
                return new int[]{3, 3, 2, 0, 2, 2};
            case 184:
                return new int[]{3, 1, 1, 2, 2, 0};
            case 185:
            case 238:
                return new int[]{4, 2, 4, 3, 2, 2};
            case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                return new int[]{2, 3, 3, 3, 1, 1};
            case 193:
                return new int[]{0, 1, 1, 1, 2, 2};
            case 196:
                return new int[]{4, 4, 3, 2, 2, 2};
            case 197:
                return new int[]{2, 2, 3, 4, 4, 2};
            case 198:
                return new int[]{2, 4, 4, 1, 2, 2};
            case 200:
                return new int[]{2, 2, 1, 2, 2, 2};
            case 201:
                return new int[]{2, 3, 2, 1, 2, 2};
            case AD_IS_PLAYING_VALUE:
                return new int[]{3, 2, 1, 2, 2, 2};
            case PLACEMENT_AD_TYPE_MISMATCH_VALUE:
                return new int[]{3, 4, 1, 0, 2, 2};
            case PLACEMENT_SLEEP_VALUE:
                return new int[]{3, 1, 1, 1, 2, 2};
            case INVALID_ADUNIT_BID_PAYLOAD_VALUE:
                return new int[]{3, 2, 4, 3, 2, 2};
            case AD_RESPONSE_EMPTY_VALUE:
                return new int[]{2, 4, 1, 0, 2, 2};
            case AD_RESPONSE_TIMED_OUT_VALUE:
                return new int[]{0, 0, 0, 0, 0, 0};
            case MRAID_JS_DOES_NOT_EXIST_VALUE:
                return new int[]{3, 4, 2, 1, 3, 2};
            case AD_RESPONSE_RETRY_AFTER_VALUE:
                return new int[]{3, 3, 2, 3, 4, 2};
            case AD_LOAD_FAIL_RETRY_AFTER_VALUE:
                return new int[]{2, 2, 4, 1, 3, 1};
            case INVALID_WATERFALL_PLACEMENT_ID_VALUE:
                return new int[]{2, 1, 1, 2, 1, 2};
            case STALE_CACHED_RESPONSE_VALUE:
                return new int[]{1, 2, 3, 4, 3, 2};
            case 227:
                return new int[]{2, 2, 1, 1, 2, 4};
            case 228:
                return new int[]{0, 2, 1, 2, 2, 2};
            case 229:
                return new int[]{0, 0, 1, 2, 2, 2};
            case 233:
                return new int[]{1, 2, 1, 1, 2, 2};
            case 236:
                return new int[]{2, 4, 2, 1, 1, 2};
            case 237:
                return new int[]{4, 4, 4, 3, 2, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }

    private long k(int i11) {
        Long lValueOf = (Long) this.f12982b.get(Integer.valueOf(i11));
        if (lValueOf == null) {
            lValueOf = (Long) this.f12982b.get(0);
        } else if (lValueOf.longValue() == C.TIME_UNSET) {
            lValueOf = Long.valueOf(l(this.f12997q, i11));
        }
        if (lValueOf == null) {
            lValueOf = 1000000L;
        }
        return lValueOf.longValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static long l(String str, int i11) {
        int[] iArrJ = j(com.google.common.base.p.e(str));
        if (i11 != 2) {
            if (i11 == 3) {
                return ((Long) f12975s.get(iArrJ[1])).longValue();
            }
            if (i11 == 4) {
                return ((Long) f12976t.get(iArrJ[2])).longValue();
            }
            if (i11 == 5) {
                return ((Long) f12977u.get(iArrJ[3])).longValue();
            }
            if (i11 != 7) {
                if (i11 == 9) {
                    return ((Long) f12979w.get(iArrJ[5])).longValue();
                }
                if (i11 != 10) {
                    return 1000000L;
                }
                return ((Long) f12978v.get(iArrJ[4])).longValue();
            }
        }
        return ((Long) f12974r.get(iArrJ[0])).longValue();
    }

    public static synchronized j m(Context context) {
        try {
            if (f12980x == null) {
                f12980x = new b(context).a();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f12980x;
    }

    private static boolean n(w1.h hVar, boolean z10) {
        return z10 && !hVar.d(8);
    }

    private void o(int i11, long j11, long j12) {
        if (i11 == 0 && j11 == 0 && j12 == this.f12993m) {
            return;
        }
        this.f12993m = j12;
        this.f12983c.c(i11, j11, j12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p(int i11) {
        int i12 = this.f12994n;
        if (i12 == 0 || this.f12985e) {
            if (this.f12995o) {
                i11 = this.f12996p;
            }
            if (i12 != i11 || this.f12997q == null) {
                this.f12994n = i11;
                if (i11 != 1 && i11 != 0 && i11 != 8) {
                    if (this.f12997q == null) {
                        this.f12997q = a1.U(this.f12981a);
                    }
                    this.f12992l = k(i11);
                    long jElapsedRealtime = this.f12984d.elapsedRealtime();
                    o(this.f12987g > 0 ? (int) (jElapsedRealtime - this.f12988h) : 0, this.f12989i, this.f12992l);
                    this.f12988h = jElapsedRealtime;
                    this.f12989i = 0L;
                    this.f12991k = 0L;
                    this.f12990j = 0L;
                    this.f12986f.i();
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.e
    public /* synthetic */ long a() {
        return c.a(this);
    }

    @Override // androidx.media3.exoplayer.upstream.e
    public w1.n b() {
        return this;
    }

    @Override // androidx.media3.exoplayer.upstream.e
    public void c(e.a aVar) {
        this.f12983c.e(aVar);
    }

    @Override // androidx.media3.exoplayer.upstream.e
    public void d(Handler handler, e.a aVar) {
        androidx.media3.common.util.a.e(handler);
        androidx.media3.common.util.a.e(aVar);
        this.f12983c.b(handler, aVar);
    }

    @Override // w1.n
    public synchronized void e(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10, int i11) {
        if (n(hVar, z10)) {
            this.f12989i += (long) i11;
        }
    }

    @Override // w1.n
    public synchronized void f(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10) {
        try {
            if (n(hVar, z10)) {
                androidx.media3.common.util.a.g(this.f12987g > 0);
                long jElapsedRealtime = this.f12984d.elapsedRealtime();
                int i11 = (int) (jElapsedRealtime - this.f12988h);
                this.f12990j += (long) i11;
                long j11 = this.f12991k;
                long j12 = this.f12989i;
                this.f12991k = j11 + j12;
                if (i11 > 0) {
                    this.f12986f.c((int) Math.sqrt(j12), (j12 * 8000.0f) / i11);
                    if (this.f12990j >= 2000 || this.f12991k >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                        this.f12992l = (long) this.f12986f.f(0.5f);
                    }
                    o(i11, this.f12989i, this.f12992l);
                    this.f12988h = jElapsedRealtime;
                    this.f12989i = 0L;
                }
                this.f12987g--;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // w1.n
    public void g(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10) {
    }

    @Override // androidx.media3.exoplayer.upstream.e
    public synchronized long getBitrateEstimate() {
        return this.f12992l;
    }

    @Override // w1.n
    public synchronized void h(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10) {
        try {
            if (n(hVar, z10)) {
                if (this.f12987g == 0) {
                    this.f12988h = this.f12984d.elapsedRealtime();
                }
                this.f12987g++;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
