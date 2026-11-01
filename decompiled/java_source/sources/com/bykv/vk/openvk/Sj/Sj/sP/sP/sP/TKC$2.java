package com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

/* JADX INFO: loaded from: classes2.dex */
class TKC$2 implements Runnable {
    final /* synthetic */ int Sj;
    final /* synthetic */ sP.e sP;

    TKC$2(sP.e eVar, int i11) {
        this.Sj = i11;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.sP.f20272a.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(this.Sj)});
        } catch (Throwable unused) {
        }
    }
}
