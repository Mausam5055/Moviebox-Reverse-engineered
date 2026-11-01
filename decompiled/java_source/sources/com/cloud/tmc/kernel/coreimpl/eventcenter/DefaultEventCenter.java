package com.cloud.tmc.kernel.coreimpl.eventcenter;

import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultEventCenter implements IEventCenter {
    private OnDestroyCallback onDestroyCallback;
    private final Map<String, List<IEventSubscriber>> registeredMap = new HashMap(16);

    public interface OnDestroyCallback {
        void onDestroy();
    }

    public DefaultEventCenter(OnDestroyCallback onDestroyCallback) {
        this.onDestroyCallback = onDestroyCallback;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter
    public boolean containsEventKey(String str) {
        return this.registeredMap.containsKey(str);
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter
    public void destroy() {
        this.registeredMap.clear();
        OnDestroyCallback onDestroyCallback = this.onDestroyCallback;
        if (onDestroyCallback != null) {
            onDestroyCallback.onDestroy();
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter
    public void postEvent(String str, IEvent iEvent) {
        List<IEventSubscriber> list;
        if (!this.registeredMap.containsKey(str) || (list = this.registeredMap.get(str)) == null) {
            return;
        }
        for (int i11 = 0; i11 < list.size() && !list.get(i11).onEvent(iEvent); i11++) {
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter
    public void register(String str, IEventSubscriber iEventSubscriber) {
        if (this.registeredMap.get(str) == null) {
            this.registeredMap.put(str, new ArrayList());
        }
        this.registeredMap.get(str).add(iEventSubscriber);
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter
    public void unregister(String str) {
        if (this.registeredMap.get(str) == null) {
            return;
        }
        this.registeredMap.get(str).clear();
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter
    public void unregister(String str, IEventSubscriber iEventSubscriber) {
        if (this.registeredMap.get(str) == null) {
            return;
        }
        this.registeredMap.get(str).remove(iEventSubscriber);
    }
}
