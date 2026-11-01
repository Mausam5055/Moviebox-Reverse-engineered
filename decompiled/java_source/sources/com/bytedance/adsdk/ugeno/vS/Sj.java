package com.bytedance.adsdk.ugeno.vS;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj<T> extends FrameLayout implements com.bytedance.adsdk.ugeno.Dq.TKC.EjP {
    private String Dq;
    private int EjP;
    private boolean Fmk;
    private int HiB;
    private int Jcg;
    private com.bytedance.adsdk.ugeno.vS.Sj.Sj RiZ;
    protected List<T> Sj;
    private boolean TEQ;
    private int TKC;
    private FrameLayout TzV;
    private boolean Ym;
    private int Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20847aa;
    private int dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private TKC f20848dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private final Runnable f20849ib;
    protected com.bytedance.adsdk.ugeno.Dq.TKC sP;
    private C0207Sj sU;
    private int sef;
    private float uA;
    private int uvD;
    private int vS;
    private final Runnable zR;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.vS.Sj$Sj, reason: collision with other inner class name */
    class C0207Sj extends com.bytedance.adsdk.ugeno.Dq.sP {
        C0207Sj() {
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.sP
        public float Sj(int i11) {
            if (Sj.this.uA <= 0.0f) {
                return 1.0f;
            }
            return 1.0f / Sj.this.uA;
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.sP
        public int Sj() {
            if (Sj.this.f20847aa) {
                return 1024;
            }
            return Sj.this.Sj.size();
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.sP
        public int Sj(Object obj) {
            return -2;
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.sP
        public Object Sj(ViewGroup viewGroup, int i11) {
            View viewSj = Sj.this.Sj(i11, EjP.Sj(Sj.this.f20847aa, i11, Sj.this.Sj.size()));
            viewGroup.addView(viewSj);
            return viewSj;
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.sP
        public void Sj(ViewGroup viewGroup, int i11, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.sP
        public boolean Sj(View view, Object obj) {
            return view == obj;
        }
    }

    public class sP extends com.bytedance.adsdk.ugeno.Dq.TKC {
        public sP(Context context) {
            super(context);
        }

        private MotionEvent Sj(MotionEvent motionEvent) {
            float width = getWidth();
            float height = getHeight();
            motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
            return motionEvent;
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.TKC, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (!Sj.this.Fmk) {
                return false;
            }
            try {
                if (Sj.this.dNu != 1) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(Sj(motionEvent));
                Sj(motionEvent);
                return zOnInterceptTouchEvent;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.TKC, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!Sj.this.Fmk) {
                return false;
            }
            try {
                return Sj.this.dNu == 1 ? super.onTouchEvent(Sj(motionEvent)) : super.onTouchEvent(motionEvent);
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
    }

    public Sj(Context context) {
        super(context);
        this.Sj = new CopyOnWriteArrayList();
        this.TKC = 2000;
        this.EjP = 500;
        this.HiB = 0;
        this.vS = -1;
        this.Jcg = -1;
        this.Dq = "normal";
        this.uA = 1.0f;
        this.TEQ = true;
        this.Ym = true;
        this.f20847aa = true;
        this.Fmk = true;
        this.sef = 0;
        this.Zq = 0;
        this.uvD = 0;
        this.dNu = 0;
        this.zR = new Runnable() { // from class: com.bytedance.adsdk.ugeno.vS.Sj.1
            @Override // java.lang.Runnable
            public void run() {
                int currentItem = Sj.this.sP.getCurrentItem() + 1;
                if (Sj.this.f20847aa) {
                    if (currentItem >= 1024) {
                        Sj.this.sP.Sj(512, false);
                        return;
                    } else {
                        Sj.this.sP.Sj(currentItem, true);
                        return;
                    }
                }
                if (currentItem >= Sj.this.sP.getAdapter().Sj()) {
                    Sj.this.sP.Sj(0, false);
                } else {
                    Sj.this.sP.Sj(currentItem, true);
                }
            }
        };
        this.f20849ib = new Runnable() { // from class: com.bytedance.adsdk.ugeno.vS.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                if (Sj.this.Ym) {
                    int currentItem = Sj.this.sP.getCurrentItem() + 1;
                    if (Sj.this.f20847aa) {
                        if (currentItem >= 1024) {
                            Sj.this.sP.Sj(512, false);
                        } else {
                            Sj.this.sP.Sj(currentItem, true);
                        }
                        Sj sj2 = Sj.this;
                        sj2.postDelayed(sj2.f20849ib, Sj.this.TKC);
                        return;
                    }
                    if (currentItem >= Sj.this.sP.getAdapter().Sj()) {
                        Sj.this.sP.Sj(0, false);
                        Sj sj3 = Sj.this;
                        sj3.postDelayed(sj3.f20849ib, Sj.this.TKC);
                    } else {
                        Sj.this.sP.Sj(currentItem, true);
                        Sj sj4 = Sj.this;
                        sj4.postDelayed(sj4.f20849ib, Sj.this.TKC);
                    }
                }
            }
        };
        this.TzV = new FrameLayout(context);
        this.sP = Sj();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.TzV.addView(this.sP, layoutParams);
        addView(this.TzV);
        com.bytedance.adsdk.ugeno.vS.Sj.Sj sj2 = new com.bytedance.adsdk.ugeno.vS.Sj.Sj(context);
        this.RiZ = sj2;
        addView(sj2);
    }

    public Sj Dq(int i11) {
        this.Jcg = i11;
        Sj(this.Dq, this.HiB, this.vS, i11, true);
        return this;
    }

    public Sj EjP(int i11) {
        this.RiZ.setSelectedColor(i11);
        return this;
    }

    public void EjP() {
        removeCallbacks(this.f20849ib);
    }

    public Sj HiB(int i11) {
        this.RiZ.setUnSelectedColor(i11);
        return this;
    }

    public Sj<T> Jcg(int i11) {
        this.vS = i11;
        Sj(this.Dq, this.HiB, i11, this.Jcg, true);
        return this;
    }

    public View Sj(int i11, int i12) {
        if (this.Sj.size() == 0) {
            return new View(getContext());
        }
        View viewUA = uA(i12);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (viewUA instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (viewUA.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewUA.getParent()).removeView(viewUA);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(viewUA, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public com.bytedance.adsdk.ugeno.Dq.TKC Sj() {
        return new sP(getContext());
    }

    public Sj Sj(float f11) {
        this.uA = f11;
        return this;
    }

    public Sj Sj(int i11) {
        this.dNu = i11;
        return this;
    }

    public Sj<T> Sj(T t11) {
        if (t11 != null) {
            this.Sj.add(t11);
            if (this.TEQ) {
                this.RiZ.sP();
            }
        }
        C0207Sj c0207Sj = this.sU;
        if (c0207Sj != null) {
            c0207Sj.TKC();
            this.RiZ.Sj(this.sef, this.sP.getCurrentItem());
        }
        return this;
    }

    public Sj Sj(String str) {
        this.Dq = str;
        Sj(str, this.HiB, this.vS, this.Jcg, true);
        return this;
    }

    public Sj Sj(boolean z10) {
        this.Ym = z10;
        TKC();
        return this;
    }

    @Override // com.bytedance.adsdk.ugeno.Dq.TKC.EjP
    public void Sj(int i11, float f11, int i12) {
        TKC tkc = this.f20848dx;
        if (tkc != null) {
            boolean z10 = this.f20847aa;
            tkc.Sj(z10, EjP.Sj(z10, i11, this.Sj.size()), f11, i12);
        }
    }

    public void Sj(String str, int i11, int i12, int i13, boolean z10) {
        C0207Sj c0207Sj = this.sU;
        if (c0207Sj != null) {
            c0207Sj.TKC();
        }
        this.sP.setPageMargin(i11);
        ViewGroup.LayoutParams layoutParams = this.sP.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            if (this.dNu == 1) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.topMargin = i12 + i11;
                marginLayoutParams.bottomMargin = i11 + i13;
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams2.leftMargin = i12 + i11;
                marginLayoutParams2.rightMargin = i11 + i13;
            }
            this.sP.setLayoutParams(layoutParams);
        }
        if (i12 > 0 || i13 > 0) {
            this.TzV.setClipChildren(false);
            this.sP.setClipChildren(false);
        }
        if (this.dNu == 1) {
            this.sP.Sj(true, (com.bytedance.adsdk.ugeno.Dq.TKC.HiB) new com.bytedance.adsdk.ugeno.vS.sP.sP());
            this.sP.setOverScrollMode(2);
        } else if (TextUtils.equals(str, "linear")) {
            this.sP.Sj(false, (com.bytedance.adsdk.ugeno.Dq.TKC.HiB) new com.bytedance.adsdk.ugeno.vS.sP.Sj());
        } else {
            this.sP.Sj(false, (com.bytedance.adsdk.ugeno.Dq.TKC.HiB) null);
        }
        this.sP.setOffscreenPageLimit((int) this.uA);
    }

    @Override // com.bytedance.adsdk.ugeno.Dq.TKC.EjP
    public void TEQ(int i11) {
        if (this.f20848dx != null) {
            int iSj = EjP.Sj(this.f20847aa, i11, this.Sj.size());
            this.f20848dx.Sj(this.f20847aa, iSj, i11, iSj == 0, iSj == this.Sj.size() - 1);
        }
        if (this.TEQ) {
            this.RiZ.Sj(i11);
        }
    }

    public Sj TKC(int i11) {
        this.TKC = i11;
        TKC();
        return this;
    }

    public Sj TKC(boolean z10) {
        this.RiZ.setLoop(z10);
        if (this.f20847aa != z10) {
            int iSj = EjP.Sj(z10, this.sP.getCurrentItem(), this.Sj.size());
            this.f20847aa = z10;
            C0207Sj c0207Sj = this.sU;
            if (c0207Sj != null) {
                c0207Sj.TKC();
                this.sP.setCurrentItem(iSj);
            }
        }
        return this;
    }

    public void TKC() {
        removeCallbacks(this.f20849ib);
        postDelayed(this.f20849ib, this.TKC);
    }

    @Override // com.bytedance.adsdk.ugeno.Dq.TKC.EjP
    public void Ym(int i11) {
        TKC tkc = this.f20848dx;
        if (tkc != null) {
            tkc.Sj(this.f20847aa, i11);
        }
    }

    public void aa(int i11) {
        Sj(this.Dq, this.HiB, this.vS, this.Jcg, true);
        if (this.sU == null) {
            this.sU = new C0207Sj();
            this.sP.Sj((com.bytedance.adsdk.ugeno.Dq.TKC.EjP) this);
            this.sP.setAdapter(this.sU);
        }
        if (this.f20847aa) {
            if (i11 >= 1024) {
                this.sP.Sj(512, false);
                return;
            } else {
                this.sP.Sj(i11, true);
                return;
            }
        }
        if (i11 < 0 || i11 >= this.Sj.size()) {
            return;
        }
        this.sP.Sj(i11, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.Ym) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                TKC();
            } else if (action == 0) {
                EjP();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.bytedance.adsdk.ugeno.Dq.sP getAdapter() {
        return this.sP.getAdapter();
    }

    public int getCurrentItem() {
        return this.sP.getCurrentItem();
    }

    public com.bytedance.adsdk.ugeno.Dq.TKC getViewPager() {
        return this.sP;
    }

    public Sj sP(int i11) {
        this.EjP = i11;
        return this;
    }

    public Sj sP(boolean z10) {
        this.TEQ = z10;
        return this;
    }

    public void sP() {
        Sj(this.Dq, this.HiB, this.vS, this.Jcg, true);
        if (this.sU == null) {
            this.sU = new C0207Sj();
            this.sP.Sj((com.bytedance.adsdk.ugeno.Dq.TKC.EjP) this);
            this.sP.setAdapter(this.sU);
        }
        int i11 = this.sef;
        if (i11 < 0 || i11 >= this.Sj.size()) {
            this.sef = 0;
        }
        int i12 = this.f20847aa ? this.sef + 512 : this.sef;
        this.sP.Sj(i12, true);
        if (!this.f20847aa) {
            TEQ(i12);
        }
        if (this.Ym) {
            TKC();
        }
    }

    public void setOnPageChangeListener(TKC tkc) {
        this.f20848dx = tkc;
    }

    public abstract View uA(int i11);

    public Sj vS(int i11) {
        this.HiB = i11;
        Sj(this.Dq, i11, this.vS, this.Jcg, true);
        return this;
    }
}
