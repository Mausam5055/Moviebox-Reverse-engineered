package com.cloud.tmc.kernel.security.internal;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.security.AccessControlException;
import com.cloud.tmc.kernel.security.AccessControlManagement;
import com.cloud.tmc.kernel.security.AccessController;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Guard;
import com.cloud.tmc.kernel.security.Permission;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultAccessController implements AccessController {
    private static final String TAG = "TmcKernel:Permission";
    private AccessControlManagement accessControlManagement;

    private void apply(Accessor accessor, List<Permission> list, @Nullable final AccessController.ApplyCallback applyCallback) {
        accessor.inquiry(list, new Accessor.InquiryCallback() { // from class: com.cloud.tmc.kernel.security.internal.DefaultAccessController.1
            @Override // com.cloud.tmc.kernel.security.Accessor.InquiryCallback
            public void onComplete(List<? extends Permission> list2, List<? extends Permission> list3) {
                if (applyCallback != null) {
                    if (list3 == null || list3.isEmpty()) {
                        applyCallback.onSuccess();
                    } else {
                        applyCallback.onFailure(list3);
                    }
                }
            }
        });
    }

    private boolean checkGroup(Permission permission, Group group) throws AccessControlException {
        List<? extends Permission> listPermissions = group.permissions();
        if (listPermissions == null) {
            return false;
        }
        Iterator<? extends Permission> it = listPermissions.iterator();
        while (it.hasNext()) {
            if (it.next().authority().equalsIgnoreCase(permission.authority())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.security.AccessController
    public boolean check(Accessor accessor, List<? extends Guard> list, @Nullable AccessController.ApplyCallback applyCallback) throws AccessControlException {
        return false;
    }

    @Override // com.cloud.tmc.kernel.security.AccessController
    public void setAccessControlManagement(AccessControlManagement accessControlManagement) {
        this.accessControlManagement = accessControlManagement;
    }
}
