package com.cloud.hisavana.sdk.common.util;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomTabConfigDTO;
import com.cloud.hisavana.sdk.e4;
import com.google.gson.JsonObject;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f22193a = new r();

    private r() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(r this_runCatching, final View view, final GradientDrawable drawable) {
        Intrinsics.h(this_runCatching, "$this_runCatching");
        Intrinsics.h(drawable, "$drawable");
        try {
            Result.Companion companion = Result.INSTANCE;
            final ArgbEvaluator argbEvaluator = new ArgbEvaluator();
            final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(600L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.cloud.hisavana.sdk.common.util.q
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    r.r(valueAnimatorOfFloat, view, drawable, argbEvaluator, valueAnimator);
                }
            });
            valueAnimatorOfFloat.start();
            Result.m454constructorimpl(valueAnimatorOfFloat);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(ValueAnimator valueAnimator, View view, GradientDrawable drawable, ArgbEvaluator evaluator, ValueAnimator it) {
        Intrinsics.h(drawable, "$drawable");
        Intrinsics.h(evaluator, "$evaluator");
        Intrinsics.h(it, "it");
        try {
            Result.Companion companion = Result.INSTANCE;
            float animatedFraction = it.getAnimatedFraction();
            if (animatedFraction == 0.0f && view != null) {
                view.setVisibility(0);
            }
            Object objEvaluate = evaluator.evaluate(animatedFraction, Integer.valueOf(Color.parseColor("#00336FFF")), Integer.valueOf(Color.parseColor("#FF336FFF")));
            Intrinsics.f(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) objEvaluate).intValue();
            Object objEvaluate2 = evaluator.evaluate(animatedFraction, Integer.valueOf(Color.parseColor("#003752FF")), Integer.valueOf(Color.parseColor("#FF3752FF")));
            Intrinsics.f(objEvaluate2, "null cannot be cast to non-null type kotlin.Int");
            drawable.setColors(new int[]{iIntValue, ((Integer) objEvaluate2).intValue()});
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final boolean c(AdsDTO adsDTO) {
        String halfScreenType = null;
        if ((adsDTO != null ? Integer.valueOf(adsDTO.getDownloadArea()) : null) == null || adsDTO.getDownloadArea() == 0) {
            if (adsDTO != null) {
                try {
                    halfScreenType = adsDTO.getHalfScreenType();
                } catch (Throwable unused) {
                }
            }
            return TextUtils.equals(halfScreenType, "Z");
        }
        if (adsDTO.getDownloadArea() == 2) {
            return true;
        }
        return false;
    }

    public final int d(AdsDTO adsDTO) {
        Integer pullNewestLive = adsDTO != null ? adsDTO.getPullNewestLive() : null;
        if (pullNewestLive != null && pullNewestLive.intValue() == 2) {
            return 2;
        }
        if (pullNewestLive == null || pullNewestLive.intValue() != 3) {
            Integer numValueOf = adsDTO != null ? Integer.valueOf(adsDTO.getInstallApk()) : null;
            if (numValueOf == null || numValueOf.intValue() != 2) {
                return (numValueOf != null && numValueOf.intValue() == 3) ? 2 : 1;
            }
        }
        return 3;
    }

    public final boolean e(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public final void f(AdsDTO adsDTO) {
        PslinkInfo pslinkInfo;
        String score;
        PslinkInfo pslinkInfo2;
        PslinkInfo pslinkInfo3;
        PslinkInfo pslinkInfo4;
        try {
            NativeBean nativeBean = new NativeBean();
            Integer numV = null;
            NativeBean.TitleDTO titleDTO = new NativeBean.TitleDTO((adsDTO == null || (pslinkInfo4 = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo4.getName());
            NativeBean.DescriptDTO descriptDTO = new NativeBean.DescriptDTO((adsDTO == null || (pslinkInfo3 = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo3.getSimpleDescription());
            NativeBean.LogoDTO logoDTO = new NativeBean.LogoDTO((adsDTO == null || (pslinkInfo2 = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo2.getIconUrl());
            nativeBean.setTitle(titleDTO);
            nativeBean.setDescript(descriptDTO);
            nativeBean.setLogo(logoDTO);
            if (adsDTO != null && (pslinkInfo = adsDTO.getPslinkInfo()) != null && (score = pslinkInfo.getScore()) != null) {
                numV = StringsKt.v(score);
            }
            if (numV == null) {
                numV = 0;
            }
            nativeBean.setRating(numV);
            if (adsDTO != null) {
                adsDTO.setNativeObject(nativeBean);
            }
        } catch (Throwable unused) {
        }
    }

    public final ObjectAnimator g(View view) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, 1.0f, 0.85f, 1.0f), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, 1.0f, 0.85f, 1.0f));
            objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
            objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
            objectAnimatorOfPropertyValuesHolder.setRepeatMode(1);
            objectAnimatorOfPropertyValuesHolder.setInterpolator(new AccelerateDecelerateInterpolator());
            objM454constructorimpl = Result.m454constructorimpl(objectAnimatorOfPropertyValuesHolder);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        return (ObjectAnimator) objM454constructorimpl;
    }

    public final String h(String encryptedContent, String base64Key) {
        Intrinsics.h(encryptedContent, "encryptedContent");
        Intrinsics.h(base64Key, "base64Key");
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(base64Key, 2), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, secretKeySpec);
            if (StringsKt.c0(encryptedContent, " ", false, 2, null)) {
                encryptedContent = StringsKt.Q(encryptedContent, " ", "+", false, 4, null);
            }
            byte[] bArrDoFinal = cipher.doFinal(Base64.decode(encryptedContent, 2));
            if (bArrDoFinal.length < 2) {
                return null;
            }
            try {
                int i11 = ((bArrDoFinal[0] & 255) << 8) | (bArrDoFinal[1] & 255);
                if (i11 + 2 > bArrDoFinal.length) {
                    return null;
                }
                Intrinsics.e(bArrDoFinal);
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.g(UTF_8, "UTF_8");
                return new String(bArrDoFinal, 2, i11, UTF_8);
            } catch (Exception e11) {
                e4.b().e("HSCommonUtils", "decryptOptimized length parse error: " + e11.getMessage());
                return null;
            }
            e4.b().e("HSCommonUtils", "decryptOptimized error: " + e.getMessage());
            return null;
        } catch (Exception e12) {
            e4.b().e("HSCommonUtils", "decryptOptimized error: " + e12.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x000f  */
    public final String i(String str) {
        long jLongValue;
        if (str != null) {
            try {
                Long lX = StringsKt.x(str);
                if (lX != null) {
                    jLongValue = lX.longValue();
                } else {
                    jLongValue = 0;
                }
            } catch (Throwable unused) {
                return "";
            }
        } else {
            jLongValue = 0;
        }
        double d11 = 1024;
        double d12 = 1024.0d * d11;
        double d13 = d11 * d12;
        double d14 = jLongValue;
        if (d14 >= d13) {
            String str2 = String.format("%.1f GB", Arrays.copyOf(new Object[]{Double.valueOf(d14 / d13)}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (d14 >= d12) {
            String str3 = String.format("%.1f MB", Arrays.copyOf(new Object[]{Double.valueOf(d14 / d12)}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        String str4 = String.format("%.1f MB", Arrays.copyOf(new Object[]{Double.valueOf(d14 / d12)}, 1));
        Intrinsics.g(str4, "format(...)");
        return str4;
    }

    public final String j() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hs_i1107_default_btn));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = "Learn More";
        }
        return (String) objM454constructorimpl;
    }

    public final String k(AdsDTO adsDTO) {
        String sourceSize;
        Long lX;
        if (adsDTO != null && adsDTO.getShowSourceSize()) {
            try {
                PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                if (((pslinkInfo == null || (sourceSize = pslinkInfo.getSourceSize()) == null || (lX = StringsKt.x(sourceSize)) == null) ? 0L : lX.longValue()) > 0 && d(adsDTO) == 2) {
                    PslinkInfo pslinkInfo2 = adsDTO.getPslinkInfo();
                    return i(pslinkInfo2 != null ? pslinkInfo2.getSourceSize() : null);
                }
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public final String l(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return null;
        }
        try {
            Uri uri = Uri.parse(str);
            Intrinsics.g(uri, "parse(this)");
            return uri.getQueryParameter(str2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0047, code lost:
    
        if (r2.intValue() != 2) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String m(String str) {
        try {
            e4.b().d("HSCommonUtils", "TrackingManager --> landingUrlAppendABTestData --> 处理前 url = " + str);
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (!Intrinsics.c(customTabData != null ? customTabData.getEnableSpliceParam() : null, Boolean.TRUE)) {
                return str;
            }
            com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.f22653a;
            Integer numH0 = aVar.h0();
            if (numH0 == null || numH0.intValue() != 1) {
                if (numH0 != null) {
                }
            }
            Long lE0 = aVar.e0();
            Integer numG0 = aVar.g0();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("k1", numH0);
            if (numG0 == null || numG0.intValue() != 0) {
                jsonObject.addProperty("k2", numG0);
            }
            if (lE0 == null || lE0.longValue() != 0) {
                jsonObject.addProperty("k3", lE0);
            }
            String str2 = str + "&sspParams=" + URLEncoder.encode(jsonObject.toString(), "UTF-8");
            e4.b().d("HSCommonUtils", "TrackingManager --> landingUrlAppendABTestData --> 处理后的 url = " + str2);
            return str2;
        } catch (Throwable unused) {
        }
        return str;
    }

    public final void n(View view, Runnable runnable) {
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(view != null ? Boolean.valueOf(view.removeCallbacks(runnable)) : null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void o(AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        if (adsDTO != null) {
            boolean z10 = true;
            try {
                adsDTO.setTrackUserClickArea(1);
                AthenaTracker.X(adsDTO, Boolean.TRUE);
                Integer trackType = adsDTO.getTrackType();
                boolean z11 = trackType != null && trackType.intValue() == 0;
                boolean zH = i0.h(com.cloud.sdk.commonutil.util.e.a());
                if (!z11 || !zH) {
                    N0.U(adsDTO);
                    z10 = false;
                }
                c1.h(downUpPointBean, adsDTO, Boolean.valueOf(z10));
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Runnable] */
    public final Runnable p(View view, final View view2, String startColor) {
        Context context;
        Resources resources;
        DisplayMetrics displayMetrics;
        Intrinsics.h(startColor, "startColor");
        Object objValueOf = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            final GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor(startColor), Color.parseColor(startColor)});
            gradientDrawable.setCornerRadius(4 * ((view == 0 || (context = view.getContext()) == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) ? 1.0f : displayMetrics.density));
            if (view != 0) {
                view.setBackground(gradientDrawable);
            }
            Runnable runnable = new Runnable() { // from class: com.cloud.hisavana.sdk.common.util.p
                @Override // java.lang.Runnable
                public final void run() {
                    r.q(this.f22166a, view2, gradientDrawable);
                }
            };
            if (view != 0) {
                try {
                    objValueOf = Boolean.valueOf(view.postDelayed(runnable, 500L));
                } catch (Throwable th2) {
                    th = th2;
                    objValueOf = runnable;
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th));
                    return objValueOf;
                }
            }
            Result.m454constructorimpl(objValueOf);
            return runnable;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void s(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            webView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredWidth = webView.getMeasuredWidth();
            int measuredHeight = webView.getMeasuredHeight();
            e4.b().d("HSCommonUtils", "simulateClickByCoordinate->height: " + measuredHeight + ", width: " + measuredWidth);
            float f11 = (float) (measuredWidth / 2);
            float f12 = (float) (measuredHeight / 2);
            MotionEvent motionEventObtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, f11, f12, 0);
            webView.dispatchTouchEvent(motionEventObtain);
            long j11 = (long) 100;
            MotionEvent motionEventObtain2 = MotionEvent.obtain(SystemClock.uptimeMillis() + j11, SystemClock.uptimeMillis() + j11, 1, f11, f12, 0);
            webView.dispatchTouchEvent(motionEventObtain2);
            motionEventObtain.recycle();
            motionEventObtain2.recycle();
        } catch (Throwable unused) {
        }
    }
}
