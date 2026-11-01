package com.cloud.tmc.integration.defaultImpl;

import android.os.Bundle;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.proxy.PageFactory;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.kernel.utils.BundleUtils;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class DefaultPageFactoryImpl implements PageFactory {
    @Override // com.cloud.tmc.integration.proxy.PageFactory
    public PageNode createPage(App app, String str, String str2, Bundle bundle, Bundle bundle2) {
        return new PageNode(app, str, str2, BundleUtils.clone(bundle), BundleUtils.clone(bundle2));
    }
}
