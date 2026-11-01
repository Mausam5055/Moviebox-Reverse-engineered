package com.cloud.tmc.integration.resource;

import android.text.TextUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class PackageResourceManager implements IPackageResourceManager {
    private final Map<String, String> vUrl2FilePath = new ConcurrentHashMap(64);
    private final Map<String, String> filePath2VUrl = new ConcurrentHashMap(64);

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
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

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public String generateVUrl(String str, String str2, String str3, String str4) {
        String str5 = getVhost(str2) + str4 + "/" + str3;
        put(str5, str);
        return str5;
    }

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public String getFilePath(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String str3 = this.vUrl2FilePath.get(str2);
        if (!TextUtils.isEmpty(str3)) {
            return str3;
        }
        String strDecode = UrlUtils.decode(str2);
        if (TextUtils.isEmpty(strDecode)) {
            return null;
        }
        String str4 = this.vUrl2FilePath.get(strDecode);
        if (!TextUtils.isEmpty(str4)) {
            return str4;
        }
        String filePath = ((ISubPackageResourceManager) TmcProxy.get(ISubPackageResourceManager.class)).getFilePath(str, str2);
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        return filePath;
    }

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public Map<String, String> getFilePath2VUrlMap() {
        return this.filePath2VUrl;
    }

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public Map<String, String> getVUrl2FilePathMap() {
        return this.vUrl2FilePath;
    }

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public String getVhost(String str) {
        return FileUtil.getVhost(str);
    }

    public void put(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.vUrl2FilePath.put(str, str2);
        this.filePath2VUrl.put(str2, str);
    }

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public void removeByFilePath(String str) {
        if (!TextUtils.isEmpty(str) && this.filePath2VUrl.containsKey(str)) {
            this.vUrl2FilePath.remove(this.filePath2VUrl.remove(str));
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IPackageResourceManager
    public void removeByVUrl(String str) {
        if (!TextUtils.isEmpty(str) && this.vUrl2FilePath.containsKey(str)) {
            this.filePath2VUrl.remove(this.vUrl2FilePath.remove(str));
        }
    }
}
