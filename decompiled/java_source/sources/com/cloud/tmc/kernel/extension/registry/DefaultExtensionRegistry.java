package com.cloud.tmc.kernel.extension.registry;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.ExtensionRegistry;
import com.cloud.tmc.kernel.extension.ExtensionType;
import com.cloud.tmc.kernel.extension.action.ActionMeta;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.utils.ClassLoaderUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultExtensionRegistry implements ExtensionRegistry {
    private static final String TAG = "TmcKernel:DefaultExtensionRegistry";
    private final Set<Class<? extends Extension>> mExtensionClassRegisteredSet = new HashSet();
    private final Map<String, List<ExtensionMetaInfo>> mPointToMetaInfoMap = new HashMap();
    private final Map<String, List<Class<? extends Extension>>> mPointToExtensionClazzMap = new HashMap();
    private final Map<String, Class<? extends Scope>> mClassNameScopeMap = new HashMap();
    private final List<ExtensionMetaInfo> mExtensionMetaInfoList = new LinkedList();
    private BridgeExtensionRegistry mBridgeExtensionRegistry = new BridgeExtensionRegistry();

    /* JADX WARN: Multi-variable type inference failed */
    private List<Class<? extends Extension>> collectExtensionPoint(Class<? extends Extension> cls, List<Class<? extends Extension>> list) {
        List<Class<? extends Extension>> linkedList = list;
        if (list == null) {
            linkedList = new LinkedList();
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (Extension.class.isAssignableFrom(cls2)) {
                linkedList.add(cls2);
            }
        }
        return Extension.class.isAssignableFrom(cls.getSuperclass()) ? collectExtensionPoint(cls.getSuperclass(), linkedList) : linkedList;
    }

    private void putScope(Class<? extends Extension> cls, Class<? extends Scope> cls2) {
        putScope(cls.getName(), cls2);
    }

    private void putScope(String str, Class<? extends Scope> cls) {
        if (this.mClassNameScopeMap.containsKey(str)) {
            return;
        }
        this.mClassNameScopeMap.put(str, cls);
    }

    protected Extension createExtensionInstance(Class<? extends Extension> cls) throws IllegalAccessException, InstantiationException {
        return cls.newInstance();
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public ActionMeta findActionMeta(String str) {
        return this.mBridgeExtensionRegistry.findActionMeta(str);
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    @Nullable
    public List<Class<? extends Extension>> findExtensions(String str) {
        List<ExtensionMetaInfo> list = this.mPointToMetaInfoMap.get(str);
        if (list != null) {
            for (ExtensionMetaInfo extensionMetaInfo : list) {
                Class<? extends Extension> clsLoadClass = ClassLoaderUtils.loadClass(extensionMetaInfo.bundleName, extensionMetaInfo.extensionClass);
                if (clsLoadClass == null) {
                    TmcLogger.e(TAG, "load meta " + extensionMetaInfo.extensionClass + " error!");
                } else {
                    synchronized (this.mExtensionClassRegisteredSet) {
                        try {
                            if (!this.mExtensionClassRegisteredSet.contains(clsLoadClass)) {
                                register(clsLoadClass, extensionMetaInfo.scope);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
            this.mPointToMetaInfoMap.remove(str);
        }
        return this.mPointToExtensionClazzMap.get(str);
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public int getActionCount() {
        return this.mBridgeExtensionRegistry.getRegisteredActionCount();
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public Class<? extends Extension> getExtensionClass(String str) {
        for (Class<? extends Extension> cls : this.mExtensionClassRegisteredSet) {
            if (cls.getName().equals(str)) {
                return cls;
            }
        }
        for (ExtensionMetaInfo extensionMetaInfo : this.mExtensionMetaInfoList) {
            if (str.equals(extensionMetaInfo.extensionClass)) {
                return ClassLoaderUtils.loadClass(extensionMetaInfo.bundleName, extensionMetaInfo.extensionClass);
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public Class<? extends Scope> getScope(Class<? extends Extension> cls) {
        return getScope(cls.getName());
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public Class<? extends Scope> getScope(String str) {
        return this.mClassNameScopeMap.get(str);
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public synchronized void register(ExtensionMetaInfo extensionMetaInfo) {
        try {
            ExtensionType extensionType = extensionMetaInfo.type;
            ExtensionType extensionType2 = ExtensionType.BRIDGE;
            if (extensionType == extensionType2) {
                TmcLogger.d(TAG, "register meta: " + extensionMetaInfo.extensionClass);
            } else {
                TmcLogger.debug(TAG, "register meta: " + extensionMetaInfo.extensionClass);
            }
            if (!extensionMetaInfo.isLazy) {
                ClassLoaderUtils.loadClass(extensionMetaInfo.bundleName, extensionMetaInfo.extensionClass);
            }
            ExtensionType extensionType3 = ExtensionType.NORMAL;
            ExtensionType extensionType4 = extensionMetaInfo.type;
            if (extensionType3 == extensionType4) {
                List<String> list = extensionMetaInfo.filter;
                if (list != null && list.size() > 0) {
                    for (String str : extensionMetaInfo.filter) {
                        List<ExtensionMetaInfo> linkedList = this.mPointToMetaInfoMap.get(str);
                        if (linkedList == null) {
                            linkedList = new LinkedList<>();
                        }
                        linkedList.add(extensionMetaInfo);
                        this.mPointToMetaInfoMap.put(str, linkedList);
                    }
                }
            } else if (extensionType2 == extensionType4) {
                this.mBridgeExtensionRegistry.register(extensionMetaInfo);
            }
            putScope(extensionMetaInfo.extensionClass, extensionMetaInfo.scope);
            this.mExtensionMetaInfoList.add(extensionMetaInfo);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public synchronized void register(Class<? extends Extension> cls) {
        register(cls, null);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0029 A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x0001, B:12:0x0021, B:14:0x0029, B:17:0x0046, B:18:0x0048, B:30:0x0078, B:31:0x0080, B:33:0x0086, B:35:0x009a, B:36:0x009f, B:37:0x00ac, B:41:0x00b2, B:9:0x0014, B:5:0x0009, B:19:0x0049, B:21:0x0051, B:22:0x006c, B:27:0x0071, B:28:0x0076), top: B:46:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x0046 A[Catch: all -> 0x001e, TRY_ENTER, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x0001, B:12:0x0021, B:14:0x0029, B:17:0x0046, B:18:0x0048, B:30:0x0078, B:31:0x0080, B:33:0x0086, B:35:0x009a, B:36:0x009f, B:37:0x00ac, B:41:0x00b2, B:9:0x0014, B:5:0x0009, B:19:0x0049, B:21:0x0051, B:22:0x006c, B:27:0x0071, B:28:0x0076), top: B:46:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0051 A[Catch: all -> 0x006f, TryCatch #2 {, blocks: (B:19:0x0049, B:21:0x0051, B:22:0x006c, B:27:0x0071, B:28:0x0076), top: B:47:0x0049, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0071 A[Catch: all -> 0x006f, TRY_ENTER, TryCatch #2 {, blocks: (B:19:0x0049, B:21:0x0051, B:22:0x006c, B:27:0x0071, B:28:0x0076), top: B:47:0x0049, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0086 A[Catch: all -> 0x001e, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x0001, B:12:0x0021, B:14:0x0029, B:17:0x0046, B:18:0x0048, B:30:0x0078, B:31:0x0080, B:33:0x0086, B:35:0x009a, B:36:0x009f, B:37:0x00ac, B:41:0x00b2, B:9:0x0014, B:5:0x0009, B:19:0x0049, B:21:0x0051, B:22:0x006c, B:27:0x0071, B:28:0x0076), top: B:46:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x009a A[Catch: all -> 0x001e, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x0001, B:12:0x0021, B:14:0x0029, B:17:0x0046, B:18:0x0048, B:30:0x0078, B:31:0x0080, B:33:0x0086, B:35:0x009a, B:36:0x009f, B:37:0x00ac, B:41:0x00b2, B:9:0x0014, B:5:0x0009, B:19:0x0049, B:21:0x0051, B:22:0x006c, B:27:0x0071, B:28:0x0076), top: B:46:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x009f A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:14:0x0029, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x0051, please report this as an issue */
    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public synchronized void register(Class<? extends Extension> cls, Class<? extends Scope> cls2) {
        List<Class<? extends Extension>> linkedList;
        try {
            if (!BridgeExtension.class.isAssignableFrom(cls)) {
                if (!Extension.class.isAssignableFrom(cls)) {
                    TmcLogger.e(TAG, "Class " + cls + " is not valid extension");
                    return;
                }
                synchronized (this.mExtensionClassRegisteredSet) {
                    if (this.mExtensionClassRegisteredSet.contains(cls)) {
                        TmcLogger.e(TAG, "Extension " + cls + " is already registered");
                        return;
                    }
                    this.mExtensionClassRegisteredSet.add(cls);
                    for (Class<? extends Extension> cls3 : collectExtensionPoint(cls, null)) {
                        linkedList = this.mPointToExtensionClazzMap.get(cls3.getName());
                        if (linkedList == null) {
                            linkedList = new LinkedList<>();
                        }
                        linkedList.add(cls);
                        this.mPointToExtensionClazzMap.put(cls3.getName(), linkedList);
                    }
                    putScope(cls, cls2);
                    return;
                }
            }
            try {
                this.mBridgeExtensionRegistry.register((Class<? extends BridgeExtension>) cls);
                putScope(cls, cls2);
                return;
            } catch (Throwable th2) {
                TmcLogger.w(TAG, cls.getSimpleName(), th2);
                if (!Extension.class.isAssignableFrom(cls)) {
                    TmcLogger.e(TAG, "Class " + cls + " is not valid extension");
                    return;
                }
                synchronized (this.mExtensionClassRegisteredSet) {
                    if (this.mExtensionClassRegisteredSet.contains(cls)) {
                        TmcLogger.e(TAG, "Extension " + cls + " is already registered");
                        return;
                    }
                    this.mExtensionClassRegisteredSet.add(cls);
                    while (r0.hasNext()) {
                        linkedList = this.mPointToExtensionClazzMap.get(cls3.getName());
                        if (linkedList == null) {
                            linkedList = new LinkedList<>();
                        }
                        linkedList.add(cls);
                        this.mPointToExtensionClazzMap.put(cls3.getName(), linkedList);
                    }
                    putScope(cls, cls2);
                    return;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        throw th3;
    }

    @Override // com.cloud.tmc.kernel.extension.ExtensionRegistry
    public void unRegister(List<String> list) {
        this.mBridgeExtensionRegistry.unRegister(list);
    }
}
