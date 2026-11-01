package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f27819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f27823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f27824f;

    private a(List list, int i11, int i12, int i13, float f11, String str) {
        this.f27819a = list;
        this.f27820b = i11;
        this.f27821c = i12;
        this.f27822d = i13;
        this.f27823e = f11;
        this.f27824f = str;
    }

    private static byte[] a(d0 d0Var) {
        int iJ = d0Var.J();
        int iE = d0Var.e();
        d0Var.Q(iJ);
        return com.google.android.exoplayer2.util.f.d(d0Var.d(), iE, iJ);
    }

    public static a b(d0 d0Var) throws ParserException {
        int i11;
        int i12;
        float f11;
        String strA;
        try {
            d0Var.Q(4);
            int iD = (d0Var.D() & 3) + 1;
            if (iD == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iD2 = d0Var.D() & 31;
            for (int i13 = 0; i13 < iD2; i13++) {
                arrayList.add(a(d0Var));
            }
            int iD3 = d0Var.D();
            for (int i14 = 0; i14 < iD3; i14++) {
                arrayList.add(a(d0Var));
            }
            if (iD2 > 0) {
                com.google.android.exoplayer2.util.x.c cVarL = com.google.android.exoplayer2.util.x.l((byte[]) arrayList.get(0), iD, ((byte[]) arrayList.get(0)).length);
                int i15 = cVarL.f27686f;
                int i16 = cVarL.f27687g;
                float f12 = cVarL.f27688h;
                strA = com.google.android.exoplayer2.util.f.a(cVarL.f27681a, cVarL.f27682b, cVarL.f27683c);
                i11 = i15;
                i12 = i16;
                f11 = f12;
            } else {
                i11 = -1;
                i12 = -1;
                f11 = 1.0f;
                strA = null;
            }
            return new a(arrayList, iD, i11, i12, f11, strA);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e11);
        }
    }
}
