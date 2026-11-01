package com.bytedance.sdk.openadsdk.core.Ym.sP;

import android.text.TextUtils;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends TKC implements Comparable<Sj> {
    public long Sj;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.Ym.sP.Sj$Sj, reason: collision with other inner class name */
    public static class C0268Sj {
        private final String Sj;
        private final long sP;
        private TKC.EnumC0269TKC TKC = TKC.EnumC0269TKC.TRACKING_URL;
        private boolean EjP = false;

        public C0268Sj(String str, long j11) {
            this.Sj = str;
            this.sP = j11;
        }

        public Sj Sj() {
            return new Sj(this.sP, this.Sj, this.TKC, Boolean.valueOf(this.EjP));
        }
    }

    protected Sj(long j11, String str, TKC.EnumC0269TKC enumC0269TKC, Boolean bool) {
        super(str, enumC0269TKC, bool);
        this.Sj = j11;
    }

    public static int Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length == 3) {
            try {
                return (int) ((Integer.parseInt(strArrSplit[0]) * TimeConstants.HOUR) + (Integer.parseInt(strArrSplit[1]) * 60000) + (Float.parseFloat(strArrSplit[2]) * 1000.0f));
            } catch (Throwable unused) {
            }
        }
        return Integer.MIN_VALUE;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public int compareTo(Sj sj2) {
        if (sj2 == null) {
            return 1;
        }
        long j11 = this.Sj;
        long j12 = sj2.Sj;
        if (j11 > j12) {
            return 1;
        }
        return j11 < j12 ? -1 : 0;
    }

    public JSONObject Sj() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", TKC());
        jSONObject.put("trackingMilliseconds", this.Sj);
        return jSONObject;
    }

    public boolean Sj(long j11) {
        return this.Sj <= j11 && !HiB();
    }
}
