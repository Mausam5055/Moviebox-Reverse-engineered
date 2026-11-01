package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class GeneratedAppGlideModule extends AppGlideModule {
    GeneratedAppGlideModule() {
    }

    @NonNull
    Set<Class<?>> getExcludedModuleClasses() {
        return new HashSet();
    }

    @Nullable
    RequestManagerRetriever.RequestManagerFactory getRequestManagerFactory() {
        return null;
    }
}
