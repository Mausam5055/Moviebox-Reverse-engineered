package com.cloud.tmc.kernel.coreimpl.eventcenter;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultEventCenterFactory implements IEventCenterFactory {
    private static Map<String, DefaultEventCenter> node2EventCenterMap = new HashMap(16);

    @Nullable
    private static DefaultEventCenter getInstance(final String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (node2EventCenterMap.get(str) == null) {
            synchronized (DefaultEventCenter.class) {
                try {
                    if (node2EventCenterMap.get(str) == null) {
                        node2EventCenterMap.put(str, new DefaultEventCenter(new DefaultEventCenter.OnDestroyCallback() { // from class: com.cloud.tmc.kernel.coreimpl.eventcenter.a
                            @Override // com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEventCenter.OnDestroyCallback
                            public final void onDestroy() {
                                DefaultEventCenterFactory.lambda$getInstance$0(str);
                            }
                        }));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return node2EventCenterMap.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getInstance$0(String str) {
        node2EventCenterMap.remove(str);
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory
    public void clearEventCenterInstance(Node node) {
        if (node == null) {
            return;
        }
        synchronized (DefaultEventCenter.class) {
            try {
                DefaultEventCenter defaultEventCenterRemove = node2EventCenterMap.remove(node.getNodeId() + "");
                if (defaultEventCenterRemove != null) {
                    defaultEventCenterRemove.destroy();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory
    public IEvent createEvent(String str) {
        return new DefaultEvent(str);
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory
    @Nullable
    public IEventCenter getEventCenterInstance(Node node) {
        if (node == null) {
            return null;
        }
        return getInstance(node.getNodeId() + "");
    }
}
