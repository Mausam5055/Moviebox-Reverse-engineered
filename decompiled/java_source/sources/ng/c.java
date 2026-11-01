package ng;

import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements g8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70452a = 5242880;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70453b = TimeConstants.DAY;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f70454c = System.currentTimeMillis();

    private final boolean b(File file) {
        if (file == null) {
            return false;
        }
        return (this.f70454c - file.lastModified()) / ((long) this.f70453b) >= 15;
    }

    @Override // g8.a
    public boolean a(File file) {
        if (file == null || !file.isFile()) {
            return false;
        }
        return b(file) || file.length() > this.f70452a;
    }
}
