package l2;

import androidx.media3.common.ParserException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f68528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f68529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f68530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f68531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f68532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f68533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f68534g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f68535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f68536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f68537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f68538k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f68539l;

    private d(List list, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, float f11, String str) {
        this.f68528a = list;
        this.f68529b = i11;
        this.f68530c = i12;
        this.f68531d = i13;
        this.f68532e = i14;
        this.f68533f = i15;
        this.f68534g = i16;
        this.f68535h = i17;
        this.f68536i = i18;
        this.f68537j = i19;
        this.f68538k = f11;
        this.f68539l = str;
    }

    private static byte[] a(androidx.media3.common.util.j0 j0Var) {
        int iP = j0Var.P();
        int iF = j0Var.f();
        j0Var.X(iP);
        return androidx.media3.common.util.j.g(j0Var.e(), iF, iP);
    }

    public static d b(androidx.media3.common.util.j0 j0Var) throws ParserException {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        float f11;
        String strD;
        int i18;
        try {
            j0Var.X(4);
            int iH = (j0Var.H() & 3) + 1;
            if (iH == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iH2 = j0Var.H() & 31;
            for (int i19 = 0; i19 < iH2; i19++) {
                arrayList.add(a(j0Var));
            }
            int iH3 = j0Var.H();
            for (int i20 = 0; i20 < iH3; i20++) {
                arrayList.add(a(j0Var));
            }
            if (iH2 > 0) {
                androidx.media3.container.g.m mVarC = androidx.media3.container.g.C((byte[]) arrayList.get(0), androidx.media3.container.g.f10593a.length, ((byte[]) arrayList.get(0)).length);
                int i21 = mVarC.f10658f;
                int i22 = mVarC.f10659g;
                int i23 = mVarC.f10661i + 8;
                int i24 = mVarC.f10662j + 8;
                int i25 = mVarC.f10669q;
                int i26 = mVarC.f10670r;
                int i27 = mVarC.f10671s;
                int i28 = mVarC.f10672t;
                float f12 = mVarC.f10660h;
                strD = androidx.media3.common.util.j.d(mVarC.f10653a, mVarC.f10654b, mVarC.f10655c);
                i17 = i27;
                i18 = i28;
                f11 = f12;
                i14 = i24;
                i15 = i25;
                i16 = i26;
                i11 = i21;
                i12 = i22;
                i13 = i23;
            } else {
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                i15 = -1;
                i16 = -1;
                i17 = -1;
                f11 = 1.0f;
                strD = null;
                i18 = 16;
            }
            return new d(arrayList, iH, i11, i12, i13, i14, i15, i16, i17, i18, f11, strD);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e11);
        }
    }
}
