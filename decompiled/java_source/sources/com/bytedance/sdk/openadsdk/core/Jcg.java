package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends View implements com.bytedance.sdk.component.utils.LqL.Sj {
    private int Dq;
    private View EjP;
    private final Runnable Fmk;
    private List<View> HiB;
    private boolean Jcg;
    private boolean Sj;
    private final AtomicBoolean TEQ;
    private Sj TKC;
    private ViewTreeObserver.OnGlobalLayoutListener Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f21025aa;
    private boolean sP;
    private final Handler uA;

    @Nullable
    private List<View> vS;

    public interface Sj {
        void Sj();

        void Sj(View view);

        void Sj(boolean z10);

        void sP();
    }

    public Jcg(Context context, View view) {
        super(dNu.Sj());
        this.uA = new com.bytedance.sdk.component.utils.LqL(sef.sP().getLooper(), this);
        this.TEQ = new AtomicBoolean(true);
        this.f21025aa = false;
        this.Fmk = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Jcg.3
            @Override // java.lang.Runnable
            public void run() {
                if (Jcg.this.TKC != null) {
                    Jcg.this.TKC.Sj(Jcg.this.EjP);
                }
            }
        };
        this.EjP = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.Ym = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.Jcg.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (Jcg.this.f21025aa) {
                    return;
                }
                Jcg.this.HiB();
                Jcg.this.EjP();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void EjP() {
        if (!this.sP || this.Sj) {
            return;
        }
        this.Sj = true;
        this.uA.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HiB() {
        if (this.Sj) {
            this.uA.removeCallbacksAndMessages(null);
            this.Sj = false;
        }
    }

    private void Sj(final boolean z10) {
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        com.bytedance.sdk.component.utils.uA.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Jcg.2
            @Override // java.lang.Runnable
            public void run() {
                ViewTreeObserver viewTreeObserver2;
                if (Jcg.this.Ym != null && (viewTreeObserver2 = viewTreeObserver) != null) {
                    try {
                        viewTreeObserver2.removeOnGlobalLayoutListener(Jcg.this.Ym);
                    } catch (Exception unused) {
                    }
                }
                if (z10) {
                    Jcg.this.Ym = null;
                }
            }
        });
    }

    private void TKC() {
        Sj sj2;
        if (this.TEQ.getAndSet(true) || (sj2 = this.TKC) == null) {
            return;
        }
        sj2.sP();
    }

    private void sP() {
        Sj sj2;
        if (!this.TEQ.getAndSet(false) || (sj2 = this.TKC) == null) {
            return;
        }
        sj2.Sj();
    }

    private boolean vS() {
        View view = this.EjP;
        if (view instanceof com.bytedance.sdk.openadsdk.core.Dq.RiZ) {
            return ((com.bytedance.sdk.openadsdk.core.Dq.RiZ) view).Zq();
        }
        return true;
    }

    public void Sj() {
        Sj(this.HiB, (com.bytedance.sdk.openadsdk.core.sP.TKC) null);
        Sj(this.vS, (com.bytedance.sdk.openadsdk.core.sP.TKC) null);
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        if (message.what == 1 && this.Sj) {
            if (!vS() || !LD.Sj(this.EjP, 20, this.Dq)) {
                this.uA.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            HiB();
            this.f21025aa = true;
            sef.TKC().post(this.Fmk);
            Sj(true);
        }
    }

    public void Sj(List<View> list, com.bytedance.sdk.openadsdk.core.sP.TKC tkc) {
        if (com.bytedance.sdk.component.utils.Fmk.sP(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(tkc);
                    view.setOnTouchListener(tkc);
                }
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Jcg = false;
        sP();
        if (this.Ym != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.Ym);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        HiB();
        this.Jcg = true;
        TKC();
        Sj(false);
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        sP();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        TKC();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        Sj sj2 = this.TKC;
        if (sj2 != null) {
            sj2.Sj(z10);
        }
    }

    public void setAdType(int i11) {
        this.Dq = i11;
    }

    public void setCallback(Sj sj2) {
        this.TKC = sj2;
    }

    public void setNeedCheckingShow(boolean z10) {
        this.sP = z10;
        if (!z10 && this.Sj) {
            HiB();
        } else {
            if (!z10 || this.Sj) {
                return;
            }
            EjP();
        }
    }

    public void setRefClickViews(List<View> list) {
        this.HiB = list;
    }

    public void setRefCreativeViews(@Nullable List<View> list) {
        this.vS = list;
    }
}
