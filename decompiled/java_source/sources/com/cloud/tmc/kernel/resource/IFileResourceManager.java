package com.cloud.tmc.kernel.resource;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.resource.FileResourceManager")
public interface IFileResourceManager extends Proxiable {
    List<String> fuzzySearchByVUrl(String str, String str2);

    String generateVUrl(String str, String str2, String str3, String str4);

    String generateVUrl(String str, String str2, String str3, String str4, boolean z10);

    String getFilePath(String str, String str2);

    String getVhost(String str);

    void init(String str);

    void removeByFilePath(String str);

    void removeByVUrl(String str);
}
