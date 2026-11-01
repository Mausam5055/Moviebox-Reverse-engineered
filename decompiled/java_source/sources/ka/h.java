package ka;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class h extends ba.h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d0 f66732o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final c f66733p;

    public h() {
        super("WebvttDecoder");
        this.f66732o = new d0();
        this.f66733p = new c();
    }

    private static int x(d0 d0Var) {
        int i11 = -1;
        int iE = 0;
        while (i11 == -1) {
            iE = d0Var.e();
            String strP = d0Var.p();
            if (strP == null) {
                i11 = 0;
            } else if ("STYLE".equals(strP)) {
                i11 = 2;
            } else {
                i11 = strP.startsWith("NOTE") ? 1 : 3;
            }
        }
        d0Var.P(iE);
        return i11;
    }

    private static void y(d0 d0Var) {
        while (!TextUtils.isEmpty(d0Var.p())) {
        }
    }

    @Override // ba.h
    protected ba.i v(byte[] bArr, int i11, boolean z10) throws SubtitleDecoderException {
        e eVarM;
        this.f66732o.N(bArr, i11);
        ArrayList arrayList = new ArrayList();
        try {
            i.e(this.f66732o);
            while (!TextUtils.isEmpty(this.f66732o.p())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iX = x(this.f66732o);
                if (iX == 0) {
                    return new k(arrayList2);
                }
                if (iX == 1) {
                    y(this.f66732o);
                } else if (iX == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.f66732o.p();
                    arrayList.addAll(this.f66733p.d(this.f66732o));
                } else if (iX == 3 && (eVarM = f.m(this.f66732o, arrayList)) != null) {
                    arrayList2.add(eVarM);
                }
            }
        } catch (ParserException e11) {
            throw new SubtitleDecoderException(e11);
        }
    }
}
