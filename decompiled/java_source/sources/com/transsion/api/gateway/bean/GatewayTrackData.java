package com.transsion.api.gateway.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.api.gateway.utils.GatewayUtils;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class GatewayTrackData implements Parcelable {
    public static final Parcelable.Creator<GatewayTrackData> CREATOR = new Parcelable.Creator<GatewayTrackData>() { // from class: com.transsion.api.gateway.bean.GatewayTrackData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GatewayTrackData createFromParcel(Parcel parcel) {
            return new GatewayTrackData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GatewayTrackData[] newArray(int i11) {
            return new GatewayTrackData[i11];
        }
    };
    private JSONObject jsonObject;

    public GatewayTrackData() {
        this.jsonObject = new JSONObject();
    }

    public GatewayTrackData(Bundle bundle) {
        this.jsonObject = new JSONObject();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                add(str, String.valueOf(bundle.get(str)));
            }
        }
    }

    public GatewayTrackData(Parcel parcel) {
        try {
            this.jsonObject = new JSONObject(parcel.readString());
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public GatewayTrackData add(String str, double d11) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), d11);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, int i11) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), i11);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, long j11) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), j11);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, Bundle bundle) {
        if (bundle == null) {
            return this;
        }
        String lowerCase = str.toLowerCase();
        Set<String> setKeySet = bundle.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : setKeySet) {
                jSONObject.put(str2, bundle.get(str2));
            }
            this.jsonObject.put(lowerCase, jSONObject);
        } catch (Exception e11) {
            GatewayUtils.L.e(e11);
        }
        return this;
    }

    public GatewayTrackData add(String str, String str2) {
        if (str2 == null) {
            str2 = "null";
        }
        try {
            this.jsonObject.put("_" + str.toLowerCase(), str2);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, List<Bundle> list) {
        String str2 = "_" + str.toLowerCase();
        try {
            JSONArray jSONArray = new JSONArray();
            for (Bundle bundle : list) {
                Set<String> setKeySet = bundle.keySet();
                JSONObject jSONObject = new JSONObject();
                for (String str3 : setKeySet) {
                    if (bundle.get(str3) instanceof String) {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    } else {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    }
                }
                jSONArray.put(jSONObject);
            }
            this.jsonObject.put(str2, jSONArray);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, boolean z10) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), z10);
        } catch (Exception unused) {
        }
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public JSONObject getJsonObject() {
        return this.jsonObject;
    }

    public boolean has(String str) {
        JSONObject jSONObject = this.jsonObject;
        return jSONObject != null && jSONObject.has(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.jsonObject.toString());
    }
}
