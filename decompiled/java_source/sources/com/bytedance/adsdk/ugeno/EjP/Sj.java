package com.bytedance.adsdk.ugeno.EjP;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements Dq {
    @Override // com.bytedance.adsdk.ugeno.EjP.Dq
    public List<Jcg> Sj() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Jcg("slide") { // from class: com.bytedance.adsdk.ugeno.EjP.Sj.1
            @Override // com.bytedance.adsdk.ugeno.EjP.Jcg
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.TKC(context);
            }
        });
        arrayList.add(new Jcg("tap") { // from class: com.bytedance.adsdk.ugeno.EjP.Sj.2
            @Override // com.bytedance.adsdk.ugeno.EjP.Jcg
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.Jcg(context);
            }
        });
        arrayList.add(new Jcg("timer") { // from class: com.bytedance.adsdk.ugeno.EjP.Sj.3
            @Override // com.bytedance.adsdk.ugeno.EjP.Jcg
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.Dq(context);
            }
        });
        arrayList.add(new Jcg("videoProgress") { // from class: com.bytedance.adsdk.ugeno.EjP.Sj.4
            @Override // com.bytedance.adsdk.ugeno.EjP.Jcg
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.uA(context);
            }
        });
        return arrayList;
    }
}
