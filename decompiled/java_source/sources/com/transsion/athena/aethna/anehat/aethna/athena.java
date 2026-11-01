package com.transsion.athena.aethna.anehat.aethna;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.athena.anateh.anehat;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.anateh;
import com.transsion.ga.i;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile athena f42544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f42545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f42546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f42547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f42548e;

    private athena() {
    }

    private boolean a() {
        if (!this.f42546c) {
            File file = new File(this.f42547d);
            try {
                if (file.exists()) {
                    this.f42546c = true;
                } else {
                    this.f42546c = file.mkdirs();
                }
            } catch (Exception e11) {
                aethna.b(Log.getStackTraceString(e11));
            }
        }
        return this.f42546c;
    }

    public static athena b() {
        if (f42544a == null) {
            synchronized (athena.class) {
                try {
                    if (f42544a == null) {
                        f42544a = new athena();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42544a;
    }

    public void a(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(AthenaAnalytics.J().getFilesDir());
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append(str);
        this.f42547d = sb2.toString();
        if (!a()) {
            this.f42547d = AthenaAnalytics.J().getFilesDir().getPath();
        }
        this.f42548e = this.f42547d + str2 + "remote_config.cfg";
    }

    public void a(byte[] bArr) {
        this.f42545b = bArr;
    }

    public void b(String str) throws Throwable {
        if (!TextUtils.isEmpty(this.f42547d) && a()) {
            File file = new File(this.f42548e);
            try {
                anehat.a(file, str, this.f42545b);
            } catch (Exception e11) {
                i.a().c(new anateh("bufferSave", e11));
                try {
                    if (file.isDirectory()) {
                        com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), this.f42548e);
                    }
                } catch (Exception unused) {
                    e11.printStackTrace();
                }
            }
        }
    }

    @Nullable
    public String c() throws Throwable {
        if (!TextUtils.isEmpty(this.f42547d) && a()) {
            File file = new File(this.f42548e);
            try {
                return anehat.a(file, this.f42545b);
            } catch (Exception e11) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putString("e", e11.getClass().getSimpleName());
                    bundle.putString("pwd", com.transsion.athena.config.data.model.anehat.c(this.f42545b));
                    bundle.putLong("len", file.length());
                    i.a().c(new anateh("bufferRead", bundle));
                    com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J(), file);
                } catch (Exception unused) {
                    e11.printStackTrace();
                }
            }
        }
        return null;
    }
}
