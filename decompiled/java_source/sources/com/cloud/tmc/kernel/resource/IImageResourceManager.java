package com.cloud.tmc.kernel.resource;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.resource.ImageResourceManager")
public interface IImageResourceManager extends Proxiable {
    List<String> fuzzySearchByVUrl(String str, String str2);

    String generateVUrl(String str, String str2, String str3);

    String generateVUrl(String str, String str2, String str3, boolean z10);

    String getImagePath(String str);

    String getVhost(String str);

    void init(String str);

    void removeByFilePath(String str);

    void removeByVUrl(String str);
}
