package com.transsion.shorttv_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u000bHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u000bHÆ\u0003Jk\u0010-\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\u000bHÆ\u0001J\u0006\u0010.\u001a\u00020/J\u0013\u00100\u001a\u00020\u000b2\b\u00101\u001a\u0004\u0018\u000102HÖ\u0003J\t\u00103\u001a\u00020/HÖ\u0001J\t\u00104\u001a\u00020\u0003HÖ\u0001J\u0016\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020/R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\u001a\u0010\r\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u001f\"\u0004\b$\u0010!¨\u0006:"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/PlayListItemBean;", "Landroid/os/Parcelable;", "id", "", "deepLink", "ops", "subjects", "", "Lcom/transsion/shorttv_pugc/bean/Subject;", CampaignEx.JSON_KEY_TITLE, "builtIn", "", "md5", "isLastOne", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Z)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getDeepLink", "setDeepLink", "getOps", "setOps", "getSubjects", "()Ljava/util/List;", "setSubjects", "(Ljava/util/List;)V", "getTitle", "setTitle", "getBuiltIn", "()Z", "setBuiltIn", "(Z)V", "getMd5", "setMd5", "setLastOne", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayListItemBean implements Parcelable {
    public static final Parcelable.Creator<PlayListItemBean> CREATOR = new a();
    private boolean builtIn;
    private String deepLink;
    private String id;
    private transient boolean isLastOne;
    private String md5;
    private String ops;
    private List<? extends Subject> subjects;
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlayListItemBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            return new PlayListItemBean(string, string2, string3, arrayList, parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PlayListItemBean[] newArray(int i11) {
            return new PlayListItemBean[i11];
        }
    }

    public PlayListItemBean(String str, String str2, String str3, List<? extends Subject> list, String str4, boolean z10, String str5, boolean z11) {
        this.id = str;
        this.deepLink = str2;
        this.ops = str3;
        this.subjects = list;
        this.title = str4;
        this.builtIn = z10;
        this.md5 = str5;
        this.isLastOne = z11;
    }

    public /* synthetic */ PlayListItemBean(String str, String str2, String str3, List list, String str4, boolean z10, String str5, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, list, str4, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? false : z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final List<Subject> component4() {
        return this.subjects;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMd5() {
        return this.md5;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsLastOne() {
        return this.isLastOne;
    }

    public final PlayListItemBean copy(String id2, String deepLink, String ops, List<? extends Subject> subjects, String title, boolean builtIn, String md5, boolean isLastOne) {
        return new PlayListItemBean(id2, deepLink, ops, subjects, title, builtIn, md5, isLastOne);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListItemBean)) {
            return false;
        }
        PlayListItemBean playListItemBean = (PlayListItemBean) other;
        return Intrinsics.c(this.id, playListItemBean.id) && Intrinsics.c(this.deepLink, playListItemBean.deepLink) && Intrinsics.c(this.ops, playListItemBean.ops) && Intrinsics.c(this.subjects, playListItemBean.subjects) && Intrinsics.c(this.title, playListItemBean.title) && this.builtIn == playListItemBean.builtIn && Intrinsics.c(this.md5, playListItemBean.md5) && this.isLastOne == playListItemBean.isLastOne;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final String getId() {
        return this.id;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final String getOps() {
        return this.ops;
    }

    public final List<Subject> getSubjects() {
        return this.subjects;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.deepLink;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ops;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<? extends Subject> list = this.subjects;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.title;
        int iHashCode5 = (((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + e.a(this.builtIn)) * 31;
        String str5 = this.md5;
        return ((iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31) + e.a(this.isLastOne);
    }

    public final boolean isLastOne() {
        return this.isLastOne;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setLastOne(boolean z10) {
        this.isLastOne = z10;
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setSubjects(List<? extends Subject> list) {
        this.subjects = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PlayListItemBean(id=" + this.id + ", deepLink=" + this.deepLink + ", ops=" + this.ops + ", subjects=" + this.subjects + ", title=" + this.title + ", builtIn=" + this.builtIn + ", md5=" + this.md5 + ", isLastOne=" + this.isLastOne + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.deepLink);
        dest.writeString(this.ops);
        List<? extends Subject> list = this.subjects;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<? extends Subject> it = list.iterator();
            while (it.hasNext()) {
                dest.writeSerializable(it.next());
            }
        }
        dest.writeString(this.title);
        dest.writeInt(this.builtIn ? 1 : 0);
        dest.writeString(this.md5);
        dest.writeInt(this.isLastOne ? 1 : 0);
    }
}
