package d4;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final C0731a f61227e = new C0731a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map f61228f = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f61229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f61230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lock f61231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FileChannel f61232d;

    /* JADX INFO: renamed from: d4.a$a, reason: collision with other inner class name */
    private static final class C0731a {
        private C0731a() {
        }

        public /* synthetic */ C0731a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Lock b(String str) {
            Lock lock;
            synchronized (a.f61228f) {
                try {
                    Map map = a.f61228f;
                    Object reentrantLock = map.get(str);
                    if (reentrantLock == null) {
                        reentrantLock = new ReentrantLock();
                        map.put(str, reentrantLock);
                    }
                    lock = (Lock) reentrantLock;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return lock;
        }
    }

    public a(String name, File file, boolean z10) {
        File file2;
        Intrinsics.h(name, "name");
        this.f61229a = z10;
        if (file != null) {
            file2 = new File(file, name + ".lck");
        } else {
            file2 = null;
        }
        this.f61230b = file2;
        this.f61231c = f61227e.b(name);
    }

    public static /* synthetic */ void c(a aVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = aVar.f61229a;
        }
        aVar.b(z10);
    }

    public final void b(boolean z10) {
        this.f61231c.lock();
        if (z10) {
            try {
                File file = this.f61230b;
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(this.f61230b).getChannel();
                channel.lock();
                this.f61232d = channel;
            } catch (IOException e11) {
                this.f61232d = null;
                Log.w("SupportSQLiteLock", "Unable to grab file lock.", e11);
            }
        }
    }

    public final void d() {
        try {
            FileChannel fileChannel = this.f61232d;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f61231c.unlock();
    }
}
