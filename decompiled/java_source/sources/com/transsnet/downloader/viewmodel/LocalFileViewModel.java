package com.transsnet.downloader.viewmodel;

import androidx.p009lifecycle.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class LocalFileViewModel extends MediaBaseViewModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60079d = new androidx.p009lifecycle.b0();

    public static /* synthetic */ void k(LocalFileViewModel localFileViewModel, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        localFileViewModel.j(z10);
    }

    public final androidx.p009lifecycle.b0 i() {
        return this.f60079d;
    }

    public final void j(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new LocalFileViewModel$getOutsideLocalVideoList$1(this, z10, null), 2, null);
    }
}
