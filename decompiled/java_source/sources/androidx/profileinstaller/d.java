package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AssetManager f14026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f14027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h.c f14028c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f14030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f14031f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f14032g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f14033h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private e[] f14035j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f14036k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f14034i = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f14029d = d();

    public d(AssetManager assetManager, Executor executor, h.c cVar, String str, String str2, String str3, File file) {
        this.f14026a = assetManager;
        this.f14027b = executor;
        this.f14028c = cVar;
        this.f14031f = str;
        this.f14032g = str2;
        this.f14033h = str3;
        this.f14030e = file;
    }

    private d b(e[] eVarArr, byte[] bArr) {
        try {
            InputStream inputStreamH = h(this.f14026a, this.f14033h);
            if (inputStreamH == null) {
                if (inputStreamH != null) {
                    inputStreamH.close();
                }
                return null;
            }
            try {
                this.f14035j = l.r(inputStreamH, l.p(inputStreamH, l.f14056b), bArr, eVarArr);
                inputStreamH.close();
                return this;
            } catch (Throwable th2) {
                try {
                    inputStreamH.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (FileNotFoundException e11) {
            this.f14028c.a(9, e11);
        } catch (IOException e12) {
            this.f14028c.a(7, e12);
        } catch (IllegalStateException e13) {
            this.f14035j = null;
            this.f14028c.a(8, e13);
        }
    }

    private void c() {
        if (!this.f14034i) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
    }

    private static byte[] d() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 24) {
            return null;
        }
        if (i11 >= 31) {
            return n.f14068a;
        }
        switch (i11) {
            case 24:
            case 25:
                return n.f14072e;
            case 26:
                return n.f14071d;
            case 27:
                return n.f14070c;
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
                return n.f14069b;
            default:
                return null;
        }
    }

    private InputStream f(AssetManager assetManager) {
        try {
            return h(assetManager, this.f14032g);
        } catch (FileNotFoundException e11) {
            this.f14028c.a(6, e11);
            return null;
        } catch (IOException e12) {
            this.f14028c.a(7, e12);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i11, Object obj) {
        this.f14028c.a(i11, obj);
    }

    private InputStream h(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e11) {
            String message = e11.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f14028c.b(5, null);
            }
            return null;
        }
    }

    private e[] j(InputStream inputStream) {
        try {
            try {
                try {
                    try {
                        e[] eVarArrX = l.x(inputStream, l.p(inputStream, l.f14055a), this.f14031f);
                        try {
                            return eVarArrX;
                        } catch (IOException e11) {
                            return eVarArrX;
                        }
                    } catch (IOException e12) {
                        this.f14028c.a(7, e12);
                        return null;
                    }
                } catch (IllegalStateException e13) {
                    this.f14028c.a(8, e13);
                    inputStream.close();
                    return null;
                }
            } catch (IOException e14) {
                this.f14028c.a(7, e14);
                inputStream.close();
                return null;
            }
        } finally {
            try {
                inputStream.close();
            } catch (IOException e15) {
                this.f14028c.a(7, e15);
            }
        }
    }

    private static boolean k() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 24) {
            return false;
        }
        return i11 >= 31 || i11 == 24 || i11 == 25;
    }

    private void l(final int i11, final Object obj) {
        this.f14027b.execute(new Runnable() { // from class: androidx.profileinstaller.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f14023a.g(i11, obj);
            }
        });
    }

    public boolean e() {
        if (this.f14029d == null) {
            l(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (!this.f14030e.exists()) {
            try {
                if (!this.f14030e.createNewFile()) {
                    l(4, null);
                    return false;
                }
            } catch (IOException unused) {
                l(4, null);
                return false;
            }
        } else if (!this.f14030e.canWrite()) {
            l(4, null);
            return false;
        }
        this.f14034i = true;
        return true;
    }

    public d i() {
        d dVarB;
        c();
        if (this.f14029d == null) {
            return this;
        }
        InputStream inputStreamF = f(this.f14026a);
        if (inputStreamF != null) {
            this.f14035j = j(inputStreamF);
        }
        e[] eVarArr = this.f14035j;
        return (eVarArr == null || !k() || (dVarB = b(eVarArr, this.f14029d)) == null) ? this : dVarB;
    }

    public d m() {
        e[] eVarArr = this.f14035j;
        byte[] bArr = this.f14029d;
        if (eVarArr != null && bArr != null) {
            c();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    l.F(byteArrayOutputStream, bArr);
                    if (!l.C(byteArrayOutputStream, bArr, eVarArr)) {
                        this.f14028c.a(5, null);
                        this.f14035j = null;
                        byteArrayOutputStream.close();
                        return this;
                    }
                    this.f14036k = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    this.f14035j = null;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException e11) {
                this.f14028c.a(7, e11);
            } catch (IllegalStateException e12) {
                this.f14028c.a(8, e12);
            }
        }
        return this;
    }

    public boolean n() {
        byte[] bArr = this.f14036k;
        if (bArr == null) {
            return false;
        }
        c();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f14030e);
                    try {
                        FileChannel channel = fileOutputStream.getChannel();
                        try {
                            FileLock fileLockTryLock = channel.tryLock();
                            try {
                                f.l(byteArrayInputStream, fileOutputStream, fileLockTryLock);
                                l(1, null);
                                if (fileLockTryLock != null) {
                                    fileLockTryLock.close();
                                }
                                channel.close();
                                fileOutputStream.close();
                                byteArrayInputStream.close();
                                this.f14036k = null;
                                this.f14035j = null;
                                return true;
                            } catch (Throwable th2) {
                                if (fileLockTryLock != null) {
                                    try {
                                        fileLockTryLock.close();
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                    }
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            if (channel != null) {
                                try {
                                    channel.close();
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                }
                            }
                            throw th4;
                        }
                    } catch (Throwable th6) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th7) {
                            th6.addSuppressed(th7);
                        }
                        throw th6;
                    }
                } catch (Throwable th8) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th9) {
                        th8.addSuppressed(th9);
                    }
                    throw th8;
                }
            } catch (FileNotFoundException e11) {
                l(6, e11);
                this.f14036k = null;
                this.f14035j = null;
                return false;
            } catch (IOException e12) {
                l(7, e12);
                this.f14036k = null;
                this.f14035j = null;
                return false;
            }
        } catch (Throwable th10) {
            this.f14036k = null;
            this.f14035j = null;
            throw th10;
        }
    }
}
