package wl;

import android.net.Uri;
import android.text.TextUtils;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public class d implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile byte[] f77706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f77707c;

    public d(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("url must be can not null or empty");
        }
        this.f77707c = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
    }

    @Override // wl.e
    public void a(MessageDigest messageDigest) {
        if (this.f77706b == null) {
            this.f77706b = this.f77707c.getBytes(e.f77708a);
        }
        messageDigest.update(this.f77706b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return cm.e.a(this.f77707c).equals(cm.e.a(((d) obj).f77707c));
        }
        return false;
    }

    public int hashCode() {
        return this.f77707c.hashCode() * 31;
    }
}
