package com.transsion.athena.hatnea;

import android.text.TextUtils;
import com.transsion.ga.AthenaAnalytics;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class taaneh extends anateh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f42792c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f42793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.athena.config.data.model.aethna f42794e;

    public taaneh(long j11, File file, com.transsion.athena.config.data.model.aethna aethnaVar) {
        this.f42792c = j11;
        this.f42793d = file;
        this.f42794e = aethnaVar;
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected void a() {
        String strA;
        int length;
        File file = this.f42793d;
        if (file != null && file.exists() && this.f42793d.isFile() && this.f42793d.getName().contains("upload")) {
            File file2 = this.f42793d;
            try {
                strA = !file2.exists() ? "" : new com.transsion.athena.anateh.aethna(file2.getPath()).a();
            } catch (Exception unused) {
            }
            length = strA.split("\n").length;
        } else {
            strA = null;
            length = 0;
        }
        if (TextUtils.isEmpty(strA) || length <= 0) {
            return;
        }
        if (anehat.a(this.f42792c, strA.getBytes(), length, this.f42794e).f42776a != 0) {
            com.transsion.athena.taaneh.aethna.b("PostEventFileTask requestByPost error");
        } else if (this.f42793d != null) {
            com.transsion.athena.taaneh.aethna.c("PostEventFileTask lines : %d, deleteFile : %s", Long.valueOf(this.f42792c), Integer.valueOf(length), Boolean.valueOf(com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J(), this.f42793d)));
        }
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected String c() {
        return "Upload-File";
    }
}
