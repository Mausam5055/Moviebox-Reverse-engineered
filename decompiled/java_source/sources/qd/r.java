package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class r extends w {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final w f73588i = new g();

    private static com.google.zxing.j s(com.google.zxing.j jVar) throws FormatException {
        String strF = jVar.f();
        if (strF.charAt(0) != '0') {
            throw FormatException.getFormatInstance();
        }
        com.google.zxing.j jVar2 = new com.google.zxing.j(strF.substring(1), null, jVar.e(), BarcodeFormat.UPC_A);
        if (jVar.d() != null) {
            jVar2.g(jVar.d());
        }
        return jVar2;
    }

    @Override // qd.p, com.google.zxing.i
    public com.google.zxing.j a(com.google.zxing.b bVar, Map map) {
        return s(this.f73588i.a(bVar, map));
    }

    @Override // qd.p, com.google.zxing.i
    public com.google.zxing.j b(com.google.zxing.b bVar) {
        return s(this.f73588i.b(bVar));
    }

    @Override // qd.w, qd.p
    public com.google.zxing.j c(int i11, id.a aVar, Map map) {
        return s(this.f73588i.c(i11, aVar, map));
    }

    @Override // qd.w
    protected int l(id.a aVar, int[] iArr, StringBuilder sb2) {
        return this.f73588i.l(aVar, iArr, sb2);
    }

    @Override // qd.w
    public com.google.zxing.j m(int i11, id.a aVar, int[] iArr, Map map) {
        return s(this.f73588i.m(i11, aVar, iArr, map));
    }

    @Override // qd.w
    BarcodeFormat q() {
        return BarcodeFormat.UPC_A;
    }
}
