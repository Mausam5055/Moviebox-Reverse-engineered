package com.transsion.usercenter.setting.labelsfeedback.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.therouter.TheRouter;
import com.transsion.usercenter.R$string;
import com.transsnet.loginapi.ILoginApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u007f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010:\u001a\u00020;2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020-0,J\u0006\u0010<\u001a\u00020\nJ\u0016\u0010=\u001a\u00020;2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001e\u0010\f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b!\u0010\u001b\"\u0004\b\"\u0010\u001dR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010%R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0016\"\u0004\b'\u0010%R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0016R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0016\"\u0004\b*\u0010%R&\u0010+\u001a\b\u0012\u0004\u0012\u00020-0,X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0011\u00104\u001a\u0002058F¢\u0006\u0006\u001a\u0004\b6\u00107R\u0013\u00108\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b9\u0010\u001b¨\u0006A"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "Landroid/os/Parcelable;", "tv", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;", "pageName", "", "subjectId", "contact", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;", "selectedIndex", "", "selectedId", "innerSelectedIndex", "content", "imagePath", "ugcVideoId", "tempBucket", "<init>", "(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTv", "()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;", "getPageName", "()Ljava/lang/String;", "getSubjectId", "getContact", "()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;", "getSelectedIndex", "()Ljava/lang/Integer;", "setSelectedIndex", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSelectedId", "setSelectedId", "getInnerSelectedIndex", "setInnerSelectedIndex", "getContent", "setContent", "(Ljava/lang/String;)V", "getImagePath", "setImagePath", "getUgcVideoId", "getTempBucket", "setTempBucket", "options", "", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;", "getOptions$annotations", "()V", "getOptions", "()Ljava/util/List;", "setOptions", "(Ljava/util/List;)V", "canSubmit", "", "getCanSubmit", "()Z", "tips", "getTips", "fillOption", "", "describeContents", "writeToParcel", "dest", "Landroid/os/Parcel;", "flags", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FbDataModel implements Parcelable {
    public static final Parcelable.Creator<FbDataModel> CREATOR = new a();
    private final FBContact contact;
    private String content;
    private String imagePath;
    private Integer innerSelectedIndex;
    private transient List<FbOption> options;
    private final String pageName;
    private Integer selectedId;
    private Integer selectedIndex;
    private final String subjectId;
    private String tempBucket;
    private final FbTvData tv;
    private final String ugcVideoId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FbDataModel createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new FbDataModel(parcel.readInt() == 0 ? null : FbTvData.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), FBContact.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FbDataModel[] newArray(int i11) {
            return new FbDataModel[i11];
        }
    }

    public FbDataModel(FbTvData fbTvData, String pageName, String str, FBContact contact, Integer num, Integer num2, Integer num3, String str2, String str3, String str4, String str5) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(contact, "contact");
        this.tv = fbTvData;
        this.pageName = pageName;
        this.subjectId = str;
        this.contact = contact;
        this.selectedIndex = num;
        this.selectedId = num2;
        this.innerSelectedIndex = num3;
        this.content = str2;
        this.imagePath = str3;
        this.ugcVideoId = str4;
        this.tempBucket = str5;
        this.options = CollectionsKt.l();
    }

    public /* synthetic */ FbDataModel(FbTvData fbTvData, String str, String str2, FBContact fBContact, Integer num, Integer num2, Integer num3, String str3, String str4, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(fbTvData, str, str2, fBContact, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : num2, (i11 & 64) != 0 ? null : num3, (i11 & 128) != 0 ? null : str3, (i11 & 256) != 0 ? null : str4, (i11 & 512) != 0 ? null : str5, (i11 & 1024) != 0 ? null : str6);
    }

    public static /* synthetic */ void getOptions$annotations() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void fillOption(List<FbOption> options) {
        Intrinsics.h(options, "options");
        this.options = options;
        ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        if (iLoginApi != null && this.contact.getCountry() == null) {
            this.contact.setCountry(iLoginApi.e());
        }
        Integer num = this.selectedIndex;
        if (num != null) {
            options.get(num.intValue()).setSelectedIndex(this.innerSelectedIndex);
        }
    }

    public final boolean getCanSubmit() {
        String str = this.content;
        return (str != null ? str.length() : 0) > 0 || this.selectedId != null;
    }

    public final FBContact getContact() {
        return this.contact;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getImagePath() {
        return this.imagePath;
    }

    public final Integer getInnerSelectedIndex() {
        return this.innerSelectedIndex;
    }

    public final List<FbOption> getOptions() {
        return this.options;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final Integer getSelectedId() {
        return this.selectedId;
    }

    public final Integer getSelectedIndex() {
        return this.selectedIndex;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTempBucket() {
        return this.tempBucket;
    }

    public final Integer getTips() {
        if (!m.f70474a.e()) {
            return Integer.valueOf(R$string.user_setting_feedback_upload_fail);
        }
        if (this.contact.getNeedCountry()) {
            return Integer.valueOf(R$string.feedback_please_input_country_code);
        }
        return null;
    }

    public final FbTvData getTv() {
        return this.tv;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setImagePath(String str) {
        this.imagePath = str;
    }

    public final void setInnerSelectedIndex(Integer num) {
        this.innerSelectedIndex = num;
    }

    public final void setOptions(List<FbOption> list) {
        Intrinsics.h(list, "<set-?>");
        this.options = list;
    }

    public final void setSelectedId(Integer num) {
        this.selectedId = num;
    }

    public final void setSelectedIndex(Integer num) {
        this.selectedIndex = num;
    }

    public final void setTempBucket(String str) {
        this.tempBucket = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        FbTvData fbTvData = this.tv;
        if (fbTvData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            fbTvData.writeToParcel(dest, flags);
        }
        dest.writeString(this.pageName);
        dest.writeString(this.subjectId);
        this.contact.writeToParcel(dest, flags);
        Integer num = this.selectedIndex;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.selectedId;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.innerSelectedIndex;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        dest.writeString(this.content);
        dest.writeString(this.imagePath);
        dest.writeString(this.ugcVideoId);
        dest.writeString(this.tempBucket);
    }
}
