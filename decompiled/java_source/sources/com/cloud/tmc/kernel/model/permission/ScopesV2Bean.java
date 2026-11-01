package com.cloud.tmc.kernel.model.permission;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000  2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001 B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001bH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006!"}, d2 = {"Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "scopeName", "", "getScopeName", "()Ljava/lang/String;", "setScopeName", "(Ljava/lang/String;)V", "userAuthorization", "", "getUserAuthorization", "()Z", "setUserAuthorization", "(Z)V", "validityTime", "", "getValidityTime", "()J", "setValidityTime", "(J)V", "describeContents", "", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ScopesV2Bean extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String scopeName;
    private boolean userAuthorization;
    private long validityTime;

    /* JADX INFO: renamed from: com.cloud.tmc.kernel.model.permission.ScopesV2Bean$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<ScopesV2Bean> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScopesV2Bean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ScopesV2Bean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScopesV2Bean[] newArray(int size) {
            return new ScopesV2Bean[size];
        }
    }

    public ScopesV2Bean() {
        this.userAuthorization = true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScopesV2Bean(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.validityTime = parcel.readLong();
        this.scopeName = parcel.readString();
        this.userAuthorization = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getScopeName() {
        return this.scopeName;
    }

    public final boolean getUserAuthorization() {
        return this.userAuthorization;
    }

    public final long getValidityTime() {
        return this.validityTime;
    }

    public final void setScopeName(String str) {
        this.scopeName = str;
    }

    public final void setUserAuthorization(boolean z10) {
        this.userAuthorization = z10;
    }

    public final void setValidityTime(long j11) {
        this.validityTime = j11;
    }

    public String toString() {
        return "ScopesV2Bean(validityTime=" + this.validityTime + ", scopeName=" + this.scopeName + ", userAuthorization=" + this.userAuthorization + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeLong(this.validityTime);
        parcel.writeString(this.scopeName);
        parcel.writeByte(this.userAuthorization ? (byte) 1 : (byte) 0);
    }
}
