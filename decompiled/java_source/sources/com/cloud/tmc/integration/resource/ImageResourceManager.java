package com.cloud.tmc.integration.resource;

import android.app.Application;
import android.text.TextUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class ImageResourceManager implements IImageResourceManager {
    private static final String KEY_PERSIST_IMG = "vUrlImg_";
    private static final String KEY_PERSIST_IMG_SIZE = "vUrlImgSize";
    private static final String MAP_SYMBOL = "->";
    private final Map<String, String> vUrl2ImagePath = new ConcurrentHashMap(64);
    private final Map<String, String> imagePath2VUrl = new ConcurrentHashMap(64);
    private final AtomicInteger vUrlImgSize = new AtomicInteger(0);

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public List<String> fuzzySearchByVUrl(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : this.vUrl2ImagePath.entrySet()) {
            String key = entry.getKey();
            if (key.startsWith(str) && key.contains(str2)) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public String generateVUrl(String str, String str2, String str3) {
        return generateVUrl(str, str2, str3, false);
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public String generateVUrl(String str, String str2, String str3, boolean z10) {
        String str4 = getVhost(str2) + "/" + EncryptUtils.encryptMD5ToString(str) + "/" + str3;
        put(str4, str);
        if (z10) {
            Application application = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplication();
            synchronized (ImageResourceManager.class) {
                int iAddAndGet = this.vUrlImgSize.addAndGet(1);
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(application, str2, KEY_PERSIST_IMG_SIZE, iAddAndGet);
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(application, str2, KEY_PERSIST_IMG + iAddAndGet, str4 + MAP_SYMBOL + str);
            }
        }
        return str4;
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public String getImagePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.vUrl2ImagePath.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String strDecode = UrlUtils.decode(str);
        if (TextUtils.isEmpty(strDecode)) {
            return null;
        }
        String str3 = this.vUrl2ImagePath.get(strDecode);
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        return str3;
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public String getVhost(String str) {
        return FileUtil.getVhost(str);
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public void init(String str) {
        Application application = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplication();
        int i11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(application, str, KEY_PERSIST_IMG_SIZE);
        this.vUrlImgSize.set(i11);
        for (int i12 = 1; i12 <= i11; i12++) {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(application, str, KEY_PERSIST_IMG + i12);
            if (!TextUtils.isEmpty(string) && string != null) {
                String[] strArrSplit = string.split(MAP_SYMBOL);
                if (strArrSplit.length == 2) {
                    this.vUrl2ImagePath.put(strArrSplit[0], strArrSplit[1]);
                    this.imagePath2VUrl.put(strArrSplit[1], strArrSplit[0]);
                }
            }
        }
    }

    public void put(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.vUrl2ImagePath.put(str, str2);
        this.imagePath2VUrl.put(str2, str);
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public void removeByFilePath(String str) {
        if (!TextUtils.isEmpty(str) && this.imagePath2VUrl.containsKey(str)) {
            this.vUrl2ImagePath.remove(this.imagePath2VUrl.remove(str));
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IImageResourceManager
    public void removeByVUrl(String str) {
        if (!TextUtils.isEmpty(str) && this.vUrl2ImagePath.containsKey(str)) {
            this.imagePath2VUrl.remove(this.vUrl2ImagePath.remove(str));
        }
    }
}
