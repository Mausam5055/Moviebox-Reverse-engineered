package com.transsion.athena.ehatna;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.data.Track;
import com.transsion.ga.AthenaAnalytics;
import java.io.FileInputStream;
import java.io.IOException;
import k4.a;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class aethna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile aethna f42707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private athena f42708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f42709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f42710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f42711e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f42712f;

    private aethna() {
    }

    public static aethna b() {
        if (f42707a == null) {
            synchronized (aethna.class) {
                try {
                    if (f42707a == null) {
                        f42707a = new aethna();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42707a;
    }

    public long a(long j11, long j12) {
        if (!this.f42710d) {
            return j11;
        }
        athena athenaVar = this.f42708b;
        return (athenaVar.f42713a + j12) - athenaVar.f42714b;
    }

    public String a() {
        return this.f42709c;
    }

    public void a(Track track) {
        if (!this.f42710d) {
            if (TextUtils.isEmpty(this.f42709c)) {
                return;
            }
            track.setBootId(this.f42709c);
        } else {
            long trackErTs = this.f42708b.f42713a + (track.getTrackErTs() - this.f42708b.f42714b);
            if (trackErTs < 1633017600000L) {
                trackErTs = track.getTrackTs();
            }
            track.setTrackTs(trackErTs);
        }
    }

    public void a(boolean z10) {
        this.f42712f = z10;
        if (z10) {
            this.f42711e = SystemClock.elapsedRealtime();
        }
    }

    public boolean a(long j11) {
        this.f42712f = false;
        this.f42711e = -1L;
        if (j11 > 1633017600000L) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f42708b = new athena(j11, SystemClock.elapsedRealtime(), this.f42709c);
            if (Math.abs(jCurrentTimeMillis - j11) > 600000) {
                this.f42710d = true;
            }
            try {
                if (!TextUtils.isEmpty(this.f42709c)) {
                    a aVarA = a.a(AthenaAnalytics.J());
                    athena athenaVar = this.f42708b;
                    athenaVar.getClass();
                    aVarA.g("base_time", new JSONObject().put("serverTime", athenaVar.f42713a).put("elapsedRealtime", athenaVar.f42714b).put("bootId", athenaVar.f42715c).toString());
                }
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            }
        } else {
            this.f42708b = new athena(System.currentTimeMillis(), SystemClock.elapsedRealtime(), this.f42709c);
            this.f42710d = false;
        }
        return this.f42710d;
    }

    public long c() {
        athena athenaVar = this.f42708b;
        if (athenaVar != null) {
            return athenaVar.f42713a - athenaVar.f42714b;
        }
        return 0L;
    }

    public void d() {
        FileInputStream fileInputStream;
        String strTrim;
        try {
            String strI = a.a(AthenaAnalytics.J()).i("base_time");
            com.transsion.athena.taaneh.aethna.a("baseTimeJs = " + strI);
            if (!TextUtils.isEmpty(strI)) {
                this.f42708b = new athena(strI);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/sys/kernel/random/boot_id");
            try {
                byte[] bArr = new byte[1024];
                int i11 = fileInputStream.read(bArr);
                if (i11 > 0) {
                    strTrim = new String(bArr, 0, i11).trim();
                    try {
                        fileInputStream.close();
                    } catch (IOException unused) {
                    }
                } else {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                    strTrim = null;
                }
            } catch (Exception unused3) {
                if (fileInputStream != null) {
                }
                strTrim = null;
                this.f42709c = strTrim;
                if (this.f42708b != null) {
                    return;
                } else {
                    return;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
        this.f42709c = strTrim;
        if (this.f42708b != null || TextUtils.isEmpty(strTrim)) {
            return;
        }
        if (!this.f42709c.equals(this.f42708b.f42715c)) {
            this.f42708b = null;
            a.a(AthenaAnalytics.J()).g("base_time", "");
        } else {
            if (Math.abs((this.f42708b.f42713a + (SystemClock.elapsedRealtime() - this.f42708b.f42714b)) - System.currentTimeMillis()) > 600000) {
                this.f42710d = true;
            }
        }
    }

    public boolean e() {
        return this.f42712f;
    }

    public boolean f() {
        if (this.f42711e > 0 && SystemClock.elapsedRealtime() - this.f42711e > 60000) {
            return false;
        }
        athena athenaVar = this.f42708b;
        return athenaVar == null || !TextUtils.equals(athenaVar.f42715c, this.f42709c);
    }
}
