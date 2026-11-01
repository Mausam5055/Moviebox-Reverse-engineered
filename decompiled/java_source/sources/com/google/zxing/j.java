package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f32911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private k[] f32913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BarcodeFormat f32914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f32915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f32916g;

    public j(String str, byte[] bArr, int i11, k[] kVarArr, BarcodeFormat barcodeFormat, long j11) {
        this.f32910a = str;
        this.f32911b = bArr;
        this.f32912c = i11;
        this.f32913d = kVarArr;
        this.f32914e = barcodeFormat;
        this.f32915f = null;
        this.f32916g = j11;
    }

    public j(String str, byte[] bArr, k[] kVarArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, kVarArr, barcodeFormat, System.currentTimeMillis());
    }

    public j(String str, byte[] bArr, k[] kVarArr, BarcodeFormat barcodeFormat, long j11) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, kVarArr, barcodeFormat, j11);
    }

    public void a(k[] kVarArr) {
        k[] kVarArr2 = this.f32913d;
        if (kVarArr2 == null) {
            this.f32913d = kVarArr;
            return;
        }
        if (kVarArr == null || kVarArr.length <= 0) {
            return;
        }
        k[] kVarArr3 = new k[kVarArr2.length + kVarArr.length];
        System.arraycopy(kVarArr2, 0, kVarArr3, 0, kVarArr2.length);
        System.arraycopy(kVarArr, 0, kVarArr3, kVarArr2.length, kVarArr.length);
        this.f32913d = kVarArr3;
    }

    public BarcodeFormat b() {
        return this.f32914e;
    }

    public byte[] c() {
        return this.f32911b;
    }

    public Map d() {
        return this.f32915f;
    }

    public k[] e() {
        return this.f32913d;
    }

    public String f() {
        return this.f32910a;
    }

    public void g(Map map) {
        if (map != null) {
            Map map2 = this.f32915f;
            if (map2 == null) {
                this.f32915f = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public void h(ResultMetadataType resultMetadataType, Object obj) {
        if (this.f32915f == null) {
            this.f32915f = new EnumMap(ResultMetadataType.class);
        }
        this.f32915f.put(resultMetadataType, obj);
    }

    public String toString() {
        return this.f32910a;
    }
}
