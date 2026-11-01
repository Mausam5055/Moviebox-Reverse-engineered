package com.transsion.postdetail.shorttv.factory;

import android.content.Context;
import android.content.Intent;
import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements qs.i {
    private final ILoginApi c() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    @Override // qs.i
    public boolean a() {
        ILoginApi iLoginApiC = c();
        return iLoginApiC != null && iLoginApiC.a();
    }

    @Override // qs.i
    public Intent b(Context context) {
        Intrinsics.h(context, "context");
        ILoginApi iLoginApiC = c();
        if (iLoginApiC != null) {
            return iLoginApiC.o(context);
        }
        return null;
    }

    @Override // qs.i
    public String getUserId() {
        UserInfo userInfoI;
        ILoginApi iLoginApiC = c();
        if (iLoginApiC == null || (userInfoI = iLoginApiC.i()) == null) {
            return null;
        }
        return userInfoI.getUserId();
    }
}
