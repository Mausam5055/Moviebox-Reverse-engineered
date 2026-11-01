package cv;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class g extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f60923d;

    public g(String str, String str2) {
        super(str, str2.getBytes().length, null);
        this.f60923d = str2;
    }

    @Override // cv.e
    protected InputStream e() {
        return new ByteArrayInputStream(this.f60923d.getBytes());
    }

    public String toString() {
        return this.f60923d;
    }
}
