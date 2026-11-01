package com.cloud.tmc.integration.resource;

import android.app.Application;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.utils.FilePathUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class FileResourceManager implements IFileResourceManager {
    private static final String KEY_PERSIST_FILE = "vUrlFile_";
    private static final String KEY_PERSIST_FILE_SIZE = "vUrlFileSize";
    private static final String MAP_SYMBOL = "->";
    private final Map<String, String> vUrl2FilePath = new ConcurrentHashMap(64);
    private final Map<String, String> filePath2VUrl = new ConcurrentHashMap(64);
    private final AtomicInteger vUrlFileSize = new AtomicInteger(0);

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public List<String> fuzzySearchByVUrl(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : this.vUrl2FilePath.entrySet()) {
            String key = entry.getKey();
            if (key.startsWith(str) && key.contains(str2)) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public String generateVUrl(String str, String str2, String str3, String str4) {
        return generateVUrl(str, str2, str3, str4, false);
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public String generateVUrl(String str, String str2, String str3, String str4, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getVhost(str2));
        if (!TextUtils.isEmpty(str4)) {
            if (!str4.startsWith("/")) {
                sb2.append("/");
            }
            sb2.append(str4);
        }
        sb2.append("/");
        sb2.append(str3);
        if (!FilePathUtils.INSTANCE.getDowngradeStatus(str2) && (TmcConstants.TEMP_DATA_PATH.equals(str4) || TmcConstants.LOCAL_DATA_PATH.equals(str4))) {
            TmcLogger.d("FileResourceManager", "generateVUrl " + sb2.toString());
            return sb2.toString();
        }
        String lowerCase = sb2.toString().toLowerCase();
        put(lowerCase, str);
        if (z10) {
            Application application = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplication();
            synchronized (FileResourceManager.class) {
                int iAddAndGet = this.vUrlFileSize.addAndGet(1);
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(application, str2, KEY_PERSIST_FILE_SIZE, iAddAndGet);
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(application, str2, KEY_PERSIST_FILE + iAddAndGet, lowerCase + MAP_SYMBOL + str);
            }
        }
        return lowerCase;
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public String getFilePath(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String realPath = FilePathUtils.INSTANCE.getRealPath(str, str2);
        if (!TextUtils.isEmpty(realPath)) {
            return realPath;
        }
        String str3 = this.vUrl2FilePath.get(str2.toLowerCase());
        if (!TextUtils.isEmpty(str3)) {
            return str3;
        }
        String strDecode = UrlUtils.decode(str2.toLowerCase());
        if (TextUtils.isEmpty(strDecode)) {
            return null;
        }
        String str4 = this.vUrl2FilePath.get(strDecode);
        if (TextUtils.isEmpty(str4)) {
            return null;
        }
        return str4;
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public String getVhost(String str) {
        return FileUtil.getVhost(str);
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public void init(String str) {
        Application application = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplication();
        int i11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(application, str, KEY_PERSIST_FILE_SIZE);
        this.vUrlFileSize.set(i11);
        for (int i12 = 1; i12 <= i11; i12++) {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(application, str, KEY_PERSIST_FILE + i12);
            if (!TextUtils.isEmpty(string) && string != null) {
                String[] strArrSplit = string.split(MAP_SYMBOL);
                if (strArrSplit.length == 2) {
                    this.vUrl2FilePath.put(strArrSplit[0], strArrSplit[1]);
                    this.filePath2VUrl.put(strArrSplit[1], strArrSplit[0]);
                }
            }
        }
    }

    public void put(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.vUrl2FilePath.put(str, str2);
        this.filePath2VUrl.put(str2, str);
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public void removeByFilePath(String str) {
        if (!TextUtils.isEmpty(str) && this.filePath2VUrl.containsKey(str)) {
            this.vUrl2FilePath.remove(this.filePath2VUrl.remove(str));
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IFileResourceManager
    public void removeByVUrl(String str) {
        if (!TextUtils.isEmpty(str) && this.vUrl2FilePath.containsKey(str)) {
            this.filePath2VUrl.remove(this.vUrl2FilePath.remove(str));
        }
    }

    public String specifyVUrl(@NonNull String str, @NonNull String str2, @NonNull String str3, boolean z10) {
        if (!FilePathUtils.INSTANCE.getDowngradeStatus(str3) && (str.contains(TmcConstants.TEMP_DATA_PATH) || str.contains(TmcConstants.LOCAL_DATA_PATH))) {
            return str;
        }
        String lowerCase = str.toLowerCase();
        put(lowerCase, str2);
        if (z10) {
            Application application = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplication();
            synchronized (FileResourceManager.class) {
                int iAddAndGet = this.vUrlFileSize.addAndGet(1);
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(application, str3, KEY_PERSIST_FILE_SIZE, iAddAndGet);
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(application, str3, KEY_PERSIST_FILE + iAddAndGet, lowerCase + MAP_SYMBOL + str2);
            }
        }
        return lowerCase;
    }
}
