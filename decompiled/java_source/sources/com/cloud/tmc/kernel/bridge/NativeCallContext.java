package com.cloud.tmc.kernel.bridge;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.render.IRender;
import com.google.gson.JsonObject;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class NativeCallContext<T extends Node> implements Parcelable {
    public static final String FROM_WORKER = "fromWorker";
    private String callbackId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f23484id;
    private String name;
    private T node;
    private JsonObject params;

    @Nullable
    private String pluginId;
    private IRender render;
    private String source;
    private static final AtomicLong sCounter = new AtomicLong(Process.myPid());
    public static final Parcelable.Creator<NativeCallContext> CREATOR = new Parcelable.Creator<NativeCallContext>() { // from class: com.cloud.tmc.kernel.bridge.NativeCallContext.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NativeCallContext createFromParcel(Parcel parcel) {
            return new NativeCallContext(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NativeCallContext[] newArray(int i11) {
            return new NativeCallContext[i11];
        }
    };

    public static class Builder {
        public String callbackId;
        public boolean dispatcherOnWorkerThread;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public String f23485id = "native_" + System.currentTimeMillis();
        public String name;
        public Node node;
        public JsonObject params;
        public IRender render;
        public String source;

        public NativeCallContext build() {
            return new NativeCallContext(this);
        }

        public Builder callbackId(String str) {
            this.callbackId = str;
            return this;
        }

        public Builder dispatcherOnWorkerThread(boolean z10) {
            this.dispatcherOnWorkerThread = z10;
            return this;
        }

        public Builder generateLegacyNativeId() {
            this.f23485id = "native_" + System.currentTimeMillis();
            return this;
        }

        public Builder id(String str) {
            this.f23485id = str;
            return this;
        }

        public Builder name(String str) {
            this.name = str;
            return this;
        }

        public Builder node(Node node) {
            this.node = node;
            return this;
        }

        public Builder params(JsonObject jsonObject) {
            this.params = jsonObject;
            return this;
        }

        public Builder render(IRender iRender) {
            this.render = iRender;
            return this;
        }

        public Builder source(String str) {
            this.source = str;
            return this;
        }
    }

    public NativeCallContext() {
    }

    protected NativeCallContext(Parcel parcel) {
    }

    private NativeCallContext(Builder builder) {
        this.render = builder.render;
        this.name = builder.name;
        this.params = builder.params;
        this.node = (T) builder.node;
        this.f23484id = builder.f23485id;
        this.source = builder.source;
        this.callbackId = builder.callbackId;
    }

    public static Builder newBuilder(String str) {
        return new Builder().name(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCallbackId() {
        return this.callbackId;
    }

    public String getId() {
        return this.f23484id;
    }

    public String getName() {
        return this.name;
    }

    public T getNode() {
        return this.node;
    }

    public JsonObject getParams() {
        return this.params;
    }

    public IRender getRender() {
        return this.render;
    }

    public String getSource() {
        return this.source;
    }

    public void setId(String str) {
        this.f23484id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNode(T t11) {
        this.node = t11;
    }

    public void setParams(JsonObject jsonObject) {
        this.params = jsonObject;
    }

    public void setRender(IRender iRender) {
        this.render = iRender;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("NativeCallContext{name=");
        sb2.append(this.name);
        sb2.append(", params=");
        sb2.append(this.params);
        sb2.append(", id=");
        sb2.append(this.f23484id);
        if (this.pluginId != null) {
            sb2.append(", pluginId=");
            sb2.append(this.pluginId);
        }
        sb2.append("}");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
    }
}
