package com.cloud.tmc.miniapp.prepare.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.prepare.impl.TmcAppInfoManagerImpl")
public interface TmcAppInfoManager extends Proxiable {
    void delectOldVersionFilesAndUpdate(@NonNull Context context, @NonNull AppModel appModel);

    void deleteOldVersionFiles(@NonNull Context context, @NonNull AppModel appModel, boolean z10);

    @Nullable
    String findUrlMappedAppId(@NonNull Context context, String str);

    AppInfoModel getAppInfoModel(@NonNull Context context, @NonNull AppInfoQuery appInfoQuery);

    AppModel getAppModel(@NonNull Context context, @NonNull AppInfoQuery appInfoQuery);

    @Nullable
    AppInfoModel getAppModelFromCDN(@NonNull Context context, @NonNull String str);

    @Nullable
    AppInfoModel getAppModelFromConfig(@NonNull Context context, @NonNull String str);

    AppModel getAppModelFromDev(@NonNull Context context, @NonNull String str);

    @Nullable
    AppModel getAppModelFromOffline(@NonNull Context context, @NonNull String str, @NonNull String str2);

    AppModel getAppModelFromOld(@NonNull Context context, @NonNull String str);

    AppModel getAppModelFromPackage(@NonNull Context context, @NonNull String str);

    AppModel getAppModelFromPre(@NonNull Context context, @NonNull String str);

    AppModel getAppModelFromUsed(@NonNull Context context, @NonNull String str);

    AppModel getAppWarmupModel(@NonNull Context context, @NonNull AppInfoQuery appInfoQuery);

    long getLastUpdateTime(@NonNull Context context, @NonNull String str);

    boolean getPreUnzipStatus(@NonNull Context context, String str);

    AppModel getSubpackageAppModelFromUsed(@NonNull Context context, @NonNull String str);

    void refreshUpdateTime(@NonNull Context context, @NonNull String str, long j11);

    void resetAppPreModel(@NonNull Context context, @NonNull String str);

    void updateAppModel(@NonNull Context context, AppModel appModel, String str);

    void updateAppWarmupModel(@NonNull Context context, AppModel appModel);

    void updateOldVersion(@NonNull Context context, @NonNull AppModel appModel, String str);

    void updatePreUnzipStatus(@NonNull Context context, String str, boolean z10);
}
