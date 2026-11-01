package nd;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final d[] f70312i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static d[] f70313j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f70314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f70316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f70317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f70319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f70320g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f70321h;

    static {
        d[] dVarArr = {new d(false, 3, 5, 8, 8, 1), new d(false, 5, 7, 10, 10, 1), new d(true, 5, 7, 16, 6, 1), new d(false, 8, 10, 12, 12, 1), new d(true, 10, 11, 14, 6, 2), new d(false, 12, 12, 14, 14, 1), new d(true, 16, 14, 24, 10, 1), new d(false, 18, 14, 16, 16, 1), new d(false, 22, 18, 18, 18, 1), new d(true, 22, 18, 16, 10, 2), new d(false, 30, 20, 20, 20, 1), new d(true, 32, 24, 16, 14, 2), new d(false, 36, 24, 22, 22, 1), new d(false, 44, 28, 24, 24, 1), new d(true, 49, 28, 22, 14, 2), new d(false, 62, 36, 14, 14, 4), new d(false, 86, 42, 16, 16, 4), new d(false, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 48, 18, 18, 4), new d(false, 144, 56, 20, 20, 4), new d(false, 174, 68, 22, 22, 4), new d(false, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 84, 24, 24, 4, 102, 42), new d(false, 280, 112, 14, 14, 16, 140, 56), new d(false, 368, 144, 16, 16, 16, 92, 36), new d(false, 456, PsExtractor.AUDIO_STREAM, 18, 18, 16, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 48), new d(false, 576, 224, 20, 20, 16, 144, 56), new d(false, 696, 272, 22, 22, 16, 174, 68), new d(false, 816, 336, 24, 24, 16, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 56), new d(false, 1050, TTAdConstant.DOWNLOAD_URL_CODE, 18, 18, 36, 175, 68), new d(false, 1304, 496, 20, 20, 36, 163, 62), new a()};
        f70312i = dVarArr;
        f70313j = dVarArr;
    }

    public d(boolean z10, int i11, int i12, int i13, int i14, int i15) {
        this(z10, i11, i12, i13, i14, i15, i11, i12);
    }

    d(boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.f70314a = z10;
        this.f70315b = i11;
        this.f70316c = i12;
        this.f70317d = i13;
        this.f70318e = i14;
        this.f70319f = i15;
        this.f70320g = i16;
        this.f70321h = i17;
    }

    private int e() {
        int i11 = this.f70319f;
        int i12 = 1;
        if (i11 != 1) {
            i12 = 2;
            if (i11 != 2 && i11 != 4) {
                if (i11 == 16) {
                    return 4;
                }
                if (i11 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i12;
    }

    private int k() {
        int i11 = this.f70319f;
        if (i11 == 1 || i11 == 2) {
            return 1;
        }
        if (i11 == 4) {
            return 2;
        }
        if (i11 == 16) {
            return 4;
        }
        if (i11 == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public static d l(int i11, SymbolShapeHint symbolShapeHint, com.google.zxing.c cVar, com.google.zxing.c cVar2, boolean z10) {
        for (d dVar : f70313j) {
            if (!(symbolShapeHint == SymbolShapeHint.FORCE_SQUARE && dVar.f70314a) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || dVar.f70314a) && i11 <= dVar.f70315b)) {
                return dVar;
            }
        }
        if (!z10) {
            return null;
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: " + i11);
    }

    public final int a() {
        return this.f70315b;
    }

    public int b(int i11) {
        return this.f70320g;
    }

    public final int c() {
        return this.f70316c;
    }

    public final int d(int i11) {
        return this.f70321h;
    }

    public int f() {
        return this.f70315b / this.f70320g;
    }

    public final int g() {
        return k() * this.f70318e;
    }

    public final int h() {
        return e() * this.f70317d;
    }

    public final int i() {
        return g() + (k() * 2);
    }

    public final int j() {
        return h() + (e() * 2);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f70314a ? "Rectangular Symbol:" : "Square Symbol:");
        sb2.append(" data region ");
        sb2.append(this.f70317d);
        sb2.append('x');
        sb2.append(this.f70318e);
        sb2.append(", symbol size ");
        sb2.append(j());
        sb2.append('x');
        sb2.append(i());
        sb2.append(", symbol data size ");
        sb2.append(h());
        sb2.append('x');
        sb2.append(g());
        sb2.append(", codewords ");
        sb2.append(this.f70315b);
        sb2.append('+');
        sb2.append(this.f70316c);
        return sb2.toString();
    }
}
