package com.cloud.hisavana.sdk.common;

import androidx.core.content.FileProvider;
import com.cloud.hisavana.sdk.e4;

/* JADX INFO: loaded from: classes.dex */
public class HisavanaFileProvider extends FileProvider {
    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public boolean onCreate() {
        e4.b().d("HisavanaFileProvider", "onCreate");
        return super.onCreate();
    }
}
