package com.cloud.tmc.miniapp.widget.pulldownrefresh;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ScrollView;
import android.widget.Scroller;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.MiniRefreshState;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"RestrictedApi"})
public class OooO00o extends ViewGroup implements com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO, NestedScrollingParent {
    public static com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO00o o00000O;
    public static com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0O0 o00000OO;
    public static com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0OO o00000Oo;
    public static ViewGroup.MarginLayoutParams o00000o0 = new ViewGroup.MarginLayoutParams(-1, -1);
    public float OooO;
    public int OooO00o;
    public int OooO0O0;
    public int OooO0OO;
    public int OooO0Oo;
    public int OooO0o;
    public int OooO0o0;
    public int OooO0oO;
    public float OooO0oo;
    public float OooOO0;
    public float OooOO0O;
    public float OooOO0o;
    public float OooOOO;
    public float OooOOO0;
    public char OooOOOO;
    public boolean OooOOOo;
    public boolean OooOOo;
    public boolean OooOOo0;
    public int OooOOoo;
    public int OooOo;
    public int OooOo0;
    public int OooOo00;
    public int OooOo0O;
    public int OooOo0o;
    public Scroller OooOoO;
    public int OooOoO0;
    public VelocityTracker OooOoOO;
    public int[] OooOoo;
    public Interpolator OooOoo0;
    public boolean OooOooO;
    public boolean OooOooo;
    public boolean Oooo;
    public boolean Oooo0;
    public boolean Oooo000;
    public boolean Oooo00O;
    public boolean Oooo00o;
    public boolean Oooo0O0;
    public boolean Oooo0OO;
    public boolean Oooo0o;
    public boolean Oooo0o0;
    public boolean Oooo0oO;
    public boolean Oooo0oo;
    public boolean OoooO;
    public boolean OoooO0;
    public boolean OoooO00;
    public boolean OoooO0O;
    public boolean OoooOO0;
    public boolean OoooOOO;
    public boolean OoooOOo;
    public boolean OoooOo0;
    public boolean OoooOoO;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0OO OoooOoo;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0O0 Ooooo00;
    public int Ooooo0o;
    public boolean OooooO0;
    public int[] OooooOO;
    public NestedScrollingChildHelper OooooOo;
    public int Oooooo;
    public NestedScrollingParentHelper Oooooo0;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o OoooooO;
    public int Ooooooo;
    public Runnable o00000;
    public boolean o000000;
    public boolean o000000O;
    public MotionEvent o000000o;
    public ValueAnimator o00000O0;
    public boolean o000OOo;
    public boolean o000oOoO;
    public int o00O0O;
    public float o00Oo0;
    public float o00Ooo;
    public float o00o0O;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o o00oO0O;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O o00oO0o;
    public float o00ooo;
    public int o0O0O00;
    public long o0OO00O;
    public MiniRefreshState o0OOO0o;
    public MiniRefreshState o0Oo0oo;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o o0OoOo0;
    public Paint o0ooOO0;
    public Handler o0ooOOo;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 o0ooOoO;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oo000o;
    public int oo0o0Oo;
    public int ooOO;

    public class OooO implements ValueAnimator.AnimatorUpdateListener {
        public OooO() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            OooO00o oooO00o = OooO00o.this;
            if (oooO00o.o00000O0 != null) {
                ((OooOo) oooO00o.o0ooOoO).OooO00o(((Integer) valueAnimator.getAnimatedValue()).intValue(), false);
            }
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o$OooO00o, reason: collision with other inner class name */
    public static /* synthetic */ class C0352OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[MiniRefreshState.values().length];
            OooO00o = iArr;
            try {
                iArr[MiniRefreshState.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[MiniRefreshState.PULL_DOWN_TO_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[MiniRefreshState.PULL_UP_TO_LOAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[MiniRefreshState.PULL_DOWN_CANCELED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[MiniRefreshState.PULL_UP_CANCELED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[MiniRefreshState.RELEASE_TO_REFRESH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                OooO00o[MiniRefreshState.RELEASE_TO_LOAD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                OooO00o[MiniRefreshState.RELEASE_TO_TWO_LEVEL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                OooO00o[MiniRefreshState.REFRESH_RELEASED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                OooO00o[MiniRefreshState.LOAD_RELEASED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                OooO00o[MiniRefreshState.REFRESHING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                OooO00o[MiniRefreshState.LOADING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public class OooO0O0 extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean OooO00o;

        public OooO0O0(boolean z10) {
            this.OooO00o = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (animator == null || animator.getDuration() != 0) {
                OooO00o.this.setStateDirectLoading(this.OooO00o);
            }
        }
    }

    public class OooO0OO extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean OooO00o;

        public OooO0OO(boolean z10) {
            this.OooO00o = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (animator == null || animator.getDuration() != 0) {
                OooO00o.this.o0OO00O = System.currentTimeMillis();
                OooO00o.this.OooO00o(MiniRefreshState.REFRESHING);
                OooO00o oooO00o = OooO00o.this;
                com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0OO oooO0OO = oooO00o.OoooOoo;
                if (oooO0OO == null) {
                    oooO00o.OooO00o(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, true, Boolean.FALSE);
                } else if (this.OooO00o) {
                    oooO0OO.OooO00o(oooO00o);
                }
                OooO00o oooO00o2 = OooO00o.this;
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = oooO00o2.oo000o;
                if (oooOO0O != null) {
                    int i11 = oooO00o2.Oooooo;
                    oooOO0O.OooO0O0(oooO00o2, i11, (int) (oooO00o2.o00Oo0 * i11));
                }
                OooO00o.this.getClass();
            }
        }
    }

    public class OooO0o extends AnimatorListenerAdapter {
        public OooO0o() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MiniRefreshState miniRefreshState;
            MiniRefreshState miniRefreshState2;
            if (animator == null || animator.getDuration() != 0) {
                OooO00o oooO00o = OooO00o.this;
                oooO00o.o00000O0 = null;
                if (oooO00o.OooO0O0 == 0 && (miniRefreshState = oooO00o.o0OOO0o) != (miniRefreshState2 = MiniRefreshState.NONE) && !miniRefreshState.isOpening && !miniRefreshState.isDragging) {
                    oooO00o.OooO00o(miniRefreshState2);
                    return;
                }
                MiniRefreshState miniRefreshState3 = oooO00o.o0OOO0o;
                if (miniRefreshState3 != oooO00o.o0Oo0oo) {
                    oooO00o.setViceState(miniRefreshState3);
                }
            }
        }
    }

    public class OooOO0 implements Runnable {
        public OooOO0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OooO00o oooO00o = OooO00o.this;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0O0 oooO0O0 = oooO00o.Ooooo00;
            if (oooO0O0 != null) {
                oooO0O0.OooO00o(oooO00o);
            } else {
                oooO00o.OooO00o(2000, true, false);
            }
            OooO00o.this.getClass();
        }
    }

    public class OooOO0O implements Runnable {
        public int OooO00o = 0;
        public final /* synthetic */ int OooO0O0;
        public final /* synthetic */ Boolean OooO0OO;
        public final /* synthetic */ boolean OooO0Oo;

        public OooOO0O(int i11, Boolean bool, boolean z10) {
            this.OooO0O0 = i11;
            this.OooO0OO = bool;
            this.OooO0Oo = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i11 = this.OooO00o;
            ValueAnimator.AnimatorUpdateListener animatorUpdateListenerOooO00o = null;
            if (i11 == 0) {
                OooO00o oooO00o = OooO00o.this;
                MiniRefreshState miniRefreshState = oooO00o.o0OOO0o;
                MiniRefreshState miniRefreshState2 = MiniRefreshState.NONE;
                if (miniRefreshState == miniRefreshState2 && oooO00o.o0Oo0oo == MiniRefreshState.REFRESHING) {
                    oooO00o.o0Oo0oo = miniRefreshState2;
                } else {
                    ValueAnimator valueAnimator = oooO00o.o00000O0;
                    if (valueAnimator != null && miniRefreshState.isHeader && (miniRefreshState.isDragging || miniRefreshState == MiniRefreshState.REFRESH_RELEASED)) {
                        valueAnimator.setDuration(0L);
                        OooO00o.this.o00000O0.cancel();
                        OooO00o oooO00o2 = OooO00o.this;
                        oooO00o2.o00000O0 = null;
                        if (((OooOo) oooO00o2.o0ooOoO).OooO00o(0) == null) {
                            OooO00o.this.OooO00o(miniRefreshState2);
                        } else {
                            OooO00o.this.OooO00o(MiniRefreshState.PULL_DOWN_CANCELED);
                        }
                    } else if (miniRefreshState == MiniRefreshState.REFRESHING && oooO00o.oo000o != null && oooO00o.o00oO0O != null) {
                        this.OooO00o = i11 + 1;
                        oooO00o.o0ooOOo.postDelayed(this, this.OooO0O0);
                        OooO00o.this.OooO00o(MiniRefreshState.REFRESH_FINISH);
                        if (this.OooO0OO == Boolean.FALSE) {
                            OooO00o.this.OooO0O0(false);
                        }
                    }
                }
                if (this.OooO0OO == Boolean.TRUE) {
                    OooO00o.this.OooO0O0(true);
                    return;
                }
                return;
            }
            OooO00o oooO00o3 = OooO00o.this;
            int iOooO00o = oooO00o3.oo000o.OooO00o(oooO00o3, this.OooO0Oo);
            OooO00o.this.getClass();
            if (iOooO00o < Integer.MAX_VALUE) {
                OooO00o oooO00o4 = OooO00o.this;
                if (oooO00o4.OooOOOo || oooO00o4.OooooO0) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    OooO00o oooO00o5 = OooO00o.this;
                    if (oooO00o5.OooOOOo) {
                        float f11 = oooO00o5.OooOO0O;
                        oooO00o5.OooO = f11;
                        oooO00o5.OooO0Oo = 0;
                        oooO00o5.OooOOOo = false;
                        OooO00o.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 0, oooO00o5.OooOO0, (f11 + oooO00o5.OooO0O0) - (oooO00o5.OooO00o * 2), 0));
                        OooO00o oooO00o6 = OooO00o.this;
                        OooO00o.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 2, oooO00o6.OooOO0, oooO00o6.OooOO0O + oooO00o6.OooO0O0, 0));
                    }
                    OooO00o oooO00o7 = OooO00o.this;
                    if (oooO00o7.OooooO0) {
                        oooO00o7.Ooooo0o = 0;
                        OooO00o.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 1, oooO00o7.OooOO0, oooO00o7.OooOO0O, 0));
                        OooO00o oooO00o8 = OooO00o.this;
                        oooO00o8.OooooO0 = false;
                        oooO00o8.OooO0Oo = 0;
                    }
                }
                OooO00o oooO00o9 = OooO00o.this;
                int i12 = oooO00o9.OooO0O0;
                if (i12 <= 0) {
                    if (i12 < 0) {
                        oooO00o9.OooO00o(0, iOooO00o, oooO00o9.OooOoo0, oooO00o9.OooO0o);
                        return;
                    }
                    ((OooOo) oooO00o9.o0ooOoO).OooO00o(0, false);
                    ((OooOo) OooO00o.this.o0ooOoO).OooO00o(MiniRefreshState.NONE);
                    return;
                }
                ValueAnimator valueAnimatorOooO00o = oooO00o9.OooO00o(0, iOooO00o, oooO00o9.OooOoo0, oooO00o9.OooO0o);
                OooO00o oooO00o10 = OooO00o.this;
                if (oooO00o10.OoooO00) {
                    animatorUpdateListenerOooO00o = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o10.o00oO0O).OooO00o(oooO00o10.OooO0O0);
                }
                if (valueAnimatorOooO00o == null || animatorUpdateListenerOooO00o == null) {
                    return;
                }
                valueAnimatorOooO00o.addUpdateListener(animatorUpdateListenerOooO00o);
            }
        }
    }

    public class OooOOO implements Runnable {
        public int OooO0O0;
        public float OooO0o0;
        public int OooO00o = 0;
        public float OooO0Oo = 0.0f;
        public long OooO0OO = AnimationUtils.currentAnimationTimeMillis();

        public OooOOO(float f11, int i11) {
            this.OooO0o0 = f11;
            this.OooO0O0 = i11;
            OooO00o.this.o0ooOOo.postDelayed(this, 10);
            if (f11 > 0.0f) {
                ((OooOo) OooO00o.this.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_TO_REFRESH);
            } else {
                ((OooOo) OooO00o.this.o0ooOoO).OooO00o(MiniRefreshState.PULL_UP_TO_LOAD);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            OooO00o oooO00o = OooO00o.this;
            if (oooO00o.o00000 != this || oooO00o.o0OOO0o.isFinishing) {
                return;
            }
            if (Math.abs(oooO00o.OooO0O0) < Math.abs(this.OooO0O0)) {
                double d11 = this.OooO0o0;
                int i11 = this.OooO00o + 1;
                this.OooO00o = i11;
                this.OooO0o0 = (float) (Math.pow(0.949999988079071d, ((double) i11) * 2.0d) * d11);
            } else if (this.OooO0O0 != 0) {
                double d12 = this.OooO0o0;
                int i12 = this.OooO00o + 1;
                this.OooO00o = i12;
                this.OooO0o0 = (float) (Math.pow(0.44999998807907104d, ((double) i12) * 2.0d) * d12);
            } else {
                double d13 = this.OooO0o0;
                int i13 = this.OooO00o + 1;
                this.OooO00o = i13;
                this.OooO0o0 = (float) (Math.pow(0.8500000238418579d, ((double) i13) * 2.0d) * d13);
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float f11 = this.OooO0o0 * (((jCurrentAnimationTimeMillis - this.OooO0OO) * 1.0f) / 1000.0f);
            if (Math.abs(f11) >= 1.0f) {
                this.OooO0OO = jCurrentAnimationTimeMillis;
                float f12 = this.OooO0Oo + f11;
                this.OooO0Oo = f12;
                OooO00o.this.OooO00o(f12);
                OooO00o.this.o0ooOOo.postDelayed(this, 10);
                return;
            }
            OooO00o oooO00o2 = OooO00o.this;
            MiniRefreshState miniRefreshState = oooO00o2.o0Oo0oo;
            boolean z10 = miniRefreshState.isDragging;
            if (z10 && miniRefreshState.isHeader) {
                ((OooOo) oooO00o2.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_CANCELED);
            } else if (z10 && miniRefreshState.isFooter) {
                ((OooOo) oooO00o2.o0ooOoO).OooO00o(MiniRefreshState.PULL_UP_CANCELED);
            }
            OooO00o oooO00o3 = OooO00o.this;
            oooO00o3.o00000 = null;
            if (Math.abs(oooO00o3.OooO0O0) >= Math.abs(this.OooO0O0)) {
                int iMin = Math.min(Math.max((int) (Math.abs(OooO00o.this.OooO0O0 - this.OooO0O0) / com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO0O0), 30), 100) * 10;
                OooO00o oooO00o4 = OooO00o.this;
                oooO00o4.OooO00o(this.OooO0O0, 0, oooO00o4.OooOoo0, iMin);
            }
        }
    }

    public class OooOOO0 implements Runnable {
        public int OooO00o = 0;
        public final /* synthetic */ int OooO0O0;
        public final /* synthetic */ boolean OooO0OO;
        public final /* synthetic */ boolean OooO0Oo;

        /* JADX INFO: renamed from: com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o$OooOOO0$OooO00o, reason: collision with other inner class name */
        public class RunnableC0353OooO00o implements Runnable {
            public final /* synthetic */ int OooO00o;

            /* JADX INFO: renamed from: com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o$OooOOO0$OooO00o$OooO00o, reason: collision with other inner class name */
            public class C0354OooO00o extends AnimatorListenerAdapter {
                public C0354OooO00o() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator == null || animator.getDuration() != 0) {
                        OooOOO0 oooOOO0 = OooOOO0.this;
                        OooO00o oooO00o = OooO00o.this;
                        oooO00o.o000000 = false;
                        if (oooOOO0.OooO0OO) {
                            oooO00o.OooO0O0(true);
                        }
                        OooO00o oooO00o2 = OooO00o.this;
                        if (oooO00o2.o0OOO0o == MiniRefreshState.LOAD_FINISH) {
                            oooO00o2.OooO00o(MiniRefreshState.NONE);
                        }
                    }
                }
            }

            public RunnableC0353OooO00o(int i11) {
                this.OooO00o = i11;
            }

            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator.AnimatorUpdateListener animatorUpdateListenerOooO00o;
                ValueAnimator valueAnimatorOooO00o;
                OooO00o oooO00o = OooO00o.this;
                if (!oooO00o.Oooo || this.OooO00o >= 0) {
                    animatorUpdateListenerOooO00o = null;
                } else {
                    animatorUpdateListenerOooO00o = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o.o00oO0O).OooO00o(oooO00o.OooO0O0);
                    if (animatorUpdateListenerOooO00o != null) {
                        ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) animatorUpdateListenerOooO00o).onAnimationUpdate(ValueAnimator.ofInt(0, 0));
                    }
                }
                C0354OooO00o c0354OooO00o = new C0354OooO00o();
                OooOOO0 oooOOO0 = OooOOO0.this;
                OooO00o oooO00o2 = OooO00o.this;
                int i11 = oooO00o2.OooO0O0;
                if (i11 > 0) {
                    valueAnimatorOooO00o = ((OooOo) oooO00o2.o0ooOoO).OooO00o(0);
                } else {
                    if (animatorUpdateListenerOooO00o != null || i11 == 0) {
                        ValueAnimator valueAnimator = oooO00o2.o00000O0;
                        if (valueAnimator != null) {
                            valueAnimator.setDuration(0L);
                            OooO00o.this.o00000O0.cancel();
                            OooO00o.this.o00000O0 = null;
                        }
                        ((OooOo) OooO00o.this.o0ooOoO).OooO00o(0, false);
                        ((OooOo) OooO00o.this.o0ooOoO).OooO00o(MiniRefreshState.NONE);
                    } else if (oooOOO0.OooO0OO && oooO00o2.Oooo0O0) {
                        int i12 = -oooO00o2.Ooooooo;
                        if (i11 >= i12) {
                            oooO00o2.OooO00o(MiniRefreshState.NONE);
                        } else {
                            valueAnimatorOooO00o = ((OooOo) oooO00o2.o0ooOoO).OooO00o(i12);
                        }
                    } else {
                        valueAnimatorOooO00o = ((OooOo) oooO00o2.o0ooOoO).OooO00o(0);
                    }
                    valueAnimatorOooO00o = null;
                }
                if (valueAnimatorOooO00o != null) {
                    valueAnimatorOooO00o.addListener(c0354OooO00o);
                } else {
                    c0354OooO00o.onAnimationEnd(null);
                }
            }
        }

        public OooOOO0(int i11, boolean z10, boolean z11) {
            this.OooO0O0 = i11;
            this.OooO0OO = z10;
            this.OooO0Oo = z11;
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00a9  */
        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            int i11 = this.OooO00o;
            if (i11 == 0) {
                OooO00o oooO00o = OooO00o.this;
                MiniRefreshState miniRefreshState = oooO00o.o0OOO0o;
                MiniRefreshState miniRefreshState2 = MiniRefreshState.NONE;
                if (miniRefreshState == miniRefreshState2 && oooO00o.o0Oo0oo == MiniRefreshState.LOADING) {
                    oooO00o.o0Oo0oo = miniRefreshState2;
                } else {
                    ValueAnimator valueAnimator = oooO00o.o00000O0;
                    if (valueAnimator != null && ((miniRefreshState.isDragging || miniRefreshState == MiniRefreshState.LOAD_RELEASED) && miniRefreshState.isFooter)) {
                        valueAnimator.setDuration(0L);
                        OooO00o.this.o00000O0.cancel();
                        OooO00o oooO00o2 = OooO00o.this;
                        oooO00o2.o00000O0 = null;
                        if (((OooOo) oooO00o2.o0ooOoO).OooO00o(0) == null) {
                            OooO00o.this.OooO00o(miniRefreshState2);
                        } else {
                            OooO00o.this.OooO00o(MiniRefreshState.PULL_UP_CANCELED);
                        }
                    } else if (miniRefreshState == MiniRefreshState.LOADING && oooO00o.o00oO0o != null && oooO00o.o00oO0O != null) {
                        this.OooO00o = i11 + 1;
                        oooO00o.o0ooOOo.postDelayed(this, this.OooO0O0);
                        OooO00o.this.OooO00o(MiniRefreshState.LOAD_FINISH);
                        return;
                    }
                }
                if (this.OooO0OO) {
                    OooO00o.this.OooO0O0(true);
                    return;
                }
                return;
            }
            OooO00o oooO00o3 = OooO00o.this;
            int iOooO00o = oooO00o3.o00oO0o.OooO00o(oooO00o3, this.OooO0Oo);
            OooO00o.this.getClass();
            if (iOooO00o < Integer.MAX_VALUE) {
                if (this.OooO0OO) {
                    OooO00o oooO00o4 = OooO00o.this;
                    z10 = oooO00o4.Oooo0O0 && oooO00o4.OooO0O0 < 0 && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o4.o00oO0O).OooO00o();
                }
                OooO00o oooO00o5 = OooO00o.this;
                int i12 = oooO00o5.OooO0O0;
                int iMax = i12 - (z10 ? Math.max(i12, -oooO00o5.Ooooooo) : 0);
                OooO00o oooO00o6 = OooO00o.this;
                if (oooO00o6.OooOOOo || oooO00o6.OooooO0) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    OooO00o oooO00o7 = OooO00o.this;
                    if (oooO00o7.OooOOOo) {
                        float f11 = oooO00o7.OooOO0O;
                        oooO00o7.OooO = f11;
                        oooO00o7.OooO0Oo = oooO00o7.OooO0O0 - iMax;
                        oooO00o7.OooOOOo = false;
                        float f12 = oooO00o7.Oooo0 ? iMax : 0;
                        OooO00o.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 0, oooO00o7.OooOO0, f11 + f12 + (oooO00o7.OooO00o * 2), 0));
                        OooO00o oooO00o8 = OooO00o.this;
                        OooO00o.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 2, oooO00o8.OooOO0, oooO00o8.OooOO0O + f12, 0));
                    }
                    OooO00o oooO00o9 = OooO00o.this;
                    if (oooO00o9.OooooO0) {
                        oooO00o9.Ooooo0o = 0;
                        OooO00o.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 1, oooO00o9.OooOO0, oooO00o9.OooOO0O, 0));
                        OooO00o oooO00o10 = OooO00o.this;
                        oooO00o10.OooooO0 = false;
                        oooO00o10.OooO0Oo = 0;
                    }
                }
                OooO00o oooO00o11 = OooO00o.this;
                oooO00o11.o0ooOOo.postDelayed(new RunnableC0353OooO00o(iMax), oooO00o11.OooO0O0 < 0 ? iOooO00o : 0L);
            }
        }
    }

    public class OooOOOO implements Runnable {
        public int OooO00o;
        public float OooO0O0;
        public long OooO0OO = 0;
        public long OooO0Oo = AnimationUtils.currentAnimationTimeMillis();

        public OooOOOO(float f11) {
            this.OooO0O0 = f11;
            this.OooO00o = OooO00o.this.OooO0O0;
        }

        @Override // java.lang.Runnable
        public void run() {
            OooO00o oooO00o = OooO00o.this;
            if (oooO00o.o00000 != this || oooO00o.o0OOO0o.isFinishing) {
                return;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j11 = jCurrentAnimationTimeMillis - this.OooO0Oo;
            float fPow = (float) (Math.pow(0.98f, (jCurrentAnimationTimeMillis - this.OooO0OO) / (1000.0f / 10)) * ((double) this.OooO0O0));
            this.OooO0O0 = fPow;
            float f11 = ((j11 * 1.0f) / 1000.0f) * fPow;
            if (Math.abs(f11) <= 1.0f) {
                OooO00o.this.o00000 = null;
                return;
            }
            this.OooO0Oo = jCurrentAnimationTimeMillis;
            int i11 = (int) (this.OooO00o + f11);
            this.OooO00o = i11;
            OooO00o oooO00o2 = OooO00o.this;
            if (oooO00o2.OooO0O0 * i11 > 0) {
                ((OooOo) oooO00o2.o0ooOoO).OooO00o(i11, true);
                OooO00o.this.o0ooOOo.postDelayed(this, 10);
                return;
            }
            oooO00o2.o00000 = null;
            ((OooOo) oooO00o2.o0ooOoO).OooO00o(0, true);
            View view = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) OooO00o.this.o00oO0O).OooO0OO;
            int i12 = (int) (-this.OooO0O0);
            float f12 = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO0O0;
            if (view instanceof ScrollView) {
                ((ScrollView) view).fling(i12);
            } else if (view instanceof AbsListView) {
                ((AbsListView) view).fling(i12);
            } else if (view instanceof WebView) {
                ((WebView) view).flingScroll(0, i12);
            } else if (view instanceof NestedScrollView) {
                ((NestedScrollView) view).fling(i12);
            } else if (view instanceof RecyclerView) {
                ((RecyclerView) view).fling(0, i12);
            }
            OooO00o oooO00o3 = OooO00o.this;
            if (!oooO00o3.o000000 || f11 <= 0.0f) {
                return;
            }
            oooO00o3.o000000 = false;
        }
    }

    public class OooOo implements com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 {
        public OooOo() {
        }

        public ValueAnimator OooO00o(int i11) {
            OooO00o oooO00o = OooO00o.this;
            return oooO00o.OooO00o(i11, 0, oooO00o.OooOoo0, oooO00o.OooO0o);
        }

        /* JADX WARN: Code duplicated, block: B:46:0x009f  */
        public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 OooO00o(int i11, boolean z10) {
            int i12;
            boolean z11;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2;
            OooO00o oooO00o;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O3;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O4;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O5;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O6;
            OooO00o oooO00o2 = OooO00o.this;
            if (oooO00o2.OooO0O0 == i11 && (((oooOO0O5 = oooO00o2.oo000o) == null || !oooOO0O5.OooO00o()) && ((oooOO0O6 = OooO00o.this.o00oO0o) == null || !oooOO0O6.OooO00o()))) {
                return this;
            }
            OooO00o oooO00o3 = OooO00o.this;
            int i13 = oooO00o3.OooO0O0;
            oooO00o3.OooO0O0 = i11;
            if (z10) {
                MiniRefreshState miniRefreshState = oooO00o3.o0Oo0oo;
                if (miniRefreshState.isDragging || miniRefreshState.isOpening) {
                    if (i11 > oooO00o3.Oooooo * oooO00o3.o00o0O) {
                        if (oooO00o3.o0OOO0o != MiniRefreshState.RELEASE_TO_TWO_LEVEL) {
                            ((OooOo) oooO00o3.o0ooOoO).OooO00o(MiniRefreshState.RELEASE_TO_REFRESH);
                        }
                    } else if ((-i11) > oooO00o3.Ooooooo * oooO00o3.o00ooo && !oooO00o3.o000oOoO) {
                        ((OooOo) oooO00o3.o0ooOoO).OooO00o(MiniRefreshState.RELEASE_TO_LOAD);
                    } else if (i11 < 0 && !oooO00o3.o000oOoO) {
                        ((OooOo) oooO00o3.o0ooOoO).OooO00o(MiniRefreshState.PULL_UP_TO_LOAD);
                    } else if (i11 > 0) {
                        ((OooOo) oooO00o3.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_TO_REFRESH);
                    }
                }
            }
            OooO00o oooO00o4 = OooO00o.this;
            if (oooO00o4.o00oO0O != null) {
                if (i11 < 0 || (oooOO0O4 = oooO00o4.oo000o) == null) {
                    i12 = 0;
                    z11 = false;
                } else {
                    if (oooO00o4.OooO00o(oooO00o4.Oooo00o, oooOO0O4)) {
                        i12 = i11;
                    } else if (i13 < 0) {
                        i12 = 0;
                    } else {
                        i12 = 0;
                        z11 = false;
                    }
                    z11 = true;
                }
                if (i11 <= 0 && (oooOO0O3 = (oooO00o = OooO00o.this).o00oO0o) != null) {
                    if (oooO00o.OooO00o(oooO00o.Oooo0, oooOO0O3)) {
                        i12 = i11;
                    } else if (i13 > 0) {
                        i12 = 0;
                    }
                    z11 = true;
                }
                if (z11) {
                    OooO00o oooO00o5 = OooO00o.this;
                    ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o5.o00oO0O).OooO00o(i12, oooO00o5.OooOo0, oooO00o5.OooOo0O);
                    OooO00o oooO00o6 = OooO00o.this;
                    if (oooO00o6.o000oOoO && oooO00o6.OoooOOO && oooO00o6.Oooo0O0) {
                        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O7 = oooO00o6.o00oO0o;
                        if ((oooOO0O7 instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) && oooOO0O7.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo) {
                            OooO00o oooO00o7 = OooO00o.this;
                            if (oooO00o7.OooO00o(oooO00o7.OooOooo)) {
                                OooO00o.this.o00oO0o.getView().setTranslationY(Math.max(0, i12));
                            }
                        }
                    }
                    OooO00o oooO00o8 = OooO00o.this;
                    boolean z12 = (oooO00o8.Oooo000 && (oooOO0O2 = oooO00o8.oo000o) != null && oooOO0O2.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0) || OooO00o.this.oo0o0Oo != 0;
                    OooO00o oooO00o9 = OooO00o.this;
                    boolean z13 = (oooO00o9.Oooo00O && (oooOO0O = oooO00o9.o00oO0o) != null && oooOO0O.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0) || OooO00o.this.o0O0O00 != 0;
                    if ((z12 && (i12 >= 0 || i13 > 0)) || (z13 && (i12 <= 0 || i13 < 0))) {
                        oooO00o3.invalidate();
                    }
                }
            }
            if ((i11 >= 0 || i13 > 0) && OooO00o.this.oo000o != null) {
                int iMax = Math.max(i11, 0);
                OooO00o oooO00o10 = OooO00o.this;
                int i14 = oooO00o10.Oooooo;
                int i15 = (int) (i14 * oooO00o10.o00Oo0);
                float f11 = (iMax * 1.0f) / (i14 == 0 ? 1 : i14);
                if (oooO00o10.OooO00o(oooO00o10.OooOooO) || (OooO00o.this.o0OOO0o == MiniRefreshState.REFRESH_FINISH && !z10)) {
                    OooO00o oooO00o11 = OooO00o.this;
                    if (i13 != oooO00o11.OooO0O0) {
                        if (oooO00o11.oo000o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo) {
                            OooO00o.this.oo000o.getView().setTranslationY(OooO00o.this.OooO0O0);
                            OooO00o oooO00o12 = OooO00o.this;
                            if (oooO00o12.oo0o0Oo != 0 && oooO00o12.o0ooOO0 != null && !oooO00o12.OooO00o(oooO00o12.Oooo00o, oooO00o12.oo000o)) {
                                oooO00o3.invalidate();
                            }
                        } else if (OooO00o.this.oo000o.getSpinnerStyle().OooO0OO) {
                            View view = OooO00o.this.oo000o.getView();
                            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : OooO00o.o00000o0;
                            view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max((OooO00o.this.OooO0O0 - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, 0), 1073741824));
                            int i16 = marginLayoutParams.leftMargin;
                            int i17 = marginLayoutParams.topMargin + OooO00o.this.ooOO;
                            view.layout(i16, i17, view.getMeasuredWidth() + i16, view.getMeasuredHeight() + i17);
                        }
                        OooO00o.this.oo000o.OooO00o(z10, f11, iMax, i14, i15);
                    }
                    if (z10 && OooO00o.this.oo000o.OooO00o()) {
                        int i18 = (int) OooO00o.this.OooOO0;
                        int width = oooO00o3.getWidth();
                        OooO00o oooO00o13 = OooO00o.this;
                        oooO00o13.oo000o.OooO00o(oooO00o13.OooOO0 / (width == 0 ? 1 : width), i18, width);
                    }
                }
                int i19 = OooO00o.this.OooO0O0;
            }
            if ((i11 <= 0 || i13 < 0) && OooO00o.this.o00oO0o != null) {
                int i20 = -Math.min(i11, 0);
                OooO00o oooO00o14 = OooO00o.this;
                int i21 = oooO00o14.Ooooooo;
                int i22 = (int) (i21 * oooO00o14.o00Ooo);
                float f12 = (i20 * 1.0f) / (i21 == 0 ? 1 : i21);
                if (oooO00o14.OooO00o(oooO00o14.OooOooo) || (OooO00o.this.o0OOO0o == MiniRefreshState.LOAD_FINISH && !z10)) {
                    OooO00o oooO00o15 = OooO00o.this;
                    if (i13 != oooO00o15.OooO0O0) {
                        if (oooO00o15.o00oO0o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo) {
                            OooO00o.this.o00oO0o.getView().setTranslationY(OooO00o.this.OooO0O0);
                            OooO00o oooO00o16 = OooO00o.this;
                            if (oooO00o16.o0O0O00 != 0 && oooO00o16.o0ooOO0 != null && !oooO00o16.OooO00o(oooO00o16.Oooo0, oooO00o16.o00oO0o)) {
                                oooO00o3.invalidate();
                            }
                        } else if (OooO00o.this.o00oO0o.getSpinnerStyle().OooO0OO) {
                            View view2 = OooO00o.this.o00oO0o.getView();
                            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : OooO00o.o00000o0;
                            view2.measure(View.MeasureSpec.makeMeasureSpec(view2.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max(((-OooO00o.this.OooO0O0) - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, 0), 1073741824));
                            int i23 = marginLayoutParams2.leftMargin;
                            int measuredHeight = (oooO00o3.getMeasuredHeight() + marginLayoutParams2.topMargin) - OooO00o.this.o00O0O;
                            view2.layout(i23, measuredHeight - view2.getMeasuredHeight(), view2.getMeasuredWidth() + i23, measuredHeight);
                        }
                        OooO00o.this.o00oO0o.OooO00o(z10, f12, i20, i21, i22);
                    }
                    if (z10 && OooO00o.this.o00oO0o.OooO00o()) {
                        int i24 = (int) OooO00o.this.OooOO0;
                        int width2 = oooO00o3.getWidth();
                        OooO00o oooO00o17 = OooO00o.this;
                        oooO00o17.o00oO0o.OooO00o(oooO00o17.OooOO0 / (width2 == 0 ? 1 : width2), i24, width2);
                    }
                }
                int i25 = OooO00o.this.OooO0O0;
            }
            return this;
        }

        public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 OooO00o(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O) {
            if (oooOO0O.equals(OooO00o.this.oo000o)) {
                OooO00o oooO00o = OooO00o.this;
                com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o2 = oooO00o.OoooooO;
                if (oooO00o2.OooO0O0) {
                    oooO00o.OoooooO = oooO00o2.OooO00o();
                }
            } else if (oooOO0O.equals(OooO00o.this.o00oO0o)) {
                OooO00o oooO00o3 = OooO00o.this;
                com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o4 = oooO00o3.o0OoOo0;
                if (oooO00o4.OooO0O0) {
                    oooO00o3.o0OoOo0 = oooO00o4.OooO00o();
                }
            }
            return this;
        }

        public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 OooO00o(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O, int i11) {
            OooO00o oooO00o = OooO00o.this;
            if (oooO00o.o0ooOO0 == null && i11 != 0) {
                oooO00o.o0ooOO0 = new Paint();
            }
            if (oooOO0O.equals(OooO00o.this.oo000o)) {
                OooO00o.this.oo0o0Oo = i11;
            } else if (oooOO0O.equals(OooO00o.this.o00oO0o)) {
                OooO00o.this.o0O0O00 = i11;
            }
            return this;
        }

        public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 OooO00o(@NonNull MiniRefreshState miniRefreshState) {
            switch (C0352OooO00o.OooO00o[miniRefreshState.ordinal()]) {
                case 1:
                    OooO00o oooO00o = OooO00o.this;
                    MiniRefreshState miniRefreshState2 = oooO00o.o0OOO0o;
                    MiniRefreshState miniRefreshState3 = MiniRefreshState.NONE;
                    if (miniRefreshState2 != miniRefreshState3 && oooO00o.OooO0O0 == 0) {
                        oooO00o.OooO00o(miniRefreshState3);
                    } else if (oooO00o.OooO0O0 != 0) {
                        OooO00o(0);
                    }
                    break;
                case 2:
                    OooO00o oooO00o2 = OooO00o.this;
                    if (!oooO00o2.o0OOO0o.isOpening && oooO00o2.OooO00o(oooO00o2.OooOooO)) {
                        OooO00o.this.OooO00o(MiniRefreshState.PULL_DOWN_TO_REFRESH);
                    } else {
                        OooO00o.this.setViceState(MiniRefreshState.PULL_DOWN_TO_REFRESH);
                    }
                    break;
                case 3:
                    OooO00o oooO00o3 = OooO00o.this;
                    if (oooO00o3.OooO00o(oooO00o3.OooOooo)) {
                        OooO00o oooO00o4 = OooO00o.this;
                        MiniRefreshState miniRefreshState4 = oooO00o4.o0OOO0o;
                        if (!miniRefreshState4.isOpening && !miniRefreshState4.isFinishing && (!oooO00o4.o000oOoO || !oooO00o4.Oooo0O0 || !oooO00o4.OoooOOO)) {
                            oooO00o4.OooO00o(MiniRefreshState.PULL_UP_TO_LOAD);
                        }
                    }
                    OooO00o.this.setViceState(MiniRefreshState.PULL_UP_TO_LOAD);
                    break;
                case 4:
                    OooO00o oooO00o5 = OooO00o.this;
                    if (!oooO00o5.o0OOO0o.isOpening && oooO00o5.OooO00o(oooO00o5.OooOooO)) {
                        OooO00o.this.OooO00o(MiniRefreshState.PULL_DOWN_CANCELED);
                        OooO00o(MiniRefreshState.NONE);
                    } else {
                        OooO00o.this.setViceState(MiniRefreshState.PULL_DOWN_CANCELED);
                    }
                    break;
                case 5:
                    OooO00o oooO00o6 = OooO00o.this;
                    if (oooO00o6.OooO00o(oooO00o6.OooOooo)) {
                        OooO00o oooO00o7 = OooO00o.this;
                        if (!oooO00o7.o0OOO0o.isOpening && (!oooO00o7.o000oOoO || !oooO00o7.Oooo0O0 || !oooO00o7.OoooOOO)) {
                            oooO00o7.OooO00o(MiniRefreshState.PULL_UP_CANCELED);
                            OooO00o(MiniRefreshState.NONE);
                        }
                    }
                    OooO00o.this.setViceState(MiniRefreshState.PULL_UP_CANCELED);
                    break;
                case 6:
                    OooO00o oooO00o8 = OooO00o.this;
                    if (!oooO00o8.o0OOO0o.isOpening && oooO00o8.OooO00o(oooO00o8.OooOooO)) {
                        OooO00o.this.OooO00o(MiniRefreshState.RELEASE_TO_REFRESH);
                    } else {
                        OooO00o.this.setViceState(MiniRefreshState.RELEASE_TO_REFRESH);
                    }
                    break;
                case 7:
                    OooO00o oooO00o9 = OooO00o.this;
                    if (oooO00o9.OooO00o(oooO00o9.OooOooo)) {
                        OooO00o oooO00o10 = OooO00o.this;
                        MiniRefreshState miniRefreshState5 = oooO00o10.o0OOO0o;
                        if (!miniRefreshState5.isOpening && !miniRefreshState5.isFinishing && (!oooO00o10.o000oOoO || !oooO00o10.Oooo0O0 || !oooO00o10.OoooOOO)) {
                            oooO00o10.OooO00o(MiniRefreshState.RELEASE_TO_LOAD);
                        }
                    }
                    OooO00o.this.setViceState(MiniRefreshState.RELEASE_TO_LOAD);
                    break;
                case 8:
                    OooO00o oooO00o11 = OooO00o.this;
                    if (!oooO00o11.o0OOO0o.isOpening && oooO00o11.OooO00o(oooO00o11.OooOooO)) {
                        OooO00o.this.OooO00o(MiniRefreshState.RELEASE_TO_TWO_LEVEL);
                    } else {
                        OooO00o.this.setViceState(MiniRefreshState.RELEASE_TO_TWO_LEVEL);
                    }
                    break;
                case 9:
                    OooO00o oooO00o12 = OooO00o.this;
                    if (!oooO00o12.o0OOO0o.isOpening && oooO00o12.OooO00o(oooO00o12.OooOooO)) {
                        OooO00o.this.OooO00o(MiniRefreshState.REFRESH_RELEASED);
                    } else {
                        OooO00o.this.setViceState(MiniRefreshState.REFRESH_RELEASED);
                    }
                    break;
                case 10:
                    OooO00o oooO00o13 = OooO00o.this;
                    if (!oooO00o13.o0OOO0o.isOpening && oooO00o13.OooO00o(oooO00o13.OooOooo)) {
                        OooO00o.this.OooO00o(MiniRefreshState.LOAD_RELEASED);
                    } else {
                        OooO00o.this.setViceState(MiniRefreshState.LOAD_RELEASED);
                    }
                    break;
                case 11:
                    OooO00o.this.setStateRefreshing(true);
                    break;
                case 12:
                    OooO00o.this.setStateLoading(true);
                    break;
                default:
                    OooO00o.this.OooO00o(miniRefreshState);
                    break;
            }
            return null;
        }
    }

    public static class OooOo00 extends ViewGroup.MarginLayoutParams {
        public int OooO00o;
        public com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 OooO0O0;

        public OooOo00(int i11, int i12) {
            super(i11, i12);
            this.OooO00o = 0;
            this.OooO0O0 = null;
        }

        public OooOo00(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.OooO00o = 0;
            this.OooO0O0 = null;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MiniRefreshLayout_Layout);
            this.OooO00o = typedArrayObtainStyledAttributes.getColor(R.styleable.MiniRefreshLayout_Layout_layout_srlBackgroundColor, this.OooO00o);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_Layout_layout_srlSpinnerStyle)) {
                this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oo[typedArrayObtainStyledAttributes.getInt(R.styleable.MiniRefreshLayout_Layout_layout_srlSpinnerStyle, 0)];
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public OooO00o(Context context, AttributeSet attributeSet) {
        super(context, null);
        this.OooO0o0 = 300;
        this.OooO0o = 300;
        this.OooOO0o = 1.0f;
        this.OooOOO0 = 0.16666667f;
        this.OooOOO = 0.5f;
        this.OooOOOO = 'n';
        this.OooOOoo = -1;
        this.OooOo00 = -1;
        this.OooOo0 = -1;
        this.OooOo0O = -1;
        this.OooOooO = true;
        this.OooOooo = false;
        this.Oooo000 = true;
        this.Oooo00O = true;
        this.Oooo00o = true;
        this.Oooo0 = true;
        this.Oooo0O0 = false;
        this.Oooo0OO = true;
        this.Oooo0o0 = true;
        this.Oooo0o = false;
        this.Oooo0oO = true;
        this.Oooo0oo = false;
        this.Oooo = true;
        this.OoooO00 = true;
        this.OoooO0 = true;
        this.OoooO0O = true;
        this.OoooO = false;
        this.OoooOO0 = false;
        this.o000oOoO = false;
        this.OoooOOO = false;
        this.OoooOOo = false;
        this.OoooOo0 = false;
        this.OoooOoO = false;
        this.OooooOO = new int[2];
        this.OooooOo = new NestedScrollingChildHelper(this);
        this.Oooooo0 = new NestedScrollingParentHelper(this);
        com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0OO;
        this.OoooooO = oooO00o;
        this.o0OoOo0 = oooO00o;
        this.o00Oo0 = 2.5f;
        this.o00Ooo = 2.5f;
        this.o00o0O = 1.0f;
        this.o00ooo = 1.0f;
        this.o0ooOoO = new OooOo();
        MiniRefreshState miniRefreshState = MiniRefreshState.NONE;
        this.o0OOO0o = miniRefreshState;
        this.o0Oo0oo = miniRefreshState;
        this.o0OO00O = 0L;
        this.oo0o0Oo = 0;
        this.o0O0O00 = 0;
        this.o000000 = false;
        this.o000000O = false;
        this.o000000o = null;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o0ooOOo = new Handler();
        this.OooOoO = new Scroller(context);
        this.OooOoOO = VelocityTracker.obtain();
        this.OooO0oO = context.getResources().getDisplayMetrics().heightPixels;
        this.OooOoo0 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0(0);
        this.OooO00o = viewConfiguration.getScaledTouchSlop();
        this.OooOo0o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.OooOo = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Ooooooo = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(60.0f);
        this.Oooooo = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(100.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, R.styleable.MiniRefreshLayout);
        if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_android_clipToPadding)) {
            setClipToPadding(false);
        }
        if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_android_clipChildren)) {
            setClipChildren(false);
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0OO oooO0OO = o00000Oo;
        if (oooO0OO != null) {
            oooO0OO.OooO00o(context, this);
        }
        this.OooOOO = typedArrayObtainStyledAttributes.getFloat(R.styleable.MiniRefreshLayout_srlDragRate, this.OooOOO);
        this.o00Oo0 = typedArrayObtainStyledAttributes.getFloat(R.styleable.MiniRefreshLayout_srlHeaderMaxDragRate, this.o00Oo0);
        this.o00Ooo = typedArrayObtainStyledAttributes.getFloat(R.styleable.MiniRefreshLayout_srlFooterMaxDragRate, this.o00Ooo);
        this.o00o0O = typedArrayObtainStyledAttributes.getFloat(R.styleable.MiniRefreshLayout_srlHeaderTriggerRate, this.o00o0O);
        this.o00ooo = typedArrayObtainStyledAttributes.getFloat(R.styleable.MiniRefreshLayout_srlFooterTriggerRate, this.o00ooo);
        this.OooOooO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableRefresh, this.OooOooO);
        this.OooO0o = typedArrayObtainStyledAttributes.getInt(R.styleable.MiniRefreshLayout_srlReboundDuration, this.OooO0o);
        this.OooOooo = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableLoadMore, this.OooOooo);
        this.Oooooo = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MiniRefreshLayout_srlHeaderHeight, this.Oooooo);
        this.Ooooooo = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MiniRefreshLayout_srlFooterHeight, this.Ooooooo);
        this.ooOO = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MiniRefreshLayout_srlHeaderInsetStart, this.ooOO);
        this.o00O0O = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MiniRefreshLayout_srlFooterInsetStart, this.o00O0O);
        this.OoooO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlDisableContentWhenRefresh, this.OoooO);
        this.OoooOO0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlDisableContentWhenLoading, this.OoooOO0);
        this.Oooo00o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableHeaderTranslationContent, this.Oooo00o);
        this.Oooo0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableFooterTranslationContent, this.Oooo0);
        this.Oooo0OO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnablePreviewInEditMode, this.Oooo0OO);
        this.Oooo0oO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableAutoLoadMore, this.Oooo0oO);
        this.Oooo0o0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableOverScrollBounce, this.Oooo0o0);
        this.Oooo0oo = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnablePureScrollMode, this.Oooo0oo);
        this.Oooo = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableScrollContentWhenLoaded, this.Oooo);
        this.OoooO00 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableScrollContentWhenRefreshed, this.OoooO00);
        this.OoooO0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableLoadMoreWhenContentNotFull, this.OoooO0);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableFooterFollowWhenLoadFinished, this.Oooo0O0);
        this.Oooo0O0 = z10;
        this.Oooo0O0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableFooterFollowWhenNoMoreData, z10);
        this.Oooo000 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableClipHeaderWhenFixedBehind, this.Oooo000);
        this.Oooo00O = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableClipFooterWhenFixedBehind, this.Oooo00O);
        this.Oooo0o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableOverScrollDrag, this.Oooo0o);
        this.OooOOoo = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MiniRefreshLayout_srlFixedHeaderViewId, this.OooOOoo);
        this.OooOo00 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MiniRefreshLayout_srlFixedFooterViewId, this.OooOo00);
        this.OooOo0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MiniRefreshLayout_srlHeaderTranslationViewId, this.OooOo0);
        this.OooOo0O = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MiniRefreshLayout_srlFooterTranslationViewId, this.OooOo0O);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniRefreshLayout_srlEnableNestedScrolling, this.OoooO0O);
        this.OoooO0O = z11;
        this.OooooOo.setNestedScrollingEnabled(z11);
        this.OoooOOo = this.OoooOOo || typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_srlEnableLoadMore);
        this.OoooOo0 = this.OoooOo0 || typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_srlEnableHeaderTranslationContent);
        this.OoooOoO = this.OoooOoO || typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_srlEnableFooterTranslationContent);
        this.OoooooO = typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_srlHeaderHeight) ? com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0o : this.OoooooO;
        this.o0OoOo0 = typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniRefreshLayout_srlFooterHeight) ? com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0o : this.o0OoOo0;
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.MiniRefreshLayout_srlAccentColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.MiniRefreshLayout_srlPrimaryColor, 0);
        if (color2 != 0) {
            if (color != 0) {
                this.OooOoo = new int[]{color2, color};
            } else {
                this.OooOoo = new int[]{color2};
            }
        } else if (color != 0) {
            this.OooOoo = new int[]{0, color};
        }
        if (this.Oooo0oo && !this.OoooOOo && !this.OooOooo) {
            this.OooOooo = true;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void setDefaultRefreshFooterCreator(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO00o oooO00o) {
        o00000O = oooO00o;
    }

    public static void setDefaultRefreshHeaderCreator(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0O0 oooO0O0) {
        o00000OO = oooO0O0;
    }

    public static void setDefaultRefreshInitializer(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0OO oooO0OO) {
        o00000Oo = oooO0OO;
    }

    public ValueAnimator OooO00o(int i11, int i12, Interpolator interpolator, int i13) {
        if (this.OooO0O0 == i11) {
            return null;
        }
        ValueAnimator valueAnimator = this.o00000O0;
        if (valueAnimator != null) {
            valueAnimator.setDuration(0L);
            this.o00000O0.cancel();
            this.o00000O0 = null;
        }
        this.o00000 = null;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.OooO0O0, i11);
        this.o00000O0 = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(i13);
        this.o00000O0.setInterpolator(interpolator);
        this.o00000O0.addListener(new OooO0o());
        this.o00000O0.addUpdateListener(new OooO());
        this.o00000O0.setStartDelay(i12);
        this.o00000O0.start();
        return this.o00000O0;
    }

    public OooO00o OooO00o(int i11, boolean z10, Boolean bool) {
        int i12 = i11 >> 16;
        int i13 = (i11 << 16) >> 16;
        OooOO0O oooOO0O = new OooOO0O(i12, bool, z10);
        if (i13 > 0) {
            this.o0ooOOo.postDelayed(oooOO0O, i13);
        } else {
            oooOO0O.run();
        }
        return this;
    }

    public OooO00o OooO00o(int i11, boolean z10, boolean z11) {
        int i12 = i11 >> 16;
        int i13 = (i11 << 16) >> 16;
        OooOOO0 oooOOO0 = new OooOOO0(i12, z11, z10);
        if (i13 > 0) {
            this.o0ooOOo.postDelayed(oooOOO0, i13);
        } else {
            oooOOO0.run();
        }
        return this;
    }

    public OooO00o OooO00o(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO oooO) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.o00oO0o;
        if (oooOO0O2 != null) {
            removeView(oooOO0O2.getView());
        }
        this.o00oO0o = oooO;
        this.o000000 = false;
        this.o0O0O00 = 0;
        this.OoooOOO = false;
        this.o0OoOo0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0OO;
        this.OooOooo = !this.OoooOOo || this.OooOooo;
        OooOo00 oooOo00 = new OooOo00(-1, -2);
        ViewGroup.LayoutParams layoutParams = this.o00oO0o.getView().getLayoutParams();
        if (layoutParams instanceof OooOo00) {
            oooOo00 = (OooOo00) layoutParams;
        }
        ViewExtKt.removeSelf(this.o00oO0o.getView());
        if (this.o00oO0o.getSpinnerStyle().OooO0O0) {
            addView(this.o00oO0o.getView(), getChildCount(), oooOo00);
        } else {
            addView(this.o00oO0o.getView(), 0, oooOo00);
        }
        int[] iArr = this.OooOoo;
        if (iArr != null && (oooOO0O = this.o00oO0o) != null) {
            oooOO0O.setPrimaryColors(iArr);
        }
        return this;
    }

    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO OooO00o(@NonNull com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 oooOO0) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.oo000o;
        if (oooOO0O2 != null) {
            removeView(oooOO0O2.getView());
        }
        this.oo000o = oooOO0;
        this.oo0o0Oo = 0;
        this.OoooooO = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0OO;
        OooOo00 oooOo00 = new OooOo00(-1, -2);
        ViewGroup.LayoutParams layoutParams = this.oo000o.getView().getLayoutParams();
        if (layoutParams instanceof OooOo00) {
            oooOo00 = (OooOo00) layoutParams;
        }
        ViewExtKt.removeSelf(this.oo000o.getView());
        if (this.oo000o.getSpinnerStyle().OooO0O0) {
            addView(this.oo000o.getView(), getChildCount(), oooOo00);
        } else {
            addView(this.oo000o.getView(), 0, oooOo00);
        }
        int[] iArr = this.OooOoo;
        if (iArr != null && (oooOO0O = this.oo000o) != null) {
            oooOO0O.setPrimaryColors(iArr);
        }
        return this;
    }

    public void OooO00o(float f11) {
        MiniRefreshState miniRefreshState;
        if (this.OooooO0 && !this.OoooO0 && f11 < 0.0f && !((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o()) {
            f11 = 0.0f;
        }
        if (f11 > this.OooO0oO * 5 && getTag() == null) {
            float f12 = this.OooOO0O;
            float f13 = this.OooO0oO;
            if (f12 < f13 / 6.0f && this.OooOO0 < f13 / 16.0f) {
                setTag("");
            }
        }
        MiniRefreshState miniRefreshState2 = this.o0OOO0o;
        if (miniRefreshState2 == MiniRefreshState.TwoLevel && f11 > 0.0f && this.o00oO0O != null) {
            int measuredHeight = getMeasuredHeight();
            float f14 = this.OooOO0o;
            ((OooOo) this.o0ooOoO).OooO00o(Math.min((int) f11, f14 > 1.0f ? (int) f14 : (int) (measuredHeight * f14)), true);
        } else if (miniRefreshState2 == MiniRefreshState.REFRESHING && f11 >= 0.0f) {
            float f15 = this.Oooooo;
            if (f11 < f15) {
                ((OooOo) this.o0ooOoO).OooO00o((int) f11, true);
            } else {
                float f16 = (this.o00Oo0 - 1.0f) * f15;
                int iMax = Math.max((this.OooO0oO * 4) / 3, getHeight());
                int i11 = this.Oooooo;
                float f17 = iMax - i11;
                float fMax = Math.max(0.0f, (f11 - i11) * this.OooOOO);
                float f18 = -fMax;
                if (f17 == 0.0f) {
                    f17 = 1.0f;
                }
                ((OooOo) this.o0ooOoO).OooO00o(((int) Math.min((1.0f - ((float) Math.pow(100.0d, f18 / f17))) * f16, fMax)) + this.Oooooo, true);
            }
        } else if (f11 < 0.0f && (miniRefreshState2 == MiniRefreshState.LOADING || ((this.Oooo0O0 && this.o000oOoO && this.OoooOOO && OooO00o(this.OooOooo)) || (this.Oooo0oO && !this.o000oOoO && OooO00o(this.OooOooo))))) {
            int i12 = this.Ooooooo;
            if (f11 > (-i12)) {
                ((OooOo) this.o0ooOoO).OooO00o((int) f11, true);
            } else {
                float f19 = (this.o00Ooo - 1.0f) * i12;
                int iMax2 = Math.max((this.OooO0oO * 4) / 3, getHeight());
                int i13 = this.Ooooooo;
                float f20 = iMax2 - i13;
                float f21 = -Math.min(0.0f, (i13 + f11) * this.OooOOO);
                float f22 = -f21;
                if (f20 == 0.0f) {
                    f20 = 1.0f;
                }
                ((OooOo) this.o0ooOoO).OooO00o(((int) (-Math.min((1.0f - ((float) Math.pow(100.0d, f22 / f20))) * f19, f21))) - this.Ooooooo, true);
            }
        } else if (f11 >= 0.0f) {
            float f23 = this.o00Oo0 * this.Oooooo;
            float fMax2 = Math.max(this.OooO0oO / 2, getHeight());
            float fMax3 = Math.max(0.0f, this.OooOOO * f11);
            float f24 = -fMax3;
            if (fMax2 == 0.0f) {
                fMax2 = 1.0f;
            }
            ((OooOo) this.o0ooOoO).OooO00o((int) Math.min((1.0f - ((float) Math.pow(100.0d, f24 / fMax2))) * f23, fMax3), true);
        } else {
            float f25 = this.o00Ooo * this.Ooooooo;
            float fMax4 = Math.max(this.OooO0oO / 2, getHeight());
            float f26 = -Math.min(0.0f, this.OooOOO * f11);
            float f27 = -f26;
            if (fMax4 == 0.0f) {
                fMax4 = 1.0f;
            }
            ((OooOo) this.o0ooOoO).OooO00o((int) (-Math.min((1.0f - ((float) Math.pow(100.0d, f27 / fMax4))) * f25, f26)), true);
        }
        if (!this.Oooo0oO || this.o000oOoO || !OooO00o(this.OooOooo) || f11 >= 0.0f || (miniRefreshState = this.o0OOO0o) == MiniRefreshState.REFRESHING || miniRefreshState == MiniRefreshState.LOADING || miniRefreshState == MiniRefreshState.LOAD_FINISH) {
            return;
        }
        if (this.OoooOO0) {
            this.o00000 = null;
            ((OooOo) this.o0ooOoO).OooO00o(-this.Ooooooo);
        }
        setStateDirectLoading(false);
        this.o0ooOOo.postDelayed(new OooOO0(), this.OooO0o);
    }

    public void OooO00o(MiniRefreshState miniRefreshState) {
        MiniRefreshState miniRefreshState2 = this.o0OOO0o;
        if (miniRefreshState2 == miniRefreshState) {
            if (this.o0Oo0oo != miniRefreshState2) {
                this.o0Oo0oo = miniRefreshState2;
                return;
            }
            return;
        }
        this.o0OOO0o = miniRefreshState;
        this.o0Oo0oo = miniRefreshState;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.o00oO0o;
        if (oooOO0O != null) {
            oooOO0O.OooO00o(this, miniRefreshState2, miniRefreshState);
        }
        if (oooOO0O2 != null) {
            oooOO0O2.OooO00o(this, miniRefreshState2, miniRefreshState);
        }
        if (miniRefreshState == MiniRefreshState.LOAD_FINISH) {
            this.o000000 = false;
        }
    }

    public boolean OooO00o() {
        int i11 = this.o000OOo ? 0 : 400;
        int i12 = this.OooO0o;
        float f11 = (this.o00Oo0 / 2.0f) + 0.5f;
        int i13 = this.Oooooo;
        float f12 = f11 * i13 * 1.0f;
        if (i13 == 0) {
            i13 = 1;
        }
        float f13 = f12 / i13;
        if (this.o0OOO0o != MiniRefreshState.NONE || !OooO00o(this.OooOooO)) {
            return false;
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO0O0 oooO0O0 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO0O0(this, f13, i12, false);
        setViceState(MiniRefreshState.REFRESHING);
        if (i11 > 0) {
            this.o0ooOOo.postDelayed(oooO0O0, i11);
        } else {
            oooO0O0.run();
        }
        return true;
    }

    public boolean OooO00o(int i11) {
        if (i11 == 0) {
            if (this.o00000O0 != null) {
                MiniRefreshState miniRefreshState = this.o0OOO0o;
                if (miniRefreshState.isFinishing || miniRefreshState == MiniRefreshState.TWO_LEVEL_RELEASED || miniRefreshState == MiniRefreshState.REFRESH_RELEASED || miniRefreshState == MiniRefreshState.LOAD_RELEASED) {
                    return true;
                }
                if (miniRefreshState == MiniRefreshState.PULL_DOWN_CANCELED) {
                    ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_TO_REFRESH);
                } else if (miniRefreshState == MiniRefreshState.PULL_UP_CANCELED) {
                    ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.PULL_UP_TO_LOAD);
                }
                this.o00000O0.setDuration(0L);
                this.o00000O0.cancel();
                this.o00000O0 = null;
            }
            this.o00000 = null;
        }
        return this.o00000O0 != null;
    }

    public boolean OooO00o(boolean z10) {
        return z10 && !this.Oooo0oo;
    }

    public boolean OooO00o(boolean z10, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O) {
        return z10 || this.Oooo0oo || oooOO0O == null || oooOO0O.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0;
    }

    public OooO00o OooO0O0(boolean z10) {
        MiniRefreshState miniRefreshState = this.o0OOO0o;
        if (miniRefreshState == MiniRefreshState.REFRESHING && z10) {
            OooO00o(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.o0OO00O))), 300) << 16, true, Boolean.TRUE);
        } else if (miniRefreshState == MiniRefreshState.LOADING && z10) {
            OooO00o(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.o0OO00O))), 300) << 16, true, true);
        } else if (this.o000oOoO != z10) {
            this.o000oOoO = z10;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.o00oO0o;
            if (oooOO0O instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) {
                if (((com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) oooOO0O).OooO00o(z10)) {
                    this.OoooOOO = true;
                    if (this.o000oOoO && this.Oooo0O0 && this.OooO0O0 > 0 && this.o00oO0o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo && OooO00o(this.OooOooo) && OooO00o(this.OooOooO, this.oo000o)) {
                        this.o00oO0o.getView().setTranslationY(this.OooO0O0);
                    }
                } else {
                    this.OoooOOO = false;
                    StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("Footer:");
                    sbOooO00o.append(this.o00oO0o);
                    sbOooO00o.append(" NoMoreData is not supported.(不支持NoMoreData，请使用[ClassicsFooter]或者[自定义Footer并实现setNoMoreData方法且返回true])");
                    new RuntimeException(sbOooO00o.toString()).printStackTrace();
                }
            }
        }
        return this;
    }

    public void OooO0O0() {
        MiniRefreshState miniRefreshState = this.o0OOO0o;
        MiniRefreshState miniRefreshState2 = MiniRefreshState.TwoLevel;
        if (miniRefreshState == miniRefreshState2) {
            int measuredHeight = getMeasuredHeight();
            float f11 = this.OooOO0o;
            int i11 = f11 > 1.0f ? (int) f11 : (int) (measuredHeight * f11);
            if (this.OooOoO0 > -1000 && this.OooO0O0 > i11 / 2) {
                ValueAnimator valueAnimatorOooO00o = ((OooOo) this.o0ooOoO).OooO00o(i11);
                if (valueAnimatorOooO00o != null) {
                    valueAnimatorOooO00o.setDuration(this.OooO0o0);
                    return;
                }
                return;
            }
            if (this.OooOOOo) {
                OooOo oooOo = (OooOo) this.o0ooOoO;
                OooO00o oooO00o = OooO00o.this;
                if (oooO00o.o0OOO0o == miniRefreshState2) {
                    ((OooOo) oooO00o.o0ooOoO).OooO00o(MiniRefreshState.TwoLevelFinish);
                    if (OooO00o.this.OooO0O0 != 0) {
                        oooOo.OooO00o(0).setDuration(OooO00o.this.OooO0o0);
                        return;
                    } else {
                        oooOo.OooO00o(0, false);
                        OooO00o.this.OooO00o(MiniRefreshState.NONE);
                        return;
                    }
                }
                return;
            }
            return;
        }
        MiniRefreshState miniRefreshState3 = MiniRefreshState.LOADING;
        if (miniRefreshState == miniRefreshState3 || (this.Oooo0O0 && this.o000oOoO && this.OoooOOO && this.OooO0O0 < 0 && OooO00o(this.OooOooo))) {
            int i12 = this.OooO0O0;
            int i13 = -this.Ooooooo;
            if (i12 < i13) {
                ((OooOo) this.o0ooOoO).OooO00o(i13);
                return;
            } else {
                if (i12 > 0) {
                    ((OooOo) this.o0ooOoO).OooO00o(0);
                    return;
                }
                return;
            }
        }
        MiniRefreshState miniRefreshState4 = this.o0OOO0o;
        MiniRefreshState miniRefreshState5 = MiniRefreshState.REFRESHING;
        if (miniRefreshState4 == miniRefreshState5) {
            int i14 = this.OooO0O0;
            int i15 = this.Oooooo;
            if (i14 > i15) {
                ((OooOo) this.o0ooOoO).OooO00o(i15);
                return;
            } else {
                if (i14 < 0) {
                    ((OooOo) this.o0ooOoO).OooO00o(0);
                    return;
                }
                return;
            }
        }
        if (miniRefreshState4 == MiniRefreshState.PULL_DOWN_TO_REFRESH) {
            ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_CANCELED);
            return;
        }
        if (miniRefreshState4 == MiniRefreshState.PULL_UP_TO_LOAD) {
            ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.PULL_UP_CANCELED);
            return;
        }
        if (miniRefreshState4 == MiniRefreshState.RELEASE_TO_REFRESH) {
            ((OooOo) this.o0ooOoO).OooO00o(miniRefreshState5);
            return;
        }
        if (miniRefreshState4 == MiniRefreshState.RELEASE_TO_LOAD) {
            ((OooOo) this.o0ooOoO).OooO00o(miniRefreshState3);
            return;
        }
        if (miniRefreshState4 == MiniRefreshState.RELEASE_TO_TWO_LEVEL) {
            ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.TWO_LEVEL_RELEASED);
            return;
        }
        if (miniRefreshState4 == MiniRefreshState.REFRESH_RELEASED) {
            if (this.o00000O0 == null) {
                ((OooOo) this.o0ooOoO).OooO00o(this.Oooooo);
            }
        } else if (miniRefreshState4 == MiniRefreshState.LOAD_RELEASED) {
            if (this.o00000O0 == null) {
                ((OooOo) this.o0ooOoO).OooO00o(-this.Ooooooo);
            }
        } else {
            if (miniRefreshState4 == MiniRefreshState.LOAD_FINISH || this.OooO0O0 == 0) {
                return;
            }
            ((OooOo) this.o0ooOoO).OooO00o(0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:74:0x00f2  */
    public boolean OooO0O0(float f11) {
        MiniRefreshState miniRefreshState;
        if (f11 == 0.0f) {
            f11 = this.OooOoO0;
        }
        if (Build.VERSION.SDK_INT > 27 && this.o00oO0O != null) {
            getScaleY();
            View view = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o;
            if (getScaleY() == -1.0f && view.getScaleY() == -1.0f) {
                f11 = -f11;
            }
        }
        int i11 = 0;
        if (Math.abs(f11) > this.OooOo0o) {
            int i12 = this.OooO0O0;
            if (i12 * f11 < 0.0f) {
                MiniRefreshState miniRefreshState2 = this.o0OOO0o;
                MiniRefreshState miniRefreshState3 = MiniRefreshState.REFRESHING;
                if (miniRefreshState2 == miniRefreshState3 || miniRefreshState2 == MiniRefreshState.LOADING || (i12 < 0 && this.o000oOoO)) {
                    OooOOOO oooOOOO = new OooOOOO(f11);
                    MiniRefreshState miniRefreshState4 = this.o0OOO0o;
                    if (miniRefreshState4.isFinishing) {
                        oooOOOO = null;
                    } else {
                        if (this.OooO0O0 != 0 && ((!miniRefreshState4.isOpening && (!this.o000oOoO || !this.Oooo0O0 || !this.OoooOOO || !OooO00o(this.OooOooo))) || (((this.o0OOO0o == MiniRefreshState.LOADING || (this.o000oOoO && this.Oooo0O0 && this.OoooOOO && OooO00o(this.OooOooo))) && this.OooO0O0 < (-this.Ooooooo)) || (this.o0OOO0o == miniRefreshState3 && this.OooO0O0 > this.Oooooo)))) {
                            int i13 = this.OooO0O0;
                            float fPow = oooOOOO.OooO0O0;
                            int i14 = i13;
                            while (true) {
                                if (i13 * i14 > 0) {
                                    i11++;
                                    fPow = (float) (Math.pow(0.98f, (i11 * 10) / 10.0f) * ((double) fPow));
                                    float f12 = ((10 * 1.0f) / 1000.0f) * fPow;
                                    if (Math.abs(f12) < 1.0f) {
                                        OooO00o oooO00o = OooO00o.this;
                                        MiniRefreshState miniRefreshState5 = oooO00o.o0OOO0o;
                                        if (!miniRefreshState5.isOpening || ((miniRefreshState5 == (miniRefreshState = MiniRefreshState.REFRESHING) && i14 > oooO00o.Oooooo) || (miniRefreshState5 != miniRefreshState && i14 < (-oooO00o.Ooooooo)))) {
                                            oooOOOO = null;
                                        }
                                    } else {
                                        i14 = (int) (i14 + f12);
                                    }
                                }
                            }
                        }
                        oooOOOO.OooO0OO = AnimationUtils.currentAnimationTimeMillis();
                        OooO00o.this.o0ooOOo.postDelayed(oooOOOO, 10);
                    }
                    this.o00000 = oooOOOO;
                    return true;
                }
                if (miniRefreshState2.isReleaseToOpening) {
                    return true;
                }
            }
            if ((f11 < 0.0f && ((this.Oooo0o0 && (this.OooOooo || this.Oooo0o)) || ((this.o0OOO0o == MiniRefreshState.LOADING && i12 >= 0) || (this.Oooo0oO && OooO00o(this.OooOooo))))) || (f11 > 0.0f && ((this.Oooo0o0 && this.OooOooO) || this.Oooo0o || (this.o0OOO0o == MiniRefreshState.REFRESHING && this.OooO0O0 <= 0)))) {
                this.o000000O = false;
                this.OooOoO.fling(0, 0, 0, (int) (-f11), 0, 0, -2147483647, Integer.MAX_VALUE);
                this.OooOoO.computeScrollOffset();
                invalidate();
            }
        }
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        MiniRefreshState miniRefreshState;
        this.OooOoO.getCurrY();
        if (this.OooOoO.computeScrollOffset()) {
            int finalY = this.OooOoO.getFinalY();
            if ((finalY >= 0 || !((this.OooOooO || this.Oooo0o) && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO0O0())) && (finalY <= 0 || !((this.OooOooo || this.Oooo0o) && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o()))) {
                this.o000000O = true;
                invalidate();
                return;
            }
            if (this.o000000O) {
                float currVelocity = finalY > 0 ? -this.OooOoO.getCurrVelocity() : this.OooOoO.getCurrVelocity();
                if (this.o00000O0 == null) {
                    if (currVelocity > 0.0f && ((miniRefreshState = this.o0OOO0o) == MiniRefreshState.REFRESHING || miniRefreshState == MiniRefreshState.TwoLevel)) {
                        this.o00000 = new OooOOO(currVelocity, this.Oooooo);
                    } else if (currVelocity < 0.0f && (this.o0OOO0o == MiniRefreshState.LOADING || ((this.Oooo0O0 && this.o000oOoO && this.OoooOOO && OooO00o(this.OooOooo)) || (this.Oooo0oO && !this.o000oOoO && OooO00o(this.OooOooo) && this.o0OOO0o != MiniRefreshState.REFRESHING)))) {
                        this.o00000 = new OooOOO(currVelocity, -this.Ooooooo);
                    } else if (this.OooO0O0 == 0 && this.Oooo0o0) {
                        this.o00000 = new OooOOO(currVelocity, 0);
                    }
                }
            }
            this.OooOoO.forceFinished(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MiniRefreshState miniRefreshState;
        char c11;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2;
        int actionMasked = motionEvent.getActionMasked();
        int i11 = 0;
        boolean z10 = actionMasked == 6;
        int actionIndex = z10 ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        float x10 = 0.0f;
        float y10 = 0.0f;
        for (int i12 = 0; i12 < pointerCount; i12++) {
            if (actionIndex != i12) {
                x10 += motionEvent.getX(i12);
                y10 += motionEvent.getY(i12);
            }
        }
        if (z10) {
            pointerCount--;
        }
        float f11 = pointerCount;
        float f12 = x10 / f11;
        float f13 = y10 / f11;
        if ((actionMasked == 6 || actionMasked == 5) && this.OooOOOo) {
            this.OooO = (f13 - this.OooOO0O) + this.OooO;
        }
        this.OooOO0 = f12;
        this.OooOO0O = f13;
        if (this.OooooO0) {
            int i13 = this.Ooooo0o;
            boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            if (actionMasked == 2 && i13 == this.Ooooo0o) {
                int i14 = (int) this.OooOO0;
                int width = getWidth();
                float f14 = this.OooOO0 / (width != 0 ? width : 1);
                if (OooO00o(this.OooOooO) && this.OooO0O0 > 0 && (oooOO0O2 = this.oo000o) != null && oooOO0O2.OooO00o()) {
                    this.oo000o.OooO00o(f14, i14, width);
                } else if (OooO00o(this.OooOooo) && this.OooO0O0 < 0 && (oooOO0O = this.o00oO0o) != null && oooOO0O.OooO00o()) {
                    this.o00oO0o.OooO00o(f14, i14, width);
                }
            }
            return zDispatchTouchEvent;
        }
        if (!isEnabled() || (!this.OooOooO && !this.OooOooo && !this.Oooo0o)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!OooO00o(actionMasked)) {
            MiniRefreshState miniRefreshState2 = this.o0OOO0o;
            if (!miniRefreshState2.isFinishing && ((miniRefreshState2 != (miniRefreshState = MiniRefreshState.LOADING) || !this.OoooOO0) && (miniRefreshState2 != MiniRefreshState.REFRESHING || !this.OoooO))) {
                if (actionMasked == 0) {
                    this.OooOoO0 = 0;
                    this.OooOoOO.addMovement(motionEvent);
                    this.OooOoO.forceFinished(true);
                    this.OooO0oo = f12;
                    this.OooO = f13;
                    this.OooO0OO = 0;
                    this.OooO0Oo = this.OooO0O0;
                    this.OooOOOo = false;
                    this.OooOOo = false;
                    this.OooOOo0 = super.dispatchTouchEvent(motionEvent);
                    if (this.o0OOO0o == MiniRefreshState.TwoLevel) {
                        int measuredHeight = getMeasuredHeight();
                        float f15 = this.OooOOO0;
                        if (f15 <= 1.0f) {
                            if (this.OooO < (1.0f - f15) * measuredHeight) {
                                this.OooOOOO = 'h';
                                return this.OooOOo0;
                            }
                        }
                        if (f15 > 1.0f && this.OooO < measuredHeight - f15) {
                            this.OooOOOO = 'h';
                            return this.OooOOo0;
                        }
                    }
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o = this.o00oO0O;
                    if (oooO0o != null) {
                        com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o;
                        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
                        pointF.offset(-oooO00o.OooO00o.getLeft(), -oooO00o.OooO00o.getTop());
                        View view = oooO00o.OooO0OO;
                        View view2 = oooO00o.OooO00o;
                        if (view != view2) {
                            oooO00o.OooO0OO = oooO00o.OooO00o(view2, pointF, view);
                        }
                        if (oooO00o.OooO0OO == oooO00o.OooO00o) {
                            oooO00o.OooO.OooO00o = null;
                        } else {
                            oooO00o.OooO.OooO00o = pointF;
                        }
                    }
                    return true;
                }
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        float f16 = f12 - this.OooO0oo;
                        float f17 = f13 - this.OooO;
                        this.OooOoOO.addMovement(motionEvent);
                        if (!this.OooOOOo && !this.OooOOo && (c11 = this.OooOOOO) != 'h' && this.o00oO0O != null) {
                            if (c11 == 'v' || (Math.abs(f17) >= this.OooO00o && Math.abs(f16) < Math.abs(f17))) {
                                this.OooOOOO = 'v';
                                if (f17 > 0.0f && (this.OooO0O0 < 0 || ((this.Oooo0o || this.OooOooO) && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO0O0()))) {
                                    this.OooOOOo = true;
                                    this.OooO = f13 - this.OooO00o;
                                } else if (f17 < 0.0f && (this.OooO0O0 > 0 || ((this.Oooo0o || this.OooOooo) && ((this.o0OOO0o == miniRefreshState && this.o000000) || ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o())))) {
                                    this.OooOOOo = true;
                                    this.OooO = this.OooO00o + f13;
                                }
                                if (this.OooOOOo) {
                                    f17 = f13 - this.OooO;
                                    if (this.OooOOo0) {
                                        motionEvent.setAction(3);
                                        super.dispatchTouchEvent(motionEvent);
                                    }
                                    com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 oooOOO0 = this.o0ooOoO;
                                    int i15 = this.OooO0O0;
                                    ((OooOo) oooOOO0).OooO00o((i15 > 0 || (i15 == 0 && f17 > 0.0f)) ? MiniRefreshState.PULL_DOWN_TO_REFRESH : MiniRefreshState.PULL_UP_TO_LOAD);
                                    ViewParent parent = getParent();
                                    if (parent instanceof ViewGroup) {
                                        ((ViewGroup) parent).requestDisallowInterceptTouchEvent(true);
                                    }
                                }
                            } else if (Math.abs(f16) >= this.OooO00o && Math.abs(f16) > Math.abs(f17) && this.OooOOOO != 'v') {
                                this.OooOOOO = 'h';
                            }
                        }
                        if (this.OooOOOo) {
                            int i16 = ((int) f17) + this.OooO0Oo;
                            MiniRefreshState miniRefreshState3 = this.o0Oo0oo;
                            if ((miniRefreshState3.isHeader && (i16 < 0 || this.OooO0OO < 0)) || (miniRefreshState3.isFooter && (i16 > 0 || this.OooO0OO > 0))) {
                                this.OooO0OO = i16;
                                long eventTime = motionEvent.getEventTime();
                                if (this.o000000o == null) {
                                    MotionEvent motionEventObtain = MotionEvent.obtain(eventTime, eventTime, 0, this.OooO0oo + f16, this.OooO, 0);
                                    this.o000000o = motionEventObtain;
                                    super.dispatchTouchEvent(motionEventObtain);
                                }
                                MotionEvent motionEventObtain2 = MotionEvent.obtain(eventTime, eventTime, 2, this.OooO0oo + f16, this.OooO + i16, 0);
                                super.dispatchTouchEvent(motionEventObtain2);
                                if (this.o000000 && f17 > this.OooO00o && this.OooO0O0 < 0) {
                                    this.o000000 = false;
                                }
                                if (i16 > 0 && ((this.Oooo0o || this.OooOooO) && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO0O0())) {
                                    this.OooOO0O = f13;
                                    this.OooO = f13;
                                    this.OooO0Oo = 0;
                                    ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_TO_REFRESH);
                                } else if (i16 >= 0 || !((this.Oooo0o || this.OooOooo) && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o())) {
                                    i11 = i16;
                                } else {
                                    this.OooOO0O = f13;
                                    this.OooO = f13;
                                    this.OooO0Oo = 0;
                                    ((OooOo) this.o0ooOoO).OooO00o(MiniRefreshState.PULL_UP_TO_LOAD);
                                }
                                MiniRefreshState miniRefreshState4 = this.o0Oo0oo;
                                if ((miniRefreshState4.isHeader && i11 < 0) || (miniRefreshState4.isFooter && i11 > 0)) {
                                    if (this.OooO0O0 != 0) {
                                        OooO00o(0.0f);
                                    }
                                    return true;
                                }
                                if (this.o000000o != null) {
                                    this.o000000o = null;
                                    motionEventObtain2.setAction(3);
                                    super.dispatchTouchEvent(motionEventObtain2);
                                }
                                motionEventObtain2.recycle();
                                i16 = i11;
                            }
                            OooO00o(i16);
                            return true;
                        }
                        if (this.o000000 && f17 > this.OooO00o && this.OooO0O0 < 0) {
                            this.o000000 = false;
                        }
                    } else if (actionMasked == 3) {
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
                this.OooOoOO.addMovement(motionEvent);
                this.OooOoOO.computeCurrentVelocity(1000, this.OooOo);
                this.OooOoO0 = (int) this.OooOoOO.getYVelocity();
                OooO0O0(0.0f);
                this.OooOoOO.clear();
                this.OooOOOO = 'n';
                MotionEvent motionEvent2 = this.o000000o;
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                    this.o000000o = null;
                    long eventTime2 = motionEvent.getEventTime();
                    MotionEvent motionEventObtain3 = MotionEvent.obtain(eventTime2, eventTime2, actionMasked, this.OooO0oo, f13, 0);
                    super.dispatchTouchEvent(motionEventObtain3);
                    motionEventObtain3.recycle();
                }
                OooO0O0();
                if (this.OooOOOo) {
                    this.OooOOOo = false;
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j11) {
        Paint paint;
        Paint paint2;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o = this.o00oO0O;
        View view2 = oooO0o != null ? ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o).OooO00o : null;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
        if (oooOO0O != null && oooOO0O.getView() == view) {
            if (!OooO00o(this.OooOooO) || (!this.Oooo0OO && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int iMax = Math.max(view2.getPaddingTop() + view2.getTop() + this.OooO0O0, view.getTop());
                int i11 = this.oo0o0Oo;
                if (i11 != 0 && (paint2 = this.o0ooOO0) != null) {
                    paint2.setColor(i11);
                    if (this.oo000o.getSpinnerStyle().OooO0OO) {
                        iMax = view.getBottom();
                    } else if (this.oo000o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo) {
                        iMax = view.getBottom() + this.OooO0O0;
                    }
                    canvas.drawRect(0.0f, view.getTop(), getWidth(), iMax, this.o0ooOO0);
                }
                if ((this.Oooo000 && this.oo000o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0) || this.oo000o.getSpinnerStyle().OooO0OO) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), iMax);
                    boolean zDrawChild = super.drawChild(canvas, view, j11);
                    canvas.restore();
                    return zDrawChild;
                }
            }
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.o00oO0o;
        if (oooOO0O2 != null && oooOO0O2.getView() == view) {
            if (!OooO00o(this.OooOooo) || (!this.Oooo0OO && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int iMin = Math.min((view2.getBottom() - view2.getPaddingBottom()) + this.OooO0O0, view.getBottom());
                int i12 = this.o0O0O00;
                if (i12 != 0 && (paint = this.o0ooOO0) != null) {
                    paint.setColor(i12);
                    if (this.o00oO0o.getSpinnerStyle().OooO0OO) {
                        iMin = view.getTop();
                    } else if (this.o00oO0o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo) {
                        iMin = view.getTop() + this.OooO0O0;
                    }
                    canvas.drawRect(0.0f, iMin, getWidth(), view.getBottom(), this.o0ooOO0);
                }
                if ((this.Oooo00O && this.o00oO0o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0) || this.o00oO0o.getSpinnerStyle().OooO0OO) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), iMin, view.getRight(), view.getBottom());
                    boolean zDrawChild2 = super.drawChild(canvas, view, j11);
                    canvas.restore();
                    return zDrawChild2;
                }
            }
        }
        return super.drawChild(canvas, view, j11);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new OooOo00(getContext(), attributeSet);
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO
    @NonNull
    public ViewGroup getLayout() {
        return this;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.Oooooo0.getNestedScrollAxes();
    }

    @Nullable
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO getRefreshFooter() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.o00oO0o;
        if (oooOO0O instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) {
            return (com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) oooOO0O;
        }
        return null;
    }

    @Nullable
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 getRefreshHeader() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
        if (oooOO0O instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0) {
            return (com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0) oooOO0O;
        }
        return null;
    }

    @NonNull
    public MiniRefreshState getState() {
        return this.o0OOO0o;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.OoooO0O && (this.Oooo0o || this.OooOooO || this.OooOooo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O;
        super.onAttachedToWindow();
        boolean z10 = true;
        this.o000OOo = true;
        if (!isInEditMode()) {
            if (this.oo000o == null) {
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0O0 oooO0O0 = o00000OO;
                if (oooO0O0 != null) {
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 oooOO0OooO00o = oooO0O0.OooO00o(getContext(), this);
                    if (oooOO0OooO00o == null) {
                        throw new RuntimeException("DefaultRefreshHeaderCreator can not return null");
                    }
                    OooO00o(oooOO0OooO00o);
                } else {
                    OooO00o(new com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO00o(getContext(), null));
                }
            }
            if (this.o00oO0o == null) {
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO00o oooO00o = o00000O;
                if (oooO00o != null) {
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO oooOOooO00o = oooO00o.OooO00o(getContext(), this);
                    if (oooOOooO00o == null) {
                        throw new RuntimeException("DefaultRefreshFooterCreator can not return null");
                    }
                    OooO00o(oooOOooO00o);
                } else {
                    boolean z11 = this.OooOooo;
                    OooO00o(new com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO00o(getContext(), null));
                    this.OooOooo = z11;
                }
            } else {
                if (!this.OooOooo && this.OoooOOo) {
                    z10 = false;
                }
                this.OooOooo = z10;
            }
            if (this.o00oO0O == null) {
                int childCount = getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.oo000o;
                    if ((oooOO0O2 == null || childAt != oooOO0O2.getView()) && ((oooOO0O = this.o00oO0o) == null || childAt != oooOO0O.getView())) {
                        this.o00oO0O = new com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o(childAt);
                    }
                }
            }
            if (this.o00oO0O == null) {
                int iOooO00o = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(20.0f);
                TextView textView = new TextView(getContext());
                textView.setTextColor(-39424);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setText(R.string.srl_content_empty);
                ViewExtKt.removeSelf(textView);
                addView(textView, 0, new OooOo00(-1, -1));
                com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o2 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o(textView);
                this.o00oO0O = oooO00o2;
                oooO00o2.OooO00o.setPadding(iOooO00o, iOooO00o, iOooO00o, iOooO00o);
            }
            View viewFindViewById = findViewById(this.OooOOoo);
            View viewFindViewById2 = findViewById(this.OooOo00);
            com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o3 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O;
            oooO00o3.getClass();
            oooO00o3.OooO.OooO0O0 = null;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o4 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O;
            oooO00o4.OooO.OooO0OO = this.OoooO0;
            oooO00o4.OooO00o(this.o0ooOoO, viewFindViewById, viewFindViewById2);
            if (this.OooO0O0 != 0) {
                OooO00o(MiniRefreshState.NONE);
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o = this.o00oO0O;
                this.OooO0O0 = 0;
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o).OooO00o(0, this.OooOo0, this.OooOo0O);
            }
        }
        int[] iArr = this.OooOoo;
        if (iArr != null) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O3 = this.oo000o;
            if (oooOO0O3 != null) {
                oooOO0O3.setPrimaryColors(iArr);
            }
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O4 = this.o00oO0o;
            if (oooOO0O4 != null) {
                oooOO0O4.setPrimaryColors(this.OooOoo);
            }
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o2 = this.o00oO0O;
        if (oooO0o2 != null) {
            bringChildToFront(((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o2).OooO00o);
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O5 = this.oo000o;
        if (oooOO0O5 != null && oooOO0O5.getSpinnerStyle().OooO0O0) {
            bringChildToFront(this.oo000o.getView());
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O6 = this.o00oO0o;
        if (oooOO0O6 == null || !oooOO0O6.getSpinnerStyle().OooO0O0) {
            return;
        }
        bringChildToFront(this.o00oO0o.getView());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.o000OOo = false;
        this.OoooOOo = true;
        this.o00000 = null;
        ValueAnimator valueAnimator = this.o00000O0;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.o00000O0.removeAllUpdateListeners();
            this.o00000O0.setDuration(0L);
            this.o00000O0.cancel();
            this.o00000O0 = null;
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
        if (oooOO0O != null && this.o0OOO0o == MiniRefreshState.REFRESHING) {
            oooOO0O.OooO00o(this, false);
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.o00oO0o;
        if (oooOO0O2 != null && this.o0OOO0o == MiniRefreshState.LOADING) {
            oooOO0O2.OooO00o(this, false);
        }
        if (this.OooO0O0 != 0) {
            ((OooOo) this.o0ooOoO).OooO00o(0, true);
        }
        MiniRefreshState miniRefreshState = this.o0OOO0o;
        MiniRefreshState miniRefreshState2 = MiniRefreshState.NONE;
        if (miniRefreshState != miniRefreshState2) {
            OooO00o(miniRefreshState2);
        }
        Handler handler = this.o0ooOOo;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.o000000 = false;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public void onFinishInflate() {
        int i11;
        int i12;
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount > 3) {
            throw new RuntimeException("最多只支持3个子View，Most only support three sub view");
        }
        int i13 = -1;
        int i14 = 0;
        char c11 = 0;
        while (true) {
            if (i14 >= childCount) {
                break;
            }
            View childAt = getChildAt(i14);
            if (com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(childAt) && (c11 < 2 || i14 == 1)) {
                i13 = i14;
                c11 = 2;
            } else if (!(childAt instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O) && c11 < 1) {
                c11 = i14 > 0 ? (char) 1 : (char) 0;
                i13 = i14;
            }
            i14++;
        }
        if (i13 >= 0) {
            this.o00oO0O = new com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o(getChildAt(i13));
            if (i13 == 1) {
                i12 = childCount != 3 ? -1 : 2;
                i11 = 0;
            } else if (childCount == 2) {
                i11 = -1;
                i12 = 1;
            } else {
                i11 = -1;
                i12 = -1;
            }
        } else {
            i11 = -1;
            i12 = -1;
        }
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt2 = getChildAt(i15);
            if (i15 == i11 || (i15 != i12 && i11 == -1 && this.oo000o == null && (childAt2 instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0))) {
                this.oo000o = childAt2 instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 ? (com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0) childAt2 : new com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO0OO(childAt2);
            } else if (i15 == i12 || (i12 == -1 && (childAt2 instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO))) {
                this.OooOooo = this.OooOooo || !this.OoooOOo;
                this.o00oO0o = childAt2 instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO ? (com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) childAt2 : new com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO0O0(childAt2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int iMax;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8 && childAt.getTag(R.string.srl_component_falsify) != childAt) {
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o = this.o00oO0O;
                if (oooO0o != null && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o).OooO00o == childAt) {
                    boolean z11 = isInEditMode() && this.Oooo0OO && OooO00o(this.OooOooO) && this.oo000o != null;
                    View view = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o;
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : o00000o0;
                    int i16 = marginLayoutParams.leftMargin + paddingLeft;
                    int i17 = marginLayoutParams.topMargin + paddingTop;
                    int measuredWidth = view.getMeasuredWidth() + i16;
                    int measuredHeight = view.getMeasuredHeight() + i17;
                    if (z11 && OooO00o(this.Oooo00o, this.oo000o)) {
                        int i18 = this.Oooooo;
                        i17 += i18;
                        measuredHeight += i18;
                    }
                    view.layout(i16, i17, measuredWidth, measuredHeight);
                }
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
                if (oooOO0O != null && oooOO0O.getView() == childAt) {
                    boolean z12 = isInEditMode() && this.Oooo0OO && OooO00o(this.OooOooO);
                    View view2 = this.oo000o.getView();
                    ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : o00000o0;
                    int i19 = marginLayoutParams2.leftMargin;
                    int i20 = marginLayoutParams2.topMargin + this.ooOO;
                    int measuredWidth2 = view2.getMeasuredWidth() + i19;
                    int measuredHeight2 = view2.getMeasuredHeight() + i20;
                    if (!z12 && this.oo000o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo) {
                        int i21 = this.Oooooo;
                        i20 -= i21;
                        measuredHeight2 -= i21;
                    }
                    view2.layout(i19, i20, measuredWidth2, measuredHeight2);
                }
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.o00oO0o;
                if (oooOO0O2 != null && oooOO0O2.getView() == childAt) {
                    boolean z13 = isInEditMode() && this.Oooo0OO && OooO00o(this.OooOooo);
                    View view3 = this.o00oO0o.getView();
                    ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : o00000o0;
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 spinnerStyle = this.o00oO0o.getSpinnerStyle();
                    int i22 = marginLayoutParams3.leftMargin;
                    int measuredHeight3 = (getMeasuredHeight() + marginLayoutParams3.topMargin) - this.o00O0O;
                    if (this.o000oOoO && this.OoooOOO && this.Oooo0O0 && this.o00oO0O != null && this.o00oO0o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo && OooO00o(this.OooOooo)) {
                        View view4 = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO00o;
                        ViewGroup.LayoutParams layoutParams4 = view4.getLayoutParams();
                        measuredHeight3 = view4.getMeasuredHeight() + paddingTop + paddingTop + (layoutParams4 instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin : 0);
                    }
                    if (spinnerStyle == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO) {
                        measuredHeight3 = marginLayoutParams3.topMargin - this.o00O0O;
                    } else {
                        if (z13 || spinnerStyle == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o || spinnerStyle == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0) {
                            iMax = this.Ooooooo;
                        } else if (spinnerStyle.OooO0OO && this.OooO0O0 < 0) {
                            iMax = Math.max(OooO00o(this.OooOooo) ? -this.OooO0O0 : 0, 0);
                        }
                        measuredHeight3 -= iMax;
                    }
                    view3.layout(i22, measuredHeight3, view3.getMeasuredWidth() + i22, view3.getMeasuredHeight() + measuredHeight3);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0211  */
    /* JADX WARN: Code duplicated, block: B:114:0x022a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x022c  */
    /* JADX WARN: Code duplicated, block: B:116:0x0235  */
    /* JADX WARN: Code duplicated, block: B:118:0x0247  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cd  */
    @Override // android.view.View
    public void onMeasure(int i11, int i12) {
        int i13;
        int i14;
        View view;
        int i15;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o;
        boolean z10;
        int iMax;
        int i16;
        int i17;
        boolean z11 = isInEditMode() && this.Oooo0OO;
        int childCount = getChildCount();
        int measuredHeight = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8 && childAt.getTag(R.string.srl_component_falsify) != childAt) {
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
                if (oooOO0O != null && oooOO0O.getView() == childAt) {
                    View view2 = this.oo000o.getView();
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : o00000o0;
                    int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, layoutParams.width);
                    int i19 = this.Oooooo;
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o2 = this.OoooooO;
                    if (oooO00o2.OooO00o >= 6) {
                        iMax = i19;
                    } else {
                        int i20 = layoutParams.height;
                        if (i20 > 0) {
                            iMax = i20 + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
                            com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o3 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0o0;
                            if (oooO00o2.OooO00o(oooO00o3)) {
                                this.Oooooo = layoutParams.height + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
                                this.OoooooO = oooO00o3;
                            }
                        } else if (i20 != -2 || (this.oo000o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO && this.OoooooO.OooO0O0)) {
                            iMax = i19;
                        } else {
                            int iMax2 = Math.max((View.MeasureSpec.getSize(i12) - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, 0);
                            view2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(iMax2, Integer.MIN_VALUE));
                            int measuredHeight2 = view2.getMeasuredHeight();
                            if (measuredHeight2 > 0) {
                                if (measuredHeight2 != iMax2) {
                                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o4 = this.OoooooO;
                                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o5 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0Oo;
                                    if (oooO00o4.OooO00o(oooO00o5)) {
                                        this.Oooooo = measuredHeight2 + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
                                        this.OoooooO = oooO00o5;
                                    }
                                }
                                iMax = -1;
                            } else {
                                iMax = i19;
                            }
                        }
                    }
                    if (this.oo000o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO) {
                        iMax = View.MeasureSpec.getSize(i12);
                        i17 = -1;
                        i16 = 0;
                    } else {
                        if (!this.oo000o.getSpinnerStyle().OooO0OO || z11) {
                            i16 = 0;
                        } else {
                            i16 = 0;
                            iMax = Math.max(0, OooO00o(this.OooOooO) ? this.OooO0O0 : 0);
                        }
                        i17 = -1;
                    }
                    if (iMax != i17) {
                        view2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(Math.max((iMax - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, i16), 1073741824));
                    }
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o6 = this.OoooooO;
                    boolean z12 = oooO00o6.OooO0O0;
                    if (!z12) {
                        if (!z12) {
                            oooO00o6 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0oo[oooO00o6.OooO00o + 1];
                        }
                        this.OoooooO = oooO00o6;
                        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O2 = this.oo000o;
                        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 oooOOO0 = this.o0ooOoO;
                        int i21 = this.Oooooo;
                        oooOO0O2.OooO00o(oooOOO0, i21, (int) (this.o00Oo0 * i21));
                    }
                    if (z11 && OooO00o(this.OooOooO)) {
                        measuredHeight += view2.getMeasuredHeight();
                    }
                }
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O3 = this.o00oO0o;
                if (oooOO0O3 == null || oooOO0O3.getView() != childAt) {
                    i13 = 0;
                    i14 = 1;
                } else {
                    View view3 = this.o00oO0o.getView();
                    ViewGroup.LayoutParams layoutParams2 = view3.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : o00000o0;
                    int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin, layoutParams2.width);
                    int iMax3 = this.Ooooooo;
                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o7 = this.o0OoOo0;
                    if (oooO00o7.OooO00o < 6) {
                        int i22 = layoutParams2.height;
                        if (i22 > 0) {
                            iMax3 = marginLayoutParams2.bottomMargin + i22 + marginLayoutParams2.topMargin;
                            com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o8 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0o0;
                            if (oooO00o7.OooO00o(oooO00o8)) {
                                this.Ooooooo = layoutParams2.height + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                                this.o0OoOo0 = oooO00o8;
                            }
                        } else if (i22 == -2 && (this.o00oO0o.getSpinnerStyle() != com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO || !this.o0OoOo0.OooO0O0)) {
                            int iMax4 = Math.max((View.MeasureSpec.getSize(i12) - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, 0);
                            view3.measure(childMeasureSpec2, View.MeasureSpec.makeMeasureSpec(iMax4, Integer.MIN_VALUE));
                            int measuredHeight3 = view3.getMeasuredHeight();
                            if (measuredHeight3 > 0) {
                                if (measuredHeight3 != iMax4) {
                                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o9 = this.o0OoOo0;
                                    com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o oooO00o10 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0Oo;
                                    if (oooO00o9.OooO00o(oooO00o10)) {
                                        this.Ooooooo = measuredHeight3 + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                                        this.o0OoOo0 = oooO00o10;
                                    }
                                }
                                iMax3 = -1;
                            }
                        }
                    }
                    if (this.o00oO0o.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO) {
                        iMax3 = View.MeasureSpec.getSize(i12);
                    } else {
                        if (this.o00oO0o.getSpinnerStyle().OooO0OO && !z11) {
                            if (OooO00o(this.OooOooo)) {
                                i15 = -this.OooO0O0;
                                i13 = 0;
                            } else {
                                i13 = 0;
                                i15 = 0;
                            }
                            iMax3 = Math.max(i13, i15);
                        }
                        if (iMax3 != -1) {
                            view3.measure(childMeasureSpec2, View.MeasureSpec.makeMeasureSpec(Math.max((iMax3 - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, i13), 1073741824));
                        }
                        oooO00o = this.o0OoOo0;
                        z10 = oooO00o.OooO0O0;
                        if (z10) {
                            i14 = 1;
                        } else {
                            if (z10) {
                                i14 = 1;
                            } else {
                                i14 = 1;
                                oooO00o = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0oo[oooO00o.OooO00o + 1];
                            }
                            this.o0OoOo0 = oooO00o;
                            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O4 = this.o00oO0o;
                            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 oooOOO1 = this.o0ooOoO;
                            int i23 = this.Ooooooo;
                            oooOO0O4.OooO00o(oooOOO1, i23, (int) (this.o00Ooo * i23));
                        }
                        if (z11 && OooO00o(this.OooOooo)) {
                            measuredHeight = view3.getMeasuredHeight() + measuredHeight;
                        }
                    }
                    i13 = 0;
                    if (iMax3 != -1) {
                        view3.measure(childMeasureSpec2, View.MeasureSpec.makeMeasureSpec(Math.max((iMax3 - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, i13), 1073741824));
                    }
                    oooO00o = this.o0OoOo0;
                    z10 = oooO00o.OooO0O0;
                    if (z10) {
                        if (z10) {
                            i14 = 1;
                            oooO00o = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO00o.OooO0oo[oooO00o.OooO00o + 1];
                        } else {
                            i14 = 1;
                        }
                        this.o0OoOo0 = oooO00o;
                        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O5 = this.o00oO0o;
                        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0 oooOOO2 = this.o0ooOoO;
                        int i24 = this.Ooooooo;
                        oooOO0O5.OooO00o(oooOOO2, i24, (int) (this.o00Ooo * i24));
                    } else {
                        i14 = 1;
                    }
                    if (z11) {
                        measuredHeight = view3.getMeasuredHeight() + measuredHeight;
                    }
                }
                com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o = this.o00oO0O;
                if (oooO0o != null && (view = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o).OooO00o) == childAt) {
                    ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : o00000o0;
                    view.measure(ViewGroup.getChildMeasureSpec(i11, getPaddingRight() + getPaddingLeft() + marginLayoutParams3.leftMargin + marginLayoutParams3.rightMargin, layoutParams3.width), ViewGroup.getChildMeasureSpec(i12, getPaddingBottom() + getPaddingTop() + marginLayoutParams3.topMargin + marginLayoutParams3.bottomMargin + ((!z11 || ((this.oo000o == null || !OooO00o(this.OooOooO) || !OooO00o(this.Oooo00o, this.oo000o)) ? i13 : i14) == 0) ? i13 : this.Oooooo) + ((!z11 || ((this.o00oO0o == null || !OooO00o(this.OooOooo) || !OooO00o(this.Oooo0, this.o00oO0o)) ? i13 : i14) == 0) ? i13 : this.Ooooooo), layoutParams3.height));
                    measuredHeight += view.getMeasuredHeight();
                }
            }
        }
        setMeasuredDimension(View.resolveSize(getSuggestedMinimumWidth(), i11), View.resolveSize(measuredHeight, i12));
        this.OooOO0 = getMeasuredWidth() / 2.0f;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f11, float f12, boolean z10) {
        return this.OooooOo.dispatchNestedFling(f11, f12, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f11, float f12) {
        return (this.o000000 && f12 > 0.0f) || OooO0O0(-f12) || this.OooooOo.dispatchNestedPreFling(f11, f12);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i11, int i12, @NonNull int[] iArr) {
        int i13 = this.Ooooo0o;
        int i14 = 0;
        if (i12 * i13 > 0) {
            if (Math.abs(i12) > Math.abs(this.Ooooo0o)) {
                int i15 = this.Ooooo0o;
                this.Ooooo0o = 0;
                i14 = i15;
            } else {
                this.Ooooo0o -= i12;
                i14 = i12;
            }
            OooO00o(this.Ooooo0o);
        } else if (i12 > 0 && this.o000000) {
            int i16 = i13 - i12;
            this.Ooooo0o = i16;
            OooO00o(i16);
            i14 = i12;
        }
        this.OooooOo.dispatchNestedPreScroll(i11, i12 - i14, iArr, null);
        iArr[1] = iArr[1] + i14;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i11, int i12, int i13, int i14) {
        boolean zDispatchNestedScroll = this.OooooOo.dispatchNestedScroll(i11, i12, i13, i14, this.OooooOO);
        int i15 = i14 + this.OooooOO[1];
        if ((i15 < 0 && (this.OooOooO || this.Oooo0o)) || (i15 > 0 && (this.OooOooo || this.Oooo0o))) {
            MiniRefreshState miniRefreshState = this.o0Oo0oo;
            if (miniRefreshState == MiniRefreshState.NONE || miniRefreshState.isOpening) {
                ((OooOo) this.o0ooOoO).OooO00o(i15 > 0 ? MiniRefreshState.PULL_UP_TO_LOAD : MiniRefreshState.PULL_DOWN_TO_REFRESH);
                if (!zDispatchNestedScroll) {
                    ViewParent parent = getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).requestDisallowInterceptTouchEvent(true);
                    }
                }
            }
            int i16 = this.Ooooo0o - i15;
            this.Ooooo0o = i16;
            OooO00o(i16);
        }
        if (!this.o000000 || i12 >= 0) {
            return;
        }
        this.o000000 = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i11) {
        this.Oooooo0.onNestedScrollAccepted(view, view2, i11);
        this.OooooOo.startNestedScroll(i11 & 2);
        this.Ooooo0o = this.OooO0O0;
        this.OooooO0 = true;
        OooO00o(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i11) {
        return isEnabled() && isNestedScrollingEnabled() && (i11 & 2) != 0 && (this.Oooo0o || this.OooOooO || this.OooOooo);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        this.Oooooo0.onStopNestedScroll(view);
        this.OooooO0 = false;
        this.Ooooo0o = 0;
        OooO0O0();
        this.OooooOo.stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (ViewCompat.isNestedScrollingEnabled(((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) this.o00oO0O).OooO0OO)) {
            this.OooOOo = z10;
            super.requestDisallowInterceptTouchEvent(z10);
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.OoooO0O = z10;
        this.OooooOo.setNestedScrollingEnabled(z10);
    }

    public void setStateDirectLoading(boolean z10) {
        MiniRefreshState miniRefreshState = this.o0OOO0o;
        MiniRefreshState miniRefreshState2 = MiniRefreshState.LOADING;
        if (miniRefreshState != miniRefreshState2) {
            this.o0OO00O = System.currentTimeMillis();
            this.o000000 = true;
            OooO00o(miniRefreshState2);
            com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0O0 oooO0O0 = this.Ooooo00;
            if (oooO0O0 == null) {
                OooO00o(2000, true, false);
            } else if (z10) {
                oooO0O0.OooO00o(this);
            }
            com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.o00oO0o;
            if (oooOO0O != null) {
                int i11 = this.Ooooooo;
                oooOO0O.OooO0O0(this, i11, (int) (this.o00Ooo * i11));
            }
        }
    }

    public void setStateLoading(boolean z10) {
        OooO0O0 oooO0O0 = new OooO0O0(z10);
        OooO00o(MiniRefreshState.LOAD_RELEASED);
        ValueAnimator valueAnimatorOooO00o = ((OooOo) this.o0ooOoO).OooO00o(-this.Ooooooo);
        if (valueAnimatorOooO00o != null) {
            valueAnimatorOooO00o.addListener(oooO0O0);
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.o00oO0o;
        if (oooOO0O != null) {
            int i11 = this.Ooooooo;
            oooOO0O.OooO00o(this, i11, (int) (this.o00Ooo * i11));
        }
        if (valueAnimatorOooO00o == null) {
            oooO0O0.onAnimationEnd(null);
        }
    }

    public void setStateRefreshing(boolean z10) {
        OooO0OO oooO0OO = new OooO0OO(z10);
        OooO00o(MiniRefreshState.REFRESH_RELEASED);
        ValueAnimator valueAnimatorOooO00o = ((OooOo) this.o0ooOoO).OooO00o(this.Oooooo);
        if (valueAnimatorOooO00o != null) {
            valueAnimatorOooO00o.addListener(oooO0OO);
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O oooOO0O = this.oo000o;
        if (oooOO0O != null) {
            int i11 = this.Oooooo;
            oooOO0O.OooO00o(this, i11, (int) (this.o00Oo0 * i11));
        }
        if (valueAnimatorOooO00o == null) {
            oooO0OO.onAnimationEnd(null);
        }
    }

    public void setViceState(MiniRefreshState miniRefreshState) {
        MiniRefreshState miniRefreshState2 = this.o0OOO0o;
        if (miniRefreshState2.isDragging && miniRefreshState2.isHeader != miniRefreshState.isHeader) {
            OooO00o(MiniRefreshState.NONE);
        }
        if (this.o0Oo0oo != miniRefreshState) {
            this.o0Oo0oo = miniRefreshState;
        }
    }
}
