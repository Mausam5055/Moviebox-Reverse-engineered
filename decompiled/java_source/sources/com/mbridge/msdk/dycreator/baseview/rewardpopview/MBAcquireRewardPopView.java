package com.mbridge.msdk.dycreator.baseview.rewardpopview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class MBAcquireRewardPopView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AcquireRewardPopViewParameters f34683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AnimationSet f34684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f34685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f34686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f34687f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f34688g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34689h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f34690i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f34691j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f34692k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final View.OnClickListener f34693l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Runnable f34694m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Runnable f34695n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View.OnTouchListener f34696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final View.OnClickListener f34697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final View.OnClickListener f34698q;

    public MBAcquireRewardPopView(Context context) {
        super(context);
        this.f34682a = "MBAcquireRewardPopView";
        this.f34685d = 0.0f;
        this.f34686e = 0.0f;
        this.f34687f = 0.0f;
        this.f34688g = 0.0f;
        this.f34693l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean zContains = MBAcquireRewardPopView.this.f34683b.rightAnswerList.contains(str);
                View rightAnswerView = zContains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    if (zContains) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
            }
        };
        this.f34694m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f34689h > 0) {
                    MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f34694m, 1000L);
                } else {
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f34690i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                }
            }
        };
        this.f34695n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f34690i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f34696o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    MBAcquireRewardPopView.this.f34685d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f34686e = motionEvent.getY();
                } else if (action != 1) {
                    if (action == 2) {
                        MBAcquireRewardPopView.this.f34687f = motionEvent.getX();
                        MBAcquireRewardPopView.this.f34688g = motionEvent.getY();
                    }
                } else if (MBAcquireRewardPopView.this.f34687f <= MBAcquireRewardPopView.this.f34685d || Math.abs(MBAcquireRewardPopView.this.f34687f - MBAcquireRewardPopView.this.f34685d) <= 50.0f || Math.abs(MBAcquireRewardPopView.this.f34688g - MBAcquireRewardPopView.this.f34686e) >= 100.0f) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                } else {
                    if (MBAcquireRewardPopView.this.f34691j) {
                        return false;
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                    MBAcquireRewardPopView.this.f34691j = true;
                    View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                    View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                    if (childAt != null) {
                        MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                    }
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
                }
                return false;
            }
        };
        this.f34697p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                }
            }
        };
        this.f34698q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f34690i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    public MBAcquireRewardPopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34682a = "MBAcquireRewardPopView";
        this.f34685d = 0.0f;
        this.f34686e = 0.0f;
        this.f34687f = 0.0f;
        this.f34688g = 0.0f;
        this.f34693l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean zContains = MBAcquireRewardPopView.this.f34683b.rightAnswerList.contains(str);
                View rightAnswerView = zContains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    if (zContains) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
            }
        };
        this.f34694m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f34689h > 0) {
                    MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f34694m, 1000L);
                } else {
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f34690i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                }
            }
        };
        this.f34695n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f34690i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f34696o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    MBAcquireRewardPopView.this.f34685d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f34686e = motionEvent.getY();
                } else if (action != 1) {
                    if (action == 2) {
                        MBAcquireRewardPopView.this.f34687f = motionEvent.getX();
                        MBAcquireRewardPopView.this.f34688g = motionEvent.getY();
                    }
                } else if (MBAcquireRewardPopView.this.f34687f <= MBAcquireRewardPopView.this.f34685d || Math.abs(MBAcquireRewardPopView.this.f34687f - MBAcquireRewardPopView.this.f34685d) <= 50.0f || Math.abs(MBAcquireRewardPopView.this.f34688g - MBAcquireRewardPopView.this.f34686e) >= 100.0f) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                } else {
                    if (MBAcquireRewardPopView.this.f34691j) {
                        return false;
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                    MBAcquireRewardPopView.this.f34691j = true;
                    View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                    View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                    if (childAt != null) {
                        MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                    }
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
                }
                return false;
            }
        };
        this.f34697p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                }
            }
        };
        this.f34698q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f34690i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    public MBAcquireRewardPopView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34682a = "MBAcquireRewardPopView";
        this.f34685d = 0.0f;
        this.f34686e = 0.0f;
        this.f34687f = 0.0f;
        this.f34688g = 0.0f;
        this.f34693l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean zContains = MBAcquireRewardPopView.this.f34683b.rightAnswerList.contains(str);
                View rightAnswerView = zContains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    if (zContains) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
            }
        };
        this.f34694m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f34689h > 0) {
                    MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f34694m, 1000L);
                } else {
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f34690i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                }
            }
        };
        this.f34695n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f34690i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f34696o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    MBAcquireRewardPopView.this.f34685d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f34686e = motionEvent.getY();
                } else if (action != 1) {
                    if (action == 2) {
                        MBAcquireRewardPopView.this.f34687f = motionEvent.getX();
                        MBAcquireRewardPopView.this.f34688g = motionEvent.getY();
                    }
                } else if (MBAcquireRewardPopView.this.f34687f <= MBAcquireRewardPopView.this.f34685d || Math.abs(MBAcquireRewardPopView.this.f34687f - MBAcquireRewardPopView.this.f34685d) <= 50.0f || Math.abs(MBAcquireRewardPopView.this.f34688g - MBAcquireRewardPopView.this.f34686e) >= 100.0f) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                } else {
                    if (MBAcquireRewardPopView.this.f34691j) {
                        return false;
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                    MBAcquireRewardPopView.this.f34691j = true;
                    View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                    View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                    if (childAt != null) {
                        MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                    }
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
                }
                return false;
            }
        };
        this.f34697p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                }
            }
        };
        this.f34698q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f34690i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    public MBAcquireRewardPopView(Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f34682a = "MBAcquireRewardPopView";
        this.f34685d = 0.0f;
        this.f34686e = 0.0f;
        this.f34687f = 0.0f;
        this.f34688g = 0.0f;
        this.f34693l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean zContains = MBAcquireRewardPopView.this.f34683b.rightAnswerList.contains(str);
                View rightAnswerView = zContains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    if (zContains) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
            }
        };
        this.f34694m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f34689h > 0) {
                    MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f34694m, 1000L);
                } else {
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f34690i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                }
            }
        };
        this.f34695n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f34690i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f34696o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    MBAcquireRewardPopView.this.f34685d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f34686e = motionEvent.getY();
                } else if (action != 1) {
                    if (action == 2) {
                        MBAcquireRewardPopView.this.f34687f = motionEvent.getX();
                        MBAcquireRewardPopView.this.f34688g = motionEvent.getY();
                    }
                } else if (MBAcquireRewardPopView.this.f34687f <= MBAcquireRewardPopView.this.f34685d || Math.abs(MBAcquireRewardPopView.this.f34687f - MBAcquireRewardPopView.this.f34685d) <= 50.0f || Math.abs(MBAcquireRewardPopView.this.f34688g - MBAcquireRewardPopView.this.f34686e) >= 100.0f) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                } else {
                    if (MBAcquireRewardPopView.this.f34691j) {
                        return false;
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f34694m);
                    MBAcquireRewardPopView.this.f34691j = true;
                    View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                    View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                    if (childAt != null) {
                        MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                    }
                    if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f34683b.reduceTime);
                    }
                    MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                    mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f34695n, 2000L);
                }
                return false;
            }
        };
        this.f34697p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f34685d, MBAcquireRewardPopView.this.f34686e);
                }
            }
        };
        this.f34698q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f34683b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f34683b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f34690i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    private GradientDrawable a(int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i11);
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(i12);
        return gradientDrawable;
    }

    private GradientDrawable a(int[] iArr, GradientDrawable.Orientation orientation) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColors(iArr);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setOrientation(orientation);
        gradientDrawable.setShape(0);
        return gradientDrawable;
    }

    private LayerDrawable a(int i11, int i12, int i13, int i14) {
        int[] iArr = {i11, i12};
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable gradientDrawableA = a(iArr, orientation);
        gradientDrawableA.setCornerRadius(t0.a(getContext(), 12.0f));
        GradientDrawable gradientDrawableA2 = a(new int[]{i13, i14}, orientation);
        gradientDrawableA2.setCornerRadius(t0.a(getContext(), 12.0f));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawableA, gradientDrawableA2});
        layerDrawable.setLayerInset(1, 5, 5, 5, 5);
        return layerDrawable;
    }

    private View a(ArrayList<String> arrayList) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 290.0f), -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setClickable(true);
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f34683b;
        linearLayout.setBackground(a(acquireRewardPopViewParameters.viewBackLayerTopColor, acquireRewardPopViewParameters.viewBackLayerBottomColor, acquireRewardPopViewParameters.viewForegroundTopColor, acquireRewardPopViewParameters.viewForegroundBottomColor));
        ImageView imageView = new ImageView(getContext());
        int iA = t0.a(getContext(), 20.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iA, iA);
        layoutParams2.gravity = GravityCompat.END;
        layoutParams2.setMargins(0, 13, 13, 0);
        imageView.setLayoutParams(layoutParams2);
        imageView.setImageResource(getResources().getIdentifier("mbridge_reward_popview_close", "drawable", c.m().h()));
        imageView.setOnClickListener(this.f34698q);
        linearLayout.addView(imageView);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        int iA2 = t0.a(getContext(), 18.0f);
        layoutParams3.setMargins(iA2, 5, iA2, t0.a(getContext(), 12.0f));
        textView.setLayoutParams(layoutParams3);
        textView.setText(this.f34683b.title);
        textView.setTextColor(this.f34683b.titleTextColor);
        textView.setTextSize(18.0f);
        textView.setGravity(17);
        linearLayout.addView(textView);
        if (arrayList != null && arrayList.size() > 1) {
            int iA3 = t0.a(getContext(), 8.0f);
            int iA4 = t0.a(getContext(), 24.0f);
            int iA5 = t0.a(getContext(), 30.0f);
            int iA6 = t0.a(getContext(), 12.0f);
            int iA7 = t0.a(getContext(), 40.0f);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                boolean zContains = this.f34683b.rightAnswerList.contains(arrayList.get(i11));
                TextView textView2 = new TextView(getContext());
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams4.gravity = 1;
                layoutParams4.setMargins(iA5, iA6, iA5, 0);
                textView2.setPadding(iA4, iA3, iA4, iA3);
                textView2.setLayoutParams(layoutParams4);
                textView2.setText(arrayList.get(i11));
                textView2.setSingleLine(true);
                textView2.setEllipsize(TextUtils.TruncateAt.END);
                textView2.setTag(arrayList.get(i11));
                textView2.setTextSize(17.0f);
                textView2.setGravity(17);
                textView2.setTextColor(zContains ? this.f34683b.buttonTextLightColor : this.f34683b.buttonTextDarkColor);
                textView2.setBackground(a(zContains ? this.f34683b.buttonBackgroundLightColor : this.f34683b.buttonBackgroundDarkColor, iA7));
                textView2.setOnClickListener(this.f34693l);
                linearLayout.addView(textView2);
            }
        }
        this.f34692k = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        int iA8 = t0.a(getContext(), 16.0f);
        int iA9 = t0.a(getContext(), 18.0f);
        layoutParams5.setMargins(iA9, iA8, iA9, iA8);
        layoutParams5.gravity = 1;
        this.f34692k.setLayoutParams(layoutParams5);
        TextView textView3 = this.f34692k;
        AcquireRewardPopViewParameters acquireRewardPopViewParameters2 = this.f34683b;
        textView3.setText(String.format(acquireRewardPopViewParameters2.tips, Integer.valueOf(acquireRewardPopViewParameters2.reduceTime)));
        this.f34692k.setTextColor(this.f34683b.tipTextColor);
        this.f34692k.setGravity(17);
        this.f34692k.setTextSize(12.0f);
        linearLayout.addView(this.f34692k);
        return linearLayout;
    }

    private ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f34683b;
        if (acquireRewardPopViewParameters != null) {
            List<String> list = acquireRewardPopViewParameters.rightAnswerList;
            if (list != null) {
                arrayList.addAll(list);
            }
            if (this.f34683b.wrongAnswerList != null) {
                int iNextInt = new Random().nextInt(this.f34683b.wrongAnswerList.size());
                if (iNextInt > this.f34683b.wrongAnswerList.size() - 1) {
                    iNextInt = 0;
                }
                arrayList.add(this.f34683b.wrongAnswerList.get(iNextInt));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final View view) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.8f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(1000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(1000L);
        AnimationSet animationSet = new AnimationSet(true);
        this.f34684c = animationSet;
        animationSet.addAnimation(translateAnimation);
        this.f34684c.addAnimation(alphaAnimation);
        final AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setDuration(1000L);
        alphaAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.startAnimation(MBAcquireRewardPopView.this.f34684c);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f34684c.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.startAnimation(alphaAnimation2);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        view.startAnimation(this.f34684c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, View view2) {
        removeView(view);
        addView(view2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getRightAnswerView() {
        String str;
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        MBGradientAndShadowTextView.GradientAndShadowParameters gradientAndShadowParameters = new MBGradientAndShadowTextView.GradientAndShadowParameters();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f34683b;
        gradientAndShadowParameters.gradientStartColor = acquireRewardPopViewParameters.successTitleGradientStartColor;
        gradientAndShadowParameters.gradientEndColor = acquireRewardPopViewParameters.successTitleGradientEndColor;
        gradientAndShadowParameters.shadowColor = acquireRewardPopViewParameters.successTitleShadowColor;
        MBGradientAndShadowTextView mBGradientAndShadowTextView = new MBGradientAndShadowTextView(getContext(), gradientAndShadowParameters);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, t0.a(getContext(), 12.0f));
        layoutParams2.gravity = 1;
        mBGradientAndShadowTextView.setLayoutParams(layoutParams2);
        AcquireRewardPopViewParameters acquireRewardPopViewParameters2 = this.f34683b;
        int i11 = acquireRewardPopViewParameters2.viewType;
        if (i11 == 1) {
            str = acquireRewardPopViewParameters2.successTitle;
        } else {
            str = i11 == 2 ? acquireRewardPopViewParameters2.slideSuccessTitle : "";
        }
        mBGradientAndShadowTextView.setGravity(17);
        mBGradientAndShadowTextView.setText(String.format(" %s ", str));
        linearLayout.addView(mBGradientAndShadowTextView);
        GradientDrawable gradientDrawableA = a(new int[]{AcquireRewardPopViewConst.DEFAULT_COLOR_00FDB258, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_00F3A850}, GradientDrawable.Orientation.LEFT_RIGHT);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        textView.setLayoutParams(layoutParams3);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setTextColor(this.f34683b.successTipTextColor);
        AcquireRewardPopViewParameters acquireRewardPopViewParameters3 = this.f34683b;
        textView.setText(String.format(acquireRewardPopViewParameters3.successTip, Integer.valueOf(acquireRewardPopViewParameters3.reduceTime)));
        int iA = t0.a(getContext(), 6.0f);
        int iA2 = t0.a(getContext(), 32.0f);
        textView.setPadding(iA2, iA, iA2, iA);
        textView.setBackground(gradientDrawableA);
        linearLayout.addView(textView);
        return linearLayout;
    }

    private View getSlidePopView() {
        int iA = t0.a(getContext(), 290.0f);
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        MBGradientAndShadowTextView.GradientAndShadowParameters gradientAndShadowParameters = new MBGradientAndShadowTextView.GradientAndShadowParameters();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f34683b;
        gradientAndShadowParameters.gradientStartColor = acquireRewardPopViewParameters.successTitleGradientStartColor;
        gradientAndShadowParameters.gradientEndColor = acquireRewardPopViewParameters.successTitleGradientEndColor;
        gradientAndShadowParameters.shadowColor = acquireRewardPopViewParameters.successTitleShadowColor;
        gradientAndShadowParameters.textSize = 30;
        MBGradientAndShadowTextView mBGradientAndShadowTextView = new MBGradientAndShadowTextView(getContext(), gradientAndShadowParameters);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, t0.a(getContext(), 12.0f));
        layoutParams2.gravity = 1;
        mBGradientAndShadowTextView.setLayoutParams(layoutParams2);
        mBGradientAndShadowTextView.setText(String.format(" %s ", this.f34683b.slideTitle));
        mBGradientAndShadowTextView.setGravity(17);
        linearLayout.addView(mBGradientAndShadowTextView);
        GradientDrawable gradientDrawableA = a(new int[]{AcquireRewardPopViewConst.DEFAULT_COLOR_00FDB258, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_00F3A850}, GradientDrawable.Orientation.LEFT_RIGHT);
        this.f34692k = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        layoutParams3.setMargins(0, 0, 0, t0.a(getContext(), 25.0f));
        this.f34692k.setLayoutParams(layoutParams3);
        this.f34692k.setTextSize(12.0f);
        this.f34692k.setGravity(17);
        this.f34692k.setTextColor(this.f34683b.successTipTextColor);
        TextView textView = this.f34692k;
        AcquireRewardPopViewParameters acquireRewardPopViewParameters2 = this.f34683b;
        textView.setText(String.format(acquireRewardPopViewParameters2.slideTip, Integer.valueOf(acquireRewardPopViewParameters2.reduceTime)));
        int iA2 = t0.a(getContext(), 6.0f);
        int iA3 = t0.a(getContext(), 32.0f);
        this.f34692k.setPadding(iA3, iA2, iA3, iA2);
        this.f34692k.setBackground(gradientDrawableA);
        linearLayout.addView(this.f34692k);
        View imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 1;
        imageView.setLayoutParams(layoutParams4);
        imageView.setBackgroundResource(getResources().getIdentifier("mbridge_slide_rightarrow", "drawable", c.m().h()));
        linearLayout.addView(imageView);
        View imageView2 = new ImageView(getContext());
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView2.setBackgroundResource(getResources().getIdentifier("mbridge_slide_hand", "drawable", c.m().h()));
        linearLayout.addView(imageView2);
        imageView2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                MBAcquireRewardPopView.this.a(view);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (MBAcquireRewardPopView.this.f34684c != null) {
                    MBAcquireRewardPopView.this.f34684c.cancel();
                }
            }
        });
        linearLayout.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                MBAcquireRewardPopView.this.setLongClickable(true);
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.setOnTouchListener(mBAcquireRewardPopView.f34696o);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getWrongAnswerView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        MBGradientAndShadowTextView.GradientAndShadowParameters gradientAndShadowParameters = new MBGradientAndShadowTextView.GradientAndShadowParameters();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f34683b;
        gradientAndShadowParameters.gradientStartColor = acquireRewardPopViewParameters.failTitleGradientStartColor;
        gradientAndShadowParameters.gradientEndColor = acquireRewardPopViewParameters.failTitleGradientEndColor;
        gradientAndShadowParameters.shadowColor = acquireRewardPopViewParameters.failTitleShadowColor;
        MBGradientAndShadowTextView mBGradientAndShadowTextView = new MBGradientAndShadowTextView(getContext(), gradientAndShadowParameters);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, t0.a(getContext(), 12.0f));
        layoutParams2.gravity = 1;
        mBGradientAndShadowTextView.setGravity(17);
        mBGradientAndShadowTextView.setLayoutParams(layoutParams2);
        mBGradientAndShadowTextView.setText(String.format(" %s ", this.f34683b.failTitle));
        linearLayout.addView(mBGradientAndShadowTextView);
        GradientDrawable gradientDrawableA = a(new int[]{AcquireRewardPopViewConst.DEFAULT_COLOR_00B09A80, AcquireRewardPopViewConst.DEFAULT_COLOR_FFB09A80, AcquireRewardPopViewConst.DEFAULT_COLOR_FFB09A80, AcquireRewardPopViewConst.DEFAULT_COLOR_00B09A80}, GradientDrawable.Orientation.LEFT_RIGHT);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        textView.setLayoutParams(layoutParams3);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setTextColor(this.f34683b.failTipTextColor);
        textView.setText(String.format(this.f34683b.failTip, ""));
        int iA = t0.a(getContext(), 6.0f);
        int iA2 = t0.a(getContext(), 32.0f);
        textView.setPadding(iA2, iA, iA2, iA);
        textView.setBackground(gradientDrawableA);
        linearLayout.addView(textView);
        return linearLayout;
    }

    static /* synthetic */ int n(MBAcquireRewardPopView mBAcquireRewardPopView) {
        int i11 = mBAcquireRewardPopView.f34689h;
        mBAcquireRewardPopView.f34689h = i11 - 1;
        return i11;
    }

    public void init(AcquireRewardPopViewParameters acquireRewardPopViewParameters) {
        View slidePopView;
        if (acquireRewardPopViewParameters == null) {
            o0.b("MBAcquireRewardPopView", "Must generate parameters.");
            return;
        }
        this.f34683b = acquireRewardPopViewParameters;
        if (acquireRewardPopViewParameters.viewType == 1) {
            slidePopView = a(a());
            if (this.f34683b.canClickMaskArea) {
                setOnClickListener(this.f34697p);
            }
        } else {
            slidePopView = null;
        }
        if (this.f34683b.viewType == 2) {
            slidePopView = getSlidePopView();
        }
        if (slidePopView != null) {
            setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            setBackgroundColor(this.f34683b.containerBackgroundColor);
            addView(slidePopView);
            int i11 = this.f34683b.autoDismissTime;
            if (i11 > 0) {
                this.f34689h = i11;
                post(this.f34694m);
                this.f34690i = true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f34694m);
    }

    public void onPause() {
        if (!this.f34690i || this.f34689h <= 0) {
            return;
        }
        removeCallbacks(this.f34694m);
    }

    public void onResume() {
        if (!this.f34690i || this.f34689h <= 0) {
            return;
        }
        post(this.f34694m);
    }

    public void onStop() {
        if (!this.f34690i || this.f34689h <= 0) {
            return;
        }
        removeCallbacks(this.f34694m);
    }

    public void onTimeLessThanReduce(int i11) {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f34683b;
        acquireRewardPopViewParameters.reduceTime = i11;
        TextView textView = this.f34692k;
        if (textView != null) {
            textView.setText(String.format(acquireRewardPopViewParameters.tips, Integer.valueOf(i11)));
        }
    }
}
