package com.cloud.tmc.integration.structure.ui;

import android.view.View;
import com.cloud.tmc.integration.structure.Page;

/* JADX INFO: loaded from: classes3.dex */
public interface PageContainer {
    void attachPage(Page page);

    View getContent();
}
