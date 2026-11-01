package com.transsion.push.service;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Bundle;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;

/* JADX INFO: loaded from: classes.dex */
public class JobHandleService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        PushLogUtils.LOG.g("onStartJob JobHandleService");
        PushManager.getInstance().init(getApplicationContext());
        Bundle bundle = new Bundle();
        bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, PushConstants.PUSH_SERVICE_TYPE_SYNC_CONFIG);
        ServiceUtils.startTargetIntentService(getApplicationContext(), bundle);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
