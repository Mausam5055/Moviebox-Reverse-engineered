package com.cloud.tmc.integration.structure;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.util.Stack;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.structure.impl.AppManagerImpl")
public interface AppManager extends Node, Proxiable {
    void exitApp(App app);

    App findApp(long j11);

    @Nullable
    App findApp(String str);

    App findAppByToken(long j11);

    Stack<App> getAppStack();

    App startApp(String str, Bundle bundle, Bundle bundle2);
}
