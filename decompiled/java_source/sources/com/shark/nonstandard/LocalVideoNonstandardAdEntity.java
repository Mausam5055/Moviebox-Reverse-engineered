package com.shark.nonstandard;

import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0012\u0018\u0000 42\u00020\u0001:\u00015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R$\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R$\u0010\u001b\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0010\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R$\u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b%\u0010'\"\u0004\b(\u0010)R$\u0010*\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010&\u001a\u0004\b*\u0010'\"\u0004\b+\u0010)R$\u0010,\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u001f\u001a\u0004\b-\u0010!\"\u0004\b.\u0010#R$\u0010/\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u001f\u001a\u0004\b0\u0010!\"\u0004\b1\u0010#R$\u00102\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010&\u001a\u0004\b2\u0010'\"\u0004\b3\u0010)¨\u00066"}, d2 = {"Lcom/shark/nonstandard/LocalVideoNonstandardAdEntity;", "Landroid/os/Parcelable;", "<init>", "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "", "key", "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "adImageUrl", "getAdImageUrl", "setAdImageUrl", "h5Url", "getH5Url", "setH5Url", "deeplink", "getDeeplink", "setDeeplink", "autoCloseTime", "Ljava/lang/Integer;", "getAutoCloseTime", "()Ljava/lang/Integer;", "setAutoCloseTime", "(Ljava/lang/Integer;)V", "", "isCloseable", "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", "setCloseable", "(Ljava/lang/Boolean;)V", "isOpen", "setOpen", "firstShowTime", "getFirstShowTime", "setFirstShowTime", "intervalTime", "getIntervalTime", "setIntervalTime", "isInstation", "setInstation", "CREATOR", "a", "nonstandard_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalVideoNonstandardAdEntity implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String adImageUrl;
    private Integer autoCloseTime;
    private String deeplink;
    private Integer firstShowTime;
    private String h5Url;
    private Integer intervalTime;
    private Boolean isCloseable;
    private Boolean isInstation;
    private Boolean isOpen;
    private String key;

    /* JADX INFO: renamed from: com.shark.nonstandard.LocalVideoNonstandardAdEntity$a, reason: from kotlin metadata */
    public static final class Companion implements Parcelable.Creator {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LocalVideoNonstandardAdEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LocalVideoNonstandardAdEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public LocalVideoNonstandardAdEntity[] newArray(int i11) {
            return new LocalVideoNonstandardAdEntity[i11];
        }
    }

    public LocalVideoNonstandardAdEntity() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LocalVideoNonstandardAdEntity(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.key = parcel.readString();
        this.adImageUrl = parcel.readString();
        this.h5Url = parcel.readString();
        this.deeplink = parcel.readString();
        Class cls = Integer.TYPE;
        Object value = parcel.readValue(cls.getClassLoader());
        this.autoCloseTime = value instanceof Integer ? (Integer) value : null;
        Class cls2 = Boolean.TYPE;
        Object value2 = parcel.readValue(cls2.getClassLoader());
        this.isCloseable = value2 instanceof Boolean ? (Boolean) value2 : null;
        Object value3 = parcel.readValue(cls2.getClassLoader());
        this.isOpen = value3 instanceof Boolean ? (Boolean) value3 : null;
        Object value4 = parcel.readValue(cls.getClassLoader());
        this.firstShowTime = value4 instanceof Integer ? (Integer) value4 : null;
        Object value5 = parcel.readValue(cls.getClassLoader());
        this.intervalTime = value5 instanceof Integer ? (Integer) value5 : null;
        Object value6 = parcel.readValue(cls2.getClassLoader());
        this.isInstation = value6 instanceof Boolean ? (Boolean) value6 : null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getAdImageUrl() {
        return this.adImageUrl;
    }

    public final Integer getAutoCloseTime() {
        return this.autoCloseTime;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final Integer getFirstShowTime() {
        return this.firstShowTime;
    }

    public final String getH5Url() {
        return this.h5Url;
    }

    public final Integer getIntervalTime() {
        return this.intervalTime;
    }

    public final String getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: isCloseable, reason: from getter */
    public final Boolean getIsCloseable() {
        return this.isCloseable;
    }

    /* JADX INFO: renamed from: isInstation, reason: from getter */
    public final Boolean getIsInstation() {
        return this.isInstation;
    }

    /* JADX INFO: renamed from: isOpen, reason: from getter */
    public final Boolean getIsOpen() {
        return this.isOpen;
    }

    public final void setAdImageUrl(String str) {
        this.adImageUrl = str;
    }

    public final void setAutoCloseTime(Integer num) {
        this.autoCloseTime = num;
    }

    public final void setCloseable(Boolean bool) {
        this.isCloseable = bool;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setFirstShowTime(Integer num) {
        this.firstShowTime = num;
    }

    public final void setH5Url(String str) {
        this.h5Url = str;
    }

    public final void setInstation(Boolean bool) {
        this.isInstation = bool;
    }

    public final void setIntervalTime(Integer num) {
        this.intervalTime = num;
    }

    public final void setKey(String str) {
        this.key = str;
    }

    public final void setOpen(Boolean bool) {
        this.isOpen = bool;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.key);
        parcel.writeString(this.adImageUrl);
        parcel.writeString(this.h5Url);
        parcel.writeString(this.deeplink);
        parcel.writeValue(this.autoCloseTime);
        parcel.writeValue(this.isCloseable);
        parcel.writeValue(this.isOpen);
        parcel.writeValue(this.firstShowTime);
        parcel.writeValue(this.intervalTime);
        parcel.writeValue(this.isInstation);
    }
}
