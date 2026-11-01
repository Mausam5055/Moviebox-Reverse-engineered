package com.cloud.tmc.kernel.proxy.env;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.TmcApplicationContextGetter")
public interface IApplicationContextGetter extends Proxiable {
    @NonNull
    Application getApplication();

    @NonNull
    Context getApplicationContext();
}
