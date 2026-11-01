package com.cloud.tmc.kernel.security;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface Accessor {

    public interface InquiryCallback {
        void onComplete(List<? extends Permission> list, List<? extends Permission> list2);
    }

    Group getGroup();

    void inquiry(List<? extends Permission> list, InquiryCallback inquiryCallback);

    List<Permission> usePermissions();
}
