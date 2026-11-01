package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f9774a;

    public b(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        String strA = h.a(remoteUserInfo);
        if (strA == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(strA)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        this.f9774a = new h(remoteUserInfo);
    }

    public b(String str, int i11, int i12) {
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f9774a = new h(str, i11, i12);
        } else {
            this.f9774a = new i(str, i11, i12);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f9774a.equals(((b) obj).f9774a);
        }
        return false;
    }

    public int hashCode() {
        return this.f9774a.hashCode();
    }
}
