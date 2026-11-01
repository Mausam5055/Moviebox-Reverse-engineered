package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f27848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f27852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f27853f;

    private f(List list, int i11, int i12, int i13, float f11, String str) {
        this.f27848a = list;
        this.f27849b = i11;
        this.f27850c = i12;
        this.f27851d = i13;
        this.f27852e = f11;
        this.f27853f = str;
    }

    public static f a(d0 d0Var) throws ParserException {
        try {
            d0Var.Q(21);
            int iD = d0Var.D() & 3;
            int iD2 = d0Var.D();
            int iE = d0Var.e();
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < iD2; i13++) {
                d0Var.Q(1);
                int iJ = d0Var.J();
                for (int i14 = 0; i14 < iJ; i14++) {
                    int iJ2 = d0Var.J();
                    i12 += iJ2 + 4;
                    d0Var.Q(iJ2);
                }
            }
            d0Var.P(iE);
            byte[] bArr = new byte[i12];
            int i15 = -1;
            int i16 = -1;
            float f11 = 1.0f;
            String strC = null;
            int i17 = 0;
            int i18 = 0;
            while (i17 < iD2) {
                int iD3 = d0Var.D() & 127;
                int iJ3 = d0Var.J();
                int i19 = i11;
                while (i19 < iJ3) {
                    int iJ4 = d0Var.J();
                    byte[] bArr2 = com.google.android.exoplayer2.util.x.f27664a;
                    int i20 = iD2;
                    System.arraycopy(bArr2, i11, bArr, i18, bArr2.length);
                    int length = i18 + bArr2.length;
                    System.arraycopy(d0Var.d(), d0Var.e(), bArr, length, iJ4);
                    if (iD3 == 33 && i19 == 0) {
                        com.google.android.exoplayer2.util.x.a aVarH = com.google.android.exoplayer2.util.x.h(bArr, length, length + iJ4);
                        int i21 = aVarH.f27675h;
                        i16 = aVarH.f27676i;
                        f11 = aVarH.f27677j;
                        i15 = i21;
                        strC = com.google.android.exoplayer2.util.f.c(aVarH.f27668a, aVarH.f27669b, aVarH.f27670c, aVarH.f27671d, aVarH.f27672e, aVarH.f27673f);
                    }
                    i18 = length + iJ4;
                    d0Var.Q(iJ4);
                    i19++;
                    iD2 = i20;
                    iD3 = iD3;
                    iJ3 = iJ3;
                    i11 = 0;
                }
                i17++;
                i11 = 0;
            }
            return new f(i12 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iD + 1, i15, i16, f11, strC);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw ParserException.createForMalformedContainer("Error parsing HEVC config", e11);
        }
    }
}
