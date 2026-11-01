package com.tencent.tinker.lib.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractResultService extends IntentService {
    public AbstractResultService() {
        super("TinkerResultService");
    }

    public static void b(Context context, PatchResult patchResult, String str) {
        if (str == null) {
            throw new TinkerRuntimeException("resultServiceClass is null.");
        }
        try {
            Intent intent = new Intent();
            intent.setClassName(context, str);
            intent.putExtra("result_extra", patchResult);
            context.startService(intent);
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.AbstractResultService", "run result service fail, exception:" + th2, new Object[0]);
        }
    }

    public abstract void a(PatchResult patchResult);

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            ShareTinkerLog.e("Tinker.AbstractResultService", "AbstractResultService received a null intent, ignoring.", new Object[0]);
        } else {
            a((PatchResult) ShareIntentUtil.getSerializableExtra(intent, "result_extra"));
        }
    }
}
