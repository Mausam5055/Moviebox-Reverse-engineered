package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.e;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.t0;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f36713b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Context> f36714a;

    /* JADX INFO: renamed from: com.mbridge.msdk.nativex.view.mbfullview.a$a, reason: collision with other inner class name */
    class RunnableC0517a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseView f36715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f36716b;

        RunnableC0517a(BaseView baseView, boolean z10) {
            this.f36715a = baseView;
            this.f36716b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36715a.getmAnimationPlayer().setBackgroundColor(Color.parseColor("#ff4c8fdf"));
            this.f36715a.getmAnimationPlayer().getBackground().setAlpha(this.f36716b ? 200 : 255);
            a.this.a(this.f36715a.getmAnimationPlayer());
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f36718a;

        static {
            int[] iArr = new int[BaseView.a.values().length];
            f36718a = iArr;
            try {
                iArr[BaseView.a.FULL_TOP_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36718a[BaseView.a.FULL_MIDDLE_VIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private class c implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<MBridgeTopFullView> f36719a;

        public c(MBridgeTopFullView mBridgeTopFullView) {
            this.f36719a = new WeakReference<>(mBridgeTopFullView);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            WeakReference<MBridgeTopFullView> weakReference = this.f36719a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f36719a.get().getMBridgeFullViewDisplayIcon().setImageBitmap(a.this.a(bitmap, 25));
        }
    }

    private a(Context context) {
        this.f36714a = new WeakReference<>(context);
    }

    private float a(boolean z10) {
        try {
            Context context = this.f36714a.get();
            if (context == null) {
                return 0.0f;
            }
            float fI = t0.i(context);
            return z10 ? fI + t0.c(context) : fI;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(Bitmap bitmap, int i11) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        bitmap.getWidth();
        float f11 = i11;
        canvas.drawRoundRect(rectF, f11, f11, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    public static a a(Context context) {
        if (f36713b == null) {
            synchronized (a.class) {
                try {
                    if (f36713b == null) {
                        f36713b = new a(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f36713b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (view == null) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.2f, 1.0f);
        alphaAnimation.setDuration(800L);
        alphaAnimation.setInterpolator(new LinearInterpolator());
        alphaAnimation.setRepeatCount(2);
        alphaAnimation.setRepeatMode(1);
        view.startAnimation(alphaAnimation);
    }

    public void a(View view, BaseView baseView) {
        if (view == null || baseView == null) {
            return;
        }
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        baseView.f36705i.addView(view);
    }

    public void a(BaseView.a aVar, CampaignEx campaignEx, BaseView baseView) {
        int i11 = b.f36718a[aVar.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                return;
            }
            baseView.getMBridgeFullTvInstall().setText(campaignEx.getAdCall());
            return;
        }
        MBridgeTopFullView mBridgeTopFullView = (MBridgeTopFullView) baseView;
        if (mBridgeTopFullView != null) {
            Context context = this.f36714a.get();
            if (context != null) {
                com.mbridge.msdk.foundation.same.image.b.a(context).a(campaignEx.getIconUrl(), new c(mBridgeTopFullView));
            }
            mBridgeTopFullView.getMBridgeFullViewDisplayTitle().setText(campaignEx.getAppName());
            mBridgeTopFullView.getMBridgeFullViewDisplayDscription().setText(campaignEx.getAppDesc());
            mBridgeTopFullView.getMBridgeFullTvInstall().setText(campaignEx.getAdCall());
            mBridgeTopFullView.getStarLevelLayoutView().setRating((int) campaignEx.getRating());
        }
    }

    public void a(BaseView baseView) {
        baseView.getmAnimationPlayer().clearAnimation();
    }

    public void a(BaseView baseView, boolean z10) {
        if (baseView != null) {
            baseView.setSystemUiVisibility(z10 ? 0 : InputDeviceCompat.SOURCE_TOUCHSCREEN);
        }
    }

    public void a(boolean z10, BaseView baseView) {
        if (baseView instanceof MBridgeTopFullView) {
            MBridgeTopFullView mBridgeTopFullView = (MBridgeTopFullView) baseView;
            int i11 = z10 ? 0 : 8;
            mBridgeTopFullView.getMBridgeFullViewDisplayIcon().setVisibility(i11);
            mBridgeTopFullView.getMBridgeFullViewDisplayTitle().setVisibility(i11);
            mBridgeTopFullView.getMBridgeFullViewDisplayDscription().setVisibility(i11);
            mBridgeTopFullView.getStarLevelLayoutView().setVisibility(i11);
        }
    }

    public void a(boolean z10, BaseView baseView, int i11) {
        RelativeLayout.LayoutParams layoutParams;
        Context context = this.f36714a.get();
        if (context != null) {
            if (z10) {
                layoutParams = new RelativeLayout.LayoutParams((int) (a(z10) / 3.0f), t0.a(context, 45.0f));
                layoutParams.addRule(11);
                layoutParams.addRule(12);
                layoutParams.bottomMargin = t0.a(context, 10.0f);
                layoutParams.rightMargin = (e.a(context) && i11 == 0) ? t0.c(context) + t0.a(context, 8.0f) : t0.a(context, 8.0f);
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-1, t0.a(context, 45.0f));
                layoutParams.addRule(12);
            }
            baseView.getmAnimationContent().setLayoutParams(layoutParams);
        }
    }

    public void a(boolean z10, boolean z11, BaseView baseView) {
        int color = Color.parseColor("#ff264870");
        baseView.getmAnimationPlayer().setBackgroundColor(color);
        Context context = this.f36714a.get();
        if (!z10) {
            if (baseView.style == BaseView.a.FULL_MIDDLE_VIEW) {
                b(z10, z11, baseView);
                return;
            } else {
                if (context != null) {
                    baseView.getmAnimationContent().setBackgroundResource(g0.a(context, "mbridge_nativex_cta_por_pre", "drawable"));
                    baseView.getmAnimationPlayer().setBackgroundResource(g0.a(context, "mbridge_nativex_cta_por_pre", "drawable"));
                    return;
                }
                return;
            }
        }
        if (baseView.style == BaseView.a.FULL_TOP_VIEW && context != null) {
            baseView.getmAnimationContent().setBackgroundResource(g0.a(context, "mbridge_nativex_fullview_background", "drawable"));
            baseView.getmAnimationPlayer().setBackgroundColor(color);
        }
        if (z11) {
            baseView.getmAnimationPlayer().getBackground().setAlpha(80);
        } else {
            baseView.getmAnimationPlayer().setBackgroundColor(Color.parseColor("#ff4c8fdf"));
            baseView.getmAnimationPlayer().getBackground().setAlpha(200);
        }
        b(z10, z11, baseView);
    }

    public void b(boolean z10, boolean z11, BaseView baseView) {
        if (z11) {
            new Handler().postDelayed(new RunnableC0517a(baseView, z10), 1000L);
        }
    }
}
