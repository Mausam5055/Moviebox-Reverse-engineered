package com.cloud.hisavana.sdk.data.bean.request;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdxRequestBody {
    public int apiType;
    public ApplicationDTO application;
    public String applicationId;
    public boolean ascribeEnable;
    public int cachedAdCount;
    public CodeSeatDTO codeSeat;
    public List<String> customKeys;
    public boolean defaultAd;
    public DeviceDTO device;
    public boolean offlineAd;
    public String requestId;
    public Boolean testRequest;
    public int turnOffPerAds;
    public UserDTO user;

    public static AdxRequestBody copy(AdxRequestBody adxRequestBody) {
        AdxRequestBody adxRequestBody2 = new AdxRequestBody();
        adxRequestBody2.application = adxRequestBody == null ? null : adxRequestBody.application;
        adxRequestBody2.device = adxRequestBody != null ? adxRequestBody.device : null;
        CodeSeatDTO codeSeatDTO = new CodeSeatDTO();
        codeSeatDTO.setVideo(new SdkVideo());
        adxRequestBody2.codeSeat = codeSeatDTO;
        adxRequestBody2.user = new UserDTO();
        return adxRequestBody2;
    }
}
