package com.cloud.tmc.kernel.proxy.eventcenter;

/* JADX INFO: loaded from: classes3.dex */
public interface IEventCenter {
    boolean containsEventKey(String str);

    void destroy();

    void postEvent(String str, IEvent iEvent);

    void register(String str, IEventSubscriber iEventSubscriber);

    void unregister(String str);

    void unregister(String str, IEventSubscriber iEventSubscriber);
}
