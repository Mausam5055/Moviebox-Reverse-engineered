package com.bytedance.adsdk.sP;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends ImageView {
    private static final String Sj = "vS";
    private static final Ym<Throwable> sP = new Ym<Throwable>() { // from class: com.bytedance.adsdk.sP.vS.1
        @Override // com.bytedance.adsdk.sP.Ym
        public void Sj(Throwable th2) {
            com.bytedance.adsdk.sP.vS.vS.Sj(th2);
        }
    };
    private String Dq;
    private final Ym<Throwable> EjP;
    private final Set<EjP> Fmk;
    private Ym<Throwable> HiB;
    private final uA Jcg;
    private Sj LD;
    private final Runnable LqL;
    private Handler RiZ;
    private boolean TEQ;
    private final Ym<Jcg> TKC;
    private int TzV;
    private sP Yf;
    private boolean Ym;
    private Fmk<Jcg> Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20796aa;
    private final Handler dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private com.bytedance.adsdk.sP.TKC.TKC.TKC f20797dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private int f20798ib;
    private int kF;
    private JSONArray ley;
    private long sU;
    private final Set<Object> sef;
    private int uA;
    private int uP;
    private Jcg uvD;
    private int vS;
    private String wE;
    private int zR;

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.vS$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            Sj = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum EjP {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    public interface Sj {
    }

    private static class TKC extends View.BaseSavedState {
        public static final Parcelable.Creator<TKC> CREATOR = new Parcelable.Creator<TKC>() { // from class: com.bytedance.adsdk.sP.vS.TKC.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public TKC createFromParcel(Parcel parcel) {
                return new TKC(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public TKC[] newArray(int i11) {
                return new TKC[i11];
            }
        };
        boolean EjP;
        String HiB;
        int Jcg;
        String Sj;
        float TKC;
        int sP;
        int vS;

        private TKC(Parcel parcel) {
            super(parcel);
            this.Sj = parcel.readString();
            this.TKC = parcel.readFloat();
            this.EjP = parcel.readInt() == 1;
            this.HiB = parcel.readString();
            this.vS = parcel.readInt();
            this.Jcg = parcel.readInt();
        }

        TKC(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeString(this.Sj);
            parcel.writeFloat(this.TKC);
            parcel.writeInt(this.EjP ? 1 : 0);
            parcel.writeString(this.HiB);
            parcel.writeInt(this.vS);
            parcel.writeInt(this.Jcg);
        }
    }

    public interface sP {
    }

    public vS(Context context) {
        super(context);
        this.TKC = new Ym<Jcg>() { // from class: com.bytedance.adsdk.sP.vS.6
            @Override // com.bytedance.adsdk.sP.Ym
            public void Sj(Jcg jcg) {
                vS.this.setComposition(jcg);
            }
        };
        this.EjP = new Ym<Throwable>() { // from class: com.bytedance.adsdk.sP.vS.7
            @Override // com.bytedance.adsdk.sP.Ym
            public void Sj(Throwable th2) {
                if (vS.this.vS != 0) {
                    vS vSVar = vS.this;
                    vSVar.setImageResource(vSVar.vS);
                }
                (vS.this.HiB == null ? vS.sP : vS.this.HiB).Sj(th2);
            }
        };
        this.vS = 0;
        this.Jcg = new uA();
        this.TEQ = false;
        this.Ym = false;
        this.f20796aa = true;
        this.Fmk = new HashSet();
        this.sef = new HashSet();
        this.dNu = new Handler(Looper.getMainLooper());
        this.TzV = 0;
        this.sU = 0L;
        this.LqL = new Runnable() { // from class: com.bytedance.adsdk.sP.vS.4
            @Override // java.lang.Runnable
            public void run() {
                StringBuilder sb2 = new StringBuilder("--==--- timer callback, timer: ");
                sb2.append(vS.this.zR);
                sb2.append(", ");
                sb2.append(vS.this.f20798ib);
                if (vS.this.zR > vS.this.f20798ib) {
                    vS.TzV(vS.this);
                    com.bytedance.adsdk.sP.TKC.TKC.TKC tkc = vS.this.f20797dx;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(vS.this.zR);
                    tkc.Sj(sb3.toString());
                    vS.this.invalidate();
                    vS.this.Zq();
                    return;
                }
                if (vS.this.kF < 0 || vS.this.uP < 0) {
                    StringBuilder sb4 = new StringBuilder("--==--- timer end, frame invalid: ");
                    sb4.append(vS.this.kF);
                    sb4.append(",");
                    sb4.append(vS.this.uP);
                } else {
                    new StringBuilder("--==--- timer end, play anim, startframe: ").append(vS.this.kF);
                    vS.this.Sj();
                    vS vSVar = vS.this;
                    vSVar.setFrame(vSVar.kF);
                    vS.this.Sj(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.sP.vS.4.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            if (vS.this.getFrame() < vS.this.uP - 1 || vS.this.getFrame() >= vS.this.uP + 2) {
                                return;
                            }
                            new StringBuilder("--==--- timer end, play anim, endframe: ").append(vS.this.uP);
                            vS.this.sP(this);
                            vS.this.vS();
                        }
                    });
                }
                if ((!TextUtils.isEmpty(vS.this.wE) || (vS.this.ley != null && vS.this.ley.length() > 0)) && vS.this.Yf != null) {
                    sP unused = vS.this.Yf;
                    String unused2 = vS.this.wE;
                    JSONArray unused3 = vS.this.ley;
                }
            }
        };
        Dq();
    }

    private void Dq() {
        setSaveEnabled(false);
        this.f20796aa = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        Sj(0.0f, false);
        Sj(false, getContext().getApplicationContext());
        setIgnoreDisabledSystemAnimations(false);
        this.Jcg.Sj(Boolean.valueOf(com.bytedance.adsdk.sP.vS.vS.Sj(getContext()) != 0.0f));
        uA();
        TEQ();
        aa();
    }

    private void EjP(Matrix matrix, float f11, float f12, float f13, float f14) {
        if (f13 >= f11 || f14 >= f12) {
            if (f13 / f14 >= f11 / f12) {
                float f15 = f11 / f13;
                matrix.preScale(f15, f15);
                matrix.postTranslate(0.0f, (f12 - (f14 * f15)) / 2.0f);
                return;
            } else {
                float f16 = f12 / f14;
                matrix.preScale(f16, f16);
                matrix.postTranslate((f11 - (f13 * f16)) / 2.0f, 0.0f);
                return;
            }
        }
        if (f13 / f14 >= f11 / f12) {
            float f17 = f11 / f13;
            matrix.preScale(f17, f17);
            matrix.postTranslate(0.0f, (f12 - (f14 * f17)) / 2.0f);
        } else {
            float f18 = f12 / f14;
            matrix.preScale(f18, f18);
            matrix.postTranslate((f11 - (f13 * f18)) / 2.0f, 0.0f);
        }
    }

    private void Fmk() {
        Fmk<Jcg> fmk = this.Zq;
        if (fmk != null) {
            fmk.sP(this.TKC);
            this.Zq.EjP(this.EjP);
        }
    }

    static /* synthetic */ int HiB(vS vSVar) {
        int i11 = vSVar.TzV;
        vSVar.TzV = i11 + 1;
        return i11;
    }

    private Fmk<Jcg> Sj(final int i11) {
        if (isInEditMode()) {
            return new Fmk<>(new Callable<aa<Jcg>>() { // from class: com.bytedance.adsdk.sP.vS.13
                @Override // java.util.concurrent.Callable
                /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
                public aa<Jcg> call() throws Exception {
                    return vS.this.f20796aa ? Dq.sP(vS.this.getContext(), i11) : Dq.sP(vS.this.getContext(), i11, (String) null);
                }
            }, true);
        }
        return this.f20796aa ? Dq.Sj(getContext(), i11) : Dq.Sj(getContext(), i11, (String) null);
    }

    private TEQ Sj(String str) {
        uA uAVar;
        Jcg jcgWE;
        Map<String, TEQ> mapUvD;
        if (TextUtils.isEmpty(str) || (uAVar = this.Jcg) == null || (jcgWE = uAVar.wE()) == null || (mapUvD = jcgWE.uvD()) == null) {
            return null;
        }
        return mapUvD.get(str);
    }

    private com.bytedance.adsdk.sP.TKC.TKC.Sj Sj(MotionEvent motionEvent) {
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVarSP;
        uA uAVar = this.Jcg;
        if (uAVar == null || (sPVarSP = uAVar.sP()) == null) {
            return null;
        }
        return Sj(sPVarSP, motionEvent);
    }

    private com.bytedance.adsdk.sP.TKC.TKC.Sj Sj(com.bytedance.adsdk.sP.TKC.TKC.sP sPVar, MotionEvent motionEvent) {
        com.bytedance.adsdk.sP.TKC.TKC.Sj Sj2;
        for (com.bytedance.adsdk.sP.TKC.TKC.Sj sj2 : sPVar.aa()) {
            if (sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.sP) {
                if (sj2.Dq() && sj2.vS() > 0.0f) {
                    RectF rectF = new RectF();
                    sj2.Sj(rectF, sj2.EjP(), true);
                    if (rectF.width() >= 3.0f && rectF.height() >= 3.0f && (Sj2 = Sj((com.bytedance.adsdk.sP.TKC.TKC.sP) sj2, motionEvent)) != null) {
                        return Sj2;
                    }
                }
            } else if (sj2.Dq() && sj2.vS() > 0.0f) {
                RectF rectF2 = new RectF();
                uA uAVar = this.Jcg;
                if (uAVar == null || !uAVar.Jcg()) {
                    RectF rectF3 = new RectF();
                    sj2.Sj(rectF3, sj2.EjP(), true);
                    sP(rectF2, rectF3);
                } else {
                    sj2.Sj(rectF2, sj2.EjP(), true);
                    RectF rectFLD = this.Jcg.LD();
                    if (rectFLD != null) {
                        Sj(rectF2, rectFLD);
                    }
                }
                if (Sj(motionEvent, rectF2)) {
                    return sj2;
                }
            }
        }
        return null;
    }

    private com.bytedance.adsdk.sP.TKC.TKC.TKC Sj(com.bytedance.adsdk.sP.TKC.TKC.sP sPVar, String str) {
        for (com.bytedance.adsdk.sP.TKC.TKC.Sj sj2 : sPVar.aa()) {
            if (sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.sP) {
                com.bytedance.adsdk.sP.TKC.TKC.TKC tkcSj = Sj((com.bytedance.adsdk.sP.TKC.TKC.sP) sj2, str);
                if (tkcSj != null) {
                    return tkcSj;
                }
            } else if (TextUtils.equals(str, sj2.uA()) && (sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.TKC)) {
                return (com.bytedance.adsdk.sP.TKC.TKC.TKC) sj2;
            }
        }
        return null;
    }

    private void Sj(float f11, boolean z10) {
        if (z10) {
            this.Fmk.add(EjP.SET_PROGRESS);
        }
        this.Jcg.EjP(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(long j11) {
        Map<String, Object> map;
        Jcg.Sj globalConfig = getGlobalConfig();
        if (this.LD != null) {
            HashMap map2 = new HashMap();
            map2.put("duration", Long.valueOf(j11));
            if (globalConfig == null || (map = globalConfig.sP) == null || map.isEmpty()) {
                return;
            }
            map2.putAll(globalConfig.sP);
        }
    }

    private void Sj(Matrix matrix, float f11, float f12, float f13, float f14) {
        if (f13 / f14 >= f11 / f12) {
            float f15 = f12 / f14;
            matrix.preScale(f15, f15);
            matrix.postTranslate(-(((f13 * f15) - f11) / 2.0f), 0.0f);
        } else {
            float f16 = f11 / f13;
            matrix.preScale(f16, f16);
            matrix.postTranslate(0.0f, -(((f14 * f16) - f12) / 2.0f));
        }
    }

    private void Sj(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = rectF2.width();
        float fHeight = rectF2.height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i11 = AnonymousClass5.Sj[getScaleType().ordinal()];
        if (i11 == 1) {
            Sj(matrix, width, height, fWidth, fHeight);
        } else if (i11 == 2) {
            sP(matrix, width, height, fWidth, fHeight);
        } else if (i11 == 3) {
            TKC(matrix, width, height, fWidth, fHeight);
        } else if (i11 == 4) {
            EjP(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF);
    }

    private void Sj(String str, String str2, JSONArray jSONArray) {
        Jcg.sP globalEvent = getGlobalEvent();
        if (globalEvent != null && str != null) {
            if (TextUtils.isEmpty(str2) && !str.contains("CSJNO")) {
                str2 = globalEvent.Sj;
            }
            if ((jSONArray == null || jSONArray.length() <= 0) && !str.contains("CSJLELNO")) {
                jSONArray = globalEvent.TKC;
            }
        }
        if (!TextUtils.isEmpty(str2) || jSONArray == null) {
            return;
        }
        jSONArray.length();
    }

    private void Sj(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        try {
            int[] iArr2 = iArr[0];
            int i11 = iArr2[0];
            final int i12 = iArr2[1];
            if (i11 < 0 || i12 < 0) {
                return;
            }
            "--==--- inel enter, play anim, startframe: ".concat(String.valueOf(i11));
            uvD();
            Sj();
            setFrame(i11);
            Sj(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.sP.vS.12
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (vS.this.getFrame() < i12 - 1 || vS.this.getFrame() >= i12 + 2) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder("--==--- inel enter, play anim end, endframe: ");
                    sb2.append(i12);
                    sb2.append(", realFrame: ");
                    sb2.append(vS.this.getFrame());
                    vS.this.sP(this);
                    vS.this.vS();
                }
            });
        } catch (Throwable unused) {
        }
    }

    private boolean Sj(MotionEvent motionEvent, RectF rectF) {
        if (motionEvent != null && rectF != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (x10 >= rectF.left && x10 <= rectF.right && y10 >= rectF.top && y10 <= rectF.bottom) {
                return true;
            }
        }
        return false;
    }

    private void TEQ() {
        Sj(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.sP.vS.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i11;
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < 0.98f) {
                    return;
                }
                vS.HiB(vS.this);
                Jcg.Sj globalConfig = vS.this.getGlobalConfig();
                if (globalConfig != null && (i11 = globalConfig.EjP) > 0 && i11 > vS.this.TzV) {
                    vS.this.sef();
                    vS.this.Sj();
                    vS.this.setProgress(0.0f);
                } else {
                    vS.this.sP(this);
                    if (vS.this.LD != null) {
                        Sj unused = vS.this.LD;
                    }
                }
            }
        });
    }

    private com.bytedance.adsdk.sP.TKC.TKC.TKC TKC(String str) {
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVarSP;
        uA uAVar = this.Jcg;
        if (uAVar == null || (sPVarSP = uAVar.sP()) == null) {
            return null;
        }
        return Sj(sPVarSP, str);
    }

    private void TKC(Matrix matrix, float f11, float f12, float f13, float f14) {
        matrix.postTranslate((f11 - f13) / 2.0f, (f12 - f14) / 2.0f);
    }

    static /* synthetic */ int TzV(vS vSVar) {
        int i11 = vSVar.zR;
        vSVar.zR = i11 - 1;
        return i11;
    }

    private void TzV() {
        boolean zEjP = EjP();
        setImageDrawable(null);
        setImageDrawable(this.Jcg);
        if (zEjP) {
            this.Jcg.Fmk();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ym() {
        final Jcg.Sj globalConfig = getGlobalConfig();
        if (globalConfig == null || globalConfig.HiB <= 0) {
            return;
        }
        if (TextUtils.isEmpty(globalConfig.vS) && globalConfig.Jcg == null) {
            return;
        }
        int maxFrame = globalConfig.HiB;
        if (maxFrame > getMaxFrame()) {
            maxFrame = (int) getMaxFrame();
        }
        final float maxFrame2 = maxFrame / getMaxFrame();
        Sj(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.sP.vS.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < maxFrame2) {
                    return;
                }
                vS.this.sP(this);
                if (vS.this.Yf != null) {
                    sP unused = vS.this.Yf;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Zq() {
        this.dNu.postDelayed(this.LqL, 1000L);
    }

    private void aa() {
        Sj(new Animator.AnimatorListener() { // from class: com.bytedance.adsdk.sP.vS.11
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                sU sUVarKF;
                final long jElapsedRealtime = SystemClock.elapsedRealtime() - vS.this.sU;
                vS.this.sP(this);
                String playDelayedELExpressTimeS = vS.this.getPlayDelayedELExpressTimeS();
                if (!TextUtils.isEmpty(playDelayedELExpressTimeS) && (sUVarKF = vS.this.Jcg.kF()) != null) {
                    try {
                        int i11 = Integer.parseInt(sUVarKF.Sj(playDelayedELExpressTimeS)) * 1000;
                        if (vS.this.sU > 0) {
                            long jElapsedRealtime2 = (vS.this.sU + ((long) i11)) - SystemClock.elapsedRealtime();
                            "--==-- lottie delayed time: ".concat(String.valueOf(jElapsedRealtime2));
                            if (jElapsedRealtime2 > 0) {
                                vS.this.vS();
                                vS.this.setVisibility(8);
                                if (vS.this.RiZ == null) {
                                    vS.this.RiZ = new Handler(Looper.getMainLooper());
                                }
                                vS.this.RiZ.removeCallbacksAndMessages(null);
                                vS.this.RiZ.postDelayed(new Runnable() { // from class: com.bytedance.adsdk.sP.vS.11.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        vS.this.setVisibility(0);
                                        vS.this.Sj();
                                        vS.this.Sj(jElapsedRealtime);
                                    }
                                }, jElapsedRealtime2);
                                return;
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                vS.this.Sj(jElapsedRealtime);
            }
        });
    }

    private void dNu() {
        this.uvD = null;
        this.Jcg.TEQ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Jcg.Sj getGlobalConfig() {
        Jcg jcgWE;
        uA uAVar = this.Jcg;
        if (uAVar == null || (jcgWE = uAVar.wE()) == null) {
            return null;
        }
        return jcgWE.Ym();
    }

    private Jcg.sP getGlobalEvent() {
        Jcg jcgWE;
        uA uAVar = this.Jcg;
        if (uAVar == null || (jcgWE = uAVar.wE()) == null) {
            return null;
        }
        return jcgWE.TEQ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPlayDelayedELExpressTimeS() {
        Jcg jcgWE;
        uA uAVar = this.Jcg;
        if (uAVar == null || (jcgWE = uAVar.wE()) == null) {
            return null;
        }
        return jcgWE.uA();
    }

    private Fmk<Jcg> sP(final String str) {
        if (isInEditMode()) {
            return new Fmk<>(new Callable<aa<Jcg>>() { // from class: com.bytedance.adsdk.sP.vS.2
                @Override // java.util.concurrent.Callable
                /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
                public aa<Jcg> call() throws Exception {
                    return vS.this.f20796aa ? Dq.TKC(vS.this.getContext(), str) : Dq.TKC(vS.this.getContext(), str, null);
                }
            }, true);
        }
        return this.f20796aa ? Dq.sP(getContext(), str) : Dq.sP(getContext(), str, (String) null);
    }

    private void sP(Matrix matrix, float f11, float f12, float f13, float f14) {
        if (f13 < f11 && f14 < f12) {
            matrix.postTranslate((f11 - f13) / 2.0f, (f12 - f14) / 2.0f);
            return;
        }
        if (f13 / f14 >= f11 / f12) {
            float f15 = f11 / f13;
            matrix.preScale(f15, f15);
            matrix.postTranslate(0.0f, (f12 - (f14 * f15)) / 2.0f);
        } else {
            float f16 = f12 / f14;
            matrix.preScale(f16, f16);
            matrix.postTranslate((f11 - (f13 * f16)) / 2.0f, 0.0f);
        }
    }

    private void sP(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = this.Jcg.getBounds().width();
        float fHeight = this.Jcg.getBounds().height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i11 = AnonymousClass5.Sj[getScaleType().ordinal()];
        if (i11 == 1) {
            Sj(matrix, width, height, fWidth, fHeight);
        } else if (i11 == 2) {
            sP(matrix, width, height, fWidth, fHeight);
        } else if (i11 == 3) {
            TKC(matrix, width, height, fWidth, fHeight);
        } else if (i11 == 4) {
            EjP(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF, rectF2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sef() {
        uA uAVar;
        int i11;
        int i12;
        final int i13;
        if (this.uvD == null || (uAVar = this.Jcg) == null) {
            return;
        }
        sU sUVarKF = uAVar.kF();
        Jcg.TKC tkcDq = this.uvD.Dq();
        if (tkcDq == null || sUVarKF == null) {
            return;
        }
        final int i14 = tkcDq.Sj;
        if (i14 < 0) {
            "--==--- timer fail, ke is invalid: ".concat(String.valueOf(i14));
            return;
        }
        int[] iArr = tkcDq.HiB;
        final int i15 = -1;
        if (iArr == null || iArr.length < 2) {
            i11 = -1;
            i12 = -1;
        } else {
            i12 = iArr[0];
            i11 = iArr[1];
        }
        String strSj = sUVarKF.Sj(tkcDq.TKC);
        String strSj2 = sUVarKF.Sj(tkcDq.EjP);
        try {
            i13 = Integer.parseInt(strSj);
            try {
                i15 = Integer.parseInt(strSj2);
            } catch (NumberFormatException unused) {
            }
        } catch (NumberFormatException unused2) {
            i13 = -1;
        }
        StringBuilder sb2 = new StringBuilder("--==--- prepare timer, startS: ");
        sb2.append(i13);
        sb2.append(", lenS: ");
        sb2.append(i15);
        if (TextUtils.isEmpty(tkcDq.sP)) {
            new StringBuilder("--==--- timer fail, id is invalid: ").append(tkcDq.sP);
            return;
        }
        new StringBuilder("--==--- timer, id:").append(tkcDq.sP);
        com.bytedance.adsdk.sP.TKC.TKC.TKC TKC2 = TKC(tkcDq.sP);
        if (TKC2 != null) {
            this.wE = tkcDq.vS;
            this.ley = tkcDq.Jcg;
            this.f20797dx = TKC2;
            this.zR = i13;
            this.f20798ib = i13 - i15;
            this.kF = i12;
            this.uP = i11;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.zR);
            TKC2.Sj(sb3.toString());
            Sj(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.sP.vS.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (vS.this.getFrame() < i14 - 1 || vS.this.getFrame() >= i14 + 2) {
                        return;
                    }
                    new StringBuilder("--==--- enter timer point, frame: ").append(vS.this.getFrame());
                    vS.this.sP(this);
                    if (i13 >= 0 && i15 >= 0) {
                        vS.this.Zq();
                    }
                    vS.this.vS();
                }
            });
        }
    }

    private void setCompositionTask(Fmk<Jcg> fmk) {
        this.Fmk.add(EjP.SET_ANIMATION);
        dNu();
        Fmk();
        this.Zq = fmk.Sj(this.TKC).TKC(this.EjP);
    }

    private void uA() {
        Sj(new Animator.AnimatorListener() { // from class: com.bytedance.adsdk.sP.vS.8
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                vS.this.sP(this);
                vS.this.sef();
                vS.this.Ym();
            }
        });
    }

    private void uvD() {
        this.dNu.removeCallbacksAndMessages(null);
    }

    public boolean EjP() {
        return this.Jcg.zR();
    }

    public void HiB() {
        this.Fmk.add(EjP.PLAY_OPTION);
        this.Jcg.ley();
    }

    public Bitmap Sj(String str, Bitmap bitmap) {
        return this.Jcg.Sj(str, bitmap);
    }

    public void Sj() {
        if (this.sU == 0) {
            this.sU = SystemClock.elapsedRealtime();
        }
        this.Fmk.add(EjP.PLAY_OPTION);
        this.Jcg.Ym();
    }

    public void Sj(Animator.AnimatorListener animatorListener) {
        this.Jcg.Sj(animatorListener);
    }

    public void Sj(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Jcg.Sj(animatorUpdateListener);
    }

    public void Sj(InputStream inputStream, String str) {
        setCompositionTask(Dq.Sj(inputStream, str));
    }

    public void Sj(String str, String str2) {
        Sj(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void Sj(boolean z10) {
        this.Jcg.HiB(z10 ? -1 : 0);
    }

    public void Sj(boolean z10, Context context) {
        this.Jcg.Sj(z10, context);
    }

    public void TKC() {
        this.Jcg.TzV();
    }

    public boolean getClipToCompositionBounds() {
        return this.Jcg.TKC();
    }

    public Jcg getComposition() {
        return this.uvD;
    }

    public long getDuration() {
        Jcg jcg = this.uvD;
        if (jcg != null) {
            return (long) jcg.HiB();
        }
        return 0L;
    }

    public int getFrame() {
        return this.Jcg.RiZ();
    }

    public String getImageAssetsFolder() {
        return this.Jcg.EjP();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.Jcg.HiB();
    }

    public float getMaxFrame() {
        return this.Jcg.Zq();
    }

    public float getMinFrame() {
        return this.Jcg.sef();
    }

    public TzV getPerformanceTracker() {
        return this.Jcg.Dq();
    }

    public float getProgress() {
        return this.Jcg.Yf();
    }

    public RiZ getRenderMode() {
        return this.Jcg.vS();
    }

    public int getRepeatCount() {
        return this.Jcg.dx();
    }

    public int getRepeatMode() {
        return this.Jcg.sU();
    }

    public float getSpeed() {
        return this.Jcg.uvD();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof uA) && ((uA) drawable).vS() == RiZ.SOFTWARE) {
            this.Jcg.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        uA uAVar = this.Jcg;
        if (drawable2 == uAVar) {
            super.invalidateDrawable(uAVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.Ym) {
            return;
        }
        this.Jcg.Ym();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uvD();
        Handler handler = this.RiZ;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        TKC();
        sP();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i11;
        if (!(parcelable instanceof TKC)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        TKC tkc = (TKC) parcelable;
        super.onRestoreInstanceState(tkc.getSuperState());
        this.Dq = tkc.Sj;
        Set<EjP> set = this.Fmk;
        EjP ejP = EjP.SET_ANIMATION;
        if (!set.contains(ejP) && !TextUtils.isEmpty(this.Dq)) {
            setAnimation(this.Dq);
        }
        this.uA = tkc.sP;
        if (!this.Fmk.contains(ejP) && (i11 = this.uA) != 0) {
            setAnimation(i11);
        }
        if (!this.Fmk.contains(EjP.SET_PROGRESS)) {
            Sj(tkc.TKC, false);
        }
        if (!this.Fmk.contains(EjP.PLAY_OPTION) && tkc.EjP) {
            Sj();
        }
        if (!this.Fmk.contains(EjP.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(tkc.HiB);
        }
        if (!this.Fmk.contains(EjP.SET_REPEAT_MODE)) {
            setRepeatMode(tkc.vS);
        }
        if (this.Fmk.contains(EjP.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(tkc.Jcg);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        TKC tkc = new TKC(super.onSaveInstanceState());
        tkc.Sj = this.Dq;
        tkc.sP = this.uA;
        tkc.TKC = this.Jcg.Yf();
        tkc.EjP = this.Jcg.ib();
        tkc.HiB = this.Jcg.EjP();
        tkc.vS = this.Jcg.sU();
        tkc.Jcg = this.Jcg.dx();
        return tkc;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int[][] iArr;
        com.bytedance.adsdk.sP.TKC.TKC.Sj Sj2 = Sj(motionEvent);
        if (Sj2 == null) {
            if (getGlobalConfig() == null || getGlobalConfig().Sj != 1) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        String strUA = Sj2.uA();
        if (Sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.sP) {
            if (getGlobalConfig() == null || getGlobalConfig().Sj != 1) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        if (strUA != null && strUA.startsWith("CSJCLOSE")) {
            uvD();
        }
        TEQ teqSj = Sj(Sj2.HiB());
        if (teqSj != null && motionEvent.getAction() == 1) {
            Sj(strUA, teqSj.HiB(), teqSj.Jcg());
            int[][] iArrVS = teqSj.vS();
            if (iArrVS != null) {
                Sj(iArrVS);
            } else if (getGlobalEvent() != null && (iArr = getGlobalEvent().sP) != null) {
                Sj(iArr);
            }
        }
        if (strUA == null || !strUA.startsWith("CSJNTP")) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void sP() {
        this.Jcg.dNu();
    }

    public void sP(Animator.AnimatorListener animatorListener) {
        this.Jcg.sP(animatorListener);
    }

    public void sP(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Jcg.sP(animatorUpdateListener);
    }

    public void setAnimation(int i11) {
        this.uA = i11;
        this.Dq = null;
        setCompositionTask(Sj(i11));
    }

    public void setAnimation(String str) {
        this.Dq = str;
        this.uA = 0;
        setCompositionTask(sP(str));
    }

    public void setAnimationFromJson(String str) {
        Sj(str, (String) null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f20796aa ? Dq.Sj(getContext(), str) : Dq.Sj(getContext(), str, (String) null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.Jcg.HiB(z10);
    }

    public void setCacheComposition(boolean z10) {
        this.f20796aa = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.Jcg.Sj(z10);
    }

    public void setComposition(Jcg jcg) {
        if (HiB.Sj) {
            Log.v(Sj, "Set Composition \n".concat(String.valueOf(jcg)));
        }
        this.Jcg.setCallback(this);
        this.uvD = jcg;
        this.TEQ = true;
        boolean zSj = this.Jcg.Sj(jcg, getContext().getApplicationContext());
        this.TEQ = false;
        if (getDrawable() != this.Jcg || zSj) {
            if (!zSj) {
                TzV();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<Object> it = this.sef.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.Jcg.Jcg(str);
    }

    public void setFailureListener(Ym<Throwable> ym2) {
        this.HiB = ym2;
    }

    public void setFallbackResource(int i11) {
        this.vS = i11;
    }

    public void setFontAssetDelegate(com.bytedance.adsdk.sP.TKC tkc) {
        this.Jcg.Sj(tkc);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.Jcg.Sj(map);
    }

    public void setFrame(int i11) {
        this.Jcg.TKC(i11);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.Jcg.Jcg(z10);
    }

    public void setImageAssetDelegate(com.bytedance.adsdk.sP.EjP ejP) {
        this.Jcg.Sj(ejP);
    }

    public void setImageAssetsFolder(String str) {
        this.Jcg.Sj(str);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        Fmk();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        Fmk();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i11) {
        Fmk();
        super.setImageResource(i11);
    }

    public void setLottieAnimListener(Sj sj2) {
        this.LD = sj2;
    }

    public void setLottieClicklistener(sP sPVar) {
        this.Yf = sPVar;
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.Jcg.sP(z10);
    }

    public void setMaxFrame(int i11) {
        this.Jcg.sP(i11);
    }

    public void setMaxFrame(String str) {
        this.Jcg.TKC(str);
    }

    public void setMaxProgress(float f11) {
        this.Jcg.sP(f11);
    }

    public void setMinAndMaxFrame(String str) {
        this.Jcg.EjP(str);
    }

    public void setMinFrame(int i11) {
        this.Jcg.Sj(i11);
    }

    public void setMinFrame(String str) {
        this.Jcg.sP(str);
    }

    public void setMinProgress(float f11) {
        this.Jcg.Sj(f11);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.Jcg.EjP(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.Jcg.TKC(z10);
    }

    public void setProgress(float f11) {
        Sj(f11, true);
    }

    public void setRenderMode(RiZ riZ) {
        this.Jcg.Sj(riZ);
    }

    public void setRepeatCount(int i11) {
        this.Fmk.add(EjP.SET_REPEAT_COUNT);
        this.Jcg.HiB(i11);
    }

    public void setRepeatMode(int i11) {
        this.Fmk.add(EjP.SET_REPEAT_MODE);
        this.Jcg.EjP(i11);
    }

    public void setSafeMode(boolean z10) {
        this.Jcg.vS(z10);
    }

    public void setSpeed(float f11) {
        this.Jcg.TKC(f11);
    }

    public void setTextDelegate(sU sUVar) {
        this.Jcg.Sj(sUVar);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.Jcg.Dq(z10);
    }

    public void setView(View view) {
        this.Jcg.Sj(view);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        uA uAVar;
        if (!this.TEQ && drawable == (uAVar = this.Jcg) && uAVar.zR()) {
            vS();
        } else if (!this.TEQ && (drawable instanceof uA)) {
            uA uAVar2 = (uA) drawable;
            if (uAVar2.zR()) {
                uAVar2.LqL();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void vS() {
        this.Ym = false;
        this.Jcg.LqL();
    }
}
