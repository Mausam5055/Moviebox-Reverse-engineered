package com.therouter.router;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 62\u00020\u00012\u00020\u0002:\u00017B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007B)\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\u0003\u0010\rJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010#\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001eH\u0016¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u0005¢\u0006\u0004\b&\u0010\u0007R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010'\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010*R\"\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010'\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010*R\"\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010'\u001a\u0004\b-\u0010\u001b\"\u0004\b.\u0010*R\"\u0010\f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010'\u001a\u0004\b/\u0010\u001b\"\u0004\b0\u0010*R\"\u00102\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00104\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00068"}, d2 = {"Lcom/therouter/router/RouteItem;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "<init>", "()V", "Landroid/os/Parcel;", TtmlNode.TAG_P, "(Landroid/os/Parcel;)V", "", "path", "className", EventConstants.KEY_ACTION, TrackingKey.DESCRIPTION, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "key", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "addParams", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Bundle;", "bundle", "addAll$router_release", "(Landroid/os/Bundle;)Lkotlin/Unit;", "addAll", "getExtras", "()Landroid/os/Bundle;", "toString", "()Ljava/lang/String;", "copy", "()Lcom/therouter/router/RouteItem;", "", "describeContents", "()I", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", EventConstants.KEY_SOURCE, "readFromParcel", "Ljava/lang/String;", "getPath", "setPath", "(Ljava/lang/String;)V", "getClassName", "setClassName", "getAction", "setAction", "getDescription", "setDescription", "Ljava/util/HashMap;", "params", "Ljava/util/HashMap;", "extras", "Landroid/os/Bundle;", "CREATOR", "a", "router_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RouteItem implements Parcelable, Serializable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String action;
    private String className;
    private String description;
    private Bundle extras;
    private HashMap<String, String> params;
    private String path;

    /* JADX INFO: renamed from: com.therouter.router.RouteItem$a, reason: from kotlin metadata */
    public static final class Companion implements Parcelable.Creator {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RouteItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RouteItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RouteItem[] newArray(int i11) {
            return new RouteItem[i11];
        }
    }

    public RouteItem() {
        this.path = "";
        this.className = "";
        this.action = "";
        this.description = "";
        this.params = new HashMap<>();
        this.extras = new Bundle();
    }

    public RouteItem(Parcel p11) {
        Intrinsics.h(p11, "p");
        this.path = "";
        this.className = "";
        this.action = "";
        this.description = "";
        this.params = new HashMap<>();
        this.extras = new Bundle();
        String string = p11.readString();
        this.path = string == null ? "" : string;
        String string2 = p11.readString();
        this.className = string2 == null ? "" : string2;
        String string3 = p11.readString();
        this.action = string3 == null ? "" : string3;
        String string4 = p11.readString();
        this.description = string4 != null ? string4 : "";
        Serializable serializable = p11.readSerializable();
        this.params = serializable instanceof HashMap ? (HashMap) serializable : new HashMap<>();
        Bundle bundle = p11.readBundle(ClassLoader.getSystemClassLoader());
        this.extras = bundle == null ? new Bundle() : bundle;
    }

    public RouteItem(String path, String className, String action, String description) {
        Intrinsics.h(path, "path");
        Intrinsics.h(className, "className");
        Intrinsics.h(action, "action");
        Intrinsics.h(description, "description");
        this.path = "";
        this.className = "";
        this.action = "";
        this.description = "";
        this.params = new HashMap<>();
        this.extras = new Bundle();
        this.path = path;
        this.className = className;
        this.action = action;
        this.description = description;
    }

    public final Unit addAll$router_release(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        this.extras.putAll(bundle);
        return Unit.f67061a;
    }

    public final void addParams(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        this.extras.putString(key, value);
    }

    public final RouteItem copy() {
        RouteItem routeItem = new RouteItem();
        routeItem.extras.putAll(this.extras);
        routeItem.params.putAll(this.params);
        routeItem.description = this.description;
        routeItem.action = this.action;
        routeItem.className = this.className;
        routeItem.path = this.path;
        return routeItem;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getAction() {
        return this.action;
    }

    public final String getClassName() {
        return this.className;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Bundle getExtras() {
        for (Map.Entry<String, String> entry : this.params.entrySet()) {
            if (!this.extras.keySet().contains(entry.getKey())) {
                this.extras.putString(entry.getKey(), entry.getValue());
            }
        }
        return this.extras;
    }

    public final String getPath() {
        return this.path;
    }

    public final void readFromParcel(Parcel source) {
        Intrinsics.h(source, "source");
        String string = source.readString();
        Intrinsics.e(string);
        this.path = string;
        String string2 = source.readString();
        Intrinsics.e(string2);
        this.className = string2;
        String string3 = source.readString();
        Intrinsics.e(string3);
        this.action = string3;
        String string4 = source.readString();
        Intrinsics.e(string4);
        this.description = string4;
        Serializable serializable = source.readSerializable();
        this.params = serializable instanceof HashMap ? (HashMap) serializable : new HashMap<>();
        Bundle bundle = source.readBundle(RouteItem.class.getClassLoader());
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.extras = bundle;
    }

    public final void setAction(String str) {
        Intrinsics.h(str, "<set-?>");
        this.action = str;
    }

    public final void setClassName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.className = str;
    }

    public final void setDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.description = str;
    }

    public final void setPath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.path = str;
    }

    public String toString() {
        return "RouteItem(path='" + this.path + "', className='" + this.className + "', action='" + this.action + "', description='" + this.description + "', extras=" + this.extras + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.path);
        dest.writeString(this.className);
        dest.writeString(this.action);
        dest.writeString(this.description);
        dest.writeSerializable(this.params);
        dest.writeBundle(this.extras);
    }
}
