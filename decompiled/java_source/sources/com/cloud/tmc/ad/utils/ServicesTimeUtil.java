package com.cloud.tmc.ad.utils;

import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.ad.bean.response.DataDTO;
import com.cloud.tmc.integration.utils.AdxPreferencesHelper;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes3.dex */
public class ServicesTimeUtil {
    public static void saveServicesTime(DataDTO dataDTO) {
        if (dataDTO == null) {
            return;
        }
        try {
            AdxPreferencesHelper.INSTANCE.getInstance().o(Constants.SERVICES_TIME_DIFFERENCE_VALUE, System.currentTimeMillis() - new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").parse(dataDTO.getTime()).getTime());
        } catch (Exception unused) {
        }
    }
}
