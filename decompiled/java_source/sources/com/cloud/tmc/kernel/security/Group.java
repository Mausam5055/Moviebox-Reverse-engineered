package com.cloud.tmc.kernel.security;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface Group {
    void assignPermissions(List<? extends Permission> list);

    String description();

    String groupName();

    List<? extends Permission> permissions();
}
