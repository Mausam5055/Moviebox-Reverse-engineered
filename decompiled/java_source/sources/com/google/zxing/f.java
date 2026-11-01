package com.google.zxing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import qd.n;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final i[] f32901c = new i[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f32902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i[] f32903b;

    private j c(b bVar) throws NotFoundException {
        i[] iVarArr = this.f32903b;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                if (Thread.currentThread().isInterrupted()) {
                    throw NotFoundException.getNotFoundInstance();
                }
                try {
                    return iVar.a(bVar, this.f32902a);
                } catch (ReaderException unused) {
                }
            }
            Map map = this.f32902a;
            if (map != null && map.containsKey(DecodeHintType.ALSO_INVERTED)) {
                bVar.a().e();
                for (i iVar2 : this.f32903b) {
                    if (Thread.currentThread().isInterrupted()) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    try {
                        return iVar2.a(bVar, this.f32902a);
                    } catch (ReaderException unused2) {
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.i
    public j a(b bVar, Map map) {
        e(map);
        return c(bVar);
    }

    @Override // com.google.zxing.i
    public j b(b bVar) {
        e(null);
        return c(bVar);
    }

    public j d(b bVar) {
        if (this.f32903b == null) {
            e(null);
        }
        return c(bVar);
    }

    public void e(Map map) {
        this.f32902a = map;
        boolean z10 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            boolean z11 = collection.contains(BarcodeFormat.UPC_A) || collection.contains(BarcodeFormat.UPC_E) || collection.contains(BarcodeFormat.EAN_13) || collection.contains(BarcodeFormat.EAN_8) || collection.contains(BarcodeFormat.CODABAR) || collection.contains(BarcodeFormat.CODE_39) || collection.contains(BarcodeFormat.CODE_93) || collection.contains(BarcodeFormat.CODE_128) || collection.contains(BarcodeFormat.ITF) || collection.contains(BarcodeFormat.RSS_14) || collection.contains(BarcodeFormat.RSS_EXPANDED);
            if (z11 && !z10) {
                arrayList.add(new n(map));
            }
            if (collection.contains(BarcodeFormat.QR_CODE)) {
                arrayList.add(new xd.a());
            }
            if (collection.contains(BarcodeFormat.DATA_MATRIX)) {
                arrayList.add(new ld.a());
            }
            if (collection.contains(BarcodeFormat.AZTEC)) {
                arrayList.add(new ed.b());
            }
            if (collection.contains(BarcodeFormat.PDF_417)) {
                arrayList.add(new td.b());
            }
            if (collection.contains(BarcodeFormat.MAXICODE)) {
                arrayList.add(new od.a());
            }
            if (z11 && z10) {
                arrayList.add(new n(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z10) {
                arrayList.add(new n(map));
            }
            arrayList.add(new xd.a());
            arrayList.add(new ld.a());
            arrayList.add(new ed.b());
            arrayList.add(new td.b());
            arrayList.add(new od.a());
            if (z10) {
                arrayList.add(new n(map));
            }
        }
        this.f32903b = (i[]) arrayList.toArray(f32901c);
    }

    @Override // com.google.zxing.i
    public void reset() {
        i[] iVarArr = this.f32903b;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                iVar.reset();
            }
        }
    }
}
