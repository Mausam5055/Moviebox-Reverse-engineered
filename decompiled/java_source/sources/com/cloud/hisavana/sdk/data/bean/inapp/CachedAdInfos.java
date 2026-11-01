package com.cloud.hisavana.sdk.data.bean.inapp;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CachedAdInfos {
    private final String adStatusStr;
    private final List<AdsDTO> adsDTOList;

    public CachedAdInfos(List<AdsDTO> list, String str) {
        this.adStatusStr = str;
        this.adsDTOList = list;
    }

    public String getAdStatusStr() {
        return this.adStatusStr;
    }

    public List<AdsDTO> getAdsDTOList() {
        return this.adsDTOList;
    }
}
