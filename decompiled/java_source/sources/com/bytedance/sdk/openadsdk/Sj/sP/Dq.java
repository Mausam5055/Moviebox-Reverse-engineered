package com.bytedance.sdk.openadsdk.Sj.sP;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.core.uvD;
import com.bytedance.sdk.openadsdk.utils.LqL;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.ib;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends PAGNativeAd {
    private boolean Dq;
    protected Sj EjP;
    protected int HiB;
    protected String Jcg;
    protected uvD Sj;
    protected final Context TKC;
    protected final sU sP;
    private boolean uA;
    protected int vS;

    public Dq(@NonNull Context context, @NonNull sU sUVar, int i11, boolean z10) {
        this.sP = sUVar;
        this.TKC = context;
        this.HiB = i11;
        this.vS = sUVar.If();
        String strTKC = Mts.TKC(i11);
        this.Jcg = strTKC;
        if (z10) {
            this.EjP = new Sj(context, sUVar, strTKC);
            this.Sj = new uvD(context, this, sUVar, Sj(i11), this.EjP);
        }
    }

    private String Sj(int i11) {
        if (i11 != 1) {
            return i11 != 2 ? "embeded_ad" : "interaction";
        }
        return "banner_ad";
    }

    private List<View> Sj(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                linkedList.add(list.get(i11));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                linkedList.add(list2.get(i12));
            }
        }
        return linkedList;
    }

    public Sj Dq() {
        return this.EjP;
    }

    protected boolean Jcg() {
        sU sUVar = this.sP;
        return (sUVar == null || sUVar.sdp() == 5 || dNu.EjP().TKC(this.vS) != 1) ? false : true;
    }

    public void Sj(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @NonNull List<View> list2, @Nullable List<View> list3, @Nullable View view, final vS vSVar) {
        if (viewGroup == null || list2 == null || list2.size() <= 0) {
            return;
        }
        if (Jcg()) {
            list3 = Sj(list2, list3);
        }
        List<View> list4 = list3;
        if (view != null && vSVar != null && vSVar.sP()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.Dq.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    final String strSj = ib.Sj();
                    TTDelegateActivity.Sj(Dq.this.sP, strSj, new com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.Dq.1.1
                        @Override // com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj
                        public void Sj() {
                            vSVar.Sj();
                            uA.sP().vS(strSj);
                            PAGMediaView pAGMediaViewSj = Dq.this.Dq().Sj();
                            if (pAGMediaViewSj != null) {
                                pAGMediaViewSj.close();
                            }
                        }
                    });
                }
            });
        }
        this.Sj.Sj(viewGroup, list, list2, list4, view, vSVar);
        sU sUVar = this.sP;
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(viewGroup, this.sP, (sUVar == null || sUVar.ley() != 2) ? null : new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.sP.fF()));
    }

    protected void Sj(String str) {
        this.Jcg = str;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        sU sUVar = this.sP;
        if (sUVar == null || sUVar.QZ() == null) {
            return null;
        }
        try {
            return this.sP.QZ().get(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTNativeAdImpl", th2.getMessage());
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        sU sUVar = this.sP;
        if (sUVar != null) {
            return sUVar.QZ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public PAGNativeAdData getNativeAdData() {
        return new EjP(Dq());
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d11, String str, String str2) {
        if (this.uA) {
            return;
        }
        LqL.Sj(this.sP, d11, str, str2);
        this.uA = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionCallback pAGNativeAdInteractionCallback) {
        registerViewForInteraction(viewGroup, list, list2, view, (PAGNativeAdInteractionListener) pAGNativeAdInteractionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        if (viewGroup == null || list == null || list.size() <= 0) {
            return;
        }
        Sj(viewGroup, null, list, list2, view, new Jcg(pAGNativeAdInteractionListener));
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d11) {
        if (this.Dq) {
            return;
        }
        LqL.Sj(this.sP, d11);
        this.Dq = true;
    }
}
