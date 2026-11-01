package e6;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sP;
import com.bytedance.sdk.component.sP.Sj.uvD;
import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f61552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TKC f61553b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f61555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f61556e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f61554c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f61557f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f61558g = false;

    class a implements com.bytedance.sdk.component.sP.Sj.TKC {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f61559a;

        a(long j11) {
            this.f61559a = j11;
        }

        /* JADX WARN: Code duplicated, block: B:65:0x0159 A[Catch: all -> 0x015e, TryCatch #6 {all -> 0x015e, blocks: (B:63:0x014c, B:65:0x0159, B:68:0x0160), top: B:83:0x014c }] */
        @Override // com.bytedance.sdk.component.sP.Sj.TKC
        public void Sj(sP sPVar, Zq zq2) {
            int iTKC;
            InputStream inputStreamTKC;
            RandomAccessFile randomAccessFile;
            uvD uvdVS;
            long jSj;
            long j11 = this.f61559a;
            uvD uvd = null;
            uvd = null;
            randomAccessFile = null;
            randomAccessFile = null;
            uvd = null;
            RandomAccessFile randomAccessFile2 = null;
            if (zq2 != null) {
                try {
                    boolean zEjP = zq2.EjP();
                    if (!zEjP) {
                        c cVar = c.this;
                        cVar.h(cVar.f61553b, zq2.TKC(), zq2.HiB());
                        c.this.l(null);
                        c.this.l(null);
                        c.this.l(uvd);
                    }
                    uvdVS = zq2.vS();
                    try {
                        uvdVS = zq2.vS();
                        if (!zEjP || uvdVS == null) {
                            inputStreamTKC = null;
                            jSj = 0;
                        } else {
                            jSj = this.f61559a + uvdVS.Sj();
                            inputStreamTKC = uvdVS.TKC();
                        }
                        try {
                            if (inputStreamTKC == null) {
                                c cVar2 = c.this;
                                cVar2.h(cVar2.f61553b, zq2.TKC(), zq2.HiB());
                            } else {
                                randomAccessFile = new RandomAccessFile(c.this.f61555d, "rw");
                                try {
                                    byte[] bArr = new byte[8192];
                                    long j12 = 0;
                                    while (true) {
                                        int i11 = 0;
                                        while (true) {
                                            int i12 = inputStreamTKC.read(bArr, i11, 8192 - i11);
                                            if (i12 == -1) {
                                                if (c.this.f61553b.TEQ() && jSj == c.this.f61555d.length()) {
                                                    c.this.c();
                                                }
                                                c cVar3 = c.this;
                                                cVar3.g(cVar3.f61553b, zq2.TKC());
                                                randomAccessFile2 = randomAccessFile;
                                            } else if (c.this.f61554c) {
                                                c cVar4 = c.this;
                                                cVar4.r(cVar4.f61553b, zq2.TKC());
                                                c.this.l(randomAccessFile);
                                            } else {
                                                i11 += i12;
                                                j12 += (long) i12;
                                                if (j12 % PlaybackStateCompat.ACTION_PLAY_FROM_URI == 0 || j12 == jSj - this.f61559a) {
                                                    c6.b.b(randomAccessFile, bArr, Long.valueOf(j11).intValue(), i11, c.this.f61553b.sef());
                                                    j11 += (long) i11;
                                                }
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    uvd = uvdVS;
                                    iTKC = PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY;
                                    try {
                                        c.this.a();
                                        c cVar5 = c.this;
                                        TKC tkc = cVar5.f61553b;
                                        if (zq2 != null) {
                                            iTKC = zq2.TKC();
                                        }
                                        cVar5.h(tkc, iTKC, th.getMessage());
                                        c.this.l(randomAccessFile);
                                        c.this.l(inputStreamTKC);
                                        c.this.l(uvd);
                                    } finally {
                                        c.this.l(randomAccessFile);
                                        c.this.l(inputStreamTKC);
                                        c.this.l(uvd);
                                        c.this.l(zq2);
                                        c.this.f61553b.Fmk();
                                        c.this.f61553b.TKC();
                                        b.b(c.this.f61553b);
                                    }
                                }
                            }
                            c.this.l(randomAccessFile2);
                        } catch (Throwable th3) {
                            th = th3;
                            randomAccessFile = randomAccessFile2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        inputStreamTKC = null;
                        randomAccessFile = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    inputStreamTKC = null;
                    randomAccessFile = null;
                }
            } else {
                try {
                    c cVar6 = c.this;
                    TKC tkc2 = cVar6.f61553b;
                    iTKC = PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY;
                    try {
                        cVar6.h(tkc2, PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY, "Network link failed.");
                        uvdVS = null;
                        inputStreamTKC = null;
                        c.this.l(randomAccessFile2);
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamTKC = null;
                        randomAccessFile = null;
                        c.this.a();
                        c cVar7 = c.this;
                        TKC tkc3 = cVar7.f61553b;
                        if (zq2 != null) {
                            iTKC = zq2.TKC();
                        }
                        cVar7.h(tkc3, iTKC, th.getMessage());
                        c.this.l(randomAccessFile);
                        c.this.l(inputStreamTKC);
                        c.this.l(uvd);
                    }
                } catch (Throwable th7) {
                    th = th7;
                    iTKC = PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY;
                }
            }
            c.this.l(inputStreamTKC);
            c.this.l(uvdVS);
        }

        @Override // com.bytedance.sdk.component.sP.Sj.TKC
        public void Sj(sP sPVar, IOException iOException) {
            c cVar = c.this;
            cVar.h(cVar.f61553b, PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY, iOException.getMessage());
            b.b(c.this.f61553b);
        }
    }

    public c(Context context, TKC tkc) {
        this.f61555d = null;
        this.f61556e = null;
        this.f61552a = context;
        this.f61553b = tkc;
        this.f61555d = c6.b.d(tkc.sP(), tkc.sef());
        this.f61556e = c6.b.c(tkc.sP(), tkc.sef());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            this.f61556e.delete();
            this.f61555d.delete();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            if (this.f61555d.renameTo(this.f61556e)) {
                return;
            }
            throw new IOException("Error renaming file " + this.f61555d + " to " + this.f61556e + " for completion!");
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(TKC tkc, int i11) {
        synchronized (v5.a.InterfaceC0945a.class) {
            try {
                for (v5.a.InterfaceC0945a interfaceC0945a : this.f61557f) {
                    if (interfaceC0945a != null) {
                        interfaceC0945a.Sj(tkc, i11);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(TKC tkc, int i11, String str) {
        synchronized (v5.a.InterfaceC0945a.class) {
            try {
                for (v5.a.InterfaceC0945a interfaceC0945a : this.f61557f) {
                    if (interfaceC0945a != null) {
                        interfaceC0945a.Sj(tkc, i11, str);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    private void o() {
        Ym.Sj sjSP = t5.b.a() != null ? t5.b.a().sP() : new Ym.Sj("v_preload");
        long jUvD = this.f61553b.uvD();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        sjSP.Sj(jUvD, timeUnit).sP(this.f61553b.dNu(), timeUnit).TKC(this.f61553b.TzV(), timeUnit);
        Ym ymSj = sjSP.Sj();
        Fmk.Sj sj2 = new Fmk.Sj();
        long length = this.f61555d.length();
        int iTKC = this.f61553b.TKC();
        boolean zTEQ = this.f61553b.TEQ();
        int iSj = this.f61553b.Sj();
        if (iSj > 0) {
            if (iSj >= this.f61553b.uA()) {
                zTEQ = true;
            } else {
                iTKC = iSj;
            }
        }
        sj2.Sj("videoPreload").Sj(6);
        if (zTEQ) {
            sj2.Sj("RANGE", "bytes=" + length + "-").sP(this.f61553b.Fmk()).Sj().sP();
        } else {
            sj2.Sj("RANGE", "bytes=" + length + "-" + iTKC).sP(this.f61553b.Fmk()).Sj().sP();
        }
        ymSj.Sj(sj2.sP()).Sj(new a(length));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(TKC tkc, int i11) {
        synchronized (v5.a.InterfaceC0945a.class) {
            try {
                for (v5.a.InterfaceC0945a interfaceC0945a : this.f61557f) {
                    if (interfaceC0945a != null) {
                        interfaceC0945a.sP(tkc, i11);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean t() {
        if (this.f61556e.exists()) {
            return true;
        }
        if (!this.f61553b.TEQ()) {
            if (this.f61555d.length() >= this.f61553b.TKC()) {
                return true;
            }
            if (this.f61553b.Sj() > 0 && this.f61555d.length() >= this.f61553b.Sj()) {
                return true;
            }
        }
        return false;
    }

    public TKC e() {
        return this.f61553b;
    }

    public void m(v5.a.InterfaceC0945a interfaceC0945a) {
        if (this.f61558g) {
            synchronized (v5.a.InterfaceC0945a.class) {
                this.f61557f.add(interfaceC0945a);
            }
            return;
        }
        this.f61557f.add(interfaceC0945a);
        if (t()) {
            this.f61553b.Jcg(1);
            g(this.f61553b, 200);
            b.b(this.f61553b);
        } else {
            this.f61558g = true;
            this.f61553b.Jcg(0);
            o();
        }
    }

    public void n(boolean z10) {
        this.f61554c = z10;
    }
}
