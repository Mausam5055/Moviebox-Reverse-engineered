package com.cloud.tmc.kernel.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.listener.URLVisitListener;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u001e\u001a\u00020\bH\u0016J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\bH\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR2\u0010\u0010\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u0001`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/cloud/tmc/kernel/model/CreateParams;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "containerHeight", "", "getContainerHeight", "()I", "setContainerHeight", "(I)V", "containerWidth", "getContainerWidth", "setContainerWidth", "resourceUrls", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "getResourceUrls", "()Ljava/util/ArrayList;", "setResourceUrls", "(Ljava/util/ArrayList;)V", TmcConstants.EXTRA_START_PARAMS, "Landroid/os/Bundle;", "urlVisitListener", "Lcom/cloud/tmc/kernel/model/listener/URLVisitListener;", "useForEmbed", "", "describeContents", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CreateParams extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private int containerHeight;
    private int containerWidth;
    private ArrayList<String> resourceUrls;

    @JvmField
    public Bundle startParams;

    @JvmField
    public URLVisitListener urlVisitListener;

    @JvmField
    public boolean useForEmbed;

    /* JADX INFO: renamed from: com.cloud.tmc.kernel.model.CreateParams$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/kernel/model/CreateParams$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/kernel/model/CreateParams;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/kernel/model/CreateParams;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<CreateParams> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CreateParams createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CreateParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CreateParams[] newArray(int size) {
            return new CreateParams[size];
        }
    }

    public CreateParams() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreateParams(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.startParams = parcel.readBundle(CreateParams.class.getClassLoader());
        this.containerWidth = parcel.readInt();
        this.containerHeight = parcel.readInt();
        this.useForEmbed = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getContainerHeight() {
        return this.containerHeight;
    }

    public final int getContainerWidth() {
        return this.containerWidth;
    }

    public final ArrayList<String> getResourceUrls() {
        return this.resourceUrls;
    }

    public final void setContainerHeight(int i11) {
        this.containerHeight = i11;
    }

    public final void setContainerWidth(int i11) {
        this.containerWidth = i11;
    }

    public final void setResourceUrls(ArrayList<String> arrayList) {
        this.resourceUrls = arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeBundle(this.startParams);
        parcel.writeInt(this.containerWidth);
        parcel.writeInt(this.containerHeight);
        parcel.writeByte(this.useForEmbed ? (byte) 1 : (byte) 0);
    }
}
