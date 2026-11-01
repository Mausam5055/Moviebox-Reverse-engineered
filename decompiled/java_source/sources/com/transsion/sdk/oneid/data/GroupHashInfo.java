package com.transsion.sdk.oneid.data;

import com.transsion.sdk.oneid.b;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GroupHashInfo extends OneBaseInfo implements Serializable {
    public String device_hash;
    public String dids_hash;
    public String env_hash;
    public String fp_hash;
    public String pkg_hash;
    public String rom_hash;
    public String user_hash;
    public String vaid;

    public GroupHashInfo(GroupFpInfo groupFpInfo) {
        this.vaid = "";
        this.dids_hash = "";
        this.user_hash = "";
        this.pkg_hash = "";
        this.env_hash = "";
        this.device_hash = "";
        this.fp_hash = "";
        this.rom_hash = "";
        this.vaid = groupFpInfo.vaid;
        this.dids_hash = b.g(groupFpInfo.dids.toString());
        this.user_hash = b.g(groupFpInfo.user.toString());
        this.pkg_hash = b.g(groupFpInfo.pkg.toString());
        this.env_hash = b.g(groupFpInfo.env.toString());
        this.device_hash = b.g(groupFpInfo.device.toString());
        this.fp_hash = b.g(groupFpInfo.f51920fp.toString());
        this.rom_hash = b.g(groupFpInfo.rom.toString());
    }

    public void updateDidsHash(UniqueIdInfo uniqueIdInfo) {
        this.dids_hash = b.g(uniqueIdInfo.toString());
    }
}
