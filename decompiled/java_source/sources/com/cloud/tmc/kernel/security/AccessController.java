package com.cloud.tmc.kernel.security;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface AccessController {

    public interface ApplyCallback {
        void onFailure(List<? extends Permission> list);

        void onSuccess();
    }

    boolean check(Accessor accessor, List<? extends Guard> list, @Nullable ApplyCallback applyCallback) throws AccessControlException;

    void setAccessControlManagement(AccessControlManagement accessControlManagement);
}
