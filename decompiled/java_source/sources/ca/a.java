package ca;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.view.InputDeviceCompat;
import ba.i;
import ba.m;
import ba.n;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.view.FlowLayout;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f17025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f17026i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f17027j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f17028k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List f17031n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f17032o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f17033p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f17034q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f17035r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f17036s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private byte f17037t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private byte f17038u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f17040w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f17041x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int[] f17022y = {11, 1, 3, 12, 14, 5, 7, 9};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f17023z = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] A = {-1, -16711936, -16776961, -16711681, FlowLayout.SPACING_AUTO, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 109, 110, 111, 112, 113, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 120, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 231, 247, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 241, 9632};
    private static final int[] C = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] D = {193, 201, 211, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 235, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 239, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 249, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 171, 187};
    private static final int[] E = {195, 227, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 236, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 242, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 245, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 92, 94, 95, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 126, 196, 228, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 246, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 165, 164, 9474, 197, 229, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f17024g = new d0();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ArrayList f17029l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private C0161a f17030m = new C0161a(0, 4);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f17039v = 0;

    /* JADX INFO: renamed from: ca.a$a, reason: collision with other inner class name */
    private static final class C0161a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f17042a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f17043b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final StringBuilder f17044c = new StringBuilder();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f17045d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f17046e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f17047f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f17048g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f17049h;

        /* JADX INFO: renamed from: ca.a$a$a, reason: collision with other inner class name */
        private static class C0162a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f17050a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f17051b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f17052c;

            public C0162a(int i11, boolean z10, int i12) {
                this.f17050a = i11;
                this.f17051b = z10;
                this.f17052c = i12;
            }
        }

        public C0161a(int i11, int i12) {
            j(i11);
            this.f17049h = i12;
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f17044c);
            int length = spannableStringBuilder.length();
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = 0;
            int i16 = 0;
            boolean z10 = false;
            while (i15 < this.f17042a.size()) {
                C0162a c0162a = (C0162a) this.f17042a.get(i15);
                boolean z11 = c0162a.f17051b;
                int i17 = c0162a.f17050a;
                if (i17 != 8) {
                    boolean z12 = i17 == 7;
                    if (i17 != 7) {
                        i14 = a.A[i17];
                    }
                    z10 = z12;
                }
                int i18 = c0162a.f17052c;
                i15++;
                if (i18 != (i15 < this.f17042a.size() ? ((C0162a) this.f17042a.get(i15)).f17052c : length)) {
                    if (i11 != -1 && !z11) {
                        q(spannableStringBuilder, i11, i18);
                        i11 = -1;
                    } else if (i11 == -1 && z11) {
                        i11 = i18;
                    }
                    if (i12 != -1 && !z10) {
                        o(spannableStringBuilder, i12, i18);
                        i12 = -1;
                    } else if (i12 == -1 && z10) {
                        i12 = i18;
                    }
                    if (i14 != i13) {
                        n(spannableStringBuilder, i16, i18, i13);
                        i13 = i14;
                        i16 = i18;
                    }
                }
            }
            if (i11 != -1 && i11 != length) {
                q(spannableStringBuilder, i11, length);
            }
            if (i12 != -1 && i12 != length) {
                o(spannableStringBuilder, i12, length);
            }
            if (i16 != length) {
                n(spannableStringBuilder, i16, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void n(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13) {
            if (i13 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i13), i11, i12, 33);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i11, int i12) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i11, i12, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i11, int i12) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i12, 33);
        }

        public void e(char c11) {
            if (this.f17044c.length() < 32) {
                this.f17044c.append(c11);
            }
        }

        public void f() {
            int length = this.f17044c.length();
            if (length > 0) {
                this.f17044c.delete(length - 1, length);
                for (int size = this.f17042a.size() - 1; size >= 0; size--) {
                    C0162a c0162a = (C0162a) this.f17042a.get(size);
                    int i11 = c0162a.f17052c;
                    if (i11 != length) {
                        return;
                    }
                    c0162a.f17052c = i11 - 1;
                }
            }
        }

        public ba.b g(int i11) {
            float f11;
            int i12 = this.f17046e + this.f17047f;
            int i13 = 32 - i12;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i14 = 0; i14 < this.f17043b.size(); i14++) {
                spannableStringBuilder.append(p0.c1((CharSequence) this.f17043b.get(i14), i13));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(p0.c1(h(), i13));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i13 - spannableStringBuilder.length();
            int i15 = i12 - length;
            if (i11 == Integer.MIN_VALUE) {
                i11 = (this.f17048g != 2 || (Math.abs(i15) >= 3 && length >= 0)) ? (this.f17048g != 2 || i15 <= 0) ? 0 : 2 : 1;
            }
            if (i11 != 1) {
                if (i11 == 2) {
                    i12 = 32 - length;
                }
                f11 = ((i12 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f11 = 0.5f;
            }
            int i16 = this.f17045d;
            if (i16 > 7) {
                i16 -= 17;
            } else if (this.f17048g == 1) {
                i16 -= this.f17049h - 1;
            }
            return new ba.b.C0143b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i16, 1).k(f11).l(i11).a();
        }

        public boolean i() {
            return this.f17042a.isEmpty() && this.f17043b.isEmpty() && this.f17044c.length() == 0;
        }

        public void j(int i11) {
            this.f17048g = i11;
            this.f17042a.clear();
            this.f17043b.clear();
            this.f17044c.setLength(0);
            this.f17045d = 15;
            this.f17046e = 0;
            this.f17047f = 0;
        }

        public void k() {
            this.f17043b.add(h());
            this.f17044c.setLength(0);
            this.f17042a.clear();
            int iMin = Math.min(this.f17049h, this.f17045d);
            while (this.f17043b.size() >= iMin) {
                this.f17043b.remove(0);
            }
        }

        public void l(int i11) {
            this.f17048g = i11;
        }

        public void m(int i11) {
            this.f17049h = i11;
        }

        public void p(int i11, boolean z10) {
            this.f17042a.add(new C0162a(i11, z10, this.f17044c.length()));
        }
    }

    public a(String str, int i11, long j11) {
        this.f17028k = j11 > 0 ? j11 * 1000 : -9223372036854775807L;
        this.f17025h = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i11 == 1) {
            this.f17027j = 0;
            this.f17026i = 0;
        } else if (i11 == 2) {
            this.f17027j = 1;
            this.f17026i = 0;
        } else if (i11 == 3) {
            this.f17027j = 0;
            this.f17026i = 1;
        } else if (i11 != 4) {
            s.i("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f17027j = 0;
            this.f17026i = 0;
        } else {
            this.f17027j = 1;
            this.f17026i = 1;
        }
        I(0);
        H();
        this.f17040w = true;
        this.f17041x = C.TIME_UNSET;
    }

    private static boolean A(byte b11) {
        return (b11 & 240) == 16;
    }

    private boolean B(boolean z10, byte b11, byte b12) {
        if (!z10 || !A(b11)) {
            this.f17036s = false;
        } else {
            if (this.f17036s && this.f17037t == b11 && this.f17038u == b12) {
                this.f17036s = false;
                return true;
            }
            this.f17036s = true;
            this.f17037t = b11;
            this.f17038u = b12;
        }
        return false;
    }

    private static boolean C(byte b11) {
        return (b11 & 247) == 20;
    }

    private static boolean D(byte b11, byte b12) {
        return (b11 & 247) == 17 && (b12 & 240) == 48;
    }

    private static boolean E(byte b11, byte b12) {
        return (b11 & 247) == 23 && b12 >= 33 && b12 <= 35;
    }

    private static boolean F(byte b11) {
        return 1 <= b11 && b11 <= 15;
    }

    private void G(byte b11, byte b12) {
        if (F(b11)) {
            this.f17040w = false;
            return;
        }
        if (C(b11)) {
            if (b12 != 32 && b12 != 47) {
                switch (b12) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b12) {
                            case 42:
                            case 43:
                                this.f17040w = false;
                                break;
                        }
                }
            }
            this.f17040w = true;
        }
    }

    private void H() {
        this.f17030m.j(this.f17033p);
        this.f17029l.clear();
        this.f17029l.add(this.f17030m);
    }

    private void I(int i11) {
        int i12 = this.f17033p;
        if (i12 == i11) {
            return;
        }
        this.f17033p = i11;
        if (i11 == 3) {
            for (int i13 = 0; i13 < this.f17029l.size(); i13++) {
                ((C0161a) this.f17029l.get(i13)).l(i11);
            }
            return;
        }
        H();
        if (i12 == 3 || i11 == 1 || i11 == 0) {
            this.f17031n = Collections.emptyList();
        }
    }

    private void J(int i11) {
        this.f17034q = i11;
        this.f17030m.m(i11);
    }

    private boolean K() {
        return (this.f17028k == C.TIME_UNSET || this.f17041x == C.TIME_UNSET || f() - this.f17041x < this.f17028k) ? false : true;
    }

    private boolean L(byte b11) {
        if (v(b11)) {
            this.f17039v = m(b11);
        }
        return this.f17039v == this.f17027j;
    }

    private static char l(byte b11) {
        return (char) B[(b11 & 127) - 32];
    }

    private static int m(byte b11) {
        return (b11 >> 3) & 1;
    }

    private List n() {
        int size = this.f17029l.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i11 = 0; i11 < size; i11++) {
            ba.b bVarG = ((C0161a) this.f17029l.get(i11)).g(Integer.MIN_VALUE);
            arrayList.add(bVarG);
            if (bVarG != null) {
                iMin = Math.min(iMin, bVarG.f16259i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            ba.b bVar = (ba.b) arrayList.get(i12);
            if (bVar != null) {
                if (bVar.f16259i != iMin) {
                    bVar = (ba.b) com.google.android.exoplayer2.util.a.e(((C0161a) this.f17029l.get(i12)).g(iMin));
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    private static char o(byte b11) {
        return (char) D[b11 & 31];
    }

    private static char p(byte b11) {
        return (char) E[b11 & 31];
    }

    private static char q(byte b11, byte b12) {
        return (b11 & 1) == 0 ? o(b12) : p(b12);
    }

    private static char r(byte b11) {
        return (char) C[b11 & 15];
    }

    private void s(byte b11) {
        this.f17030m.e(' ');
        this.f17030m.p((b11 >> 1) & 7, (b11 & 1) == 1);
    }

    private void t(byte b11) {
        if (b11 == 32) {
            I(2);
            return;
        }
        if (b11 == 41) {
            I(3);
            return;
        }
        switch (b11) {
            case 37:
                I(1);
                J(2);
                break;
            case 38:
                I(1);
                J(3);
                break;
            case 39:
                I(1);
                J(4);
                break;
            default:
                int i11 = this.f17033p;
                if (i11 != 0) {
                    if (b11 != 33) {
                        switch (b11) {
                            case 44:
                                this.f17031n = Collections.emptyList();
                                int i12 = this.f17033p;
                                if (i12 == 1 || i12 == 3) {
                                    H();
                                }
                                break;
                            case 45:
                                if (i11 == 1 && !this.f17030m.i()) {
                                    this.f17030m.k();
                                    break;
                                }
                                break;
                            case 46:
                                H();
                                break;
                            case 47:
                                this.f17031n = n();
                                H();
                                break;
                        }
                    } else {
                        this.f17030m.f();
                        break;
                    }
                }
                break;
        }
    }

    private void u(byte b11, byte b12) {
        int i11 = f17022y[b11 & 7];
        if ((b12 & 32) != 0) {
            i11++;
        }
        if (i11 != this.f17030m.f17045d) {
            if (this.f17033p != 1 && !this.f17030m.i()) {
                C0161a c0161a = new C0161a(this.f17033p, this.f17034q);
                this.f17030m = c0161a;
                this.f17029l.add(c0161a);
            }
            this.f17030m.f17045d = i11;
        }
        boolean z10 = (b12 & 16) == 16;
        boolean z11 = (b12 & 1) == 1;
        int i12 = (b12 >> 1) & 7;
        this.f17030m.p(z10 ? 8 : i12, z11);
        if (z10) {
            this.f17030m.f17046e = f17023z[i12];
        }
    }

    private static boolean v(byte b11) {
        return (b11 & 224) == 0;
    }

    private static boolean w(byte b11, byte b12) {
        return (b11 & 246) == 18 && (b12 & 224) == 32;
    }

    private static boolean x(byte b11, byte b12) {
        return (b11 & 247) == 17 && (b12 & 240) == 32;
    }

    private static boolean y(byte b11, byte b12) {
        return (b11 & 246) == 20 && (b12 & 240) == 32;
    }

    private static boolean z(byte b11, byte b12) {
        return (b11 & 240) == 16 && (b12 & 192) == 64;
    }

    @Override // ca.e
    protected i a() {
        List list = this.f17031n;
        this.f17032o = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    @Override // ca.e
    protected void b(m mVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24843c);
        this.f17024g.N(byteBuffer.array(), byteBuffer.limit());
        boolean z11 = false;
        while (true) {
            int iA = this.f17024g.a();
            int i11 = this.f17025h;
            if (iA < i11) {
                break;
            }
            byte bD = i11 == 2 ? (byte) -4 : (byte) this.f17024g.D();
            int iD = this.f17024g.D();
            int iD2 = this.f17024g.D();
            if ((bD & 2) == 0 && (bD & 1) == this.f17026i) {
                byte b11 = (byte) (iD & 127);
                byte b12 = (byte) (iD2 & 127);
                if (b11 != 0 || b12 != 0) {
                    boolean z12 = this.f17035r;
                    if ((bD & 4) == 4) {
                        boolean[] zArr = F;
                        if (zArr[iD] && zArr[iD2]) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                    this.f17035r = z10;
                    if (!B(z10, b11, b12)) {
                        if (this.f17035r) {
                            G(b11, b12);
                            if (this.f17040w && L(b11)) {
                                if (!v(b11)) {
                                    this.f17030m.e(l(b11));
                                    if ((b12 & 224) != 0) {
                                        this.f17030m.e(l(b12));
                                    }
                                } else if (D(b11, b12)) {
                                    this.f17030m.e(r(b12));
                                } else if (w(b11, b12)) {
                                    this.f17030m.f();
                                    this.f17030m.e(q(b11, b12));
                                } else if (x(b11, b12)) {
                                    s(b12);
                                } else if (z(b11, b12)) {
                                    u(b11, b12);
                                } else if (E(b11, b12)) {
                                    this.f17030m.f17047f = b12 - 32;
                                } else if (y(b11, b12)) {
                                    t(b12);
                                }
                                z11 = true;
                            }
                        } else if (z12) {
                            H();
                            z11 = true;
                        }
                    }
                }
            }
        }
        if (z11) {
            int i12 = this.f17033p;
            if (i12 == 1 || i12 == 3) {
                this.f17031n = n();
                this.f17041x = f();
            }
        }
    }

    @Override // ca.e
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ m dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // ca.e, com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: d */
    public n dequeueOutputBuffer() {
        n nVarE;
        n nVarDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (nVarDequeueOutputBuffer != null) {
            return nVarDequeueOutputBuffer;
        }
        if (!K() || (nVarE = e()) == null) {
            return null;
        }
        this.f17031n = Collections.emptyList();
        this.f17041x = C.TIME_UNSET;
        nVarE.m(f(), a(), Long.MAX_VALUE);
        return nVarE;
    }

    @Override // ca.e, com.google.android.exoplayer2.decoder.d
    public void flush() {
        super.flush();
        this.f17031n = null;
        this.f17032o = null;
        I(0);
        J(4);
        H();
        this.f17035r = false;
        this.f17036s = false;
        this.f17037t = (byte) 0;
        this.f17038u = (byte) 0;
        this.f17039v = 0;
        this.f17040w = true;
        this.f17041x = C.TIME_UNSET;
    }

    @Override // ca.e
    protected boolean g() {
        return this.f17031n != this.f17032o;
    }

    @Override // ca.e
    /* JADX INFO: renamed from: h */
    public /* bridge */ /* synthetic */ void queueInputBuffer(m mVar) {
        super.queueInputBuffer(mVar);
    }

    @Override // ca.e, com.google.android.exoplayer2.decoder.d
    public void release() {
    }

    @Override // ca.e, ba.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j11) {
        super.setPositionUs(j11);
    }
}
