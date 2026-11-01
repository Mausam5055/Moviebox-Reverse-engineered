package rb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class h implements c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f74268d = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f74269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f74271c;

    class a implements g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ byte[] f74272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int[] f74273b;

        a(byte[] bArr, int[] iArr) {
            this.f74272a = bArr;
            this.f74273b = iArr;
        }

        @Override // rb.g.d
        public void read(InputStream inputStream, int i11) throws IOException {
            try {
                inputStream.read(this.f74272a, this.f74273b[0], i11);
                int[] iArr = this.f74273b;
                iArr[0] = iArr[0] + i11;
            } finally {
                inputStream.close();
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f74275a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f74276b;

        b(byte[] bArr, int i11) {
            this.f74275a = bArr;
            this.f74276b = i11;
        }
    }

    h(File file, int i11) {
        this.f74269a = file;
        this.f74270b = i11;
    }

    private void f(long j11, String str) {
        if (this.f74271c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i11 = this.f74270b / 4;
            if (str.length() > i11) {
                str = "..." + str.substring(str.length() - i11);
            }
            this.f74271c.k(String.format(Locale.US, "%d %s%n", Long.valueOf(j11), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f74268d));
            while (!this.f74271c.q() && this.f74271c.Z() > this.f74270b) {
                this.f74271c.x();
            }
        } catch (IOException e11) {
            ob.g.f().e("There was a problem writing to the Crashlytics log.", e11);
        }
    }

    private b g() {
        if (!this.f74269a.exists()) {
            return null;
        }
        h();
        g gVar = this.f74271c;
        if (gVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[gVar.Z()];
        try {
            this.f74271c.o(new a(bArr, iArr));
        } catch (IOException e11) {
            ob.g.f().e("A problem occurred while reading the Crashlytics log file.", e11);
        }
        return new b(bArr, iArr[0]);
    }

    private void h() {
        if (this.f74271c == null) {
            try {
                this.f74271c = new g(this.f74269a);
            } catch (IOException e11) {
                ob.g.f().e("Could not open log file: " + this.f74269a, e11);
            }
        }
    }

    @Override // rb.c
    public void a() {
        CommonUtils.f(this.f74271c, "There was a problem closing the Crashlytics log file.");
        this.f74271c = null;
    }

    @Override // rb.c
    public String b() {
        byte[] bArrC = c();
        if (bArrC != null) {
            return new String(bArrC, f74268d);
        }
        return null;
    }

    @Override // rb.c
    public byte[] c() {
        b bVarG = g();
        if (bVarG == null) {
            return null;
        }
        int i11 = bVarG.f74276b;
        byte[] bArr = new byte[i11];
        System.arraycopy(bVarG.f74275a, 0, bArr, 0, i11);
        return bArr;
    }

    @Override // rb.c
    public void d() {
        a();
        this.f74269a.delete();
    }

    @Override // rb.c
    public void e(long j11, String str) {
        h();
        f(j11, str);
    }
}
