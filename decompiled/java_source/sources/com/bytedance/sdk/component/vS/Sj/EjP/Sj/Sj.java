package com.bytedance.sdk.component.vS.Sj.EjP.Sj;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.meituan.android.walle.ChannelReader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements com.bytedance.sdk.component.vS.Sj.EjP.Sj {
    private String Dq;
    private byte EjP;
    private long HiB;
    private long Jcg;
    protected JSONObject Sj;
    private byte TEQ;
    private byte TKC;
    private String Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20916aa;
    private sP sP;
    private String uA;
    private long vS;

    private Sj() {
    }

    public Sj(String str, sP sPVar) {
        this.uA = str;
        this.sP = sPVar;
    }

    public Sj(String str, JSONObject jSONObject) {
        this.uA = str;
        this.Sj = jSONObject;
    }

    public static com.bytedance.sdk.component.vS.Sj.EjP.Sj TKC(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iOptInt2 = jSONObject.optInt(TrackingKey.PRIORITY);
            Sj sj2 = new Sj();
            sj2.Sj((byte) iOptInt);
            sj2.sP((byte) iOptInt2);
            sj2.Sj(jSONObject.optJSONObject(NotificationCompat.CATEGORY_EVENT));
            sj2.Sj(jSONObject.optString("localId"));
            sj2.sP(jSONObject.optString("genTime"));
            sj2.Sj(jSONObject.optInt(ChannelReader.CHANNEL_KEY));
            return sj2;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public long Dq() {
        return this.HiB;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public byte EjP() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public byte HiB() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public synchronized JSONObject Jcg() {
        sP sPVar;
        try {
            if (this.Sj == null && (sPVar = this.sP) != null) {
                this.Sj = sPVar.Sj(Ym());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public sP Sj() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void Sj(byte b11) {
        this.TKC = b11;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void Sj(int i11) {
        this.f20916aa = i11;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void Sj(long j11) {
        this.HiB = j11;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void Sj(String str) {
        this.uA = str;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void Sj(JSONObject jSONObject) {
        this.Sj = jSONObject;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public int TEQ() {
        return this.f20916aa;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public String TKC() {
        return this.uA;
    }

    public void TKC(byte b11) {
        this.TEQ = b11;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void TKC(long j11) {
        this.Jcg = j11;
    }

    public String Ym() {
        return this.Ym;
    }

    public String aa() {
        return this.Dq;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public byte sP() {
        return this.TEQ;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void sP(byte b11) {
        this.EjP = b11;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void sP(long j11) {
        this.vS = j11;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public void sP(String str) {
        this.Dq = str;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public long uA() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.EjP.Sj
    public String vS() {
        if (TextUtils.isEmpty(this.uA)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.uA);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, Jcg());
            jSONObject.put("genTime", aa());
            jSONObject.put(TrackingKey.PRIORITY, (int) this.EjP);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, (int) this.TKC);
            jSONObject.put(ChannelReader.CHANNEL_KEY, this.f20916aa);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }
}
