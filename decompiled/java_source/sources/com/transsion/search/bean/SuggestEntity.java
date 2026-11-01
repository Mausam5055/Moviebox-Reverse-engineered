package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000bHÆ\u0003JJ\u0010(\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010)J\u0006\u0010*\u001a\u00020\u0003J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u00020\u0005HÖ\u0001J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00066"}, d2 = {"Lcom/transsion/search/bean/SuggestEntity;", "Landroid/os/Parcelable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "word", "", "verticalRank", "Lcom/transsion/search/bean/VerticalRank;", "subject", "Lcom/transsion/moviedetailapi/bean/Subject;", "staff", "Lcom/transsion/moviedetailapi/bean/Staff;", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Staff;)V", "getType", "()Ljava/lang/Integer;", "setType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getWord", "()Ljava/lang/String;", "setWord", "(Ljava/lang/String;)V", "getVerticalRank", "()Lcom/transsion/search/bean/VerticalRank;", "setVerticalRank", "(Lcom/transsion/search/bean/VerticalRank;)V", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getStaff", "()Lcom/transsion/moviedetailapi/bean/Staff;", "setStaff", "(Lcom/transsion/moviedetailapi/bean/Staff;)V", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Staff;)Lcom/transsion/search/bean/SuggestEntity;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SuggestEntity implements Parcelable {
    public static final Parcelable.Creator<SuggestEntity> CREATOR = new a();
    private Staff staff;
    private Subject subject;
    private Integer type;
    private VerticalRank verticalRank;
    private String word;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SuggestEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SuggestEntity(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() != 0 ? VerticalRank.CREATOR.createFromParcel(parcel) : null, (Subject) parcel.readSerializable(), (Staff) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SuggestEntity[] newArray(int i11) {
            return new SuggestEntity[i11];
        }
    }

    public SuggestEntity(Integer num, String str, VerticalRank verticalRank, Subject subject, Staff staff) {
        this.type = num;
        this.word = str;
        this.verticalRank = verticalRank;
        this.subject = subject;
        this.staff = staff;
    }

    public static /* synthetic */ SuggestEntity copy$default(SuggestEntity suggestEntity, Integer num, String str, VerticalRank verticalRank, Subject subject, Staff staff, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = suggestEntity.type;
        }
        if ((i11 & 2) != 0) {
            str = suggestEntity.word;
        }
        String str2 = str;
        if ((i11 & 4) != 0) {
            verticalRank = suggestEntity.verticalRank;
        }
        VerticalRank verticalRank2 = verticalRank;
        if ((i11 & 8) != 0) {
            subject = suggestEntity.subject;
        }
        Subject subject2 = subject;
        if ((i11 & 16) != 0) {
            staff = suggestEntity.staff;
        }
        return suggestEntity.copy(num, str2, verticalRank2, subject2, staff);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Staff getStaff() {
        return this.staff;
    }

    public final SuggestEntity copy(Integer type, String word, VerticalRank verticalRank, Subject subject, Staff staff) {
        return new SuggestEntity(type, word, verticalRank, subject, staff);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SuggestEntity)) {
            return false;
        }
        SuggestEntity suggestEntity = (SuggestEntity) other;
        return Intrinsics.c(this.type, suggestEntity.type) && Intrinsics.c(this.word, suggestEntity.word) && Intrinsics.c(this.verticalRank, suggestEntity.verticalRank) && Intrinsics.c(this.subject, suggestEntity.subject) && Intrinsics.c(this.staff, suggestEntity.staff);
    }

    public final Staff getStaff() {
        return this.staff;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public final Integer getType() {
        return this.type;
    }

    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final String getWord() {
        return this.word;
    }

    public int hashCode() {
        Integer num = this.type;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.word;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        VerticalRank verticalRank = this.verticalRank;
        int iHashCode3 = (iHashCode2 + (verticalRank == null ? 0 : verticalRank.hashCode())) * 31;
        Subject subject = this.subject;
        int iHashCode4 = (iHashCode3 + (subject == null ? 0 : subject.hashCode())) * 31;
        Staff staff = this.staff;
        return iHashCode4 + (staff != null ? staff.hashCode() : 0);
    }

    public final void setStaff(Staff staff) {
        this.staff = staff;
    }

    public final void setSubject(Subject subject) {
        this.subject = subject;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public final void setVerticalRank(VerticalRank verticalRank) {
        this.verticalRank = verticalRank;
    }

    public final void setWord(String str) {
        this.word = str;
    }

    public String toString() {
        return "SuggestEntity(type=" + this.type + ", word=" + this.word + ", verticalRank=" + this.verticalRank + ", subject=" + this.subject + ", staff=" + this.staff + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.type;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.word);
        VerticalRank verticalRank = this.verticalRank;
        if (verticalRank == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            verticalRank.writeToParcel(dest, flags);
        }
        dest.writeSerializable(this.subject);
        dest.writeSerializable(this.staff);
    }
}
