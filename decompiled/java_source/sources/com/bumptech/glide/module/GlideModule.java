package com.bumptech.glide.module;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface GlideModule extends RegistersComponents, AppliesOptions {
    /* synthetic */ void applyOptions(Context context, GlideBuilder glideBuilder);

    @Override // com.bumptech.glide.module.RegistersComponents
    /* synthetic */ void registerComponents(Context context, Glide glide, Registry registry);
}
