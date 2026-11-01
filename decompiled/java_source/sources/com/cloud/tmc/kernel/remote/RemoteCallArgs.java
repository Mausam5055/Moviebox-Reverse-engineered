package com.cloud.tmc.kernel.remote;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class RemoteCallArgs implements Parcelable {
    private String action;
    private String[] argTypes;
    private Object[] args;
    private String className;
    private Parcelable data;
    private Map<String, Object> extraData;
    private String method;
    private Node node;
    private long nodeId;
    private int pid;
    private int remoteSignature;
    private String sourceProcessName;
    private static AtomicInteger sAtomicIndex = new AtomicInteger(0);
    public static final Parcelable.Creator<RemoteCallArgs> CREATOR = new Parcelable.Creator<RemoteCallArgs>() { // from class: com.cloud.tmc.kernel.remote.RemoteCallArgs.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallArgs createFromParcel(Parcel parcel) {
            return new RemoteCallArgs(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallArgs[] newArray(int i11) {
            return new RemoteCallArgs[i11];
        }
    };

    private RemoteCallArgs(long j11, String str, Method method, Object[] objArr) {
        this.remoteSignature = sAtomicIndex.incrementAndGet();
        this.sourceProcessName = ProcessUtils.getProcessName();
        this.pid = Process.myPid();
        this.nodeId = j11;
        this.className = str;
        this.method = method.getName();
        ActionFilter actionFilter = (ActionFilter) method.getAnnotation(ActionFilter.class);
        if (actionFilter != null) {
            String strValue = actionFilter.value();
            this.action = strValue;
            if (strValue.length() <= 0) {
                this.action = method.getName();
            }
        }
        this.args = objArr;
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null || parameterTypes.length <= 0) {
            return;
        }
        this.argTypes = new String[parameterTypes.length];
        for (int i11 = 0; i11 < parameterTypes.length; i11++) {
            this.argTypes[i11] = parameterTypes[i11].getName();
        }
    }

    protected RemoteCallArgs(Parcel parcel) {
        try {
            this.pid = parcel.readInt();
            this.sourceProcessName = parcel.readString();
            this.nodeId = parcel.readLong();
            this.node = (Node) parcel.readParcelable(Node.class.getClassLoader());
            this.className = parcel.readString();
            this.method = parcel.readString();
            this.action = parcel.readString();
            this.remoteSignature = parcel.readInt();
            int i11 = parcel.readInt();
            if (i11 > 0) {
                String[] strArr = new String[i11];
                this.argTypes = strArr;
                parcel.readStringArray(strArr);
                this.args = parcel.readArray(getClass().getClassLoader());
                int i12 = 0;
                while (true) {
                    String[] strArr2 = this.argTypes;
                    if (i12 >= strArr2.length) {
                        break;
                    }
                    if (strArr2[i12].equals(JsonObject.class.getName()) && (this.args[i12] instanceof Map)) {
                        this.args[i12] = JsonParser.parseString(new Gson().toJson((Map) this.args[i12])).getAsJsonObject();
                    }
                    i12++;
                }
            }
            this.data = parcel.readParcelable(RemoteCallArgs.class.getClassLoader());
            if (parcel.readByte() == 1) {
                HashMap map = new HashMap();
                this.extraData = map;
                parcel.readMap(map, RemoteCallArgs.class.getClassLoader());
            }
        } catch (Throwable th2) {
            TmcLogger.e("TmcKernel", "Deserialize RemoteCallArgs error!", th2);
            throw th2;
        }
    }

    public RemoteCallArgs(Node node, Extension extension, Method method, Object[] objArr, Parcelable parcelable) {
        this(node != null ? node.getNodeId() : 0L, extension.getClass().getName(), method, objArr);
        this.node = node;
        this.data = parcelable;
    }

    public void addExtraData(String str, Object obj) {
        if (this.extraData == null) {
            this.extraData = new HashMap();
        }
        this.extraData.put(str, obj);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAction() {
        return this.action;
    }

    public String[] getArgTypes() {
        return this.argTypes;
    }

    public Object[] getArgs() {
        return this.args;
    }

    public String getClassName() {
        return this.className;
    }

    public Parcelable getData() {
        return this.data;
    }

    public Object getExtraData(String str) {
        Map<String, Object> map = this.extraData;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public String getMethodName() {
        return this.method;
    }

    public Node getNode() {
        return this.node;
    }

    public long getNodeId() {
        return this.nodeId;
    }

    public int getPid() {
        return this.pid;
    }

    public int getRemoteSignature() {
        return this.remoteSignature;
    }

    public String getSourceProcessName() {
        return this.sourceProcessName;
    }

    public String toString() {
        return "RemoteCallArgs{pid=" + this.pid + ", sourceProcessName=" + this.sourceProcessName + ", className=" + this.className + ", method=" + this.method + ", argTypes=" + Arrays.toString(this.argTypes) + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.pid);
        parcel.writeString(this.sourceProcessName);
        parcel.writeLong(this.nodeId);
        parcel.writeParcelable(this.node, 0);
        parcel.writeString(this.className);
        parcel.writeString(this.method);
        parcel.writeString(this.action);
        parcel.writeInt(this.remoteSignature);
        Object[] objArr = this.args;
        int length = objArr == null ? 0 : objArr.length;
        parcel.writeInt(length);
        if (length > 0) {
            parcel.writeStringArray(this.argTypes);
            parcel.writeArray(this.args);
        }
        parcel.writeParcelable(this.data, 0);
        if (this.extraData == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeMap(this.extraData);
        }
    }
}
