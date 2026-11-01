package p4;

import androidx.collection.z;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final f f72299b = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f72300a = new z(20);

    f() {
    }

    public static f b() {
        return f72299b;
    }

    public com.airbnb.lottie.h a(String str) {
        if (str == null) {
            return null;
        }
        return (com.airbnb.lottie.h) this.f72300a.get(str);
    }

    public void c(String str, com.airbnb.lottie.h hVar) {
        if (str == null) {
            return;
        }
        this.f72300a.put(str, hVar);
    }
}
