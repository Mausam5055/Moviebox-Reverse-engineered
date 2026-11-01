package com.transsion.athena.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.meituan.android.walle.ChannelReader;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.core.log.ObjectLogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppIdData implements Parcelable {
    public static final Parcelable.Creator<AppIdData> CREATOR = new athena();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f42642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f42643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f42644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f42645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<anehat> f42646e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f42647f;

    /* JADX INFO: loaded from: classes5.dex */
    class athena implements Parcelable.Creator<AppIdData> {
        athena() {
        }

        @Override // android.os.Parcelable.Creator
        public AppIdData createFromParcel(Parcel parcel) {
            return new AppIdData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AppIdData[] newArray(int i11) {
            return new AppIdData[i11];
        }
    }

    public AppIdData() {
    }

    public AppIdData(Parcel parcel) {
        this.f42642a = parcel.readInt();
        this.f42643b = parcel.readString();
    }

    public static AppIdData a(Context context, int i11) {
        AppIdData appIdData = new AppIdData();
        appIdData.f42642a = i11;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pkgName", com.transsion.athena.taaneh.athena.h(context));
            jSONObject.put("versionSDK", "3.1.1.4");
            jSONObject.put(ChannelReader.CHANNEL_KEY, ehanat.g());
            jSONObject.put("installer", com.transsion.athena.taaneh.athena.e(context));
            jSONObject.put("versionName", com.transsion.athena.taaneh.athena.j(context));
            jSONObject.put("versionCode", String.valueOf(com.transsion.athena.taaneh.athena.i(context)));
            appIdData.f42643b = jSONObject.toString();
        } catch (Exception e11) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return appIdData;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<anehat> it = this.f42646e.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
        }
        return "AppIdData{appid=" + this.f42642a + ", baseInfo='" + this.f42643b + "', packetUid='" + this.f42644c + "', retryTimes=" + this.f42645d + ", serverUrl='" + this.f42647f + "', tidEventSets='" + ((Object) sb2) + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.f42642a);
        parcel.writeString(this.f42643b);
    }
}
