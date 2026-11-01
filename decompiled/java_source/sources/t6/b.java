package t6;

import com.cloud.h5update.bean.UpdateEntity;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public interface b {
    void onDownloadProcess(String str, long j11, long j12);

    void onError(String str, int i11, String str2);

    boolean onGetEntity(UpdateEntity updateEntity);

    void onNoNeedDownload(String str);

    void onUnZipDownloadFinish(String str, String str2, File file);

    void onZipDownloadCancel(String str);

    void onZipDownloadFinish(String str);

    void onZipDownloadStart(String str);

    boolean onZipDownloaded(String str);

    boolean onZipTryDownload(String str, String str2, String str3);
}
