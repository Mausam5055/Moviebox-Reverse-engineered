package com.cloud.tmc.kernel.node;

import android.os.Parcelable;
import android.view.View;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.security.Accessor;

/* JADX INFO: loaded from: classes3.dex */
public interface Node extends Accessor, Parcelable {
    void addFixedView(View view);

    @Nullable
    <T extends Node> T bubbleFindNode(Class<T> cls);

    Node getChild(long j11);

    Node getChildAt(int i11);

    int getChildCount();

    int getIndexOfChild(Node node);

    long getNodeId();

    Node getParentNode();

    boolean isChildless();

    void onFinalized();

    void onInitialized();

    Node peekChild();

    Node popChild();

    void pushChild(Node node);

    boolean removeChild(Node node);

    void setParentNode(Node node);
}
