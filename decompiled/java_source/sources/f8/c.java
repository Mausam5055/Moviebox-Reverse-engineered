package f8;

import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f62361a;

    public c(long j11) {
        this.f62361a = j11;
    }

    @Override // f8.b
    public boolean b(File file) {
        return file.length() > this.f62361a;
    }
}
