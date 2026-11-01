package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.CategoryItemBean;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J=\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u001f\u001a\u00020 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020 HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020 R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000f¨\u0006,"}, d2 = {"Lcom/transsion/home/bean/CategoryBean;", "Landroid/os/Parcelable;", CampaignEx.JSON_KEY_DESC, "", "list", "", "Lcom/transsion/moviedetailapi/bean/CategoryItemBean;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "ops", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getOps", "setOps", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CategoryBean implements Parcelable {
    private String desc;
    private List<CategoryItemBean> list;
    private String ops;
    private Pager pager;
    public static final Parcelable.Creator<CategoryBean> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CategoryBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(parcel.readParcelable(CategoryBean.class.getClassLoader()));
                }
                arrayList = arrayList2;
            }
            return new CategoryBean(string, arrayList, (Pager) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CategoryBean[] newArray(int i11) {
            return new CategoryBean[i11];
        }
    }

    public CategoryBean(String str, List<CategoryItemBean> list, Pager pager, String ops) {
        Intrinsics.h(ops, "ops");
        this.desc = str;
        this.list = list;
        this.pager = pager;
        this.ops = ops;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategoryBean copy$default(CategoryBean categoryBean, String str, List list, Pager pager, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = categoryBean.desc;
        }
        if ((i11 & 2) != 0) {
            list = categoryBean.list;
        }
        if ((i11 & 4) != 0) {
            pager = categoryBean.pager;
        }
        if ((i11 & 8) != 0) {
            str2 = categoryBean.ops;
        }
        return categoryBean.copy(str, list, pager, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    public final List<CategoryItemBean> component2() {
        return this.list;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final CategoryBean copy(String desc, List<CategoryItemBean> list, Pager pager, String ops) {
        Intrinsics.h(ops, "ops");
        return new CategoryBean(desc, list, pager, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CategoryBean)) {
            return false;
        }
        CategoryBean categoryBean = (CategoryBean) other;
        return Intrinsics.c(this.desc, categoryBean.desc) && Intrinsics.c(this.list, categoryBean.list) && Intrinsics.c(this.pager, categoryBean.pager) && Intrinsics.c(this.ops, categoryBean.ops);
    }

    public final String getDesc() {
        return this.desc;
    }

    public final List<CategoryItemBean> getList() {
        return this.list;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        String str = this.desc;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<CategoryItemBean> list = this.list;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Pager pager = this.pager;
        return ((iHashCode2 + (pager != null ? pager.hashCode() : 0)) * 31) + this.ops.hashCode();
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setList(List<CategoryItemBean> list) {
        this.list = list;
    }

    public final void setOps(String str) {
        Intrinsics.h(str, "<set-?>");
        this.ops = str;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public String toString() {
        return "CategoryBean(desc=" + this.desc + ", list=" + this.list + ", pager=" + this.pager + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.desc);
        List<CategoryItemBean> list = this.list;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<CategoryItemBean> it = list.iterator();
            while (it.hasNext()) {
                dest.writeParcelable(it.next(), flags);
            }
        }
        dest.writeSerializable(this.pager);
        dest.writeString(this.ops);
    }
}
