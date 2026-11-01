package com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

/* JADX INFO: loaded from: classes2.dex */
class TKC$1 implements Runnable {
    final /* synthetic */ sP.d Sj;
    final /* synthetic */ sP.e sP;

    TKC$1(sP.e eVar, sP.d dVar) {
        this.Sj = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.sP.f20273b == null) {
                sP.e eVar = this.sP;
                eVar.f20273b = eVar.f20272a.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
            } else {
                this.sP.f20273b.clearBindings();
            }
            this.sP.f20273b.bindString(1, this.Sj.f20267a);
            this.sP.f20273b.bindString(2, this.Sj.f20268b);
            this.sP.f20273b.bindLong(3, this.Sj.f20269c);
            this.sP.f20273b.bindLong(4, this.Sj.f20270d);
            this.sP.f20273b.bindString(5, this.Sj.f20271e);
            this.sP.f20273b.executeInsert();
        } catch (Throwable unused) {
        }
    }
}
