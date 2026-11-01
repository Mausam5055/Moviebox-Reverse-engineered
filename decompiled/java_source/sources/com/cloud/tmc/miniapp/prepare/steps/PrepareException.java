package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class PrepareException extends Exception implements Parcelable {
    public static final Parcelable.Creator<PrepareException> CREATOR = new OooO00o();
    public static final String ERROR_DOWNLOAD_PACKAGE_URL_EMPTY = "11";
    public static final String ERROR_FILE2VURL_FRAMEWORK_FILE_EXCEPTION = "14";
    public static final String ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION = "15";
    public static final String ERROR_LOCAL_DATA_FILE_SCAN = "12";
    public static final String ERROR_MANIFEST_INFO = "8";
    public static final String ERROR_MINI_APPID = "10";
    public static final String ERROR_MINI_APP_CLOSE = "9";
    public static final String ERROR_NO_APPINFO = "1";
    public static final String ERROR_NO_URL = "6";
    public static final String ERROR_RPC_EXCEPTION = "2";
    public static final String ERROR_SIGN_ERROR = "7";
    public static final String ERROR_TIMEOUT = "3";
    public static final String ERROR_UNKNOWN = "0";
    public static final String ERROR_UNSTABLE_EXCEPTION = "4";
    public static final String ERROR_UNZIP_EXCEPTION = "5";
    public static final String ERROR_WARMUP_DOWNLOAD_EXCEPTION = "13";
    private String code;
    private boolean needShowFail;

    public class OooO00o implements Parcelable.Creator<PrepareException> {
        @Override // android.os.Parcelable.Creator
        public PrepareException createFromParcel(Parcel parcel) {
            return new PrepareException(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PrepareException[] newArray(int i11) {
            return new PrepareException[i11];
        }
    }

    public PrepareException(Parcel parcel) {
        this.code = parcel.readString();
    }

    public PrepareException(String str) {
        this("0", str, null);
    }

    public PrepareException(String str, String str2) {
        this(str, str2, null);
    }

    public PrepareException(String str, String str2, Throwable th2) {
        super(str2, th2);
        this.code = str;
        str.getClass();
        switch (str) {
            case "2":
            case "3":
            case "4":
            case "5":
                this.needShowFail = true;
                break;
        }
    }

    public static String codeToDes(String str) {
        if (str == null) {
            return "";
        }
        switch (str) {
            case "0":
                return "未知错误";
            case "1":
                return "未找到AppInfo";
            case "2":
                return "ERROR_RPC_EXCEPTION";
            case "3":
                return "无网并且必须同步拉取 APPINFO";
            case "4":
                return "包下载异常，或者包文件不存在";
            case "5":
                return "解压异常";
            case "6":
                return "ERROR_NO_URL";
            case "7":
                return "签名校验异常";
            case "8":
                return "清单文件读取异常";
            case "9":
                return "小程序已停用";
            case "10":
                return "错误的小程序ID";
            default:
                return "错误码:" + str;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCode() {
        return this.code;
    }

    public boolean isNeedShowFail() {
        return this.needShowFail;
    }

    public void setNeedShowFail(boolean z10) {
        this.needShowFail = z10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.code);
    }
}
