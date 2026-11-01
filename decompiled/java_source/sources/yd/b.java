package yd;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.g;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Mode f78986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ErrorCorrectionLevel f78987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f78988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78989d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f78990e;

    public static boolean b(int i11) {
        return i11 >= 0 && i11 < 8;
    }

    public a a() {
        return this.f78990e;
    }

    public void c(ErrorCorrectionLevel errorCorrectionLevel) {
        this.f78987b = errorCorrectionLevel;
    }

    public void d(int i11) {
        this.f78989d = i11;
    }

    public void e(a aVar) {
        this.f78990e = aVar;
    }

    public void f(Mode mode) {
        this.f78986a = mode;
    }

    public void g(g gVar) {
        this.f78988c = gVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(200);
        sb2.append("<<\n");
        sb2.append(" mode: ");
        sb2.append(this.f78986a);
        sb2.append("\n ecLevel: ");
        sb2.append(this.f78987b);
        sb2.append("\n version: ");
        sb2.append(this.f78988c);
        sb2.append("\n maskPattern: ");
        sb2.append(this.f78989d);
        if (this.f78990e == null) {
            sb2.append("\n matrix: null\n");
        } else {
            sb2.append("\n matrix:\n");
            sb2.append(this.f78990e);
        }
        sb2.append(">>\n");
        return sb2.toString();
    }
}
