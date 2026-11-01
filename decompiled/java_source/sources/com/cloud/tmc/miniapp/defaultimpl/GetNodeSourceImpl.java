package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.IGetNodeSource;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.miniapp.ui.MiniFragment;
import com.cloud.tmc.miniapp.ui.MiniH5Fragment;
import com.cloud.tmc.miniapp.ui.MiniShellFragment;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class GetNodeSourceImpl implements IGetNodeSource {
    @Override // com.cloud.tmc.kernel.node.IGetNodeSource
    public String getNodeSource(Node node) {
        Intrinsics.h(node, "node");
        try {
            if (node instanceof Page) {
                PageContext pageContext = ((Page) node).getPageContext();
                if (pageContext instanceof MiniFragment) {
                    return TmcConstants.PAGE_NORMAL;
                }
                if (pageContext instanceof MiniH5Fragment) {
                    return TmcConstants.PAGE_H5_SHELL;
                }
                return pageContext instanceof MiniShellFragment ? TmcConstants.PAGE_MINI_SHELL : TmcConstants.PAGE_OTHER;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TmcConstants.TAG, th2.getMessage(), th2);
        }
        return TmcConstants.PAGE_OTHER;
    }
}
