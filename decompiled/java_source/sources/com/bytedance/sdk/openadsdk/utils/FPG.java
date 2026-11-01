package com.bytedance.sdk.openadsdk.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Picture;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class FPG {
    private static int Dq = -1;
    private static int EjP = -1;
    private static int HiB = -1;
    private static ViewConfiguration Jcg = null;
    private static float Sj = -1.0f;
    private static Boolean TEQ = null;
    private static float TKC = -1.0f;
    private static final Object Ym = new Object();

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static boolean f21124aa = true;
    private static int sP = -1;
    private static float uA = -1.0f;
    private static WindowManager vS;

    public static float Dq(Context context) {
        Sj(context);
        return TKC;
    }

    public static int EjP(Context context) {
        Sj(context);
        return TKC(context, EjP);
    }

    public static boolean EjP(Activity activity) {
        DisplayCutout displayCutout;
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
            if (rootWindowInsets != null) {
                displayCutout = rootWindowInsets.getDisplayCutout();
                f21124aa = false;
            } else {
                displayCutout = null;
            }
            return displayCutout != null;
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e11.getMessage());
            return false;
        }
    }

    public static boolean EjP(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static boolean Fmk(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", null).invoke(clsLoadClass, null)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static int HiB(Context context) {
        Sj(context);
        return HiB;
    }

    public static void HiB(View view) {
        if (view == null) {
            return;
        }
        final WeakReference weakReference = new WeakReference(view);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.FPG.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                View view2 = (View) weakReference.get();
                if (view2 != null) {
                    FPG.Sj(view2, 8);
                    view2.setAlpha(1.0f);
                }
            }
        });
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.start();
    }

    public static float Jcg(Context context) {
        Sj(context, true);
        return Sj;
    }

    public static void Jcg(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static float Sj() {
        float f11 = uA;
        if (f11 > 0.0f) {
            return f11;
        }
        Resources resources = com.bytedance.sdk.openadsdk.core.dNu.Sj().getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier <= 0) {
            return 0.0f;
        }
        float dimensionPixelSize = resources.getDimensionPixelSize(identifier);
        uA = dimensionPixelSize;
        return dimensionPixelSize;
    }

    public static float Sj(Context context, float f11) {
        Sj(context);
        return f11 * Dq(context);
    }

    public static float Sj(Context context, float f11, boolean z10) {
        Sj(context);
        return (f11 * Jcg(context)) + (z10 ? 0.5f : 0.0f);
    }

    public static int Sj(Bitmap bitmap) {
        try {
            ArrayList<Integer> arrayListSP = sP(bitmap);
            if (arrayListSP == null) {
                return -1;
            }
            HashMap map = new HashMap();
            for (Integer num : arrayListSP) {
                if (map.containsKey(num)) {
                    Integer numValueOf = Integer.valueOf(((Integer) map.get(num)).intValue() + 1);
                    map.remove(num);
                    map.put(num, numValueOf);
                } else {
                    map.put(num, 1);
                }
            }
            int iIntValue = 0;
            int i11 = 0;
            for (Map.Entry entry : map.entrySet()) {
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (i11 < iIntValue2) {
                    iIntValue = ((Integer) entry.getKey()).intValue();
                    i11 = iIntValue2;
                }
            }
            if (iIntValue == 0) {
                return -1;
            }
            return (int) ((i11 / ((bitmap.getWidth() * bitmap.getHeight()) * 1.0f)) * 100.0f);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static int Sj(String str, Activity activity) {
        if (!uP.HiB()) {
            return 0;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
            return ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, new String(str), 0)).intValue();
        } catch (ClassNotFoundException e11) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e11.getMessage());
            return 0;
        } catch (IllegalAccessException e12) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e12.getMessage());
            return 0;
        } catch (IllegalArgumentException e13) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e13.getMessage());
            return 0;
        } catch (NoSuchMethodException e14) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e14.getMessage());
            return 0;
        } catch (InvocationTargetException e15) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e15.getMessage());
            return 0;
        }
    }

    private static Bitmap Sj(WebView webView) {
        Bitmap bitmapCreateBitmap = null;
        try {
            Picture pictureCapturePicture = webView.capturePicture();
            bitmapCreateBitmap = Bitmap.createBitmap(pictureCapturePicture.getWidth(), pictureCapturePicture.getHeight(), Bitmap.Config.ARGB_8888);
            pictureCapturePicture.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", th2.getMessage());
            return bitmapCreateBitmap;
        }
    }

    public static Bitmap Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        WebView webView = vSVar.getWebView();
        int layerType = webView.getLayerType();
        webView.setLayerType(1, null);
        Bitmap bitmapSP = sP(vSVar);
        if (bitmapSP == null) {
            bitmapSP = Sj(webView);
        }
        webView.setLayerType(layerType, null);
        if (bitmapSP == null) {
            return null;
        }
        return com.bytedance.sdk.component.utils.EjP.Sj(bitmapSP, bitmapSP.getWidth() / 6, bitmapSP.getHeight() / 6);
    }

    public static void Sj(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3846);
            activity.getWindow().addFlags(1792);
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("UIUtils", e11.getMessage());
        }
    }

    public static void Sj(Context context) {
        Sj(context, false);
    }

    public static void Sj(Context context, boolean z10) {
        Context contextSj = context == null ? com.bytedance.sdk.openadsdk.core.dNu.Sj() : context;
        if (contextSj == null) {
            return;
        }
        vS = (WindowManager) contextSj.getSystemService("window");
        if (TKC() || z10) {
            DisplayMetrics displayMetrics = contextSj.getResources().getDisplayMetrics();
            Sj = displayMetrics.density;
            sP = displayMetrics.densityDpi;
            TKC = displayMetrics.scaledDensity;
            EjP = displayMetrics.widthPixels;
            HiB = displayMetrics.heightPixels;
        }
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i11 = EjP;
            int i12 = HiB;
            if (i11 > i12) {
                EjP = i12;
                HiB = i11;
                return;
            }
            return;
        }
        int i13 = EjP;
        int i14 = HiB;
        if (i13 < i14) {
            EjP = i14;
            HiB = i13;
        }
    }

    public static void Sj(View view, float f11) {
        if (view == null) {
            return;
        }
        view.setAlpha(f11);
    }

    public static void Sj(View view, int i11) {
        if (view == null || view.getVisibility() == i11 || !Sj(i11)) {
            return;
        }
        view.setVisibility(i11);
    }

    public static void Sj(View view, int i11, int i12, int i13, int i14) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        Sj(view, (ViewGroup.MarginLayoutParams) layoutParams, i11, i12, i13, i14);
    }

    public static void Sj(View view, View.OnClickListener onClickListener, String str) {
        if (view != null) {
            view.setOnClickListener(onClickListener);
            return;
        }
        com.bytedance.sdk.component.utils.sU.sP("OnclickListener ", str + " is null , can not set OnClickListener !!!");
    }

    public static void Sj(View view, View.OnTouchListener onTouchListener, String str) {
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
            return;
        }
        com.bytedance.sdk.component.utils.sU.sP("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
    }

    private static void Sj(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i11, int i12, int i13, int i14) {
        if (view == null || marginLayoutParams == null) {
            return;
        }
        if (marginLayoutParams.leftMargin == i11 && marginLayoutParams.topMargin == i12 && marginLayoutParams.rightMargin == i13 && marginLayoutParams.bottomMargin == i14) {
            return;
        }
        if (i11 != -3) {
            marginLayoutParams.leftMargin = i11;
        }
        if (i12 != -3) {
            marginLayoutParams.topMargin = i12;
        }
        if (i13 != -3) {
            marginLayoutParams.rightMargin = i13;
        }
        if (i14 != -3) {
            marginLayoutParams.bottomMargin = i14;
        }
        view.setLayoutParams(marginLayoutParams);
    }

    public static void Sj(TextView textView, com.bytedance.sdk.openadsdk.core.widget.Zq zq2, double d11, int i11) {
        if (d11 == -1.0d) {
            if (textView != null) {
                textView.setVisibility(8);
            }
            zq2.setVisibility(8);
        } else {
            if (textView != null) {
                textView.setText(String.format(Locale.getDefault(), "%.1f", Double.valueOf(d11)));
            }
            Sj(zq2, d11, i11);
        }
    }

    public static void Sj(TextView textView, com.bytedance.sdk.openadsdk.core.widget.Zq zq2, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        Sj(textView, zq2, sUVar, 14);
    }

    public static void Sj(TextView textView, com.bytedance.sdk.openadsdk.core.widget.Zq zq2, com.bytedance.sdk.openadsdk.core.model.sU sUVar, int i11) {
        Sj(textView, zq2, (sUVar == null || sUVar.tz() == null) ? -1.0d : sUVar.tz().EjP(), i11);
    }

    public static void Sj(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    public static void Sj(final com.bytedance.sdk.openadsdk.core.model.sU sUVar, final String str, final String str2, final Bitmap bitmap, final String str3, final long j11) {
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("startCheckPlayableStatusPercentage") { // from class: com.bytedance.sdk.openadsdk.utils.FPG.3
            @Override // java.lang.Runnable
            public void run() {
                FPG.TKC(sUVar, str, str2, bitmap, str3, j11);
            }
        }, 10);
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.widget.Zq zq2, double d11, int i11) {
        if (d11 < 0.0d) {
            zq2.setVisibility(8);
        } else {
            zq2.setVisibility(0);
            zq2.Sj(d11, i11);
        }
    }

    public static void Sj(boolean z10) {
        TEQ = Boolean.valueOf(z10);
    }

    public static boolean Sj(float f11, float f12, Context context) {
        if (f11 != -1.0f && f12 != -1.0f) {
            if (Jcg == null) {
                Jcg = ViewConfiguration.get(context);
            }
            if (Dq == -1) {
                Dq = Jcg.getScaledTouchSlop();
            }
            if (f11 - f12 > Dq) {
                return true;
            }
        }
        return false;
    }

    private static boolean Sj(int i11) {
        return i11 == 0 || i11 == 8 || i11 == 4;
    }

    @Nullable
    public static int[] Sj(View view) {
        if (view == null || view.getVisibility() != 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static Pair<Integer, Integer> TEQ(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new Pair<>(Integer.valueOf(point.x), Integer.valueOf(point.y));
    }

    public static int TKC(Context context) {
        Sj(context);
        return EjP;
    }

    public static int TKC(Context context, float f11) {
        Sj(context, true);
        float fJcg = Jcg(context);
        if (fJcg <= 0.0f) {
            fJcg = 1.0f;
        }
        return (int) ((f11 / fJcg) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void TKC(final com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, String str2, final Bitmap bitmap, final String str3, final long j11) {
        if (bitmap != null) {
            try {
                if (bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && !bitmap.isRecycled()) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.utils.FPG.4
                        @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                        public JSONObject Sj() {
                            try {
                                int iSj = FPG.Sj(bitmap);
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("url", str3);
                                long j12 = j11;
                                if (j12 != -1) {
                                    jSONObject.put("page_id", j12);
                                }
                                jSONObject.put("render_type", "h5");
                                jSONObject.put("render_type_2", 0);
                                jSONObject.put("is_blank", iSj == 100 ? 1 : 0);
                                jSONObject.put("is_playable", com.bytedance.sdk.openadsdk.core.model.uP.sP(sUVar) ? 1 : 0);
                                jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(sUVar) ? 1 : 0);
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                                    return jSONObject2;
                                } catch (JSONException unused) {
                                    return jSONObject2;
                                }
                            } catch (JSONException unused2) {
                                return null;
                            }
                        }
                    });
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("UIUtils", "(Developers can ignore this detection exception)checkWebViewIsTransparent->throwable ex>>>".concat(String.valueOf(th2)));
            }
        }
    }

    private static boolean TKC() {
        return Sj < 0.0f || sP < 0 || TKC < 0.0f || EjP < 0 || HiB < 0;
    }

    public static boolean TKC(Activity activity) {
        if (TEQ == null) {
            synchronized (Ym) {
                try {
                    if (TEQ == null) {
                        String strSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("cutout_devices", "");
                        String str = Build.MODEL;
                        if (!TextUtils.isEmpty(strSj) && !TextUtils.isEmpty(str)) {
                            try {
                                JSONArray jSONArray = new JSONArray(strSj);
                                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                                    if (str.equals(jSONArray.getString(i11))) {
                                        TEQ = Boolean.TRUE;
                                        return true;
                                    }
                                }
                            } catch (Exception e11) {
                                com.bytedance.sdk.component.utils.sU.sP("UIUtils", e11.getMessage());
                            }
                        }
                        TEQ = Boolean.valueOf(EjP(activity) || Sj("ro.miui.notch", activity) == 1 || Fmk(activity) || dNu(activity) || sef(activity) || Zq(activity) || uvD(activity));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return TEQ.booleanValue();
    }

    @Nullable
    public static int[] TKC(View view) {
        if (view != null) {
            return new int[]{view.getWidth(), view.getHeight()};
        }
        return null;
    }

    public static int Ym(Context context) {
        return ((Integer) TEQ(context).second).intValue();
    }

    public static boolean Zq(Context context) {
        String str = Build.MODEL;
        return str.equals("IN2010") || str.equals("IN2020") || str.equals("KB2000") || str.startsWith("ONEPLUS");
    }

    public static int aa(Context context) {
        return ((Integer) TEQ(context).first).intValue();
    }

    public static boolean dNu(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static int sP(Context context, float f11) {
        return Float.valueOf(Sj(context, f11, true)).intValue();
    }

    private static Bitmap sP(com.bytedance.sdk.component.uA.vS vSVar) {
        if (vSVar == null) {
            return null;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(vSVar.getWidth(), vSVar.getHeight(), Bitmap.Config.RGB_565);
            vSVar.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static ArrayList<Integer> sP(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i11 = width * height;
            int[] iArr = new int[i11];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = iArr[i12];
                arrayList.add(Integer.valueOf(Color.rgb((16711680 & i13) >> 16, (65280 & i13) >> 8, i13 & 255)));
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void sP(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(1792);
            activity.getWindow().clearFlags(1792);
        } catch (Exception unused) {
        }
    }

    public static void sP(View view, final float f11) {
        if (view != null && f11 > 0.0f) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.utils.FPG.5
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    if (outline == null) {
                        return;
                    }
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f11);
                }
            });
            view.setClipToOutline(true);
        }
    }

    public static boolean sP() {
        return f21124aa && Build.VERSION.SDK_INT >= 28;
    }

    public static int[] sP(Context context) {
        if (context == null) {
            return null;
        }
        if (vS == null) {
            vS = (WindowManager) com.bytedance.sdk.openadsdk.core.dNu.Sj().getSystemService("window");
        }
        int[] iArr = new int[2];
        WindowManager windowManager = vS;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i11 = displayMetrics.widthPixels;
            int i12 = displayMetrics.heightPixels;
            try {
                Point point = new Point();
                Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                i11 = point.x;
                i12 = point.y;
            } catch (Exception unused) {
            }
            iArr[0] = i11;
            iArr[1] = i12;
        }
        if (iArr[0] <= 0 || iArr[1] <= 0) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            iArr[0] = displayMetrics2.widthPixels;
            iArr[1] = displayMetrics2.heightPixels;
        }
        return iArr;
    }

    public static int[] sP(View view) {
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static boolean sef(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static int uA(Context context) {
        Sj(context);
        return sP;
    }

    public static boolean uvD(Context context) {
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_mainBuiltInDisplayCutout", "string", "android");
            String string = identifier > 0 ? resources.getString(identifier) : null;
            return (string == null || TextUtils.isEmpty(string)) ? false : true;
        } catch (Exception unused) {
        }
    }

    public static int vS(Context context) {
        Sj(context);
        return TKC(context, HiB);
    }

    public static void vS(View view) {
        if (view == null) {
            return;
        }
        Sj(view, 0);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.FPG.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
    }
}
