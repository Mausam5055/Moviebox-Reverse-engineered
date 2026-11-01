package com.bytedance.adsdk.ugeno.uA.EjP;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bumptech.glide.load.resource.drawable.b;
import com.bumptech.glide.load.resource.drawable.c;
import com.bytedance.adsdk.ugeno.HiB;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.Jcg.EjP;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends com.bytedance.adsdk.ugeno.sP.TKC<Sj> {
    protected ImageView.ScaleType AVc;
    protected boolean RrR;
    private int SP;
    protected String Sj;
    private float dLt;
    private float zwV;

    public TKC(Context context) {
        super(context);
        this.AVc = ImageView.ScaleType.FIT_XY;
        this.SP = -1;
        this.dLt = -1.0f;
        this.zwV = -1.0f;
    }

    private void EjP() {
        if (TextUtils.isEmpty(this.Sj)) {
            return;
        }
        ((Sj) this.HiB).setImageDrawable(null);
        if (this.Sj.startsWith("local://")) {
            try {
                ((Sj) this.HiB).setImageResource(EjP.Sj(this.sP, this.Sj.replace("local://", "")));
            } catch (Throwable unused) {
            }
        } else {
            if (!this.Sj.startsWith("@")) {
                uA();
                return;
            }
            try {
                ((Sj) this.HiB).setImageResource(Integer.parseInt(this.Sj.substring(1)));
            } catch (Exception unused2) {
            }
        }
    }

    private ImageView.ScaleType Jcg(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        switch (str) {
            case "center":
                return ImageView.ScaleType.CENTER;
            case "fitEnd":
                return ImageView.ScaleType.FIT_END;
            case "fitStart":
                return ImageView.ScaleType.FIT_START;
            case "centerInside":
                return ImageView.ScaleType.CENTER_INSIDE;
            case "fit":
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "crop":
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            case "fill":
            case "fitXY":
            default:
                return scaleType;
        }
    }

    private void uA() {
        if (this.dLt > 0.0f) {
            HiB.Sj().sP().Sj(this.uA, this.Sj, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj() { // from class: com.bytedance.adsdk.ugeno.uA.EjP.TKC.1
                @Override // com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj
                public void Sj(Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    final Bitmap bitmapSj = Dq.Sj(((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).sP, bitmap, (int) TKC.this.dLt);
                    if (bitmapSj != null) {
                        Dq.Sj(new Runnable() { // from class: com.bytedance.adsdk.ugeno.uA.EjP.TKC.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((Sj) ((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).HiB).setImageBitmap(bitmapSj);
                            }
                        });
                    }
                    TKC tkc = TKC.this;
                    if (tkc.RrR || tkc.zwV > 0.0f) {
                        Bitmap bitmapSj2 = Dq.Sj(((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).sP, bitmap, TKC.this.zwV > 0.0f ? (int) TKC.this.zwV : 10);
                        if (bitmapSj2 != null) {
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).sP.getResources(), bitmapSj2);
                            Dq.Sj(new Runnable() { // from class: com.bytedance.adsdk.ugeno.uA.EjP.TKC.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    ((Sj) ((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).HiB).setBackground(bitmapDrawable);
                                }
                            });
                        }
                    }
                }
            });
            return;
        }
        com.bytedance.adsdk.ugeno.Sj sjSP = HiB.Sj().sP();
        com.bytedance.adsdk.ugeno.core.Dq dq2 = this.uA;
        String str = this.Sj;
        T t11 = this.HiB;
        sjSP.Sj(dq2, str, (ImageView) t11, ((Sj) t11).getWidth(), ((Sj) this.HiB).getHeight());
        if (this.RrR || this.zwV > 0.0f) {
            HiB.Sj().sP().Sj(this.uA, this.Sj, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj() { // from class: com.bytedance.adsdk.ugeno.uA.EjP.TKC.2
                @Override // com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj
                public void Sj(Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    final Bitmap bitmapSj = Dq.Sj(((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).sP, bitmap, TKC.this.zwV > 0.0f ? (int) TKC.this.zwV : 10);
                    Dq.Sj(new Runnable() { // from class: com.bytedance.adsdk.ugeno.uA.EjP.TKC.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (bitmapSj != null) {
                                ((Sj) ((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).HiB).setBackground(new BitmapDrawable(((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).sP.getResources(), bitmapSj));
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC, com.bytedance.adsdk.ugeno.EjP
    public void Dq() {
        super.Dq();
        Drawable drawable = ((Sj) this.HiB).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !b.a(drawable)) {
            return;
        }
        c.a(drawable).stop();
    }

    public void Dq(String str) {
        this.Sj = str;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC, com.bytedance.adsdk.ugeno.EjP
    public void Jcg() {
        super.Jcg();
        ((Sj) this.HiB).post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.uA.EjP.TKC.3
            @Override // java.lang.Runnable
            public void run() {
                Drawable drawable = ((Sj) ((com.bytedance.adsdk.ugeno.sP.TKC) TKC.this).HiB).getDrawable();
                if (Build.VERSION.SDK_INT < 28 || !b.a(drawable)) {
                    return;
                }
                c.a(drawable).start();
            }
        });
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "scaleMode":
            case "scaleType":
                this.AVc = Jcg(str2);
                break;
            case "imageBlur":
                this.dLt = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, -1.0f);
                break;
            case "isBgGaussianBlur":
                this.RrR = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                break;
            case "src":
                this.Sj = str2;
                break;
            case "tintColor":
                this.SP = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case "imageBgBlur":
                this.zwV = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, -1.0f);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public Sj Sj() {
        Sj sj2 = new Sj(this.sP);
        sj2.Sj(this);
        return sj2;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        EjP();
        ((Sj) this.HiB).setScaleType(this.AVc);
        ((Sj) this.HiB).setBorderColor(this.EZ);
        ((Sj) this.HiB).setCornerRadius(this.xhi);
        ((Sj) this.HiB).setBorderWidth(this.pfr);
        int i11 = this.SP;
        if (i11 != -1) {
            ((Sj) this.HiB).setColorFilter(i11);
        }
    }
}
