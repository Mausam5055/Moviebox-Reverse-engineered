package d0;

import androidx.collection.s;
import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f61120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0728a f60970b = new C0728a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f60976c = f.a(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f60982d = f.a(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f60988e = f.a(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f60994f = f.a(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f61000g = f.a(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f61006h = f.a(259);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f61012i = f.a(260);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f61018j = f.a(261);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f61024k = f.a(262);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f61030l = f.a(263);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f61036m = f.a(280);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f61042n = f.a(281);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f61048o = f.a(282);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f61054p = f.a(283);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f61060q = f.a(5);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f61066r = f.a(6);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f61072s = f.a(19);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f61078t = f.a(20);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f61084u = f.a(21);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f61090v = f.a(22);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final long f61096w = f.a(23);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final long f61102x = f.a(268);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final long f61108y = f.a(269);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final long f61114z = f.a(270);
    private static final long A = f.a(271);
    private static final long B = f.a(24);
    private static final long C = f.a(25);
    private static final long D = f.a(26);
    private static final long E = f.a(27);
    private static final long F = f.a(28);
    private static final long G = f.a(7);
    private static final long H = f.a(8);
    private static final long I = f.a(9);
    private static final long J = f.a(10);
    private static final long K = f.a(11);
    private static final long L = f.a(12);
    private static final long M = f.a(13);
    private static final long N = f.a(14);
    private static final long O = f.a(15);
    private static final long P = f.a(16);
    private static final long Q = f.a(81);
    private static final long R = f.a(69);
    private static final long S = f.a(17);
    private static final long T = f.a(70);
    private static final long U = f.a(18);
    private static final long V = f.a(29);
    private static final long W = f.a(30);
    private static final long X = f.a(31);
    private static final long Y = f.a(32);
    private static final long Z = f.a(33);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final long f60965a0 = f.a(34);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final long f60971b0 = f.a(35);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final long f60977c0 = f.a(36);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final long f60983d0 = f.a(37);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final long f60989e0 = f.a(38);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final long f60995f0 = f.a(39);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final long f61001g0 = f.a(40);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final long f61007h0 = f.a(41);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final long f61013i0 = f.a(42);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final long f61019j0 = f.a(43);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final long f61025k0 = f.a(44);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final long f61031l0 = f.a(45);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final long f61037m0 = f.a(46);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final long f61043n0 = f.a(47);

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static final long f61049o0 = f.a(48);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final long f61055p0 = f.a(49);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static final long f61061q0 = f.a(50);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static final long f61067r0 = f.a(51);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final long f61073s0 = f.a(52);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static final long f61079t0 = f.a(53);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final long f61085u0 = f.a(54);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final long f61091v0 = f.a(55);

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static final long f61097w0 = f.a(56);

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final long f61103x0 = f.a(57);

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final long f61109y0 = f.a(58);

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final long f61115z0 = f.a(59);
    private static final long A0 = f.a(60);
    private static final long B0 = f.a(61);
    private static final long C0 = f.a(62);
    private static final long D0 = f.a(63);
    private static final long E0 = f.a(64);
    private static final long F0 = f.a(65);
    private static final long G0 = f.a(66);
    private static final long H0 = f.a(67);
    private static final long I0 = f.a(112);
    private static final long J0 = f.a(111);
    private static final long K0 = f.a(113);
    private static final long L0 = f.a(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE);
    private static final long M0 = f.a(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE);
    private static final long N0 = f.a(Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
    private static final long O0 = f.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
    private static final long P0 = f.a(Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
    private static final long Q0 = f.a(Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
    private static final long R0 = f.a(120);
    private static final long S0 = f.a(Sdk$SDKError.Reason.TPAT_ERROR_VALUE);
    private static final long T0 = f.a(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
    private static final long U0 = f.a(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
    private static final long V0 = f.a(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
    private static final long W0 = f.a(277);
    private static final long X0 = f.a(278);
    private static final long Y0 = f.a(279);
    private static final long Z0 = f.a(68);

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private static final long f60966a1 = f.a(71);

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final long f60972b1 = f.a(72);

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    private static final long f60978c1 = f.a(76);

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    private static final long f60984d1 = f.a(73);

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    private static final long f60990e1 = f.a(74);

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final long f60996f1 = f.a(75);

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    private static final long f61002g1 = f.a(77);

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    private static final long f61008h1 = f.a(78);

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final long f61014i1 = f.a(79);

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    private static final long f61020j1 = f.a(80);

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    private static final long f61026k1 = f.a(82);

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final long f61032l1 = f.a(83);

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    private static final long f61038m1 = f.a(84);

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    private static final long f61044n1 = f.a(92);

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    private static final long f61050o1 = f.a(93);

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final long f61056p1 = f.a(94);

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final long f61062q1 = f.a(95);

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final long f61068r1 = f.a(96);

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private static final long f61074s1 = f.a(97);

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private static final long f61080t1 = f.a(98);

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private static final long f61086u1 = f.a(99);

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final long f61092v1 = f.a(100);

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private static final long f61098w1 = f.a(101);

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private static final long f61104x1 = f.a(102);

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private static final long f61110y1 = f.a(103);

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    private static final long f61116z1 = f.a(104);
    private static final long A1 = f.a(105);
    private static final long B1 = f.a(106);
    private static final long C1 = f.a(107);
    private static final long D1 = f.a(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
    private static final long E1 = f.a(109);
    private static final long F1 = f.a(110);
    private static final long G1 = f.a(188);
    private static final long H1 = f.a(PsExtractor.PRIVATE_STREAM_1);
    private static final long I1 = f.a(190);
    private static final long J1 = f.a(191);
    private static final long K1 = f.a(PsExtractor.AUDIO_STREAM);
    private static final long L1 = f.a(193);
    private static final long M1 = f.a(194);
    private static final long N1 = f.a(195);
    private static final long O1 = f.a(196);
    private static final long P1 = f.a(197);
    private static final long Q1 = f.a(198);
    private static final long R1 = f.a(199);
    private static final long S1 = f.a(200);
    private static final long T1 = f.a(201);
    private static final long U1 = f.a(Sdk$SDKError.Reason.AD_CONSUMED_VALUE);
    private static final long V1 = f.a(Sdk$SDKError.Reason.AD_IS_LOADING_VALUE);
    private static final long W1 = f.a(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    private static final long X1 = f.a(Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE);
    private static final long Y1 = f.a(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE);
    private static final long Z1 = f.a(Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE);

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private static final long f60967a2 = f.a(134);

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private static final long f60973b2 = f.a(135);

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private static final long f60979c2 = f.a(Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE);

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private static final long f60985d2 = f.a(Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE);

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private static final long f60991e2 = f.a(138);

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private static final long f60997f2 = f.a(139);

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private static final long f61003g2 = f.a(140);

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private static final long f61009h2 = f.a(141);

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private static final long f61015i2 = f.a(142);

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private static final long f61021j2 = f.a(143);

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    private static final long f61027k2 = f.a(144);

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private static final long f61033l2 = f.a(145);

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private static final long f61039m2 = f.a(146);

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private static final long f61045n2 = f.a(147);

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private static final long f61051o2 = f.a(148);

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private static final long f61057p2 = f.a(149);

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private static final long f61063q2 = f.a(150);

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private static final long f61069r2 = f.a(151);

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private static final long f61075s2 = f.a(152);

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private static final long f61081t2 = f.a(153);

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private static final long f61087u2 = f.a(154);

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private static final long f61093v2 = f.a(155);

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private static final long f61099w2 = f.a(156);

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private static final long f61105x2 = f.a(157);

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private static final long f61111y2 = f.a(158);

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    private static final long f61117z2 = f.a(159);
    private static final long A2 = f.a(160);
    private static final long B2 = f.a(161);
    private static final long C2 = f.a(162);
    private static final long D2 = f.a(163);
    private static final long E2 = f.a(126);
    private static final long F2 = f.a(127);
    private static final long G2 = f.a(85);
    private static final long H2 = f.a(86);
    private static final long I2 = f.a(130);
    private static final long J2 = f.a(87);
    private static final long K2 = f.a(88);
    private static final long L2 = f.a(89);
    private static final long M2 = f.a(90);
    private static final long N2 = f.a(128);
    private static final long O2 = f.a(Sdk$SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE);
    private static final long P2 = f.a(129);
    private static final long Q2 = f.a(226);
    private static final long R2 = f.a(272);
    private static final long S2 = f.a(273);
    private static final long T2 = f.a(274);
    private static final long U2 = f.a(275);
    private static final long V2 = f.a(91);
    private static final long W2 = f.a(164);
    private static final long X2 = f.a(165);
    private static final long Y2 = f.a(166);
    private static final long Z2 = f.a(167);

    /* JADX INFO: renamed from: a3, reason: collision with root package name */
    private static final long f60968a3 = f.a(168);

    /* JADX INFO: renamed from: b3, reason: collision with root package name */
    private static final long f60974b3 = f.a(169);

    /* JADX INFO: renamed from: c3, reason: collision with root package name */
    private static final long f60980c3 = f.a(170);

    /* JADX INFO: renamed from: d3, reason: collision with root package name */
    private static final long f60986d3 = f.a(171);

    /* JADX INFO: renamed from: e3, reason: collision with root package name */
    private static final long f60992e3 = f.a(172);

    /* JADX INFO: renamed from: f3, reason: collision with root package name */
    private static final long f60998f3 = f.a(173);

    /* JADX INFO: renamed from: g3, reason: collision with root package name */
    private static final long f61004g3 = f.a(174);

    /* JADX INFO: renamed from: h3, reason: collision with root package name */
    private static final long f61010h3 = f.a(175);

    /* JADX INFO: renamed from: i3, reason: collision with root package name */
    private static final long f61016i3 = f.a(176);

    /* JADX INFO: renamed from: j3, reason: collision with root package name */
    private static final long f61022j3 = f.a(177);

    /* JADX INFO: renamed from: k3, reason: collision with root package name */
    private static final long f61028k3 = f.a(178);

    /* JADX INFO: renamed from: l3, reason: collision with root package name */
    private static final long f61034l3 = f.a(179);

    /* JADX INFO: renamed from: m3, reason: collision with root package name */
    private static final long f61040m3 = f.a(180);

    /* JADX INFO: renamed from: n3, reason: collision with root package name */
    private static final long f61046n3 = f.a(181);

    /* JADX INFO: renamed from: o3, reason: collision with root package name */
    private static final long f61052o3 = f.a(182);

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    private static final long f61058p3 = f.a(183);

    /* JADX INFO: renamed from: q3, reason: collision with root package name */
    private static final long f61064q3 = f.a(184);

    /* JADX INFO: renamed from: r3, reason: collision with root package name */
    private static final long f61070r3 = f.a(185);

    /* JADX INFO: renamed from: s3, reason: collision with root package name */
    private static final long f61076s3 = f.a(186);

    /* JADX INFO: renamed from: t3, reason: collision with root package name */
    private static final long f61082t3 = f.a(187);

    /* JADX INFO: renamed from: u3, reason: collision with root package name */
    private static final long f61088u3 = f.a(Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE);

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    private static final long f61094v3 = f.a(Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE);

    /* JADX INFO: renamed from: w3, reason: collision with root package name */
    private static final long f61100w3 = f.a(Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE);

    /* JADX INFO: renamed from: x3, reason: collision with root package name */
    private static final long f61106x3 = f.a(Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE);

    /* JADX INFO: renamed from: y3, reason: collision with root package name */
    private static final long f61112y3 = f.a(Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE);

    /* JADX INFO: renamed from: z3, reason: collision with root package name */
    private static final long f61118z3 = f.a(Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE);
    private static final long A3 = f.a(Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE);
    private static final long B3 = f.a(211);
    private static final long C3 = f.a(Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE);
    private static final long D3 = f.a(Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE);
    private static final long E3 = f.a(Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE);
    private static final long F3 = f.a(Sdk$SDKError.Reason.AD_RESPONSE_EMPTY_VALUE);
    private static final long G3 = f.a(Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE);
    private static final long H3 = f.a(Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE);
    private static final long I3 = f.a(Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE);
    private static final long J3 = f.a(Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE);
    private static final long K3 = f.a(Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE);
    private static final long L3 = f.a(Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE);
    private static final long M3 = f.a(Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE);
    private static final long N3 = f.a(224);
    private static final long O3 = f.a(276);
    private static final long P3 = f.a(225);
    private static final long Q3 = f.a(229);
    private static final long R3 = f.a(230);
    private static final long S3 = f.a(231);
    private static final long T3 = f.a(232);
    private static final long U3 = f.a(233);
    private static final long V3 = f.a(234);
    private static final long W3 = f.a(235);
    private static final long X3 = f.a(236);
    private static final long Y3 = f.a(237);
    private static final long Z3 = f.a(238);

    /* JADX INFO: renamed from: a4, reason: collision with root package name */
    private static final long f60969a4 = f.a(239);

    /* JADX INFO: renamed from: b4, reason: collision with root package name */
    private static final long f60975b4 = f.a(240);

    /* JADX INFO: renamed from: c4, reason: collision with root package name */
    private static final long f60981c4 = f.a(241);

    /* JADX INFO: renamed from: d4, reason: collision with root package name */
    private static final long f60987d4 = f.a(242);

    /* JADX INFO: renamed from: e4, reason: collision with root package name */
    private static final long f60993e4 = f.a(243);

    /* JADX INFO: renamed from: f4, reason: collision with root package name */
    private static final long f60999f4 = f.a(244);

    /* JADX INFO: renamed from: g4, reason: collision with root package name */
    private static final long f61005g4 = f.a(245);

    /* JADX INFO: renamed from: h4, reason: collision with root package name */
    private static final long f61011h4 = f.a(246);

    /* JADX INFO: renamed from: i4, reason: collision with root package name */
    private static final long f61017i4 = f.a(247);

    /* JADX INFO: renamed from: j4, reason: collision with root package name */
    private static final long f61023j4 = f.a(248);

    /* JADX INFO: renamed from: k4, reason: collision with root package name */
    private static final long f61029k4 = f.a(249);

    /* JADX INFO: renamed from: l4, reason: collision with root package name */
    private static final long f61035l4 = f.a(250);

    /* JADX INFO: renamed from: m4, reason: collision with root package name */
    private static final long f61041m4 = f.a(251);

    /* JADX INFO: renamed from: n4, reason: collision with root package name */
    private static final long f61047n4 = f.a(252);

    /* JADX INFO: renamed from: o4, reason: collision with root package name */
    private static final long f61053o4 = f.a(253);

    /* JADX INFO: renamed from: p4, reason: collision with root package name */
    private static final long f61059p4 = f.a(254);

    /* JADX INFO: renamed from: q4, reason: collision with root package name */
    private static final long f61065q4 = f.a(255);

    /* JADX INFO: renamed from: r4, reason: collision with root package name */
    private static final long f61071r4 = f.a(256);

    /* JADX INFO: renamed from: s4, reason: collision with root package name */
    private static final long f61077s4 = f.a(InputDeviceCompat.SOURCE_KEYBOARD);

    /* JADX INFO: renamed from: t4, reason: collision with root package name */
    private static final long f61083t4 = f.a(258);

    /* JADX INFO: renamed from: u4, reason: collision with root package name */
    private static final long f61089u4 = f.a(264);

    /* JADX INFO: renamed from: v4, reason: collision with root package name */
    private static final long f61095v4 = f.a(265);

    /* JADX INFO: renamed from: w4, reason: collision with root package name */
    private static final long f61101w4 = f.a(266);

    /* JADX INFO: renamed from: x4, reason: collision with root package name */
    private static final long f61107x4 = f.a(267);

    /* JADX INFO: renamed from: y4, reason: collision with root package name */
    private static final long f61113y4 = f.a(284);

    /* JADX INFO: renamed from: z4, reason: collision with root package name */
    private static final long f61119z4 = f.a(285);
    private static final long A4 = f.a(286);
    private static final long B4 = f.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO);
    private static final long C4 = f.a(288);

    /* JADX INFO: renamed from: d0.a$a, reason: collision with other inner class name */
    public static final class C0728a {
        private C0728a() {
        }

        public /* synthetic */ C0728a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return a.f61000g;
        }

        public final long b() {
            return a.f61096w;
        }

        public final long c() {
            return a.f61078t;
        }

        public final long d() {
            return a.f61084u;
        }

        public final long e() {
            return a.f61090v;
        }

        public final long f() {
            return a.f61072s;
        }

        public final long g() {
            return a.G0;
        }

        public final long h() {
            return a.J0;
        }

        public final long i() {
            return a.A2;
        }

        public final long j() {
            return a.f61050o1;
        }

        public final long k() {
            return a.f61044n1;
        }

        public final long l() {
            return a.B0;
        }
    }

    private /* synthetic */ a(long j11) {
        this.f61120a = j11;
    }

    public static final /* synthetic */ a m(long j11) {
        return new a(j11);
    }

    public static long n(long j11) {
        return j11;
    }

    public static boolean o(long j11, Object obj) {
        return (obj instanceof a) && j11 == ((a) obj).s();
    }

    public static final boolean p(long j11, long j12) {
        return j11 == j12;
    }

    public static int q(long j11) {
        return s.a(j11);
    }

    public static String r(long j11) {
        return "Key code: " + j11;
    }

    public boolean equals(Object obj) {
        return o(this.f61120a, obj);
    }

    public int hashCode() {
        return q(this.f61120a);
    }

    public final /* synthetic */ long s() {
        return this.f61120a;
    }

    public String toString() {
        return r(this.f61120a);
    }
}
