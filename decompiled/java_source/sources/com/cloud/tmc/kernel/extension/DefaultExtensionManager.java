package com.cloud.tmc.kernel.extension;

import com.cloud.tmc.kernel.extension.action.ActionMeta;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.node.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultExtensionManager implements ExtensionManager {
    private static final String TAG = "TmcKernel:ExtensionManager";
    private static ExtensionCreator sExtensionCreator;
    private ExtensionRegistry mExtensionRegistry;
    private final Map<Class<? extends Extension>, ExtensionFilter> mExtensionFilterMap = new ConcurrentHashMap();
    private final Map<Class<? extends Extension>, Comparator> mExtensionSorterMap = new ConcurrentHashMap();
    private final Map<String, Extension> mSingletonExtensionMap = new HashMap();
    private final Map<Node, Map<String, Extension>> mNodeExtensionMap = new HashMap();
    private final Map<Node, Map<Class<? extends Extension>, List<Extension>>> mNodeExtensionDynamicMap = new HashMap();

    public interface ExtensionCreator {
        Extension createExtensionInstance(Class<? extends Extension> cls);
    }

    public DefaultExtensionManager(ExtensionRegistry extensionRegistry) {
        this.mExtensionRegistry = extensionRegistry;
    }

    private static Extension createExtensionInstance(Class<? extends Extension> cls) throws IllegalAccessException, InstantiationException {
        TmcLogger.d(TAG, "createExtensionInstance " + cls.getName());
        ExtensionCreator extensionCreator = sExtensionCreator;
        Extension extensionCreateExtensionInstance = extensionCreator != null ? extensionCreator.createExtensionInstance(cls) : cls.newInstance();
        extensionCreateExtensionInstance.onInitialized();
        return extensionCreateExtensionInstance;
    }

    private synchronized List<? extends Extension> findExtensions(Node node, Class<? extends Extension> cls) {
        Extension extension;
        try {
            List<Class<? extends Extension>> listFindExtensions = this.mExtensionRegistry.findExtensions(cls.getName());
            if (listFindExtensions == null) {
                return null;
            }
            LinkedList linkedList = new LinkedList();
            for (Class<? extends Extension> cls2 : listFindExtensions) {
                Class<? extends Scope> scope = this.mExtensionRegistry.getScope(cls2);
                if (scope == null) {
                    Extension extension2 = getExtension(this.mSingletonExtensionMap, cls2);
                    if (extension2 != null) {
                        linkedList.add(extension2);
                    }
                } else {
                    Node parentNode = node;
                    while (parentNode != null && !scope.isAssignableFrom(parentNode.getClass())) {
                        parentNode = parentNode.getParentNode();
                    }
                    if (parentNode != null && (extension = getExtension(this.mNodeExtensionMap.get(parentNode), cls2)) != null) {
                        linkedList.add(extension);
                    }
                }
            }
            return linkedList;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private List<Extension> getDynamicExtensionByPoint(Node node, Class<? extends Extension> cls) {
        List<Extension> list;
        ArrayList arrayList = new ArrayList();
        while (node != null) {
            if (this.mNodeExtensionDynamicMap.get(node) != null && (list = this.mNodeExtensionDynamicMap.get(node).get(cls)) != null) {
                arrayList.addAll(list);
            }
            node = node.getParentNode();
        }
        return arrayList;
    }

    private static Extension getExtension(Map<String, Extension> map, Class<? extends Extension> cls) {
        if (map == null || cls == null) {
            return null;
        }
        Extension extensionCreateExtensionInstance = map.get(cls.getName());
        if (extensionCreateExtensionInstance != null) {
            return extensionCreateExtensionInstance;
        }
        try {
            extensionCreateExtensionInstance = createExtensionInstance(cls);
            map.put(cls.getName(), extensionCreateExtensionInstance);
            return extensionCreateExtensionInstance;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, cls + " failed to initialize", th2);
            return extensionCreateExtensionInstance;
        }
    }

    public static void setExtensionCreator(ExtensionCreator extensionCreator) {
        sExtensionCreator = extensionCreator;
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public synchronized void enterNode(Node node) {
        TmcLogger.d(TAG, "enterNode " + node);
        this.mNodeExtensionMap.put(node, new HashMap());
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public synchronized void exitNode(Node node) {
        try {
            TmcLogger.d(TAG, "exitNode " + node);
            Map<String, Extension> mapRemove = this.mNodeExtensionMap.remove(node);
            if (mapRemove != null) {
                for (Extension extension : mapRemove.values()) {
                    TmcLogger.debug(TAG, "exitNode finalize" + extension);
                    extension.onFinalized();
                }
                mapRemove.clear();
            }
            Map<Class<? extends Extension>, List<Extension>> mapRemove2 = this.mNodeExtensionDynamicMap.remove(node);
            if (mapRemove2 != null) {
                Iterator<List<Extension>> it = mapRemove2.values().iterator();
                while (it.hasNext()) {
                    for (Extension extension2 : it.next()) {
                        TmcLogger.debug(TAG, "exitNode finalize" + extension2);
                        extension2.onFinalized();
                    }
                }
                mapRemove2.clear();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public ActionMeta findActionMeta(String str) {
        return this.mExtensionRegistry.findActionMeta(str);
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public synchronized BridgeExtension getBridgeExtensionByAction(Node node, String str) throws IllegalAccessException, InstantiationException {
        try {
            if (node == null) {
                return getBridgeExtensionByAction(str);
            }
            ActionMeta actionMetaFindActionMeta = this.mExtensionRegistry.findActionMeta(str);
            if (actionMetaFindActionMeta != null) {
                Class<? extends Scope> scope = this.mExtensionRegistry.getScope(actionMetaFindActionMeta.bridgeExtensionClazz);
                if (scope == null) {
                    return getBridgeExtensionByAction(str);
                }
                if (!scope.isAssignableFrom(node.getClass())) {
                    return getBridgeExtensionByAction(node.getParentNode(), str);
                }
                Map map = this.mNodeExtensionMap.get(node);
                if (map != null) {
                    if (map.get(actionMetaFindActionMeta.bridgeExtensionClazz.getName()) != null) {
                        return (BridgeExtension) map.get(actionMetaFindActionMeta.bridgeExtensionClazz.getName());
                    }
                    BridgeExtension bridgeExtension = (BridgeExtension) createExtensionInstance(actionMetaFindActionMeta.bridgeExtensionClazz);
                    map.put(actionMetaFindActionMeta.bridgeExtensionClazz.getName(), bridgeExtension);
                    return bridgeExtension;
                }
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public synchronized BridgeExtension getBridgeExtensionByAction(String str) {
        BridgeExtension bridgeExtension;
        ActionMeta actionMetaFindActionMeta = this.mExtensionRegistry.findActionMeta(str);
        if (actionMetaFindActionMeta == null) {
            return null;
        }
        BridgeExtension bridgeExtension2 = (BridgeExtension) this.mSingletonExtensionMap.get(actionMetaFindActionMeta.bridgeExtensionClazz.getName());
        if (bridgeExtension2 != null) {
            return bridgeExtension2;
        }
        try {
            bridgeExtension = (BridgeExtension) createExtensionInstance(actionMetaFindActionMeta.bridgeExtensionClazz);
            try {
                this.mSingletonExtensionMap.put(actionMetaFindActionMeta.bridgeExtensionClazz.getName(), bridgeExtension);
            } catch (Throwable th2) {
                th = th2;
                bridgeExtension2 = bridgeExtension;
                TmcLogger.e(TAG, th);
                bridgeExtension = bridgeExtension2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return bridgeExtension;
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public Extension getExtensionByName(Node node, String str) {
        ExtensionRegistry extensionRegistry = this.mExtensionRegistry;
        if (extensionRegistry == null) {
            throw new RuntimeException("ExtensionRegistry not setup");
        }
        try {
            Class<? extends Extension> extensionClass = extensionRegistry.getExtensionClass(str);
            Class<? extends Scope> scope = this.mExtensionRegistry.getScope(str);
            if (scope == null) {
                return getExtension(this.mSingletonExtensionMap, extensionClass);
            }
            while (node != null && !scope.isAssignableFrom(node.getClass())) {
                node = node.getParentNode();
            }
            if (node != null) {
                return getExtension(this.mNodeExtensionMap.get(node), extensionClass);
            }
            return null;
        } catch (Throwable th2) {
            TmcLogger.w(TAG, "getExtensionByName", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public List<Extension> getExtensionByPoint(Node node, Class<? extends Extension> cls) {
        if (this.mExtensionRegistry == null) {
            throw new RuntimeException("ExtensionRegistry not setup");
        }
        TmcLogger.d(TAG, "getExtensionByPoint " + cls.getName());
        List<Extension> arrayList = new ArrayList<>();
        List<? extends Extension> listFindExtensions = findExtensions(node, cls);
        if (listFindExtensions != null) {
            arrayList.addAll(listFindExtensions);
        }
        List<Extension> dynamicExtensionByPoint = getDynamicExtensionByPoint(node, cls);
        if (dynamicExtensionByPoint != null) {
            arrayList.addAll(dynamicExtensionByPoint);
        }
        if (arrayList.isEmpty()) {
            TmcLogger.w(TAG, "cannot find extension by point: " + cls);
            return null;
        }
        ExtensionFilter extensionFilter = this.mExtensionFilterMap.get(cls);
        if (extensionFilter != null) {
            arrayList = extensionFilter.filter(arrayList);
        }
        Comparator comparator = this.mExtensionSorterMap.get(cls);
        if (comparator != null) {
            Collections.sort(arrayList, comparator);
        } else if (SimpleSorter.class.isAssignableFrom(cls)) {
            Collections.sort(arrayList, new Comparator<Extension>() { // from class: com.cloud.tmc.kernel.extension.DefaultExtensionManager.1
                @Override // java.util.Comparator
                public int compare(Extension extension, Extension extension2) {
                    return (SimpleSortable.class.isAssignableFrom(extension2.getClass()) ? ((SimpleSortable) extension2).priority() : 0) - (SimpleSortable.class.isAssignableFrom(extension.getClass()) ? ((SimpleSortable) extension).priority() : 0);
                }
            });
        }
        return arrayList;
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public List<Extension> getExtensionByPoint(Class<? extends Extension> cls) {
        return getExtensionByPoint(null, cls);
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public ExtensionRegistry getExtensionRegistry() {
        return this.mExtensionRegistry;
    }

    public Map<Node, Map<String, Extension>> getNodeExtensionMap() {
        return this.mNodeExtensionMap;
    }

    public Map<String, Extension> getSingletonExtensionMap() {
        return this.mSingletonExtensionMap;
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionManager
    public <T extends Extension> void registerExtensionByPoint(Node node, Class<T> cls, T t11) {
        if (node != null) {
            Map<Class<? extends Extension>, List<Extension>> concurrentHashMap = this.mNodeExtensionDynamicMap.get(node);
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>();
                this.mNodeExtensionDynamicMap.put(node, concurrentHashMap);
            }
            List<Extension> copyOnWriteArrayList = concurrentHashMap.get(cls);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                concurrentHashMap.put(cls, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(t11);
        }
    }
}
