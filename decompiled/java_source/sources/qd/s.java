package qd;

import com.google.zxing.BarcodeFormat;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class s implements com.google.zxing.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f73589a = new h();

    @Override // com.google.zxing.m
    public id.b a(String str, BarcodeFormat barcodeFormat, int i11, int i12, Map map) {
        if (barcodeFormat != BarcodeFormat.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
        }
        return this.f73589a.a('0' + str, BarcodeFormat.EAN_13, i11, i12, map);
    }
}
