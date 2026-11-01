package com.bytedance.adsdk.ugeno.Sj.Sj;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj {
    protected JSONObject Sj;
    private String TKC;
    protected com.bytedance.adsdk.ugeno.sP.TKC sP;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.Sj.Sj.Sj$Sj, reason: collision with other inner class name */
    public static class C0201Sj {
        public static Sj Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
            if (tkc == null || jSONObject == null) {
                return null;
            }
            String strOptString = jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
            strOptString.hashCode();
            switch (strOptString) {
                case "stretch":
                    return new HiB(tkc, jSONObject);
                case "ripple":
                    return new sP(tkc, jSONObject);
                case "rub_in":
                    return new TKC(tkc, jSONObject);
                case "shine":
                    return new EjP(tkc, jSONObject);
                default:
                    return null;
            }
        }
    }

    public Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        this.Sj = jSONObject;
        this.sP = tkc;
        Sj();
    }

    public String EjP() {
        return this.TKC;
    }

    public void Sj() {
        this.TKC = this.Sj.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        sP();
    }

    public abstract void Sj(int i11, int i12);

    public abstract void Sj(Canvas canvas);

    public abstract List<PropertyValuesHolder> TKC();

    public abstract void sP();

    public abstract void sP(Canvas canvas);
}
