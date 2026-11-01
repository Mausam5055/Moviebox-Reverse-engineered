package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.transsion.gslb.Utils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends HiB {
    private static String sU = "";
    protected com.bytedance.sdk.component.adexpress.dynamic.TKC.uA RiZ;
    private Runnable Sj;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private volatile boolean f20896dx;
    private Runnable sP;

    private static class Sj implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
        private final WeakReference<View> Sj;
        private final com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq TKC;
        private final WeakReference<DynamicRootView> sP;

        public Sj(View view, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
            this.Sj = new WeakReference<>(view);
            this.sP = new WeakReference<>(dynamicRootView);
            this.TKC = dq2;
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(int i11, String str, @Nullable Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
            View view = this.Sj.get();
            if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                DynamicRootView dynamicRootView = this.sP.get();
                if (dynamicRootView == null) {
                    return;
                }
                if ("open_ad".equals(dynamicRootView.getRenderRequest().EjP()) || "splash_ad".equals(dynamicRootView.getRenderRequest().EjP())) {
                    view.setBackground(new BitmapDrawable(ym2.sP()));
                    return;
                } else {
                    view.setBackground(new BitmapDrawable(ym2.sP()));
                    return;
                }
            }
            if (view == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(ym2.sP()));
            com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = this.TKC;
            if (dq2 == null || dq2.TEQ() == null || 6 != this.TKC.TEQ().Sj() || view.getBackground() == null) {
                return;
            }
            view.getBackground().setAutoMirrored(true);
        }
    }

    private static class TKC implements com.bytedance.sdk.component.HiB.Dq {
        private final WeakReference<Context> Sj;
        private final int sP;

        public TKC(Context context, int i11) {
            this.Sj = new WeakReference<>(context);
            this.sP = i11;
        }

        @Override // com.bytedance.sdk.component.HiB.Dq
        public Bitmap Sj(Bitmap bitmap) {
            Context context = this.Sj.get();
            if (context != null) {
                return com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(context, bitmap, this.sP);
            }
            return null;
        }
    }

    private static class sP implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
        private final WeakReference<View> Sj;
        private final WeakReference<HiB> sP;

        public sP(View view, HiB hiB) {
            this.Sj = new WeakReference<>(view);
            this.sP = new WeakReference<>(hiB);
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(int i11, String str, @Nullable Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
            Bitmap bitmapSP;
            HiB hiB;
            View view = this.Sj.get();
            if (view == null || (bitmapSP = ym2.sP()) == null || ym2.TKC() == null || (hiB = this.sP.get()) == null) {
                return;
            }
            view.setBackground(hiB.Sj(bitmapSP));
        }
    }

    public vS(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.f20896dx = true;
        setTag(Integer.valueOf(getClickArea()));
        String strSP = dq2.TEQ().sP();
        if ("logo-union".equals(strSP)) {
            dynamicRootView.setLogoUnionHeight(this.Dq - ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, this.f20889aa.sP() + this.f20889aa.Sj())));
        } else if ("scoreCountWithIcon".equals(strSP)) {
            dynamicRootView.setScoreCountWithIcon(this.Dq - ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, this.f20889aa.sP() + this.f20889aa.Sj())));
        }
    }

    private String Sj(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof JSONArray) {
            return Sj(((JSONArray) obj).opt(0));
        }
        if (obj instanceof JSONObject) {
            return Sj((Object) ((JSONObject) obj).optString("url"));
        }
        return null;
    }

    private void Sj() {
        if (this.f20896dx) {
            int iQRN = this.f20889aa.qRN();
            int iUHs = this.f20889aa.UHs();
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS.4
                @Override // java.lang.Runnable
                public void run() {
                    DynamicRootView dynamicRootView = vS.this.sef;
                    if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                        vS vSVar = vS.this;
                        vS vSVar2 = vS.this;
                        vSVar.RiZ = new com.bytedance.sdk.component.adexpress.dynamic.TKC.uA(vSVar2.Ym, vSVar2, vSVar2.f20889aa);
                    } else {
                        com.bytedance.sdk.component.adexpress.sP.Fmk renderRequest = vS.this.sef.getRenderRequest();
                        com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ teq = new com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ();
                        teq.Sj(renderRequest.Zq());
                        teq.sP(renderRequest.uvD());
                        teq.TKC(renderRequest.dNu());
                        teq.Sj(renderRequest.TzV());
                        teq.sP(renderRequest.RiZ());
                        teq.TKC(renderRequest.sU());
                        teq.EjP(renderRequest.dx());
                        teq.HiB(renderRequest.zR());
                        vS vSVar3 = vS.this;
                        vS vSVar4 = vS.this;
                        vSVar3.RiZ = new com.bytedance.sdk.component.adexpress.dynamic.TKC.uA(vSVar4.Ym, vSVar4, vSVar4.f20889aa, teq, renderRequest);
                    }
                    vS vSVar5 = vS.this;
                    vSVar5.sP(vSVar5.RiZ);
                    if (vS.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) vS.this.getParent()).setClipChildren(false);
                    }
                    vS.this.setClipChildren(false);
                    vS.this.RiZ.setTag(2);
                    vS vSVar6 = vS.this;
                    vSVar6.Sj((ViewGroup) vSVar6);
                    vS vSVar7 = vS.this;
                    vSVar7.addView(vSVar7.RiZ, new FrameLayout.LayoutParams(-1, -1));
                    vS.this.RiZ.TKC();
                }
            };
            this.Sj = runnable;
            postDelayed(runnable, ((long) iQRN) * 1000);
            if (this.f20889aa.dwU() || iUHs >= Integer.MAX_VALUE || iQRN >= iUHs) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS.5
                @Override // java.lang.Runnable
                public void run() {
                    vS vSVar = vS.this;
                    if (vSVar.RiZ != null) {
                        vSVar.f20896dx = false;
                        vS.this.RiZ.EjP();
                        vS.this.RiZ.setVisibility(4);
                        vS vSVar2 = vS.this;
                        vSVar2.removeView(vSVar2.RiZ);
                    }
                }
            };
            this.sP = runnable2;
            postDelayed(runnable2, ((long) iUHs) * 1000);
        }
    }

    private void Sj(double d11, final View view) {
        if (d11 > 0.0d) {
            com.bytedance.sdk.component.utils.uA.sP().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS.3
                @Override // java.lang.Runnable
                public void run() {
                    if (vS.this.Fmk.TEQ().HiB().Xqg() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    vS.this.setVisibility(0);
                }
            }, (long) (d11 * 1000.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            if (viewGroup.getChildAt(i11) instanceof com.bytedance.sdk.component.adexpress.dynamic.TKC.uA) {
                viewGroup.removeViewAt(i11);
            }
        }
    }

    private static void Sj(com.bytedance.sdk.component.HiB.TEQ teq) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            teq.Sj(Bitmap.Config.ARGB_8888);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable TKC(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String string = "";
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                if (jSONArray.getString(i11).startsWith(Utils.SEPARATOR)) {
                    arrayList.add(jSONArray.getString(i11));
                } else if (jSONArray.getString(i11).endsWith("deg")) {
                    string = jSONArray.getString(i11);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                iArr[i12] = com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(((String) arrayList.get(i12)).substring(0, 7));
            }
            GradientDrawable gradientDrawableSj = Sj(Sj(string), iArr);
            gradientDrawableSj.setShape(0);
            gradientDrawableSj.setCornerRadius(com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.Zq()));
            return gradientDrawableSj;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String getBuildModel() {
        try {
            sU = com.bytedance.sdk.component.utils.uP.Sj();
        } catch (Throwable unused) {
            sU = Build.MODEL;
        }
        if (TextUtils.isEmpty(sU)) {
            sU = Build.MODEL;
        }
        return sU;
    }

    private String sP(String str) {
        try {
            Map<String, String> mapYm = this.sef.getRenderRequest().Ym();
            if (mapYm != null && mapYm.size() > 0) {
                return mapYm.get(str);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.Jcg, this.Dq);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        View view = this.Zq;
        View view2 = view;
        if (view == null) {
            view2 = this;
        }
        double dSU = this.Fmk.TEQ().HiB().sU();
        if (dSU < 90.0d && dSU > 0.0d) {
            com.bytedance.sdk.component.utils.uA.sP().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS.2
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.setVisibility(8);
                }
            }, (long) (dSU * 1000.0d));
        }
        Sj(this.Fmk.TEQ().HiB().RiZ(), view2);
        if (!TextUtils.isEmpty(this.f20889aa.Ei())) {
            Sj();
        }
        super.onAttachedToWindow();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            removeCallbacks(this.Sj);
            removeCallbacks(this.sP);
        } catch (Exception unused) {
        }
    }

    public boolean uA() {
        int iZq;
        int iUvD;
        Drawable backgroundDrawable;
        DynamicRootView dynamicRootView;
        JSONObject jSONObjectOptJSONObject;
        final View view = this.Zq;
        if (view == null) {
            view = this;
        }
        setContentDescription(this.Fmk.Sj(this.f20889aa.ley()));
        String strTFd = this.f20889aa.TFd();
        String strKF = null;
        String strSj = (TextUtils.isEmpty(strTFd) || (dynamicRootView = this.sef) == null || dynamicRootView.getRenderRequest() == null || this.sef.getRenderRequest().TKC() == null || (jSONObjectOptJSONObject = this.sef.getRenderRequest().TKC().optJSONObject("creative")) == null) ? null : Sj(jSONObjectOptJSONObject.opt(strTFd));
        if (TextUtils.isEmpty(strSj)) {
            strSj = this.f20889aa.dx();
        }
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC2 = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
        if (TKC2 != null) {
            iZq = TKC2.Zq();
            iUvD = TKC2.uvD();
        } else {
            iZq = 0;
            iUvD = 0;
        }
        if (this.f20889aa.sU()) {
            int iRiZ = this.f20889aa.RiZ();
            String str = this.f20889aa.sP;
            com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().HiB().Sj(str).Sj(this.Jcg).sP(this.Dq).EjP(iZq).HiB(iUvD).Sj(sP(str)).TKC(2).Sj(new TKC(this.Ym, iRiZ)).Sj(new sP(view, this));
        } else if (!TextUtils.isEmpty(strSj)) {
            if (!strSj.startsWith("http:") && !strSj.startsWith("https:")) {
                DynamicRootView dynamicRootView2 = this.sef;
                if (dynamicRootView2 != null && dynamicRootView2.getRenderRequest() != null) {
                    strKF = this.sef.getRenderRequest().kF();
                }
                strSj = com.bytedance.sdk.component.adexpress.dynamic.HiB.uA.sP(strSj, strKF);
            }
            com.bytedance.sdk.component.HiB.TEQ teqTKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().HiB().Sj(strSj).Sj(this.Jcg).sP(this.Dq).EjP(iZq).HiB(iUvD).Sj(sP(strSj)).TKC(2);
            Sj(teqTKC);
            teqTKC.Sj(new Sj(view, this.sef, this.Fmk));
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view.setBackground(backgroundDrawable);
        }
        if (this.f20889aa.Yf() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (vS.this.f20889aa.Mts() > 0) {
                            vS vSVar = vS.this;
                            Drawable drawableTKC = vSVar.TKC(vSVar.sef.getBgMaterialCenterCalcColor().get(Integer.valueOf(vS.this.f20889aa.Mts())));
                            if (drawableTKC == null) {
                                vS vSVar2 = vS.this;
                                drawableTKC = vSVar2.Sj(true, vSVar2.sef.getBgMaterialCenterCalcColor().get(Integer.valueOf(vS.this.f20889aa.Mts())));
                            }
                            if (drawableTKC != null) {
                                view.setBackground(drawableTKC);
                                return;
                            }
                            View view2 = view;
                            vS vSVar3 = vS.this;
                            view2.setBackground(vSVar3.Sj(true, vSVar3.sef.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.f20889aa.Yf() * 1000.0d));
        }
        View view2 = this.Zq;
        if (view2 != null) {
            view2.setPadding((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.TKC()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.sP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.EjP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.Sj()));
        }
        if (this.uvD || this.f20889aa.sef() > 0.0d) {
            setShouldInvisible(true);
            view.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }
}
