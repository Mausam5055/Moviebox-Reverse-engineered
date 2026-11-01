package com.cloud.tmc.integration.structure.impl;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.WarmupNode;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.node.NodeInstance;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0015B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000eH\u0016R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/structure/impl/WarmupNodeImp;", "Lcom/cloud/tmc/kernel/node/NodeInstance;", "Lcom/cloud/tmc/integration/structure/WarmupNode;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "nodeMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/cloud/tmc/kernel/node/Node;", "getNodeMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "describeContents", "", "getNode", "id", "removeNode", "", "writeToParcel", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WarmupNodeImp extends NodeInstance implements WarmupNode {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ConcurrentHashMap<String, Node> nodeMap;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.structure.impl.WarmupNodeImp$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/structure/impl/WarmupNodeImp$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/structure/impl/WarmupNodeImp;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/structure/impl/WarmupNodeImp;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<WarmupNodeImp> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WarmupNodeImp createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new WarmupNodeImp(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WarmupNodeImp[] newArray(int size) {
            return new WarmupNodeImp[size];
        }
    }

    public WarmupNodeImp() {
        this.nodeMap = new ConcurrentHashMap<>();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WarmupNodeImp(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cloud.tmc.integration.structure.WarmupNode
    public Node getNode(String id2) {
        Intrinsics.h(id2, "id");
        Node node = this.nodeMap.get(id2);
        if (node != null) {
            return node;
        }
        NodeInstance nodeInstance = new NodeInstance();
        this.nodeMap.put(id2, nodeInstance);
        return nodeInstance;
    }

    public final ConcurrentHashMap<String, Node> getNodeMap() {
        return this.nodeMap;
    }

    @Override // com.cloud.tmc.integration.structure.WarmupNode
    public void removeNode(String id2) {
        Intrinsics.h(id2, "id");
        this.nodeMap.remove(id2);
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        super.writeToParcel(parcel, flags);
    }
}
