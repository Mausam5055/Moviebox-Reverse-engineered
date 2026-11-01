package com.mbridge.msdk.dycreator.binding.base;

import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewdata.base.a;

/* JADX INFO: loaded from: classes5.dex */
public class ActionData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f34758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EAction f34759b;

    public a getBaseViewData() {
        return this.f34758a;
    }

    public EAction geteAction() {
        return this.f34759b;
    }

    public void setBaseViewData(a aVar) {
        this.f34758a = aVar;
    }

    public void seteAction(EAction eAction) {
        this.f34759b = eAction;
    }
}
