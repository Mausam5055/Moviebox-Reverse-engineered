package com.cloud.tmc.integration.proxy;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface PathProxy extends Proxiable {
    String getAppBaseDownloadPath(@Nullable String str);

    String getAppBaseFilePath(@Nullable String str);

    String getBaseMiniAppPath(@Nullable String str);

    String getDownloadPath(@NonNull AppModel appModel);

    String getDownloadPath(@NonNull AppModel appModel, String str);

    String getIDEDevelopPath(@NonNull AppModel appModel);

    String getRootDownloadPath();

    String getRootFilePath();

    String getRootIDEDevelopPath();

    String getRootMiniAppPath();

    String getRootSOPath();

    String getRootStoragePath();

    String getTarPath(@NonNull AppModel appModel);

    String getTarPath(String str, String str2, String str3);

    String getTarUnCompressPath(@NonNull AppModel appModel);

    String getTarUnCompressPath(@NonNull AppModel appModel, String str);

    String getZipPath(@NonNull AppModel appModel);

    String getZipUnCompressPath(@NonNull AppModel appModel);

    String getZipUnCompressPath(String str, String str2);
}
