package com.cloud.hisavana.sdk.data.bean.request;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ConfigRequestBody {
    public ApplicationDTO application;
    public String applicationId;
    public boolean ascribeEnable;
    public boolean codeSeatFilterEnable;
    public String[] codeSeatFilterIds;
    public List<String> customKeys;
    public DeviceDTO device;
    public boolean testRequest;
    public UserDTO user;
}
