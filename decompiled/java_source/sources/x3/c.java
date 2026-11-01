package x3;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f78046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileChannel f78047b;

    public c(String filename) {
        Intrinsics.h(filename, "filename");
        this.f78046a = filename + ".lck";
    }

    public final void a() throws IOException {
        if (this.f78047b != null) {
            return;
        }
        try {
            File file = new File(this.f78046a);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.f78047b = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th2) {
            FileChannel fileChannel = this.f78047b;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.f78047b = null;
            throw new IllegalStateException("Unable to lock file: '" + this.f78046a + "'.", th2);
        }
    }

    public final void b() {
        FileChannel fileChannel = this.f78047b;
        if (fileChannel == null) {
            return;
        }
        try {
            fileChannel.close();
        } finally {
            this.f78047b = null;
        }
    }
}
