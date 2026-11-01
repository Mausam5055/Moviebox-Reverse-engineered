package com.cloud.tmc.kernel.extension;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.extension.registry.ExtensionMetaInfo;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.remote.RemoteController;
import java.security.AccessController;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface TmcManifest {

    public static class BridgeExtensionManifest {
        ExtensionMetaInfo extensionMetaInfo;
        boolean isRawType;
        public Class<? extends Scope> scope;
        public Class<? extends BridgeExtension> target;

        private BridgeExtensionManifest() {
        }

        public static BridgeExtensionManifest make(Class<? extends BridgeExtension> cls) {
            return make(cls, null);
        }

        public static BridgeExtensionManifest make(Class<? extends BridgeExtension> cls, Class<? extends Scope> cls2) {
            BridgeExtensionManifest bridgeExtensionManifest = new BridgeExtensionManifest();
            bridgeExtensionManifest.target = cls;
            bridgeExtensionManifest.scope = cls2;
            return bridgeExtensionManifest;
        }

        public static BridgeExtensionManifest makeRaw(String str, String str2, List<String> list) {
            BridgeExtensionManifest bridgeExtensionManifest = new BridgeExtensionManifest();
            bridgeExtensionManifest.isRawType = true;
            bridgeExtensionManifest.extensionMetaInfo = new ExtensionMetaInfo(str, str2, list, (Class<? extends Scope>) null, ExtensionType.BRIDGE, true);
            return bridgeExtensionManifest;
        }

        public static BridgeExtensionManifest makeRaw(String str, String str2, List<String> list, Class<? extends Scope> cls) {
            BridgeExtensionManifest bridgeExtensionManifest = new BridgeExtensionManifest();
            bridgeExtensionManifest.isRawType = true;
            bridgeExtensionManifest.extensionMetaInfo = new ExtensionMetaInfo(str, str2, list, cls, ExtensionType.BRIDGE, true);
            return bridgeExtensionManifest;
        }

        public String toString() {
            return "BridgeExtensionManifest{target=" + this.target + ", scope=" + this.scope + '}';
        }
    }

    public interface IProxyManifest {
    }

    public static class LazyProxyManifest<T extends Proxiable> implements IProxyManifest {
        TmcProxy.LazyGetter<T> implObject;
        Class<T> proxiableClass;

        public LazyProxyManifest(Class<T> cls, TmcProxy.LazyGetter<T> lazyGetter) {
            TmcLogger.d("new LazyProxyManifest " + cls);
            this.proxiableClass = cls;
            this.implObject = lazyGetter;
        }

        public String toString() {
            return "LazyProxyManifest{proxiableClass=" + this.proxiableClass + ", implObject=" + this.implObject + '}';
        }
    }

    @Deprecated
    public static class ProxyManifest implements IProxyManifest {
        Proxiable implObject;
        Class<? extends Proxiable> proxiableClass;

        public ProxyManifest(Class<? extends Proxiable> cls, Proxiable proxiable) {
            TmcLogger.d("new ProxyManifest " + cls);
            this.proxiableClass = cls;
            this.implObject = proxiable;
        }

        public String toString() {
            return "ProxyManifest{proxiableClass=" + this.proxiableClass + ", implObject=" + this.implObject + '}';
        }
    }

    public static class ServiceBeanManifest<T> {
        Class<T> beanClass;
        TmcProxy.LazyGetter<T> beanObject;

        public ServiceBeanManifest(Class<T> cls, TmcProxy.LazyGetter<T> lazyGetter) {
            this.beanClass = cls;
            this.beanObject = lazyGetter;
        }
    }

    @Nullable
    AccessController getAccessController();

    List<BridgeExtensionManifest> getBridgeExtensions();

    List<ExtensionMetaInfo> getExtensions();

    List<IProxyManifest> getProxies();

    @Nullable
    RemoteController getRemoteController();

    List<ServiceBeanManifest> getServiceBeans(ExtensionManager extensionManager);
}
