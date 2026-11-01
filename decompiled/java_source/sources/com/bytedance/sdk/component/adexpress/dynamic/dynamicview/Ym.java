package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.drawable.b;
import com.bumptech.glide.load.resource.drawable.c;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Ym extends vS {
    private String Sj;

    private static class Sj implements com.bytedance.sdk.component.HiB.Dq {
        private final WeakReference<Context> Sj;

        public Sj(Context context) {
            this.Sj = new WeakReference<>(context);
        }

        @Override // com.bytedance.sdk.component.HiB.Dq
        public Bitmap Sj(Bitmap bitmap) {
            Context context = this.Sj.get();
            if (context != null) {
                return com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(context, bitmap, 25);
            }
            return null;
        }
    }

    private static class sP implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
        private WeakReference<View> Sj;
        private Resources sP;

        public sP(View view, Resources resources) {
            this.Sj = new WeakReference<>(view);
            this.sP = resources;
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(int i11, String str, @Nullable Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
            Bitmap bitmapSP;
            View view = this.Sj.get();
            if (view == null || (bitmapSP = ym2.sP()) == null || ym2.TKC() == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(this.sP, bitmapSP));
        }
    }

    public Ym(Context context, @NonNull DynamicRootView dynamicRootView, @NonNull com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        if (!TextUtils.isEmpty(this.f20889aa.xu()) && dq2.RiZ()) {
            com.bytedance.sdk.component.adexpress.vS.TEQ teq = new com.bytedance.sdk.component.adexpress.vS.TEQ(context);
            teq.setAnimationsLoop(this.f20889aa.gR());
            teq.setImageLottieTosPath(this.f20889aa.xu());
            teq.setLottieAppNameMaxLength(this.f20889aa.HS());
            teq.setLottieAdTitleMaxLength(this.f20889aa.aZ());
            teq.setLottieAdDescMaxLength(this.f20889aa.Ir());
            teq.setData(dq2.sU());
            this.Zq = teq;
        } else if (this.f20889aa.Zq() > 0.0f) {
            com.bytedance.sdk.component.adexpress.vS.uP uPVar = new com.bytedance.sdk.component.adexpress.vS.uP(context);
            this.Zq = uPVar;
            uPVar.setXRound((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, this.f20889aa.Zq()));
            ((com.bytedance.sdk.component.adexpress.vS.uP) this.Zq).setYRound((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, this.f20889aa.Zq()));
        } else if (!Dq() && "arrowButton".equals(dq2.TEQ().sP())) {
            com.bytedance.sdk.component.adexpress.dynamic.animation.view.sP sPVar = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.sP(context);
            sPVar.setBrickNativeValue(this.f20889aa);
            this.Zq = sPVar;
        } else if (com.bytedance.sdk.component.adexpress.EjP.uA.sP(this.f20889aa.Ym())) {
            this.Zq = new com.bytedance.sdk.component.adexpress.vS.Fmk(context);
        } else {
            this.Zq = new ImageView(context);
        }
        this.Sj = getImageKey();
        this.Zq.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(dq2.TEQ().sP())) {
            if (this.f20889aa.sP() > 0 || this.f20889aa.Sj() > 0) {
                int iMin = Math.min(this.Jcg, this.Dq);
                this.Jcg = iMin;
                this.Dq = Math.min(iMin, this.Dq);
                this.uA = (int) (this.uA + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, this.f20889aa.sP() + (this.f20889aa.Sj() / 2) + 0.5f));
            } else {
                int iMax = Math.max(this.Jcg, this.Dq);
                this.Jcg = iMax;
                this.Dq = Math.max(iMax, this.Dq);
            }
            this.f20889aa.Sj(this.Jcg / 2);
        }
        addView(this.Zq, new FrameLayout.LayoutParams(this.Jcg, this.Dq));
    }

    private boolean Sj() {
        String strAa = this.f20889aa.aa();
        if (this.f20889aa.sU()) {
            return true;
        }
        if (TextUtils.isEmpty(strAa)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strAa);
            return Math.abs((((float) this.Jcg) / (((float) this.Dq) * 1.0f)) - (((float) jSONObject.optInt("width")) / (((float) jSONObject.optInt("height")) * 1.0f))) > 0.01f;
        } catch (JSONException unused) {
            return false;
        }
    }

    private String getImageKey() {
        Map<String, String> mapYm = this.sef.getRenderRequest().Ym();
        if (mapYm == null || mapYm.size() <= 0) {
            return null;
        }
        return mapYm.get(this.f20889aa.Ym());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = ((ImageView) this.Zq).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !b.a(drawable)) {
            return;
        }
        c.a(drawable).start();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = ((ImageView) this.Zq).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !b.a(drawable)) {
            return;
        }
        c.a(drawable).stop();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        int iUvD;
        super.uA();
        if (!TextUtils.isEmpty(this.f20889aa.xu())) {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.CENTER_CROP);
            return true;
        }
        int iZq = 0;
        if ("arrowButton".equals(this.Fmk.TEQ().sP())) {
            ((ImageView) this.Zq).setImageResource(com.bytedance.sdk.component.utils.ib.EjP(this.Ym, "tt_white_righterbackicon_titlebar"));
            if (((ImageView) this.Zq).getDrawable() != null) {
                ((ImageView) this.Zq).getDrawable().setAutoMirrored(true);
            }
            this.Zq.setPadding(0, 0, 0, 0);
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        this.Zq.setBackgroundColor(this.f20889aa.LqL());
        String strTKC = this.Fmk.TEQ().TKC();
        if ("user".equals(strTKC)) {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((ImageView) this.Zq).setColorFilter(this.f20889aa.Jcg());
            ((ImageView) this.Zq).setImageDrawable(com.bytedance.sdk.component.utils.ib.TKC(getContext(), "tt_user"));
            ImageView imageView = (ImageView) this.Zq;
            int i11 = this.Jcg;
            imageView.setPadding(i11 / 10, this.Dq / 5, i11 / 10, 0);
        } else if (strTKC != null && strTKC.startsWith("@")) {
            try {
                ((ImageView) this.Zq).setImageResource(Integer.parseInt(strTKC.substring(1)));
            } catch (Exception unused) {
            }
        }
        com.bytedance.sdk.component.HiB.Zq zqHiB = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().HiB();
        String strYm = this.f20889aa.Ym();
        if (!TextUtils.isEmpty(strYm) && !strYm.startsWith("http:") && !strYm.startsWith("https:")) {
            DynamicRootView dynamicRootView = this.sef;
            strYm = com.bytedance.sdk.component.adexpress.dynamic.HiB.uA.sP(strYm, (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) ? null : this.sef.getRenderRequest().kF());
        }
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
        if (TKC != null) {
            iZq = TKC.Zq();
            iUvD = TKC.uvD();
        } else {
            iUvD = 0;
        }
        com.bytedance.sdk.component.HiB.TEQ teqHiB = zqHiB.Sj(strYm).Sj(this.Sj).Sj(this.Jcg).sP(this.Dq).EjP(iZq).HiB(iUvD);
        String strSef = this.sef.getRenderRequest().sef();
        if (!TextUtils.isEmpty(strSef)) {
            teqHiB.sP(strSef);
        }
        if (Sj()) {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.FIT_CENTER);
            teqHiB.Sj(Bitmap.Config.ARGB_4444).TKC(2).Sj(new Sj(this.Ym)).Sj(new sP(this.Zq, getResources()));
        } else {
            if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                teqHiB.TKC(2).Sj((ImageView) this.Zq);
            }
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if ((this.Zq instanceof ImageView) && "cover".equals(getImageObjectFit())) {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        return true;
    }
}
