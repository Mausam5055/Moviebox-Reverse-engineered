package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class ViewJson implements Parcelable {
    public static final Parcelable.Creator<ViewJson> CREATOR = new Parcelable.Creator<ViewJson>() { // from class: com.cloud.hisavana.sdk.data.bean.response.ViewJson.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ViewJson createFromParcel(Parcel parcel) {
            return new ViewJson(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ViewJson[] newArray(int i11) {
            return new ViewJson[i11];
        }
    };
    private DialogJson dialogJson;
    private Integer dialogType;
    private String formPath;
    private OfflineJson offline;

    public static class DialogJson implements Parcelable {
        public static final Parcelable.Creator<DialogJson> CREATOR = new Parcelable.Creator<DialogJson>() { // from class: com.cloud.hisavana.sdk.data.bean.response.ViewJson.DialogJson.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DialogJson createFromParcel(Parcel parcel) {
                return new DialogJson(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DialogJson[] newArray(int i11) {
                return new DialogJson[i11];
            }
        };
        private String height;
        private String url;

        protected DialogJson(Parcel parcel) {
            this.url = parcel.readString();
            this.height = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getHeight() {
            return this.height;
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public void setHeight(String str) {
            this.height = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.url);
            parcel.writeString(this.height);
        }
    }

    public static class OfflineJson implements Parcelable {
        public static final Parcelable.Creator<OfflineJson> CREATOR = new Parcelable.Creator<OfflineJson>() { // from class: com.cloud.hisavana.sdk.data.bean.response.ViewJson.OfflineJson.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OfflineJson createFromParcel(Parcel parcel) {
                return new OfflineJson(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OfflineJson[] newArray(int i11) {
                return new OfflineJson[i11];
            }
        };
        private Integer maxShowPPPD;
        private String res;
        private String zipRes;

        protected OfflineJson(Parcel parcel) {
            this.res = parcel.readString();
            this.zipRes = parcel.readString();
            if (parcel.readByte() == 0) {
                this.maxShowPPPD = null;
            } else {
                this.maxShowPPPD = Integer.valueOf(parcel.readInt());
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Integer getMaxShowPPPD() {
            Integer num = this.maxShowPPPD;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getRes() {
            String str = this.res;
            return str == null ? "" : str;
        }

        public String getZipRes() {
            String str = this.zipRes;
            return str == null ? "" : str;
        }

        public void setMaxShowPPPD(Integer num) {
            this.maxShowPPPD = num;
        }

        public void setRes(String str) {
            this.res = str;
        }

        public void setZipRes(String str) {
            this.zipRes = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.res);
            parcel.writeString(this.zipRes);
            if (this.maxShowPPPD == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.maxShowPPPD.intValue());
            }
        }
    }

    public ViewJson() {
    }

    protected ViewJson(Parcel parcel) {
        if (parcel.readByte() == 0) {
            this.dialogType = null;
        } else {
            this.dialogType = Integer.valueOf(parcel.readInt());
        }
        this.formPath = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DialogJson getDialogJson() {
        return this.dialogJson;
    }

    public Integer getDialogType() {
        Integer num = this.dialogType;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getFormPath() {
        return this.formPath;
    }

    public OfflineJson getOffline() {
        return this.offline;
    }

    public void setDialogJson(DialogJson dialogJson) {
        this.dialogJson = dialogJson;
    }

    public void setDialogType(Integer num) {
        this.dialogType = num;
    }

    public void setFormPath(String str) {
        this.formPath = str;
    }

    public void setOffline(OfflineJson offlineJson) {
        this.offline = offlineJson;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        if (this.dialogType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.dialogType.intValue());
        }
        parcel.writeString(this.formPath);
    }
}
