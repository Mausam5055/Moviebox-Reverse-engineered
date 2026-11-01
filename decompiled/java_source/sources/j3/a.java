package j3;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.view.FlowLayout;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import i3.k;
import i3.o;
import i3.p;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f65857i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f65858j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f65859k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f65860l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f65863o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f65864p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f65865q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f65866r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f65867s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f65868t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private byte f65869u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private byte f65870v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f65872x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f65873y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f65855z = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] A = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] B = {-1, -16711936, -16776961, -16711681, FlowLayout.SPACING_AUTO, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 109, 110, 111, 112, 113, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 120, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 231, 247, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 241, 9632};
    private static final int[] D = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] E = {193, 201, 211, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 235, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 239, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 249, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 171, 187};
    private static final int[] F = {195, 227, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 236, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 242, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 245, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 92, 94, 95, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 126, 196, 228, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 246, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 165, 164, 9474, 197, 229, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j0 f65856h = new j0();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final ArrayList f65861m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private C0796a f65862n = new C0796a(0, 4);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f65871w = 0;

    /* JADX INFO: renamed from: j3.a$a, reason: collision with other inner class name */
    private static final class C0796a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f65874a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f65875b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final StringBuilder f65876c = new StringBuilder();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f65877d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f65878e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f65879f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f65880g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f65881h;

        /* JADX INFO: renamed from: j3.a$a$a, reason: collision with other inner class name */
        private static class C0797a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f65882a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f65883b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f65884c;

            public C0797a(int i11, boolean z10, int i12) {
                this.f65882a = i11;
                this.f65883b = z10;
                this.f65884c = i12;
            }
        }

        public C0796a(int i11, int i12) {
            j(i11);
            this.f65881h = i12;
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f65876c);
            int length = spannableStringBuilder.length();
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = 0;
            int i16 = 0;
            boolean z10 = false;
            while (i15 < this.f65874a.size()) {
                C0797a c0797a = (C0797a) this.f65874a.get(i15);
                boolean z11 = c0797a.f65883b;
                int i17 = c0797a.f65882a;
                if (i17 != 8) {
                    boolean z12 = i17 == 7;
                    if (i17 != 7) {
                        i14 = a.B[i17];
                    }
                    z10 = z12;
                }
                int i18 = c0797a.f65884c;
                i15++;
                if (i18 != (i15 < this.f65874a.size() ? ((C0797a) this.f65874a.get(i15)).f65884c : length)) {
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
            if (this.f65876c.length() < 32) {
                this.f65876c.append(c11);
            }
        }

        public void f() {
            int length = this.f65876c.length();
            if (length > 0) {
                this.f65876c.delete(length - 1, length);
                for (int size = this.f65874a.size() - 1; size >= 0; size--) {
                    C0797a c0797a = (C0797a) this.f65874a.get(size);
                    int i11 = c0797a.f65884c;
                    if (i11 != length) {
                        return;
                    }
                    c0797a.f65884c = i11 - 1;
                }
            }
        }

        public u1.a g(int i11) {
            float f11;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i12 = 0; i12 < this.f65875b.size(); i12++) {
                spannableStringBuilder.append((CharSequence) this.f65875b.get(i12));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) h());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i13 = this.f65878e + this.f65879f;
            int length = (32 - i13) - spannableStringBuilder.length();
            int i14 = i13 - length;
            if (i11 == Integer.MIN_VALUE) {
                i11 = (this.f65880g != 2 || (Math.abs(i14) >= 3 && length >= 0)) ? (this.f65880g != 2 || i14 <= 0) ? 0 : 2 : 1;
            }
            if (i11 != 1) {
                if (i11 == 2) {
                    i13 = 32 - length;
                }
                f11 = ((i13 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f11 = 0.5f;
            }
            int i15 = this.f65877d;
            if (i15 > 7) {
                i15 -= 17;
            } else if (this.f65880g == 1) {
                i15 -= this.f65881h - 1;
            }
            return new u1.a.b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i15, 1).k(f11).l(i11).a();
        }

        public boolean i() {
            return this.f65874a.isEmpty() && this.f65875b.isEmpty() && this.f65876c.length() == 0;
        }

        public void j(int i11) {
            this.f65880g = i11;
            this.f65874a.clear();
            this.f65875b.clear();
            this.f65876c.setLength(0);
            this.f65877d = 15;
            this.f65878e = 0;
            this.f65879f = 0;
        }

        public void k() {
            this.f65875b.add(h());
            this.f65876c.setLength(0);
            this.f65874a.clear();
            int iMin = Math.min(this.f65881h, this.f65877d);
            while (this.f65875b.size() >= iMin) {
                this.f65875b.remove(0);
            }
        }

        public void l(int i11) {
            this.f65880g = i11;
        }

        public void m(int i11) {
            this.f65881h = i11;
        }

        public void p(int i11, boolean z10) {
            this.f65874a.add(new C0797a(i11, z10, this.f65876c.length()));
        }
    }

    public a(String str, int i11, long j11) {
        if (j11 != C.TIME_UNSET) {
            androidx.media3.common.util.a.a(j11 >= 16000);
            this.f65860l = j11 * 1000;
        } else {
            this.f65860l = C.TIME_UNSET;
        }
        this.f65857i = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i11 == 1) {
            this.f65859k = 0;
            this.f65858j = 0;
        } else if (i11 == 2) {
            this.f65859k = 1;
            this.f65858j = 0;
        } else if (i11 == 3) {
            this.f65859k = 0;
            this.f65858j = 1;
        } else if (i11 != 4) {
            u.h("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f65859k = 0;
            this.f65858j = 0;
        } else {
            this.f65859k = 1;
            this.f65858j = 1;
        }
        K(0);
        J();
        this.f65872x = true;
        this.f65873y = C.TIME_UNSET;
    }

    private static boolean A(byte b11, byte b12) {
        return (b11 & 246) == 20 && (b12 & 240) == 32;
    }

    private static boolean B(byte b11, byte b12) {
        return (b11 & 240) == 16 && (b12 & 192) == 64;
    }

    private static boolean C(byte b11) {
        return (b11 & 240) == 16;
    }

    private boolean D(boolean z10, byte b11, byte b12) {
        if (!z10 || !C(b11)) {
            this.f65868t = false;
        } else {
            if (this.f65868t && this.f65869u == b11 && this.f65870v == b12) {
                this.f65868t = false;
                return true;
            }
            this.f65868t = true;
            this.f65869u = b11;
            this.f65870v = b12;
        }
        return false;
    }

    private static boolean E(byte b11) {
        return (b11 & 246) == 20;
    }

    private static boolean F(byte b11, byte b12) {
        return (b11 & 247) == 17 && (b12 & 240) == 48;
    }

    private static boolean G(byte b11, byte b12) {
        return (b11 & 247) == 23 && b12 >= 33 && b12 <= 35;
    }

    private static boolean H(byte b11) {
        return 1 <= b11 && b11 <= 15;
    }

    private void I(byte b11, byte b12) {
        if (H(b11)) {
            this.f65872x = false;
            return;
        }
        if (E(b11)) {
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
                                this.f65872x = false;
                                break;
                        }
                }
            }
            this.f65872x = true;
        }
    }

    private void J() {
        this.f65862n.j(this.f65865q);
        this.f65861m.clear();
        this.f65861m.add(this.f65862n);
    }

    private void K(int i11) {
        int i12 = this.f65865q;
        if (i12 == i11) {
            return;
        }
        this.f65865q = i11;
        if (i11 == 3) {
            for (int i13 = 0; i13 < this.f65861m.size(); i13++) {
                ((C0796a) this.f65861m.get(i13)).l(i11);
            }
            return;
        }
        J();
        if (i12 == 3 || i11 == 1 || i11 == 0) {
            this.f65863o = Collections.emptyList();
        }
    }

    private void L(int i11) {
        this.f65866r = i11;
        this.f65862n.m(i11);
    }

    private boolean M() {
        return (this.f65860l == C.TIME_UNSET || this.f65873y == C.TIME_UNSET || h() - this.f65873y < this.f65860l) ? false : true;
    }

    private boolean N(byte b11) {
        if (x(b11)) {
            this.f65871w = o(b11);
        }
        return this.f65871w == this.f65859k;
    }

    private static char n(byte b11) {
        return (char) C[(b11 & 127) - 32];
    }

    private static int o(byte b11) {
        return (b11 >> 3) & 1;
    }

    private List p() {
        int size = this.f65861m.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i11 = 0; i11 < size; i11++) {
            u1.a aVarG = ((C0796a) this.f65861m.get(i11)).g(Integer.MIN_VALUE);
            arrayList.add(aVarG);
            if (aVarG != null) {
                iMin = Math.min(iMin, aVarG.f76566i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            u1.a aVar = (u1.a) arrayList.get(i12);
            if (aVar != null) {
                if (aVar.f76566i != iMin) {
                    aVar = (u1.a) androidx.media3.common.util.a.e(((C0796a) this.f65861m.get(i12)).g(iMin));
                }
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    private static char q(byte b11) {
        return (char) E[b11 & 31];
    }

    private static char r(byte b11) {
        return (char) F[b11 & 31];
    }

    private static char s(byte b11, byte b12) {
        return (b11 & 1) == 0 ? q(b12) : r(b12);
    }

    private static char t(byte b11) {
        return (char) D[b11 & 15];
    }

    private void u(byte b11) {
        this.f65862n.e(' ');
        this.f65862n.p((b11 >> 1) & 7, (b11 & 1) == 1);
    }

    private void v(byte b11) {
        if (b11 == 32) {
            K(2);
            return;
        }
        if (b11 == 41) {
            K(3);
            return;
        }
        switch (b11) {
            case 37:
                K(1);
                L(2);
                break;
            case 38:
                K(1);
                L(3);
                break;
            case 39:
                K(1);
                L(4);
                break;
            default:
                int i11 = this.f65865q;
                if (i11 != 0) {
                    if (b11 != 33) {
                        switch (b11) {
                            case 44:
                                this.f65863o = Collections.emptyList();
                                int i12 = this.f65865q;
                                if (i12 == 1 || i12 == 3) {
                                    J();
                                }
                                break;
                            case 45:
                                if (i11 == 1 && !this.f65862n.i()) {
                                    this.f65862n.k();
                                    break;
                                }
                                break;
                            case 46:
                                J();
                                break;
                            case 47:
                                this.f65863o = p();
                                J();
                                break;
                        }
                    } else {
                        this.f65862n.f();
                        break;
                    }
                }
                break;
        }
    }

    private void w(byte b11, byte b12) {
        int i11 = f65855z[b11 & 7];
        if ((b12 & 32) != 0) {
            i11++;
        }
        if (i11 != this.f65862n.f65877d) {
            if (this.f65865q != 1 && !this.f65862n.i()) {
                C0796a c0796a = new C0796a(this.f65865q, this.f65866r);
                this.f65862n = c0796a;
                this.f65861m.add(c0796a);
            }
            this.f65862n.f65877d = i11;
        }
        boolean z10 = (b12 & 16) == 16;
        boolean z11 = (b12 & 1) == 1;
        int i12 = (b12 >> 1) & 7;
        this.f65862n.p(z10 ? 8 : i12, z11);
        if (z10) {
            this.f65862n.f65878e = A[i12];
        }
    }

    private static boolean x(byte b11) {
        return (b11 & 224) == 0;
    }

    private static boolean y(byte b11, byte b12) {
        return (b11 & 246) == 18 && (b12 & 224) == 32;
    }

    private static boolean z(byte b11, byte b12) {
        return (b11 & 247) == 17 && (b12 & 240) == 32;
    }

    @Override // j3.e
    protected k c() {
        List list = this.f65863o;
        this.f65864p = list;
        return new f((List) androidx.media3.common.util.a.e(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    @Override // j3.e
    protected void d(o oVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(oVar.f10918c);
        this.f65856h.U(byteBuffer.array(), byteBuffer.limit());
        boolean z11 = false;
        while (true) {
            int iA = this.f65856h.a();
            int i11 = this.f65857i;
            if (iA < i11) {
                break;
            }
            int iH = i11 == 2 ? -4 : this.f65856h.H();
            int iH2 = this.f65856h.H();
            int iH3 = this.f65856h.H();
            if ((iH & 2) == 0 && (iH & 1) == this.f65858j) {
                byte b11 = (byte) (iH2 & 127);
                byte b12 = (byte) (iH3 & 127);
                if (b11 != 0 || b12 != 0) {
                    boolean z12 = this.f65867s;
                    if ((iH & 4) == 4) {
                        boolean[] zArr = G;
                        if (zArr[iH2] && zArr[iH3]) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                    this.f65867s = z10;
                    if (!D(z10, b11, b12)) {
                        if (this.f65867s) {
                            I(b11, b12);
                            if (this.f65872x && N(b11)) {
                                if (!x(b11)) {
                                    this.f65862n.e(n(b11));
                                    if ((b12 & 224) != 0) {
                                        this.f65862n.e(n(b12));
                                    }
                                } else if (F(b11, b12)) {
                                    this.f65862n.e(t(b12));
                                } else if (y(b11, b12)) {
                                    this.f65862n.f();
                                    this.f65862n.e(s(b11, b12));
                                } else if (z(b11, b12)) {
                                    u(b12);
                                } else if (B(b11, b12)) {
                                    w(b11, b12);
                                } else if (G(b11, b12)) {
                                    this.f65862n.f65879f = b12 - 32;
                                } else if (A(b11, b12)) {
                                    v(b12);
                                }
                                z11 = true;
                            }
                        } else if (z12) {
                            J();
                            z11 = true;
                        }
                    }
                }
            }
        }
        if (z11) {
            int i12 = this.f65865q;
            if (i12 == 1 || i12 == 3) {
                this.f65863o = p();
                this.f65873y = h();
            }
        }
    }

    @Override // j3.e
    /* JADX INFO: renamed from: e */
    public /* bridge */ /* synthetic */ o dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // j3.e, androidx.media3.decoder.g
    /* JADX INFO: renamed from: f */
    public p dequeueOutputBuffer() {
        p pVarG;
        p pVarDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (pVarDequeueOutputBuffer != null) {
            return pVarDequeueOutputBuffer;
        }
        if (!M() || (pVarG = g()) == null) {
            return null;
        }
        this.f65863o = Collections.emptyList();
        this.f65873y = C.TIME_UNSET;
        pVarG.a(h(), c(), Long.MAX_VALUE);
        return pVarG;
    }

    @Override // j3.e, androidx.media3.decoder.g
    public void flush() {
        super.flush();
        this.f65863o = null;
        this.f65864p = null;
        K(0);
        L(4);
        J();
        this.f65867s = false;
        this.f65868t = false;
        this.f65869u = (byte) 0;
        this.f65870v = (byte) 0;
        this.f65871w = 0;
        this.f65872x = true;
        this.f65873y = C.TIME_UNSET;
    }

    @Override // androidx.media3.decoder.g
    public String getName() {
        return "Cea608Decoder";
    }

    @Override // j3.e
    protected boolean i() {
        return this.f65863o != this.f65864p;
    }

    @Override // j3.e
    /* JADX INFO: renamed from: j */
    public /* bridge */ /* synthetic */ void queueInputBuffer(o oVar) {
        super.queueInputBuffer(oVar);
    }

    @Override // j3.e, androidx.media3.decoder.g
    public void release() {
    }

    @Override // j3.e, i3.l
    public /* bridge */ /* synthetic */ void setPositionUs(long j11) {
        super.setPositionUs(j11);
    }
}
