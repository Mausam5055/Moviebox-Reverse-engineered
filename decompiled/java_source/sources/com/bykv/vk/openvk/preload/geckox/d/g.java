package com.bykv.vk.openvk.preload.geckox.d;

import android.net.Uri;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.k;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g extends k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f20681d = 0;

    @Override // com.bykv.vk.openvk.preload.b.k
    protected final /* synthetic */ Pair<Uri, UpdatePackage> a() {
        UpdatePackage updatePackageG = g();
        List<String> urlList = updatePackageG.getFullPackage().getUrlList();
        int i11 = this.f20681d;
        this.f20681d = i11 + 1;
        return new Pair<>(Uri.parse(urlList.get(i11)), updatePackageG);
    }

    @Override // com.bykv.vk.openvk.preload.b.k
    protected final boolean a(Throwable th2) {
        GeckoLogger.w("gecko-debug-tag", "full update failed and retry", th2);
        if (this.f20681d >= g().getFullPackage().getUrlList().size()) {
            return false;
        }
        return (th2 instanceof com.bykv.vk.openvk.preload.geckox.b.a) || (th2 instanceof com.bykv.vk.openvk.preload.geckox.b.b);
    }
}
