package com.transsion.lib_web.zip.db;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/transsion/lib_web/zip/db/WebResRemoteBean;", "Landroid/os/Parcelable;", "list", "", "Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;", "lastUpdateTime", "", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getList", "()Ljava/util/List;", "getLastUpdateTime", "()Ljava/lang/String;", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WebResRemoteBean implements Parcelable {
    public static final Parcelable.Creator<WebResRemoteBean> CREATOR = new a();
    private final String lastUpdateTime;
    private final List<WebViewCacheConfigData> list;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebResRemoteBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(WebViewCacheConfigData.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new WebResRemoteBean(arrayList, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final WebResRemoteBean[] newArray(int i11) {
            return new WebResRemoteBean[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebResRemoteBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public WebResRemoteBean(List<WebViewCacheConfigData> list, String str) {
        this.list = list;
        this.lastUpdateTime = str;
    }

    public /* synthetic */ WebResRemoteBean(List list, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WebResRemoteBean copy$default(WebResRemoteBean webResRemoteBean, List list, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = webResRemoteBean.list;
        }
        if ((i11 & 2) != 0) {
            str = webResRemoteBean.lastUpdateTime;
        }
        return webResRemoteBean.copy(list, str);
    }

    public final List<WebViewCacheConfigData> component1() {
        return this.list;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public final WebResRemoteBean copy(List<WebViewCacheConfigData> list, String lastUpdateTime) {
        return new WebResRemoteBean(list, lastUpdateTime);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebResRemoteBean)) {
            return false;
        }
        WebResRemoteBean webResRemoteBean = (WebResRemoteBean) other;
        return Intrinsics.c(this.list, webResRemoteBean.list) && Intrinsics.c(this.lastUpdateTime, webResRemoteBean.lastUpdateTime);
    }

    public final String getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public final List<WebViewCacheConfigData> getList() {
        return this.list;
    }

    public int hashCode() {
        List<WebViewCacheConfigData> list = this.list;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.lastUpdateTime;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "WebResRemoteBean(list=" + this.list + ", lastUpdateTime=" + this.lastUpdateTime + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<WebViewCacheConfigData> list = this.list;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<WebViewCacheConfigData> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.lastUpdateTime);
    }
}
