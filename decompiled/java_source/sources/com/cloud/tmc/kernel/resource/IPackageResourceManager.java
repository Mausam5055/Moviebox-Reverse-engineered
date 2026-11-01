package com.cloud.tmc.kernel.resource;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.resource.PackageResourceManager")
public interface IPackageResourceManager extends Proxiable {
    List<String> fuzzySearchByVUrl(String str, String str2);

    String generateVUrl(String str, String str2, String str3, String str4);

    String getFilePath(String str, String str2);

    Map<String, String> getFilePath2VUrlMap();

    Map<String, String> getVUrl2FilePathMap();

    String getVhost(String str);

    void removeByFilePath(String str);

    void removeByVUrl(String str);
}
