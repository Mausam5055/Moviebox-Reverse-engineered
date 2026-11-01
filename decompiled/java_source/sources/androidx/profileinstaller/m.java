package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final androidx.concurrent.futures.b f14057a = androidx.concurrent.futures.b.y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f14058b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f14059c = null;

    private static class a {
        static PackageInfo a(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f14060a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f14061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f14062c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f14063d;

        b(int i11, int i12, long j11, long j12) {
            this.f14060a = i11;
            this.f14061b = i12;
            this.f14062c = j11;
            this.f14063d = j12;
        }

        static b a(File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                b bVar = new b(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return bVar;
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }

        void b(File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f14060a);
                dataOutputStream.writeInt(this.f14061b);
                dataOutputStream.writeLong(this.f14062c);
                dataOutputStream.writeLong(this.f14063d);
                dataOutputStream.close();
            } catch (Throwable th2) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f14061b == bVar.f14061b && this.f14062c == bVar.f14062c && this.f14060a == bVar.f14060a && this.f14063d == bVar.f14063d;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f14061b), Long.valueOf(this.f14062c), Integer.valueOf(this.f14060a), Long.valueOf(this.f14063d));
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f14064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f14065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f14066c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f14067d;

        c(int i11, boolean z10, boolean z11, boolean z12) {
            this.f14064a = i11;
            this.f14066c = z11;
            this.f14065b = z10;
            this.f14067d = z12;
        }
    }

    private static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? a.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    private static c b(int i11, boolean z10, boolean z11, boolean z12) {
        c cVar = new c(i11, z10, z11, z12);
        f14059c = cVar;
        f14057a.u(cVar);
        return f14059c;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    /* JADX WARN: Code duplicated, block: B:21:0x002d  */
    /* JADX WARN: Code duplicated, block: B:44:0x006f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0092  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d1  */
    static c c(Context context, boolean z10) {
        int i11;
        boolean z11;
        int i12;
        File file;
        boolean z12;
        File file2;
        long length;
        boolean z13;
        File file3;
        b bVarA;
        b bVar;
        int i13;
        AssetFileDescriptor assetFileDescriptorOpenFd;
        c cVar;
        if (!z10 && (cVar = f14059c) != null) {
            return cVar;
        }
        synchronized (f14058b) {
            if (z10) {
                i11 = 0;
                assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                if (assetFileDescriptorOpenFd.getLength() > 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                assetFileDescriptorOpenFd.close();
                i12 = Build.VERSION.SDK_INT;
                if (i12 >= 28) {
                    file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length2 = file.length();
                    if (file.exists()) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    length = file2.length();
                    if (file2.exists()) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    long jA = a(context);
                    file3 = new File(context.getFilesDir(), "profileInstalled");
                    if (file3.exists()) {
                        bVarA = b.a(file3);
                    } else {
                        bVarA = null;
                    }
                    if (bVarA == null) {
                        if (!z11) {
                            i11 = 327680;
                        } else if (z12) {
                            i11 = 1;
                        } else if (z13) {
                            i11 = 2;
                        }
                    } else if (!z11) {
                        i11 = 327680;
                    } else if (z12) {
                        i11 = 1;
                    } else if (z13) {
                        i11 = 2;
                    }
                    if (z10) {
                        i11 = 2;
                    }
                    if (bVarA != null) {
                        i11 = 3;
                    }
                    bVar = new b(1, i11, jA, length);
                    if (bVarA != null) {
                        bVar.b(file3);
                    } else {
                        bVar.b(file3);
                    }
                    return b(i11, z12, z13, z11);
                }
                return b(262144, false, false, z11);
            }
            c cVar2 = f14059c;
            if (cVar2 != null) {
                return cVar2;
            }
            i11 = 0;
            try {
                assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                try {
                    if (assetFileDescriptorOpenFd.getLength() > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    assetFileDescriptorOpenFd.close();
                } catch (Throwable th2) {
                    if (assetFileDescriptorOpenFd == null) {
                        throw th2;
                    }
                    try {
                        assetFileDescriptorOpenFd.close();
                        throw th2;
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                        throw th2;
                    }
                }
            } catch (IOException unused) {
                z11 = false;
            }
            i12 = Build.VERSION.SDK_INT;
            if (i12 >= 28 && i12 != 30) {
                file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                long length3 = file.length();
                if (file.exists() || length3 <= 0) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                length = file2.length();
                if (file2.exists() || length <= 0) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                try {
                    long jA2 = a(context);
                    file3 = new File(context.getFilesDir(), "profileInstalled");
                    if (file3.exists()) {
                        try {
                            bVarA = b.a(file3);
                        } catch (IOException unused2) {
                            return b(131072, z12, z13, z11);
                        }
                    } else {
                        bVarA = null;
                    }
                    if (bVarA == null && bVarA.f14062c == jA2 && (i13 = bVarA.f14061b) != 2) {
                        i11 = i13;
                    } else if (!z11) {
                        i11 = 327680;
                    } else if (z12) {
                        i11 = 1;
                    } else if (z13) {
                        i11 = 2;
                    }
                    if (z10 && z13 && i11 != 1) {
                        i11 = 2;
                    }
                    if (bVarA != null && bVarA.f14061b == 2 && i11 == 1 && length3 < bVarA.f14063d) {
                        i11 = 3;
                    }
                    bVar = new b(1, i11, jA2, length);
                    if (bVarA != null || !bVarA.equals(bVar)) {
                        try {
                            bVar.b(file3);
                        } catch (IOException unused3) {
                            i11 = 196608;
                        }
                    }
                    return b(i11, z12, z13, z11);
                } catch (PackageManager.NameNotFoundException unused4) {
                    return b(65536, z12, z13, z11);
                }
            }
            return b(262144, false, false, z11);
            throw th;
        }
    }
}
