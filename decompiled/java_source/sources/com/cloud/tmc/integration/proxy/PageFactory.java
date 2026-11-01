package com.cloud.tmc.integration.proxy;

import android.os.Bundle;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.DefaultPageFactoryImpl")
public interface PageFactory extends Proxiable {
    PageNode createPage(App app, String str, String str2, Bundle bundle, Bundle bundle2);
}
