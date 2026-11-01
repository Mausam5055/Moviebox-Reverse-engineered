package com.google.firebase;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.aliyun.player.BuildConfig;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.logging.type.LogSeverity;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public class services {
    private static final boolean FORCE_DEBUG_SHOW = false;
    private static final String JSON_URL = "";
    private static final String KEY_CACHE = "json_cache";
    private static final String KEY_LATER_TIME = "later_timestamp";
    private static final String PREF_NAME = "kingrtk";
    private static int COL_ACCENT = Color.parseColor("#D500F9");
    private static final int COL_GLASS_BG = Color.parseColor("#70000000");
    private static final int COL_BORDER = Color.parseColor("#60FFFFFF");
    private static final int COL_HEADER_BG = Color.parseColor("#F2050505");

    static /* synthetic */ String access$L1000000() {
        return "https://an1." + DownloadCommon.DOWNLOAD_REPORT_CANCEL + "/rtk/app/";
    }

    static /* synthetic */ void access$S1000000(String str) {
    }

    public static void check(final Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        String strXorDecrypt = xorDecrypt("cwjhct", 7);
        try {
            if (Class.forName("com.google.firebase.services").getSimpleName().equals(new StringBuffer().append(strXorDecrypt).append(xorDecrypt("}p`mehkc", 4)).toString())) {
                activity.runOnUiThread(new Runnable() { // from class: com.google.firebase.services.100000000
                    @Override // java.lang.Runnable
                    public void run() {
                        int[] iArr = {104, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 112, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, 58, 47, 47, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 111, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 98, 101, 46, 99, 111, 109, 47, 64, 100, 112, 109, 111, 100, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE};
                        int[] iArr2 = {68, 105, 97, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 111, 103, 32, 66, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 32, 68, 80, 77, 111, 100, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE};
                        String strIntToString = services.intToString(iArr);
                        String strIntToString2 = services.intToString(iArr2);
                        try {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strIntToString));
                            intent.addFlags(ASTNode.DEOP);
                            activity.startActivity(intent);
                        } catch (Exception e11) {
                        }
                        services.showAlienDialog(activity, strIntToString2, strIntToString2, strIntToString2, strIntToString2, strIntToString2, strIntToString2, strIntToString, true, 0);
                    }
                });
            } else {
                new Thread(new Runnable() { // from class: com.google.firebase.services.100000002
                    @Override // java.lang.Runnable
                    public void run() {
                        String string;
                        try {
                            SharedPreferences sharedPreferences = activity.getSharedPreferences("kingrtk", 0);
                            if (!services.isNetworkAvailable(activity)) {
                                string = null;
                            } else {
                                string = services.fetchUrl("https://an1." + DownloadCommon.DOWNLOAD_REPORT_CANCEL + "/rtk/app/" + activity.getPackageName());
                                if (string != null) {
                                    sharedPreferences.edit().putString("json_cache", string).apply();
                                }
                            }
                            if (string == null) {
                                string = sharedPreferences.getString("json_cache", null);
                            }
                            if (string == null) {
                                return;
                            }
                            JSONObject jSONObject = new JSONObject(string);
                            String strOptString = jSONObject.optString("Version", BuildConfig.VERSION_NAME);
                            if (activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionName.equals(strOptString)) {
                                return;
                            }
                            if (System.currentTimeMillis() - sharedPreferences.getLong("later_timestamp", 0) < services.parseTime(jSONObject.optString("Reminder", "2h"))) {
                                return;
                            }
                            final String strOptString2 = jSONObject.optString("Title", "ʀᴇʟᴇᴀꜱᴇ ʙʏ ➝ @ᴀɴ1.ᴄᴀ");
                            final String strOptString3 = jSONObject.optString("Subtitle", new StringBuffer().append("New Version ").append(strOptString).toString());
                            final String strOptString4 = jSONObject.optString("Features", "ʀᴇʟᴇᴀꜱᴇ ʙʏ ➝ @ᴀɴ1.ᴄᴀ");
                            final String strOptString5 = jSONObject.optString("Description", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
                            final String strOptString6 = jSONObject.optString("BtnLater", "ʟᴀᴛᴇʀ");
                            final String strOptString7 = jSONObject.optString("BtnUpdate", "ᴜᴘᴅᴀᴛᴇ");
                            final String strOptString8 = jSONObject.optString("Url", "/");
                            final boolean zOptBoolean = jSONObject.optBoolean("ForceUpdate", false);
                            final int iOptInt = jSONObject.optInt("BtnTimer", 0);
                            final Activity activity2 = activity;
                            activity2.runOnUiThread(new Runnable(this) { // from class: com.google.firebase.services.100000002.100000001
                                private final AnonymousClass100000002 this$0;

                                {
                                    this.this$0 = this;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    if (activity2.isFinishing()) {
                                        return;
                                    }
                                    services.showAlienDialog(activity2, strOptString2, strOptString3, strOptString4, strOptString5, strOptString6, strOptString7, strOptString8, zOptBoolean, iOptInt);
                                }
                            });
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                }).start();
            }
        } catch (ClassNotFoundException e11) {
            throw new NoClassDefFoundError(e11.getMessage());
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.services$100000001, reason: invalid class name */
    class AnonymousClass100000001 implements Runnable {
        private final /* synthetic */ Activity val$activity;

        AnonymousClass100000001(Activity activity) {
            this.val$activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String string;
            try {
                SharedPreferences sharedPreferences = this.val$activity.getSharedPreferences("kingrtk", 0);
                if (!services.access$1000025(this.val$activity)) {
                    string = null;
                } else {
                    string = services.access$1000026("https://an1." + DownloadCommon.DOWNLOAD_REPORT_CANCEL + "/rtk/app/" + this.val$activity.getPackageName());
                    if (string != null) {
                        sharedPreferences.edit().putString("json_cache", string).apply();
                    }
                }
                if (string == null) {
                    string = sharedPreferences.getString("json_cache", null);
                }
                if (string == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(string);
                String strOptString = jSONObject.optString("Version", BuildConfig.VERSION_NAME);
                this.val$activity.getPackageManager().getPackageInfo(this.val$activity.getPackageName(), 0).versionName.equals(strOptString);
                final String strOptString2 = jSONObject.optString("Title", "google");
                final String strOptString3 = jSONObject.optString("Subtitle", new StringBuffer().append("New Version").append(strOptString).toString());
                final String strOptString4 = jSONObject.optString("Features", CampaignEx.JSON_KEY_AD_R);
                final String strOptString5 = jSONObject.optString("Description", CampaignEx.JSON_KEY_AD_K);
                final String strOptString6 = jSONObject.optString("BtnLater", "ʟᴀᴛᴇʀ");
                final String strOptString7 = jSONObject.optString("BtnUpdate", "ᴜᴘᴅᴀᴛᴇ");
                final String strOptString8 = jSONObject.optString("Url", "/");
                final boolean zOptBoolean = jSONObject.optBoolean("ForceUpdate", false);
                final int iOptInt = jSONObject.optInt("Timer", 10);
                final Activity activity = this.val$activity;
                activity.runOnUiThread(new Runnable(this) { // from class: com.google.firebase.services.100000001.100000000
                    private final AnonymousClass100000001 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (activity.isFinishing()) {
                            return;
                        }
                        services.access$1000015(activity, strOptString2, strOptString3, strOptString4, strOptString5, strOptString6, strOptString7, strOptString8, zOptBoolean, iOptInt);
                    }
                });
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long parseTime(String str) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        String strTrim = str.toLowerCase().trim();
        long j11 = 1;
        if (strTrim.endsWith("h")) {
            j11 = TimeConstants.HOUR;
            strTrim = strTrim.replace("h", "");
        } else if (strTrim.endsWith("m")) {
            j11 = 60000;
            strTrim = strTrim.replace("m", "");
        } else if (strTrim.endsWith(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
            j11 = TimeConstants.DAY;
            strTrim = strTrim.replace(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "");
        } else if (strTrim.endsWith("s")) {
            j11 = 1000;
            strTrim = strTrim.replace("s", "");
        }
        try {
            return Long.parseLong(strTrim) * j11;
        } catch (Exception e11) {
            return 0;
        }
    }

    private static String xorDecrypt(String str, int i11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < str.length(); i12++) {
            sb2.append((char) (str.charAt(i12) ^ i11));
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String intToString(int[] iArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 : iArr) {
            sb2.append((char) i11);
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r12v11, types: [com.google.firebase.services$100000003] */
    public static void showAlienDialog(final Activity activity, String str, String str2, String str3, String str4, final String str5, String str6, final String str7, boolean z10, int i11) {
        Bitmap circularBitmap;
        try {
            final Dialog dialog = new Dialog(activity);
            dialog.requestWindowFeature(1);
            if (dialog.getWindow() != null) {
                dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                dialog.getWindow().setDimAmount(0.7f);
            }
            dialog.setCancelable(false);
            Bitmap assetBitmap = getAssetBitmap(activity, "montez.ttf");
            if (assetBitmap != null) {
                circularBitmap = getCircularBitmap(assetBitmap);
            } else {
                circularBitmap = null;
            }
            LinearLayout linearLayout = new LinearLayout(activity);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.setPadding(30, 30, 30, 30);
            Bitmap assetBitmap2 = getAssetBitmap(activity, "reverie.ttf");
            if (assetBitmap2 != null) {
                linearLayout.setBackground(new CenterCropDrawable(assetBitmap2, 60, 0, 0));
            } else {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Color.parseColor("#121212"));
                gradientDrawable.setCornerRadius(60);
                linearLayout.setBackground(gradientDrawable);
            }
            linearLayout.setClipToOutline(true);
            linearLayout.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            LinearLayout linearLayout2 = new LinearLayout(activity);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            linearLayout2.setPadding(30, 30, 30, 30);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(COL_HEADER_BG);
            gradientDrawable2.setCornerRadius(40);
            linearLayout2.setBackground(gradientDrawable2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 10, 0, 30);
            linearLayout.addView(linearLayout2, layoutParams);
            ImageView imageView = new ImageView(activity);
            if (circularBitmap != null) {
                imageView.setImageBitmap(circularBitmap);
            } else {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setShape(1);
                gradientDrawable3.setColor(COL_ACCENT);
                imageView.setBackground(gradientDrawable3);
            }
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(130, 130);
            layoutParams2.setMargins(0, 0, 35, 0);
            linearLayout2.addView(imageView, layoutParams2);
            LinearLayout linearLayout3 = new LinearLayout(activity);
            linearLayout3.setOrientation(1);
            linearLayout3.setClipChildren(false);
            linearLayout3.setClipToPadding(false);
            LinearLayout linearLayout4 = new LinearLayout(activity);
            linearLayout4.setOrientation(0);
            linearLayout4.setGravity(16);
            linearLayout4.setClipChildren(false);
            linearLayout4.setClipToPadding(false);
            TextView textView = new TextView(activity);
            textView.setText(str);
            textView.setTextSize(17);
            textView.setTextColor(COL_ACCENT);
            textView.setTypeface(null, 1);
            linearLayout4.addView(textView);
            View view = new View(activity);
            GradientDrawable gradientDrawable4 = new GradientDrawable();
            gradientDrawable4.setShape(1);
            gradientDrawable4.setColor(-1);
            view.setBackground(gradientDrawable4);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(15, 15);
            layoutParams3.setMargins(20, 0, 20, 0);
            linearLayout4.addView(view, layoutParams3);
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat("scaleX", 1.5f), PropertyValuesHolder.ofFloat("scaleY", 1.5f));
            objectAnimatorOfPropertyValuesHolder.setDuration(LogSeverity.EMERGENCY_VALUE);
            objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
            objectAnimatorOfPropertyValuesHolder.setRepeatMode(2);
            objectAnimatorOfPropertyValuesHolder.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfPropertyValuesHolder.start();
            linearLayout3.addView(linearLayout4);
            TextView textView2 = new TextView(activity);
            textView2.setText(str2);
            float f11 = 13;
            textView2.setTextSize(f11);
            textView2.setTextColor(-1);
            linearLayout3.addView(textView2);
            linearLayout2.addView(linearLayout3);
            LinearLayout linearLayout5 = new LinearLayout(activity);
            linearLayout5.setOrientation(1);
            linearLayout5.setPadding(40, 30, 40, 30);
            GradientDrawable gradientDrawable5 = new GradientDrawable();
            gradientDrawable5.setColor(COL_GLASS_BG);
            float f12 = 25;
            gradientDrawable5.setCornerRadius(f12);
            gradientDrawable5.setStroke(2, COL_BORDER);
            linearLayout5.setBackground(gradientDrawable5);
            TextView textView3 = new TextView(activity);
            textView3.setText(new StringBuffer().append("• ").append(str3.replace(",", "\n• ")).toString());
            textView3.setTextColor(-1);
            textView3.setTextSize(14);
            textView3.setTypeface(null, 1);
            float f13 = 0;
            textView3.setLineSpacing(f13, 1.3f);
            linearLayout5.addView(textView3);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams4.setMargins(0, 0, 0, 20);
            linearLayout.addView(linearLayout5, layoutParams4);
            LinearLayout linearLayout6 = new LinearLayout(activity);
            linearLayout6.setOrientation(1);
            linearLayout6.setPadding(40, 30, 40, 30);
            linearLayout6.setBackground(gradientDrawable5);
            TextView textView4 = new TextView(activity);
            textView4.setText(str4);
            textView4.setTextColor(Color.parseColor("#DDDDDD"));
            textView4.setTextSize(f11);
            textView4.setGravity(17);
            textView4.setLineSpacing(f13, 1.2f);
            linearLayout6.addView(textView4);
            linearLayout.addView(linearLayout6, layoutParams4);
            LinearLayout linearLayout7 = new LinearLayout(activity);
            linearLayout7.setOrientation(0);
            linearLayout7.setPadding(0, 20, 0, 0);
            if (!z10) {
                final TextView textView5 = new TextView(activity);
                textView5.setGravity(17);
                textView5.setTextColor(-1);
                textView5.setTypeface(null, 1);
                textView5.setText(str5);
                textView5.setClickable(true);
                addPressEffect(textView5);
                GradientDrawable gradientDrawable6 = new GradientDrawable();
                gradientDrawable6.setColor(Color.parseColor("#40000000"));
                gradientDrawable6.setCornerRadius(f12);
                gradientDrawable6.setStroke(2, Color.parseColor("#80FFFFFF"));
                textView5.setBackground(gradientDrawable6);
                if (i11 > 0) {
                    textView5.setEnabled(false);
                    textView5.setAlpha(0.5f);
                    new CountDownTimer(i11 * 1000, 1000) { // from class: com.google.firebase.services.100000003
                        @Override // android.os.CountDownTimer
                        public void onTick(long j11) {
                            textView5.setText(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str5).append(" (").toString()).append(j11 / ((long) 1000)).toString()).append(")").toString());
                        }

                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            textView5.setText(str5);
                            textView5.setEnabled(true);
                            textView5.setAlpha(1.0f);
                        }
                    }.start();
                } else {
                    textView5.setEnabled(true);
                    textView5.setAlpha(1.0f);
                }
                textView5.setOnClickListener(new View.OnClickListener() { // from class: com.google.firebase.services.100000004
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        activity.getSharedPreferences("kingrtk", 0).edit().putLong("later_timestamp", System.currentTimeMillis()).apply();
                        dialog.dismiss();
                    }
                });
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, 110, 1.0f);
                layoutParams5.setMargins(0, 0, 20, 0);
                linearLayout7.addView(textView5, layoutParams5);
            }
            TextView textView6 = new TextView(activity);
            textView6.setText(str6);
            textView6.setGravity(17);
            textView6.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            textView6.setTypeface(null, 1);
            textView6.setClickable(true);
            textView6.setFocusable(true);
            addPressEffect(textView6);
            GradientDrawable gradientDrawable7 = new GradientDrawable();
            gradientDrawable7.setColor(COL_ACCENT);
            gradientDrawable7.setCornerRadius(f12);
            textView6.setBackground(gradientDrawable7);
            textView6.setOnClickListener(new View.OnClickListener() { // from class: com.google.firebase.services.100000005
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    String str8 = str7;
                    String strTrim = str8 != null ? str8.trim() : "";
                    if (strTrim.isEmpty()) {
                        Toast.makeText(activity, "Error: Update URL is missing", 0).show();
                        return;
                    }
                    if (!strTrim.startsWith("http")) {
                        strTrim = new StringBuffer().append("https://").append(strTrim).toString();
                    }
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(strTrim));
                        intent.addFlags(ASTNode.DEOP);
                        activity.startActivity(intent);
                    } catch (Exception e11) {
                        Log.e("kingrtk", new StringBuffer().append("Could not open link: ").append(e11.getMessage()).toString());
                        Toast.makeText(activity, "Could not open browser", 0).show();
                    }
                }
            });
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, 110, 1.0f);
            layoutParams6.setMargins(z10 ? 0 : 20, 0, 0, 0);
            linearLayout7.addView(textView6, layoutParams6);
            linearLayout.addView(linearLayout7);
            dialog.setContentView(linearLayout);
            int i12 = (int) (((double) activity.getResources().getDisplayMetrics().widthPixels) * 0.88d);
            if (dialog.getWindow() != null) {
                dialog.getWindow().setLayout(i12, -2);
            }
            dialog.show();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private static void addPressEffect(View view) {
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.firebase.services.100000006
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        long j11 = 100;
                        view2.animate().alpha(0.6f).setDuration(j11).start();
                        view2.animate().scaleX(0.95f).scaleY(0.95f).setDuration(j11).start();
                        break;
                    case 1:
                    case 3:
                        long j12 = 100;
                        view2.animate().alpha(1.0f).setDuration(j12).start();
                        view2.animate().scaleX(1.0f).scaleY(1.0f).setDuration(j12).start();
                        break;
                }
                return false;
            }
        });
    }

    static class CenterCropDrawable extends Drawable {
        private final Bitmap mBitmap;
        private final Paint mBorderPaint;
        private final float mRadius;
        private final RectF mRect = new RectF();
        private final Paint mPaint = new Paint(1);

        public CenterCropDrawable(Bitmap bitmap, float f11, int i11, int i12) {
            this.mBitmap = bitmap;
            this.mRadius = f11;
            Paint paint = new Paint(1);
            this.mBorderPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(i11);
            paint.setColor(i12);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            float f11;
            float fHeight;
            float fWidth;
            Rect bounds = getBounds();
            this.mRect.set(bounds);
            float f12 = 0;
            if (this.mBitmap.getWidth() * bounds.height() > bounds.width() * this.mBitmap.getHeight()) {
                float fHeight2 = bounds.height() / this.mBitmap.getHeight();
                fWidth = (bounds.width() - (this.mBitmap.getWidth() * fHeight2)) * 0.5f;
                f11 = fHeight2;
                fHeight = f12;
            } else {
                float fWidth2 = bounds.width() / this.mBitmap.getWidth();
                f11 = fWidth2;
                fHeight = (bounds.height() - (this.mBitmap.getHeight() * fWidth2)) * 0.5f;
                fWidth = f12;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f11, f11);
            matrix.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
            BitmapShader bitmapShader = new BitmapShader(this.mBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
            bitmapShader.setLocalMatrix(matrix);
            this.mPaint.setShader(bitmapShader);
            RectF rectF = this.mRect;
            float f13 = this.mRadius;
            canvas.drawRoundRect(rectF, f13, f13, this.mPaint);
            if (this.mBorderPaint.getStrokeWidth() > f12) {
                float strokeWidth = this.mBorderPaint.getStrokeWidth() / 2;
                this.mRect.inset(strokeWidth, strokeWidth);
                RectF rectF2 = this.mRect;
                float f14 = this.mRadius;
                canvas.drawRoundRect(rectF2, f14, f14, this.mBorderPaint);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i11) {
            this.mPaint.setAlpha(i11);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.services$100000007, reason: invalid class name */
    class AnonymousClass100000007 implements ValueAnimator.AnimatorUpdateListener {
        private final /* synthetic */ View val$target;

        AnonymousClass100000007(View view) {
            this.val$target = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.val$target.setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    private static Bitmap getCircularBitmap(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    private static Bitmap getAssetBitmap(Context context, String str) {
        try {
            return BitmapFactory.decodeStream(context.getAssets().open(str));
        } catch (IOException e11) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String fetchUrl(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(5000);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb2.append(line);
                } else {
                    bufferedReader.close();
                    return sb2.toString().trim();
                }
            }
        } catch (Exception e11) {
            return null;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.services$100000008, reason: invalid class name */
    class AnonymousClass100000008 implements View.OnClickListener {
        private final /* synthetic */ Context val$context;
        private final /* synthetic */ Dialog val$dialog;

        AnonymousClass100000008(Dialog dialog, Context context) {
            this.val$dialog = dialog;
            this.val$context = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.val$dialog.dismiss();
            services.check(this.val$context);
        }
    }
}
