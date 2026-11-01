package ka;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends ba.h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d0 f66682o;

    public a() {
        super("Mp4WebvttDecoder");
        this.f66682o = new d0();
    }

    private static ba.b x(d0 d0Var, int i11) throws SubtitleDecoderException {
        CharSequence charSequenceQ = null;
        ba.b.C0143b c0143bO = null;
        while (i11 > 0) {
            if (i11 < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            int i12 = iN - 8;
            String strE = p0.E(d0Var.d(), d0Var.e(), i12);
            d0Var.Q(i12);
            i11 = (i11 - 8) - i12;
            if (iN2 == 1937011815) {
                c0143bO = f.o(strE);
            } else if (iN2 == 1885436268) {
                charSequenceQ = f.q(null, strE.trim(), Collections.emptyList());
            }
        }
        if (charSequenceQ == null) {
            charSequenceQ = "";
        }
        return c0143bO != null ? c0143bO.o(charSequenceQ).a() : f.l(charSequenceQ);
    }

    @Override // ba.h
    protected ba.i v(byte[] bArr, int i11, boolean z10) throws SubtitleDecoderException {
        this.f66682o.N(bArr, i11);
        ArrayList arrayList = new ArrayList();
        while (this.f66682o.a() > 0) {
            if (this.f66682o.a() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iN = this.f66682o.n();
            if (this.f66682o.n() == 1987343459) {
                arrayList.add(x(this.f66682o, iN - 8));
            } else {
                this.f66682o.Q(iN - 8);
            }
        }
        return new b(arrayList);
    }
}
