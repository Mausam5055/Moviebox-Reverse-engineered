package com.transsion.athena.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.ga.AthenaAnalytics;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class TrackData implements Parcelable {
    public static final Parcelable.Creator<TrackData> CREATOR = new athena();
    public static final int TRACK_ADD = 1;
    public static final int TRACK_APPEND = 2;
    public static final int TRACK_NORMAL = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f42657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f42658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f42659c;

    /* JADX INFO: loaded from: classes5.dex */
    class athena implements Parcelable.Creator<TrackData> {
        athena() {
        }

        @Override // android.os.Parcelable.Creator
        public TrackData createFromParcel(Parcel parcel) {
            return new TrackData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TrackData[] newArray(int i11) {
            return new TrackData[i11];
        }
    }

    public TrackData() {
        this.f42658b = 0;
        this.f42659c = 1.0f;
        this.f42657a = new JSONObject();
    }

    public TrackData(int i11, String str) {
        this.f42659c = 1.0f;
        this.f42658b = i11;
        try {
            if (TextUtils.isEmpty(str)) {
                this.f42657a = new JSONObject();
            } else {
                this.f42657a = new JSONObject(str);
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public TrackData(int i11, JSONObject jSONObject) {
        this.f42659c = 1.0f;
        this.f42658b = i11;
        this.f42657a = jSONObject;
    }

    public TrackData(Bundle bundle) {
        this.f42658b = 0;
        this.f42659c = 1.0f;
        this.f42657a = new JSONObject();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                add(str, String.valueOf(bundle.get(str)));
            }
        }
    }

    protected TrackData(Parcel parcel) {
        this.f42658b = 0;
        this.f42659c = 1.0f;
        try {
            this.f42658b = parcel.readInt();
            this.f42657a = new JSONObject(parcel.readString());
            this.f42659c = parcel.readFloat();
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public JSONObject a() {
        return this.f42657a;
    }

    public void a(float f11) {
        this.f42659c = f11;
    }

    public TrackData add(String str, double d11) {
        return add(str, d11, 0);
    }

    public TrackData add(String str, double d11, int i11) {
        String str2 = "_" + str;
        if (i11 != 0) {
            this.f42658b = i11;
        }
        try {
            if (i11 == 0) {
                this.f42657a.put(str2, d11);
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        this.f42657a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, d11);
                    }
                    return this;
                }
                this.f42657a.put(str2 + UrlUtils.AND_MARK + "add", d11);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, int i11) {
        return add(str, i11, 0);
    }

    public TrackData add(String str, int i11, int i12) {
        String str2 = "_" + str;
        if (i12 != 0) {
            this.f42658b = i12;
        }
        try {
            if (i12 == 0) {
                this.f42657a.put(str2, i11);
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        this.f42657a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, i11);
                    }
                    return this;
                }
                this.f42657a.put(str2 + UrlUtils.AND_MARK + "add", i11);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, long j11) {
        return add(str, j11, 0);
    }

    public TrackData add(String str, long j11, int i11) {
        String str2 = "_" + str;
        if (i11 != 0) {
            this.f42658b = i11;
        }
        try {
            if (i11 == 0) {
                this.f42657a.put(str2, j11);
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        this.f42657a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, j11);
                    }
                    return this;
                }
                this.f42657a.put(str2 + UrlUtils.AND_MARK + "add", j11);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, Bundle bundle) {
        return add(str, bundle, 0);
    }

    public TrackData add(String str, Bundle bundle, int i11) {
        if (bundle == null) {
            return this;
        }
        String str2 = "_" + str;
        if (i11 != 0) {
            this.f42658b = i11;
        }
        Set<String> setKeySet = bundle.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            if (i11 == 0) {
                for (String str3 : setKeySet) {
                    if (bundle.get(str3) instanceof String) {
                        jSONObject.put("_" + str3, AthenaAnalytics.M().a((String) bundle.get(str3)));
                    } else {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    }
                }
                this.f42657a.put(str2, jSONObject);
            } else {
                if (i11 == 1) {
                    throw new IllegalArgumentException("json object can not set TRACK_ADD flag");
                }
                if (i11 == 2) {
                    for (String str4 : setKeySet) {
                        if (bundle.get(str4) instanceof String) {
                            jSONObject.put("_" + str4, AthenaAnalytics.M().a((String) bundle.get(str4)));
                        } else {
                            jSONObject.put("_" + str4, bundle.get(str4));
                        }
                    }
                    this.f42657a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, jSONObject);
                }
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, Number number) {
        return add(str, number, 0);
    }

    public TrackData add(String str, Number number, int i11) {
        String str2 = "_" + str;
        if (i11 != 0) {
            this.f42658b = i11;
        }
        try {
            if (i11 == 0) {
                this.f42657a.put(str2, number);
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        this.f42657a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, number);
                    }
                    return this;
                }
                this.f42657a.put(str2 + UrlUtils.AND_MARK + "add", number);
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, String str2) {
        if (str2 == null) {
            str2 = "null";
        }
        return add(str, str2, 0);
    }

    public TrackData add(String str, String str2, int i11) {
        String str3 = "_" + str;
        if (i11 != 0) {
            this.f42658b = i11;
        }
        try {
            if (i11 == 0) {
                this.f42657a.put(str3, AthenaAnalytics.M().a(str2));
            } else {
                if (i11 == 1) {
                    throw new IllegalArgumentException("json object can not set TRACK_ADD flag");
                }
                if (i11 == 2) {
                    this.f42657a.put(str3 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, AthenaAnalytics.M().a(str2));
                }
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, List<Bundle> list) {
        String str2 = "_" + str;
        try {
            JSONArray jSONArray = new JSONArray();
            for (Bundle bundle : list) {
                Set<String> setKeySet = bundle.keySet();
                JSONObject jSONObject = new JSONObject();
                for (String str3 : setKeySet) {
                    if (bundle.get(str3) instanceof String) {
                        jSONObject.put("_" + str3, AthenaAnalytics.M().a((String) bundle.get(str3)));
                    } else {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    }
                }
                jSONArray.put(jSONObject);
            }
            this.f42657a.put(str2, jSONArray);
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public TrackData add(String str, boolean z10) {
        return add(str, z10, 0);
    }

    public TrackData add(String str, boolean z10, int i11) {
        String str2 = "_" + str;
        if (i11 != 0) {
            this.f42658b = i11;
        }
        try {
            if (i11 == 0) {
                this.f42657a.put(str2, z10);
            } else {
                if (i11 == 1) {
                    throw new IllegalArgumentException("json object can not set TRACK_ADD flag");
                }
                if (i11 == 2) {
                    this.f42657a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, z10);
                }
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return this;
    }

    public float b() {
        return this.f42659c;
    }

    public int c() {
        try {
            return this.f42657a.toString().getBytes().length + 4;
        } catch (Exception unused) {
            return 4;
        }
    }

    public int d() {
        return this.f42658b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.f42658b);
        parcel.writeString(this.f42657a.toString());
        parcel.writeFloat(this.f42659c);
    }
}
