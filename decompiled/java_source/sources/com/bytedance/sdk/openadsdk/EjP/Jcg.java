package com.bytedance.sdk.openadsdk.EjP;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    private long EjP;
    private long HiB;
    private long Sj;
    private long TKC;
    private long sP;

    public void EjP(long j11) {
        if (this.EjP <= 0) {
            this.EjP = j11;
        }
    }

    public void HiB(long j11) {
        if (this.HiB <= 0) {
            this.HiB = j11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x0031 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x003c A[Catch: Exception -> 0x0042, TRY_LEAVE, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:6:0x0010 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001b A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:3:0x0002, B:4:0x0008, B:6:0x0010, B:8:0x001b, B:10:0x0026, B:12:0x0031, B:14:0x003c), top: B:17:0x0002 }] */
    public JSONObject Sj(JSONObject jSONObject) {
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
                j11 = this.Sj;
                if (j11 > 0) {
                    jSONObject.put("show_start", j11);
                    j12 = this.sP;
                    if (j12 > 0) {
                        jSONObject.put("show_firstQuartile", j12);
                        j13 = this.TKC;
                        if (j13 > 0) {
                            jSONObject.put("show_mid", j13);
                            j14 = this.EjP;
                            if (j14 > 0) {
                                jSONObject.put("show_thirdQuartile", j14);
                                j15 = this.HiB;
                                if (j15 > 0) {
                                    jSONObject.put("show_full", j15);
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } else {
            j11 = this.Sj;
            if (j11 > 0) {
                jSONObject.put("show_start", j11);
                j12 = this.sP;
                if (j12 > 0) {
                    jSONObject.put("show_firstQuartile", j12);
                    j13 = this.TKC;
                    if (j13 > 0) {
                        jSONObject.put("show_mid", j13);
                        j14 = this.EjP;
                        if (j14 > 0) {
                            jSONObject.put("show_thirdQuartile", j14);
                            j15 = this.HiB;
                            if (j15 > 0) {
                                jSONObject.put("show_full", j15);
                            }
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    public void Sj(long j11) {
        if (this.Sj <= 0) {
            this.Sj = j11;
        }
    }

    public void Sj(long j11, float f11) {
        if (f11 > 0.0f) {
            Sj(j11);
        }
        double d11 = f11;
        if (d11 >= 0.25d) {
            Sj(j11);
            sP(j11);
        }
        if (d11 >= 0.5d) {
            Sj(j11);
            sP(j11);
            TKC(j11);
        }
        if (d11 >= 0.75d) {
            Sj(j11);
            sP(j11);
            TKC(j11);
            EjP(j11);
        }
        if (f11 >= 1.0f) {
            Sj(j11);
            sP(j11);
            TKC(j11);
            EjP(j11);
            HiB(j11);
        }
    }

    public boolean Sj() {
        return this.Sj > 0;
    }

    public void TKC(long j11) {
        if (this.TKC <= 0) {
            this.TKC = j11;
        }
    }

    public JSONObject sP() {
        return Sj((JSONObject) null);
    }

    public void sP(long j11) {
        if (this.sP <= 0) {
            this.sP = j11;
        }
    }
}
