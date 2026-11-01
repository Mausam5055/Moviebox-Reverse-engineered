package com.cloud.tmc.kernel.proxy.eventcenter;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface IEventCenterFactory extends Proxiable {
    void clearEventCenterInstance(Node node);

    IEvent createEvent(String str);

    @Nullable
    IEventCenter getEventCenterInstance(Node node);
}
