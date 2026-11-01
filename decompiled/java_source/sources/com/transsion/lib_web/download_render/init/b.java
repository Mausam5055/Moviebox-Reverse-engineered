package com.transsion.lib_web.download_render.init;

import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.data.PageListData;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements c {
    @Override // com.transsion.lib_web.download_render.init.c
    public void invoke() {
        PageListData pageListDataL = com.transsion.lib_web.download_render.c.f46167a.l();
        if (pageListDataL == null) {
            return;
        }
        FileDownloadTaskManager.f46147a.g(pageListDataL.getH5Pages());
    }
}
