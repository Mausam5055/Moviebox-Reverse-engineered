package com.transsion.room.api.bean;

import android.location.Address;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import in.a;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\r\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\r\u0010\fJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000fJ@\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0013\u0010\fJ\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u001c\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u001fR$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001c\u001a\u0004\b \u0010\f\"\u0004\b!\u0010\u001fR$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\"\u001a\u0004\b#\u0010\u000f\"\u0004\b$\u0010%R$\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\"\u001a\u0004\b&\u0010\u000f\"\u0004\b'\u0010%R$\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u0010/\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u001c\u001a\u0004\b0\u0010\f\"\u0004\b1\u0010\u001fR$\u00102\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u001c\u001a\u0004\b3\u0010\f\"\u0004\b4\u0010\u001f¨\u00065"}, d2 = {"Lcom/transsion/room/api/bean/LocationPlace;", "Lin/a;", "Ljava/io/Serializable;", "", "name", PlaceTypes.ADDRESS, "", "lat", "lon", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "()Ljava/lang/Double;", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/transsion/room/api/bean/LocationPlace;", "toString", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getName", "setName", "(Ljava/lang/String;)V", "getAddress", "setAddress", "Ljava/lang/Double;", "getLat", "setLat", "(Ljava/lang/Double;)V", "getLon", "setLon", "Landroid/location/Address;", "locationAddress", "Landroid/location/Address;", "getLocationAddress", "()Landroid/location/Address;", "setLocationAddress", "(Landroid/location/Address;)V", "distance", "getDistance", "setDistance", "countryCode", "getCountryCode", "setCountryCode", "RoomApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LocationPlace extends a implements Serializable {
    private String address;
    private transient String countryCode;
    private transient String distance;
    private Double lat;
    private transient Address locationAddress;
    private Double lon;
    private String name;

    public LocationPlace() {
        this(null, null, null, null, 15, null);
    }

    public LocationPlace(String str, String str2, Double d11, Double d12) {
        this.name = str;
        this.address = str2;
        this.lat = d11;
        this.lon = d12;
    }

    public /* synthetic */ LocationPlace(String str, String str2, Double d11, Double d12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : d11, (i11 & 8) != 0 ? null : d12);
    }

    public static /* synthetic */ LocationPlace copy$default(LocationPlace locationPlace, String str, String str2, Double d11, Double d12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = locationPlace.name;
        }
        if ((i11 & 2) != 0) {
            str2 = locationPlace.address;
        }
        if ((i11 & 4) != 0) {
            d11 = locationPlace.lat;
        }
        if ((i11 & 8) != 0) {
            d12 = locationPlace.lon;
        }
        return locationPlace.copy(str, str2, d11, d12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAddress() {
        return this.address;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Double getLat() {
        return this.lat;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Double getLon() {
        return this.lon;
    }

    public final LocationPlace copy(String name, String address, Double lat, Double lon) {
        return new LocationPlace(name, address, lat, lon);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationPlace)) {
            return false;
        }
        LocationPlace locationPlace = (LocationPlace) other;
        return Intrinsics.c(this.name, locationPlace.name) && Intrinsics.c(this.address, locationPlace.address) && Intrinsics.c(this.lat, locationPlace.lat) && Intrinsics.c(this.lon, locationPlace.lon);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getDistance() {
        return this.distance;
    }

    public final Double getLat() {
        return this.lat;
    }

    public final Address getLocationAddress() {
        return this.locationAddress;
    }

    public final Double getLon() {
        return this.lon;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.address;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Double d11 = this.lat;
        int iHashCode3 = (iHashCode2 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Double d12 = this.lon;
        return iHashCode3 + (d12 != null ? d12.hashCode() : 0);
    }

    public final void setAddress(String str) {
        this.address = str;
    }

    public final void setCountryCode(String str) {
        this.countryCode = str;
    }

    public final void setDistance(String str) {
        this.distance = str;
    }

    public final void setLat(Double d11) {
        this.lat = d11;
    }

    public final void setLocationAddress(Address address) {
        this.locationAddress = address;
    }

    public final void setLon(Double d11) {
        this.lon = d11;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "LocationPlace(name=" + this.name + ", address=" + this.address + ", lat=" + this.lat + ", lon=" + this.lon + ")";
    }
}
