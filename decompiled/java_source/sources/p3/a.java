package p3;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.e;
import i3.k;
import i3.r;
import i3.s;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f72275a = new j0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f72276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f72277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f72278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f72279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f72280f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f72281g;

    public a(List list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f72277c = 0;
            this.f72278d = -1;
            this.f72279e = C.SANS_SERIF_NAME;
            this.f72276b = false;
            this.f72280f = 0.85f;
            this.f72281g = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f72277c = bArr[24];
        this.f72278d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f72279e = "Serif".equals(a1.I(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i11 = bArr[25] * 20;
        this.f72281g = i11;
        boolean z10 = (bArr[0] & 32) != 0;
        this.f72276b = z10;
        if (z10) {
            this.f72280f = a1.o(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i11, 0.0f, 0.95f);
        } else {
            this.f72280f = 0.85f;
        }
    }

    private void d(j0 j0Var, SpannableStringBuilder spannableStringBuilder) {
        androidx.media3.common.util.a.a(j0Var.a() >= 12);
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        j0Var.X(2);
        int iH = j0Var.H();
        j0Var.X(1);
        int iQ = j0Var.q();
        if (iP2 > spannableStringBuilder.length()) {
            u.h("Tx3gParser", "Truncating styl end (" + iP2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            iP2 = spannableStringBuilder.length();
        }
        if (iP < iP2) {
            int i11 = iP2;
            f(spannableStringBuilder, iH, this.f72277c, iP, i11, 0);
            e(spannableStringBuilder, iQ, this.f72278d, iP, i11, 0);
            return;
        }
        u.h("Tx3gParser", "Ignoring styl with start (" + iP + ") >= end (" + iP2 + ").");
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13, int i14, int i15) {
        if (i11 != i12) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i11 >>> 8) | ((i11 & 255) << 24)), i13, i14, i15 | 33);
        }
    }

    private static void f(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13, int i14, int i15) {
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

    private static void g(SpannableStringBuilder spannableStringBuilder, String str, int i11, int i12) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i11, i12, 16711713);
        }
    }

    private static String h(j0 j0Var) {
        androidx.media3.common.util.a.a(j0Var.a() >= 2);
        int iP = j0Var.P();
        if (iP == 0) {
            return "";
        }
        int iF = j0Var.f();
        Charset charsetR = j0Var.R();
        int iF2 = iP - (j0Var.f() - iF);
        if (charsetR == null) {
            charsetR = StandardCharsets.UTF_8;
        }
        return j0Var.F(iF2, charsetR);
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        this.f72275a.U(bArr, i11 + i12);
        this.f72275a.W(i11);
        String strH = h(this.f72275a);
        if (strH.isEmpty()) {
            mVar.accept(new e(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strH);
        f(spannableStringBuilder, this.f72277c, 0, 0, spannableStringBuilder.length(), 16711680);
        e(spannableStringBuilder, this.f72278d, -1, 0, spannableStringBuilder.length(), 16711680);
        g(spannableStringBuilder, this.f72279e, 0, spannableStringBuilder.length());
        float fO = this.f72280f;
        while (this.f72275a.a() >= 8) {
            int iF = this.f72275a.f();
            int iQ = this.f72275a.q();
            int iQ2 = this.f72275a.q();
            if (iQ2 == 1937013100) {
                androidx.media3.common.util.a.a(this.f72275a.a() >= 2);
                int iP = this.f72275a.P();
                for (int i13 = 0; i13 < iP; i13++) {
                    d(this.f72275a, spannableStringBuilder);
                }
            } else if (iQ2 == 1952608120 && this.f72276b) {
                androidx.media3.common.util.a.a(this.f72275a.a() >= 2);
                fO = a1.o(this.f72275a.P() / this.f72281g, 0.0f, 0.95f);
            }
            this.f72275a.W(iF + iQ);
        }
        mVar.accept(new e(ImmutableList.of(new u1.a.b().o(spannableStringBuilder).h(fO, 0).i(0).a()), C.TIME_UNSET, C.TIME_UNSET));
    }

    @Override // i3.s
    public /* synthetic */ k b(byte[] bArr, int i11, int i12) {
        return r.a(this, bArr, i11, i12);
    }

    @Override // i3.s
    public int c() {
        return 2;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}
