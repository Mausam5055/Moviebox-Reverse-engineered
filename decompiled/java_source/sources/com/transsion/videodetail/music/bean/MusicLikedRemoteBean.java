package com.transsion.videodetail.music.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0012R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "describeContents", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicLikedRemoteBean implements Parcelable {
    public static final Parcelable.Creator<MusicLikedRemoteBean> CREATOR = new a();
    private List<MusicLikedRemoteItemBean> items;
    private Pager pager;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MusicLikedRemoteBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(MusicLikedRemoteItemBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new MusicLikedRemoteBean(arrayList, (Pager) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MusicLikedRemoteBean[] newArray(int i11) {
            return new MusicLikedRemoteBean[i11];
        }
    }

    public MusicLikedRemoteBean(List<MusicLikedRemoteItemBean> list, Pager pager) {
        this.items = list;
        this.pager = pager;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final List<MusicLikedRemoteItemBean> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final void setItems(List<MusicLikedRemoteItemBean> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<MusicLikedRemoteItemBean> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<MusicLikedRemoteItemBean> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeSerializable(this.pager);
    }
}
