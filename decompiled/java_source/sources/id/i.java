package id;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringBuilder f65177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f65178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Charset f65179c;

    public i() {
        this.f65179c = StandardCharsets.ISO_8859_1;
        this.f65177a = new StringBuilder();
    }

    public i(int i11) {
        this.f65179c = StandardCharsets.ISO_8859_1;
        this.f65177a = new StringBuilder(i11);
    }

    private void g() {
        Charset charset = this.f65179c;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        if (charset.equals(charset2)) {
            if (this.f65177a.length() > 0) {
                StringBuilder sb2 = this.f65178b;
                if (sb2 == null) {
                    this.f65178b = this.f65177a;
                    this.f65177a = new StringBuilder();
                    return;
                } else {
                    sb2.append((CharSequence) this.f65177a);
                    this.f65177a = new StringBuilder();
                    return;
                }
            }
            return;
        }
        if (this.f65177a.length() > 0) {
            byte[] bytes = this.f65177a.toString().getBytes(charset2);
            this.f65177a = new StringBuilder();
            StringBuilder sb3 = this.f65178b;
            if (sb3 == null) {
                this.f65178b = new StringBuilder(new String(bytes, this.f65179c));
            } else {
                sb3.append(new String(bytes, this.f65179c));
            }
        }
    }

    public void a(byte b11) {
        this.f65177a.append((char) (b11 & 255));
    }

    public void b(char c11) {
        this.f65177a.append((char) (c11 & 255));
    }

    public void c(int i11) {
        d(String.valueOf(i11));
    }

    public void d(String str) {
        this.f65177a.append(str);
    }

    public void e(StringBuilder sb2) {
        g();
        this.f65178b.append((CharSequence) sb2);
    }

    public void f(int i11) throws FormatException {
        g();
        CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i11);
        if (characterSetECIByValue == null) {
            throw FormatException.getFormatInstance();
        }
        this.f65179c = characterSetECIByValue.getCharset();
    }

    public boolean h() {
        StringBuilder sb2;
        return this.f65177a.length() == 0 && ((sb2 = this.f65178b) == null || sb2.length() == 0);
    }

    public int i() {
        return toString().length();
    }

    public String toString() {
        g();
        StringBuilder sb2 = this.f65178b;
        return sb2 == null ? "" : sb2.toString();
    }
}
