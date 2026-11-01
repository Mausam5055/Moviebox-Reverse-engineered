package com.cloud.tmc.kernel.node;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Process;
import android.view.View;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.security.DefaultGroup;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ParcelCreator"})
public class NodeInstance implements DataNode, ValueStore {
    private static final String TAG = "NodeInstance";
    protected static ExtensionManager sExtensionManager;
    private static int sNodeIdBase = Process.myPid() * 10000;
    private static int sNodeIdCounter = 1;
    private boolean mAlreadyFinalized;
    private final Stack<Node> mChildNodes;
    private final Map<Class, Object> mDataStore;
    private CountDownLatch mFinalizedLatch;
    private long mNodeId;
    private Node mParentNode;
    private final Map<String, Object> mValueStoreMap;

    public NodeInstance() {
        this.mChildNodes = new Stack<>();
        this.mDataStore = new ConcurrentHashMap();
        this.mValueStoreMap = new ConcurrentHashMap();
        this.mAlreadyFinalized = false;
        this.mFinalizedLatch = new CountDownLatch(1);
        int i11 = sNodeIdBase;
        int i12 = sNodeIdCounter;
        sNodeIdCounter = i12 + 1;
        this.mNodeId = i11 + i12;
    }

    public NodeInstance(Parcel parcel) {
        this.mChildNodes = new Stack<>();
        this.mDataStore = new ConcurrentHashMap();
        this.mValueStoreMap = new ConcurrentHashMap();
        this.mAlreadyFinalized = false;
        this.mFinalizedLatch = new CountDownLatch(1);
        this.mNodeId = parcel.readLong();
        this.mParentNode = (Node) parcel.readParcelable(NodeInstance.class.getClassLoader());
    }

    public NodeInstance(Node node) {
        this();
        this.mParentNode = node;
        onInitialized();
    }

    public static void bindExtensionManager(ExtensionManager extensionManager) {
        sExtensionManager = extensionManager;
    }

    public static ExtensionManager getBoundExtensionManager() {
        return sExtensionManager;
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public /* synthetic */ void addFixedView(View view) {
        a.a(this, view);
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public <T extends Node> T bubbleFindNode(Class<T> cls) {
        for (NodeInstance nodeInstance = this; nodeInstance != null; nodeInstance = (T) nodeInstance.getParentNode()) {
            if (cls.isAssignableFrom(nodeInstance.getClass())) {
                return nodeInstance;
            }
        }
        return null;
    }

    public int describeContents() {
        return 0;
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public boolean getBooleanValue(String str) {
        Object obj = this.mValueStoreMap.get(str);
        if (obj == null) {
            return false;
        }
        try {
            return ((Boolean) obj).booleanValue();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getStringValue error!", th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public Node getChild(long j11) {
        synchronized (this.mChildNodes) {
            try {
                for (Node node : this.mChildNodes) {
                    if (j11 == node.getNodeId()) {
                        return node;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public Node getChildAt(int i11) {
        if (i11 < 0 || this.mChildNodes.size() == 0 || i11 >= this.mChildNodes.size()) {
            return null;
        }
        return this.mChildNodes.get(i11);
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public int getChildCount() {
        return this.mChildNodes.size();
    }

    @Override // com.cloud.tmc.kernel.node.DataNode
    @Nullable
    public <T> T getData(Class<T> cls) {
        return (T) getData(cls, false);
    }

    @Override // com.cloud.tmc.kernel.node.DataNode
    public <T> T getData(Class<T> cls, boolean z10) {
        T tNewInstance = (T) this.mDataStore.get(cls);
        if (tNewInstance != null || !z10) {
            return tNewInstance;
        }
        try {
            tNewInstance = cls.newInstance();
            this.mDataStore.put(cls, tNewInstance);
            return tNewInstance;
        } catch (Throwable th2) {
            TmcLogger.w(TAG, "getData Exception", th2);
            return tNewInstance;
        }
    }

    @Override // com.cloud.tmc.kernel.security.Accessor
    public Group getGroup() {
        return DefaultGroup.EXTERNAL;
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public int getIndexOfChild(Node node) {
        if (node == null) {
            return -1;
        }
        synchronized (this.mChildNodes) {
            try {
                int size = this.mChildNodes.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (node == this.mChildNodes.get(i11)) {
                        return i11;
                    }
                }
                return -1;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public int getIntValue(String str) {
        Object obj = this.mValueStoreMap.get(str);
        if (obj == null) {
            return 0;
        }
        try {
            return ((Integer) obj).intValue();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getStringValue error!", th2);
            return 0;
        }
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public JsonArray getJsonArrayValue(String str) {
        Object obj = this.mValueStoreMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (JsonArray) obj;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getStringValue error!", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public JsonObject getJsonValue(String str) {
        Object obj = this.mValueStoreMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (JsonObject) obj;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getStringValue error!", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public long getLongValue(String str) {
        Object obj = this.mValueStoreMap.get(str);
        if (obj == null) {
            return 0L;
        }
        try {
            return ((Long) obj).longValue();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getStringValue error!", th2);
            return 0L;
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public long getNodeId() {
        return this.mNodeId;
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public Node getParentNode() {
        return this.mParentNode;
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public String getStringValue(String str) {
        Object obj = this.mValueStoreMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (String) obj;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getStringValue error!", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.security.Accessor
    public void inquiry(List<? extends Permission> list, Accessor.InquiryCallback inquiryCallback) {
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public boolean isChildless() {
        boolean zEmpty;
        synchronized (this.mChildNodes) {
            zEmpty = this.mChildNodes.empty();
        }
        return zEmpty;
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public synchronized void onFinalized() {
        try {
            ExtensionManager extensionManager = sExtensionManager;
            if (extensionManager != null) {
                extensionManager.exitNode(this);
            }
            this.mParentNode = null;
            this.mValueStoreMap.clear();
            this.mAlreadyFinalized = true;
            this.mFinalizedLatch.countDown();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public synchronized void onInitialized() {
        ExtensionManager extensionManager = sExtensionManager;
        if (extensionManager != null) {
            extensionManager.enterNode(this);
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public Node peekChild() {
        synchronized (this.mChildNodes) {
            try {
                if (this.mChildNodes.empty()) {
                    return null;
                }
                return this.mChildNodes.peek();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public Node popChild() {
        Node nodePop;
        synchronized (this.mChildNodes) {
            nodePop = this.mChildNodes.pop();
        }
        return nodePop;
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public void pushChild(Node node) {
        if (node == null) {
            return;
        }
        synchronized (this.mChildNodes) {
            node.setParentNode(this);
            this.mChildNodes.push(node);
        }
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public void putBooleanValue(String str, boolean z10) {
        this.mValueStoreMap.put(str, Boolean.valueOf(z10));
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public void putIntValue(String str, int i11) {
        this.mValueStoreMap.put(str, Integer.valueOf(i11));
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public void putJsonArrayValue(String str, JsonArray jsonArray) {
        this.mValueStoreMap.put(str, jsonArray);
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public void putJsonValue(String str, JsonObject jsonObject) {
        this.mValueStoreMap.put(str, jsonObject);
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public void putLongValue(String str, long j11) {
        this.mValueStoreMap.put(str, Long.valueOf(j11));
    }

    @Override // com.cloud.tmc.kernel.node.ValueStore
    public void putStringValue(String str, String str2) {
        if (str2 == null) {
            this.mValueStoreMap.remove(str);
        } else {
            this.mValueStoreMap.put(str, str2);
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public boolean removeChild(Node node) {
        boolean zRemove;
        synchronized (this.mChildNodes) {
            zRemove = this.mChildNodes.remove(node);
        }
        return zRemove;
    }

    @Override // com.cloud.tmc.kernel.node.DataNode
    public <T> void setData(Class<T> cls, T t11) {
        if (t11 == null) {
            this.mDataStore.remove(cls);
        } else {
            this.mDataStore.put(cls, t11);
        }
    }

    @Override // com.cloud.tmc.kernel.node.Node
    public void setParentNode(Node node) {
        this.mParentNode = node;
    }

    @Override // com.cloud.tmc.kernel.security.Accessor
    public List<Permission> usePermissions() {
        return null;
    }

    public boolean waitOnFinalized() {
        try {
            this.mFinalizedLatch.await();
            return this.mAlreadyFinalized;
        } catch (InterruptedException e11) {
            TmcLogger.w(TAG, "Interrupted!", e11);
            Thread.currentThread().interrupt();
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeLong(this.mNodeId);
        parcel.writeParcelable(this.mParentNode, 0);
    }
}
