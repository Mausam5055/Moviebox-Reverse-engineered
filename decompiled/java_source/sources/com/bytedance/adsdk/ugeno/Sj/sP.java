package com.bytedance.adsdk.ugeno.Sj;

import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private JSONObject Dq;
    private String EjP;
    private long HiB;
    private String Jcg;
    private Map<String, TreeMap<Float, String>> Sj;
    private int TKC;
    private long sP;
    private Sj vS;

    public static class Sj {
        public String Sj;
        public String sP;
    }

    public String Dq() {
        return this.Jcg;
    }

    public int EjP() {
        return this.TKC;
    }

    public String HiB() {
        return this.EjP;
    }

    public Sj Jcg() {
        return this.vS;
    }

    public JSONObject Sj() {
        return this.Dq;
    }

    public void Sj(int i11) {
        this.TKC = i11;
    }

    public void Sj(long j11) {
        this.sP = j11;
    }

    public void Sj(Sj sj2) {
        this.vS = sj2;
    }

    public void Sj(String str) {
        this.EjP = str;
    }

    public void Sj(Map<String, TreeMap<Float, String>> map) {
        this.Sj = map;
    }

    public void Sj(JSONObject jSONObject) {
        this.Dq = jSONObject;
    }

    public long TKC() {
        return this.sP;
    }

    public Map<String, TreeMap<Float, String>> sP() {
        return this.Sj;
    }

    public void sP(long j11) {
        this.HiB = j11;
    }

    public void sP(String str) {
        this.Jcg = str;
    }

    public String toString() {
        return "AnimationModel{mKeyFramesMap=" + this.Sj + ", mDuration=" + this.sP + ", mPlayCount=" + this.TKC + ", mPlayDirection=" + this.EjP + ", mDelay=" + this.HiB + ", mTransformOrigin='" + this.vS + "', mTimingFunction='" + this.Jcg + "'}";
    }

    public long vS() {
        return this.HiB;
    }
}
