package ja;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import ba.h;
import ba.i;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.common.base.c;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d0 f65972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f65973p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f65974q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f65975r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f65976s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final float f65977t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f65978u;

    public a(List list) {
        super("Tx3gDecoder");
        this.f65972o = new d0();
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f65974q = 0;
            this.f65975r = -1;
            this.f65976s = C.SANS_SERIF_NAME;
            this.f65973p = false;
            this.f65977t = 0.85f;
            this.f65978u = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f65974q = bArr[24];
        this.f65975r = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f65976s = "Serif".equals(p0.E(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i11 = bArr[25] * 20;
        this.f65978u = i11;
        boolean z10 = (bArr[0] & 32) != 0;
        this.f65973p = z10;
        if (z10) {
            this.f65977t = p0.p(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i11, 0.0f, 0.95f);
        } else {
            this.f65977t = 0.85f;
        }
    }

    private static void A(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13, int i14, int i15) {
        if (i11 != i12) {
            int i16 = i15 | 33;
            boolean z10 = (i11 & 1) != 0;
            boolean z11 = (i11 & 2) != 0;
            if (z10) {
                if (z11) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i13, i14, i16);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i13, i14, i16);
                }
            } else if (z11) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i13, i14, i16);
            }
            boolean z12 = (i11 & 4) != 0;
            if (z12) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i13, i14, i16);
            }
            if (z12 || z10 || z11) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i13, i14, i16);
        }
    }

    private static void B(SpannableStringBuilder spannableStringBuilder, String str, int i11, int i12) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i11, i12, 16711713);
        }
    }

    private static String C(d0 d0Var) throws SubtitleDecoderException {
        char cG;
        y(d0Var.a() >= 2);
        int iJ = d0Var.J();
        if (iJ == 0) {
            return "";
        }
        return (d0Var.a() < 2 || !((cG = d0Var.g()) == 65279 || cG == 65534)) ? d0Var.B(iJ, c.f30228c) : d0Var.B(iJ, c.f30231f);
    }

    private void x(d0 d0Var, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        y(d0Var.a() >= 12);
        int iJ = d0Var.J();
        int iJ2 = d0Var.J();
        d0Var.Q(2);
        int iD = d0Var.D();
        d0Var.Q(1);
        int iN = d0Var.n();
        if (iJ2 > spannableStringBuilder.length()) {
            s.i("Tx3gDecoder", "Truncating styl end (" + iJ2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            iJ2 = spannableStringBuilder.length();
        }
        if (iJ < iJ2) {
            int i11 = iJ2;
            A(spannableStringBuilder, iD, this.f65974q, iJ, i11, 0);
            z(spannableStringBuilder, iN, this.f65975r, iJ, i11, 0);
            return;
        }
        s.i("Tx3gDecoder", "Ignoring styl with start (" + iJ + ") >= end (" + iJ2 + ").");
    }

    private static void y(boolean z10) throws SubtitleDecoderException {
        if (!z10) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    private static void z(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13, int i14, int i15) {
        if (i11 != i12) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i11 >>> 8) | ((i11 & 255) << 24)), i13, i14, i15 | 33);
        }
    }

    @Override // ba.h
    protected i v(byte[] bArr, int i11, boolean z10) throws SubtitleDecoderException {
        this.f65972o.N(bArr, i11);
        String strC = C(this.f65972o);
        if (strC.isEmpty()) {
            return b.f65979b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strC);
        A(spannableStringBuilder, this.f65974q, 0, 0, spannableStringBuilder.length(), 16711680);
        z(spannableStringBuilder, this.f65975r, -1, 0, spannableStringBuilder.length(), 16711680);
        B(spannableStringBuilder, this.f65976s, 0, spannableStringBuilder.length());
        float fP = this.f65977t;
        while (this.f65972o.a() >= 8) {
            int iE = this.f65972o.e();
            int iN = this.f65972o.n();
            int iN2 = this.f65972o.n();
            if (iN2 == 1937013100) {
                y(this.f65972o.a() >= 2);
                int iJ = this.f65972o.J();
                for (int i12 = 0; i12 < iJ; i12++) {
                    x(this.f65972o, spannableStringBuilder);
                }
            } else if (iN2 == 1952608120 && this.f65973p) {
                y(this.f65972o.a() >= 2);
                fP = p0.p(this.f65972o.J() / this.f65978u, 0.0f, 0.95f);
            }
            this.f65972o.P(iE + iN);
        }
        return new b(new ba.b.C0143b().o(spannableStringBuilder).h(fP, 0).i(0).a());
    }
}
