package com.cloud.tmc.integration.proxy;

import androidx.annotation.NonNull;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface FileProxy extends Proxiable {
    boolean createBaseDirectory(@NonNull AppModel appModel);

    boolean createSoDirectory();

    void delectDownloadFileForVersion(@NonNull AppModel appModel);

    void deleteAllFileForVersion(@NonNull AppModel appModel);

    void deleteAllFileForVersion(@NonNull AppModel appModel, String str);

    void deleteDownloadFileForVersion(@NonNull AppModel appModel, String str);

    void deleteFile(String str);

    long fileTotalSize(@NonNull File file);

    List<File> listFilesInDir(@NonNull AppModel appModel);

    List<File> listFilesInDir(@NonNull AppModel appModel, String str);

    List<File> listFilesInDir(@NonNull String str);

    String readFile2String(@NonNull String str);
}
