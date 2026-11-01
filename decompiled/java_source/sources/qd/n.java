package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class n extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final p[] f73583b = new p[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p[] f73584a;

    public n(Map map) {
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        boolean z10 = (map == null || map.get(DecodeHintType.ASSUME_CODE_39_CHECK_DIGIT) == null) ? false : true;
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13) || collection.contains(BarcodeFormat.UPC_A) || collection.contains(BarcodeFormat.EAN_8) || collection.contains(BarcodeFormat.UPC_E)) {
                arrayList.add(new o(map));
            }
            if (collection.contains(BarcodeFormat.CODE_39)) {
                arrayList.add(new c(z10));
            }
            if (collection.contains(BarcodeFormat.CODE_93)) {
                arrayList.add(new e());
            }
            if (collection.contains(BarcodeFormat.CODE_128)) {
                arrayList.add(new com.google.zxing.oned.a());
            }
            if (collection.contains(BarcodeFormat.ITF)) {
                arrayList.add(new l());
            }
            if (collection.contains(BarcodeFormat.CODABAR)) {
                arrayList.add(new a());
            }
            if (collection.contains(BarcodeFormat.RSS_14)) {
                arrayList.add(new rd.e());
            }
            if (collection.contains(BarcodeFormat.RSS_EXPANDED)) {
                arrayList.add(new sd.d());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new o(map));
            arrayList.add(new c());
            arrayList.add(new a());
            arrayList.add(new e());
            arrayList.add(new com.google.zxing.oned.a());
            arrayList.add(new l());
            arrayList.add(new rd.e());
            arrayList.add(new sd.d());
        }
        this.f73584a = (p[]) arrayList.toArray(f73583b);
    }

    @Override // qd.p
    public com.google.zxing.j c(int i11, id.a aVar, Map map) throws NotFoundException {
        for (p pVar : this.f73584a) {
            try {
                return pVar.c(i11, aVar, map);
            } catch (ReaderException unused) {
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // qd.p, com.google.zxing.i
    public void reset() {
        for (p pVar : this.f73584a) {
            pVar.reset();
        }
    }
}
