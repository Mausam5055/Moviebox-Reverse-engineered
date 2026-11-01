package com.google.zxing;

import com.google.zxing.oned.Code128Writer;
import java.util.Map;
import qd.s;
import qd.z;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements m {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32904a;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            f32904a = iArr;
            try {
                iArr[BarcodeFormat.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32904a[BarcodeFormat.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32904a[BarcodeFormat.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32904a[BarcodeFormat.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32904a[BarcodeFormat.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32904a[BarcodeFormat.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32904a[BarcodeFormat.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32904a[BarcodeFormat.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f32904a[BarcodeFormat.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f32904a[BarcodeFormat.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f32904a[BarcodeFormat.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f32904a[BarcodeFormat.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f32904a[BarcodeFormat.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // com.google.zxing.m
    public id.b a(String str, BarcodeFormat barcodeFormat, int i11, int i12, Map map) {
        m jVar;
        switch (a.f32904a[barcodeFormat.ordinal()]) {
            case 1:
                jVar = new qd.j();
                break;
            case 2:
                jVar = new z();
                break;
            case 3:
                jVar = new qd.h();
                break;
            case 4:
                jVar = new s();
                break;
            case 5:
                jVar = new xd.b();
                break;
            case 6:
                jVar = new qd.d();
                break;
            case 7:
                jVar = new qd.f();
                break;
            case 8:
                jVar = new Code128Writer();
                break;
            case 9:
                jVar = new qd.m();
                break;
            case 10:
                jVar = new td.d();
                break;
            case 11:
                jVar = new qd.b();
                break;
            case 12:
                jVar = new ld.b();
                break;
            case 13:
                jVar = new ed.c();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return jVar.a(str, barcodeFormat, i11, i12, map);
    }

    public id.b b(String str, BarcodeFormat barcodeFormat, int i11, int i12) {
        return a(str, barcodeFormat, i11, i12, null);
    }
}
