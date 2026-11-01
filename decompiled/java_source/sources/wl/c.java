package wl;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public class c implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f77703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private URL f77704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile byte[] f77705d;

    public c(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("url must be can not null or empty");
        }
        this.f77703b = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
    }

    @Override // wl.e
    public void a(MessageDigest messageDigest) {
        if (this.f77705d == null) {
            this.f77705d = this.f77703b.getBytes(e.f77708a);
        }
        messageDigest.update(this.f77705d);
    }

    public URL b() {
        if (this.f77704c == null) {
            this.f77704c = new URL(this.f77703b);
        }
        return this.f77704c;
    }

    public String toString() {
        return this.f77703b;
    }
}
