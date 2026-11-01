package com.mbridge.msdk.dycreator.binding.response;

import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewdata.base.a;

/* JADX INFO: loaded from: classes5.dex */
public class SplashResData extends BaseRespData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f34761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EAction f34762b;

    public a getBaseViewData() {
        return this.f34761a;
    }

    public EAction geteAction() {
        return this.f34762b;
    }

    public void setBaseViewData(a aVar) {
        this.f34761a = aVar;
    }

    public void seteAction(EAction eAction) {
        this.f34762b = eAction;
    }
}
