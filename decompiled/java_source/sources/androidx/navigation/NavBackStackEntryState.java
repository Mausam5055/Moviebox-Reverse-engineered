package androidx.navigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.p009lifecycle.Lifecycle;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u0000 *2\u00020\u0001:\u0001+B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ/\u0010\u0011\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u001c\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010 \u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010\u0015R\u0019\u0010$\u001a\u0004\u0018\u00010#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010(\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b(\u0010%\u001a\u0004\b)\u0010'¨\u0006,"}, d2 = {"Landroidx/navigation/NavBackStackEntryState;", "Landroid/os/Parcelable;", "Landroidx/navigation/NavBackStackEntry;", "entry", "<init>", "(Landroidx/navigation/NavBackStackEntry;)V", "Landroid/os/Parcel;", "inParcel", "(Landroid/os/Parcel;)V", "Landroid/content/Context;", "context", "Landroidx/navigation/NavDestination;", "destination", "Landroidx/lifecycle/Lifecycle$State;", "hostLifecycleState", "Landroidx/navigation/f;", "viewModel", "instantiate", "(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/f;)Landroidx/navigation/NavBackStackEntry;", "", "describeContents", "()I", "parcel", "i", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "destinationId", "I", "getDestinationId", "Landroid/os/Bundle;", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "Landroid/os/Bundle;", "getArgs", "()Landroid/os/Bundle;", "savedState", "getSavedState", "Companion", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"BanParcelableUsage"})
public final class NavBackStackEntryState implements Parcelable {
    private final Bundle args;
    private final int destinationId;
    private final String id;
    private final Bundle savedState;

    @JvmField
    public static final Parcelable.Creator<NavBackStackEntryState> CREATOR = new a();

    public static final class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavBackStackEntryState createFromParcel(Parcel inParcel) {
            Intrinsics.h(inParcel, "inParcel");
            return new NavBackStackEntryState(inParcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavBackStackEntryState[] newArray(int i11) {
            return new NavBackStackEntryState[i11];
        }
    }

    public NavBackStackEntryState(Parcel inParcel) {
        Intrinsics.h(inParcel, "inParcel");
        String string = inParcel.readString();
        Intrinsics.e(string);
        Intrinsics.g(string, "inParcel.readString()!!");
        this.id = string;
        this.destinationId = inParcel.readInt();
        this.args = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Bundle bundle = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Intrinsics.e(bundle);
        Intrinsics.g(bundle, "inParcel.readBundle(javaClass.classLoader)!!");
        this.savedState = bundle;
    }

    public NavBackStackEntryState(NavBackStackEntry entry) {
        Intrinsics.h(entry, "entry");
        this.id = entry.g();
        this.destinationId = entry.f().n();
        this.args = entry.d();
        Bundle bundle = new Bundle();
        this.savedState = bundle;
        entry.j(bundle);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Bundle getArgs() {
        return this.args;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public final String getId() {
        return this.id;
    }

    public final Bundle getSavedState() {
        return this.savedState;
    }

    public final NavBackStackEntry instantiate(Context context, NavDestination destination, Lifecycle.State hostLifecycleState, f viewModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(destination, "destination");
        Intrinsics.h(hostLifecycleState, "hostLifecycleState");
        Bundle bundle = this.args;
        if (bundle == null) {
            bundle = null;
        } else {
            bundle.setClassLoader(context.getClassLoader());
        }
        return NavBackStackEntry.f13763n.a(context, destination, bundle, hostLifecycleState, viewModel, this.id, this.savedState);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeInt(this.destinationId);
        parcel.writeBundle(this.args);
        parcel.writeBundle(this.savedState);
    }
}
