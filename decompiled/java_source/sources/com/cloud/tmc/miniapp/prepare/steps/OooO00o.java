package com.cloud.tmc.miniapp.prepare.steps;

import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class OooO00o implements o0OoOo0 {
    public String OooO00o;
    public TmcAppInfoManager OooO0O0;
    public TmcResourceManager OooO0OO;
    public PathProxy OooO0Oo;
    public FileProxy OooO0o0;
    public boolean OooO0o = false;
    public boolean OooO0oO = false;

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public boolean OooO00o() {
        return this.OooO0oO;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        this.OooO0O0 = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);
        this.OooO0OO = (TmcResourceManager) TmcProxy.get(TmcResourceManager.class);
        this.OooO0Oo = (PathProxy) TmcProxy.get(PathProxy.class);
        this.OooO0o0 = (FileProxy) TmcProxy.get(FileProxy.class);
        if (this.OooO0O0 == null) {
            throw new PrepareException("0", "ERROR_UNKNOWN with appInfoManager == null");
        }
        if (prepareContext == null) {
            throw new PrepareException("0", "ERROR_UNKNOWN with context == null");
        }
        if (this.OooO0o) {
            return;
        }
        this.OooO0o = true;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("Tmcresource:PrepareStep_");
        sbOooO00o.append(prepareContext.getAppId());
        sbOooO00o.append("_");
        sbOooO00o.append(OooO0O0());
        this.OooO00o = sbOooO00o.toString();
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void finish() {
        this.OooO0oO = true;
    }
}
