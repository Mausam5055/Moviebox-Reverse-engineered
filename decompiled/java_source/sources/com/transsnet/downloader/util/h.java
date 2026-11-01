package com.transsnet.downloader.util;

import com.therouter.TheRouter;
import com.transsion.memberapi.IPremiumApi;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f59938a = new h();

    private h() {
    }

    public final boolean a() {
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            return iPremiumApi.u();
        }
        return false;
    }
}
