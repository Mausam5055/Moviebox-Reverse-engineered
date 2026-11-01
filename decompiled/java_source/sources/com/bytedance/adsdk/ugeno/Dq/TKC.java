package com.bytedance.adsdk.ugeno.Dq;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends ViewGroup {
    private int Bml;
    private HiB Chv;
    private final sP Dq;
    private EjP EZ;
    private int Ei;
    int EjP;
    private float FPG;
    private VelocityTracker Fm;
    private Scroller Fmk;
    private int HpB;
    private List<EjP> IOh;
    private int JcM;
    private final ArrayList<sP> Jcg;
    private int LD;
    private boolean LqL;
    private float Mts;
    private int MuB;
    private int RiZ;
    private int Sj;
    private int TEQ;
    com.bytedance.adsdk.ugeno.Dq.sP TKC;
    private int TzV;
    private boolean UHs;
    private final Runnable Uc;
    private float WMZ;
    private float Wjd;
    private boolean Yf;
    private Parcelable Ym;
    private vS Zq;
    private int aNB;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private ClassLoader f20800aa;
    private ArrayList<View> cX;
    private Drawable dNu;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private boolean f20801db;
    private boolean dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private float f20802dx;
    private int fF;
    private List<Object> gY;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private int f20803ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private int f20804jb;
    private boolean kF;
    private int ley;
    private EdgeEffect ndK;
    private EjP pfr;
    private EdgeEffect qRN;
    private float sU;
    private boolean sdp;
    private boolean sef;
    private final Rect uA;
    private boolean uP;
    private int uvD;
    private boolean wE;
    private int xD;
    private int xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private int f20805xu;
    private int zR;
    static final int[] sP = {R.attr.layout_gravity};
    private static final Comparator<sP> HiB = new Comparator<sP>() { // from class: com.bytedance.adsdk.ugeno.Dq.TKC.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public int compare(sP sPVar, sP sPVar2) {
            return sPVar.sP - sPVar2.sP;
        }
    };
    private static final Interpolator vS = new Interpolator() { // from class: com.bytedance.adsdk.ugeno.Dq.TKC.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            float f12 = f11 - 1.0f;
            return (f12 * f12 * f12 * f12 * f12) + 1.0f;
        }
    };

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private static final Dq f20799kb = new Dq();

    static class Dq implements Comparator<View> {
        Dq() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            C0196TKC c0196tkc = (C0196TKC) view.getLayoutParams();
            C0196TKC c0196tkc2 = (C0196TKC) view2.getLayoutParams();
            boolean z10 = c0196tkc.Sj;
            if (z10 != c0196tkc2.Sj) {
                return z10 ? 1 : -1;
            }
            return c0196tkc.HiB - c0196tkc2.HiB;
        }
    }

    public interface EjP {
        void Sj(int i11, float f11, int i12);

        void TEQ(int i11);

        void Ym(int i11);
    }

    public interface HiB {
        void Sj(View view, float f11);
    }

    public static class Jcg extends com.bytedance.adsdk.ugeno.Dq.Sj {
        public static final Parcelable.Creator<Jcg> CREATOR = new Parcelable.ClassLoaderCreator<Jcg>() { // from class: com.bytedance.adsdk.ugeno.Dq.TKC.Jcg.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public Jcg createFromParcel(Parcel parcel) {
                return new Jcg(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public Jcg createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new Jcg(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public Jcg[] newArray(int i11) {
                return new Jcg[i11];
            }
        };
        ClassLoader EjP;
        Parcelable TKC;
        int sP;

        Jcg(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.sP = parcel.readInt();
            this.TKC = parcel.readParcelable(classLoader);
            this.EjP = classLoader;
        }

        public Jcg(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.sP + "}";
        }

        @Override // com.bytedance.adsdk.ugeno.Dq.Sj, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.sP);
            parcel.writeParcelable(this.TKC, i11);
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Sj {
    }

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.Dq.TKC$TKC, reason: collision with other inner class name */
    public static class C0196TKC extends ViewGroup.LayoutParams {
        boolean EjP;
        int HiB;
        public boolean Sj;
        float TKC;
        public int sP;
        int vS;

        public C0196TKC() {
            super(-1, -1);
            this.TKC = 0.0f;
        }

        public C0196TKC(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.TKC = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, TKC.sP);
            this.sP = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static class sP {
        float EjP;
        float HiB;
        Object Sj;
        boolean TKC;
        int sP;

        sP() {
        }
    }

    private class vS extends DataSetObserver {
        vS() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TKC.this.sP();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TKC.this.sP();
        }
    }

    public TKC(Context context) {
        super(context);
        this.Jcg = new ArrayList<>();
        this.Dq = new sP();
        this.uA = new Rect();
        this.TEQ = -1;
        this.Ym = null;
        this.f20800aa = null;
        this.sU = -3.4028235E38f;
        this.f20802dx = Float.MAX_VALUE;
        this.ley = 1;
        this.xD = -1;
        this.UHs = true;
        this.dwU = false;
        this.Uc = new Runnable() { // from class: com.bytedance.adsdk.ugeno.Dq.TKC.3
            @Override // java.lang.Runnable
            public void run() {
                TKC.this.setScrollState(0);
                TKC.this.TKC();
            }
        };
        this.f20805xu = 0;
        Sj();
    }

    private boolean Dq() {
        this.xD = -1;
        TEQ();
        this.ndK.onRelease();
        this.qRN.onRelease();
        return this.ndK.isFinished() || this.qRN.isFinished();
    }

    private boolean EjP(int i11) {
        if (this.Jcg.size() == 0) {
            if (this.UHs) {
                return false;
            }
            this.sdp = false;
            Sj(0, 0.0f, 0);
            if (this.sdp) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        sP sPVarUA = uA();
        int clientWidth = getClientWidth();
        int i12 = this.uvD;
        int i13 = clientWidth + i12;
        float f11 = clientWidth;
        int i14 = sPVarUA.sP;
        float f12 = ((i11 / f11) - sPVarUA.HiB) / (sPVarUA.EjP + (i12 / f11));
        this.sdp = false;
        Sj(i14, f12, (int) (i13 * f12));
        if (this.sdp) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private void HiB(int i11) {
        EjP ejP = this.pfr;
        if (ejP != null) {
            ejP.TEQ(i11);
        }
        List<EjP> list = this.IOh;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                EjP ejP2 = this.IOh.get(i12);
                if (ejP2 != null) {
                    ejP2.TEQ(i11);
                }
            }
        }
        EjP ejP3 = this.EZ;
        if (ejP3 != null) {
            ejP3.TEQ(i11);
        }
    }

    private void Jcg() {
        if (this.aNB != 0) {
            ArrayList<View> arrayList = this.cX;
            if (arrayList == null) {
                this.cX = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                this.cX.add(getChildAt(i11));
            }
            Collections.sort(this.cX, f20799kb);
        }
    }

    private int Sj(int i11, float f11, int i12, int i13) {
        if (Math.abs(i13) <= this.HpB || Math.abs(i12) <= this.f20804jb) {
            i11 += (int) (f11 + (i11 >= this.EjP ? 0.4f : 0.6f));
        } else if (i12 <= 0) {
            i11++;
        }
        if (this.Jcg.size() <= 0) {
            return i11;
        }
        sP sPVar = this.Jcg.get(0);
        ArrayList<sP> arrayList = this.Jcg;
        return Math.max(sPVar.sP, Math.min(i11, arrayList.get(arrayList.size() - 1).sP));
    }

    private Rect Sj(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private void Sj(int i11, int i12, int i13, int i14) {
        if (i12 > 0 && !this.Jcg.isEmpty()) {
            if (!this.Fmk.isFinished()) {
                this.Fmk.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i12 - getPaddingLeft()) - getPaddingRight()) + i14)) * (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)), getScrollY());
                return;
            }
        }
        sP sPVarSP = sP(this.EjP);
        int iMin = (int) ((sPVarSP != null ? Math.min(sPVarSP.HiB, this.f20802dx) : 0.0f) * ((i11 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            Sj(false);
            scrollTo(iMin, getScrollY());
        }
    }

    private void Sj(int i11, boolean z10, int i12, boolean z11) {
        sP sPVarSP = sP(i11);
        int clientWidth = sPVarSP != null ? (int) (getClientWidth() * Math.max(this.sU, Math.min(sPVarSP.HiB, this.f20802dx))) : 0;
        if (z10) {
            Sj(clientWidth, 0, i12);
            if (z11) {
                HiB(i11);
                return;
            }
            return;
        }
        if (z11) {
            HiB(i11);
        }
        Sj(false);
        scrollTo(clientWidth, 0);
        EjP(clientWidth);
    }

    private void Sj(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.xD) {
            int i11 = actionIndex == 0 ? 1 : 0;
            this.WMZ = motionEvent.getX(i11);
            this.xD = motionEvent.getPointerId(i11);
            VelocityTracker velocityTracker = this.Fm;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void Sj(sP sPVar, int i11, sP sPVar2) {
        int i12;
        int i13;
        sP sPVar3;
        sP sPVar4;
        int iSj = this.TKC.Sj();
        int clientWidth = getClientWidth();
        float f11 = clientWidth > 0 ? this.uvD / clientWidth : 0.0f;
        if (sPVar2 != null) {
            int i14 = sPVar2.sP;
            int i15 = sPVar.sP;
            if (i14 < i15) {
                float fSj = sPVar2.HiB + sPVar2.EjP + f11;
                int i16 = i14 + 1;
                int i17 = 0;
                while (i16 <= sPVar.sP && i17 < this.Jcg.size()) {
                    sP sPVar5 = this.Jcg.get(i17);
                    while (true) {
                        sPVar4 = sPVar5;
                        if (i16 <= sPVar4.sP || i17 >= this.Jcg.size() - 1) {
                            break;
                        }
                        i17++;
                        sPVar5 = this.Jcg.get(i17);
                    }
                    while (i16 < sPVar4.sP) {
                        fSj += this.TKC.Sj(i16) + f11;
                        i16++;
                    }
                    sPVar4.HiB = fSj;
                    fSj += sPVar4.EjP + f11;
                    i16++;
                }
            } else if (i14 > i15) {
                int size = this.Jcg.size() - 1;
                float fSj2 = sPVar2.HiB;
                while (true) {
                    i14--;
                    if (i14 < sPVar.sP || size < 0) {
                        break;
                    }
                    sP sPVar6 = this.Jcg.get(size);
                    while (true) {
                        sPVar3 = sPVar6;
                        if (i14 >= sPVar3.sP || size <= 0) {
                            break;
                        }
                        size--;
                        sPVar6 = this.Jcg.get(size);
                    }
                    while (i14 > sPVar3.sP) {
                        fSj2 -= this.TKC.Sj(i14) + f11;
                        i14--;
                    }
                    fSj2 -= sPVar3.EjP + f11;
                    sPVar3.HiB = fSj2;
                }
            }
        }
        int size2 = this.Jcg.size();
        float fSj3 = sPVar.HiB;
        int i18 = sPVar.sP;
        int i19 = i18 - 1;
        this.sU = i18 == 0 ? fSj3 : -3.4028235E38f;
        int i20 = iSj - 1;
        this.f20802dx = i18 == i20 ? (sPVar.EjP + fSj3) - 1.0f : Float.MAX_VALUE;
        int i21 = i11 - 1;
        while (i21 >= 0) {
            sP sPVar7 = this.Jcg.get(i21);
            while (true) {
                i13 = sPVar7.sP;
                if (i19 <= i13) {
                    break;
                }
                fSj3 -= this.TKC.Sj(i19) + f11;
                i19--;
            }
            fSj3 -= sPVar7.EjP + f11;
            sPVar7.HiB = fSj3;
            if (i13 == 0) {
                this.sU = fSj3;
            }
            i21--;
            i19--;
        }
        float fSj4 = sPVar.HiB + sPVar.EjP + f11;
        int i22 = sPVar.sP + 1;
        int i23 = i11 + 1;
        while (i23 < size2) {
            sP sPVar8 = this.Jcg.get(i23);
            while (true) {
                i12 = sPVar8.sP;
                if (i22 >= i12) {
                    break;
                }
                fSj4 += this.TKC.Sj(i22) + f11;
                i22++;
            }
            if (i12 == i20) {
                this.f20802dx = (sPVar8.EjP + fSj4) - 1.0f;
            }
            sPVar8.HiB = fSj4;
            fSj4 += sPVar8.EjP + f11;
            i23++;
            i22++;
        }
        this.dwU = false;
    }

    private void Sj(boolean z10) {
        boolean z11 = this.f20805xu == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.Fmk.isFinished()) {
                this.Fmk.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.Fmk.getCurrX();
                int currY = this.Fmk.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        EjP(currX);
                    }
                }
            }
        }
        this.wE = false;
        for (int i11 = 0; i11 < this.Jcg.size(); i11++) {
            sP sPVar = this.Jcg.get(i11);
            if (sPVar.TKC) {
                sPVar.TKC = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                postOnAnimation(this.Uc);
            } else {
                this.Uc.run();
            }
        }
    }

    private boolean Sj(float f11, float f12) {
        if (f11 >= this.fF || f12 <= 0.0f) {
            return f11 > ((float) (getWidth() - this.fF)) && f12 < 0.0f;
        }
        return true;
    }

    private void TEQ() {
        this.LqL = false;
        this.Yf = false;
        VelocityTracker velocityTracker = this.Fm;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.Fm = null;
        }
    }

    private void TKC(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    private static boolean TKC(View view) {
        return view.getClass().getAnnotation(Sj.class) != null;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void sP(int i11, float f11, int i12) {
        EjP ejP = this.pfr;
        if (ejP != null) {
            ejP.Sj(i11, f11, i12);
        }
        List<EjP> list = this.IOh;
        if (list != null) {
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                EjP ejP2 = this.IOh.get(i13);
                if (ejP2 != null) {
                    ejP2.Sj(i11, f11, i12);
                }
            }
        }
        EjP ejP3 = this.EZ;
        if (ejP3 != null) {
            ejP3.Sj(i11, f11, i12);
        }
    }

    private void sP(boolean z10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            getChildAt(i11).setLayerType(z10 ? this.Bml : 0, null);
        }
    }

    private boolean sP(float f11) {
        boolean z10;
        boolean z11;
        float f12 = this.WMZ - f11;
        this.WMZ = f11;
        float scrollX = getScrollX() + f12;
        float clientWidth = getClientWidth();
        float f13 = this.sU * clientWidth;
        float f14 = this.f20802dx * clientWidth;
        boolean z12 = false;
        sP sPVar = this.Jcg.get(0);
        ArrayList<sP> arrayList = this.Jcg;
        sP sPVar2 = arrayList.get(arrayList.size() - 1);
        if (sPVar.sP != 0) {
            f13 = sPVar.HiB * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (sPVar2.sP != this.TKC.Sj() - 1) {
            f14 = sPVar2.HiB * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f13) {
            if (z10) {
                this.ndK.onPull(Math.abs(f13 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        } else if (scrollX > f14) {
            if (z11) {
                this.qRN.onPull(Math.abs(scrollX - f14) / clientWidth);
                z12 = true;
            }
            scrollX = f14;
        }
        int i11 = (int) scrollX;
        this.WMZ += scrollX - i11;
        scrollTo(i11, getScrollY());
        EjP(i11);
        return z12;
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.uP != z10) {
            this.uP = z10;
        }
    }

    private sP uA() {
        int i11;
        int clientWidth = getClientWidth();
        float f11 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f12 = clientWidth > 0 ? this.uvD / clientWidth : 0.0f;
        int i12 = 0;
        boolean z10 = true;
        sP sPVar = null;
        int i13 = -1;
        float f13 = 0.0f;
        while (i12 < this.Jcg.size()) {
            sP sPVar2 = this.Jcg.get(i12);
            if (!z10 && sPVar2.sP != (i11 = i13 + 1)) {
                sPVar2 = this.Dq;
                sPVar2.HiB = f11 + f13 + f12;
                sPVar2.sP = i11;
                sPVar2.EjP = this.TKC.Sj(i11);
                i12--;
            }
            sP sPVar3 = sPVar2;
            f11 = sPVar3.HiB;
            float f14 = sPVar3.EjP + f11 + f12;
            if (!z10 && scrollX < f11) {
                return sPVar;
            }
            if (scrollX < f14 || i12 == this.Jcg.size() - 1) {
                return sPVar3;
            }
            int i14 = sPVar3.sP;
            float f15 = sPVar3.EjP;
            i12++;
            z10 = false;
            i13 = i14;
            f13 = f15;
            sPVar = sPVar3;
        }
        return sPVar;
    }

    private void vS() {
        int i11 = 0;
        while (i11 < getChildCount()) {
            if (!((C0196TKC) getChildAt(i11).getLayoutParams()).Sj) {
                removeViewAt(i11);
                i11--;
            }
            i11++;
        }
    }

    private void vS(int i11) {
        EjP ejP = this.pfr;
        if (ejP != null) {
            ejP.Ym(i11);
        }
        List<EjP> list = this.IOh;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                EjP ejP2 = this.IOh.get(i12);
                if (ejP2 != null) {
                    ejP2.Ym(i11);
                }
            }
        }
        EjP ejP3 = this.EZ;
        if (ejP3 != null) {
            ejP3.Ym(i11);
        }
    }

    boolean EjP() {
        int i11 = this.EjP;
        if (i11 <= 0) {
            return false;
        }
        Sj(i11 - 1, true);
        return true;
    }

    boolean HiB() {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar = this.TKC;
        if (sPVar == null || this.EjP >= sPVar.Sj() - 1) {
            return false;
        }
        Sj(this.EjP + 1, true);
        return true;
    }

    float Sj(float f11) {
        return (float) Math.sin((f11 - 0.5f) * 0.47123894f);
    }

    sP Sj(int i11, int i12) {
        sP sPVar = new sP();
        sPVar.sP = i11;
        sPVar.Sj = this.TKC.Sj((ViewGroup) this, i11);
        sPVar.EjP = this.TKC.Sj(i11);
        if (i12 < 0 || i12 >= this.Jcg.size()) {
            this.Jcg.add(sPVar);
        } else {
            this.Jcg.add(i12, sPVar);
        }
        return sPVar;
    }

    sP Sj(View view) {
        for (int i11 = 0; i11 < this.Jcg.size(); i11++) {
            sP sPVar = this.Jcg.get(i11);
            if (this.TKC.Sj(view, sPVar.Sj)) {
                return sPVar;
            }
        }
        return null;
    }

    void Sj() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.Fmk = new Scroller(context, vS);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f11 = context.getResources().getDisplayMetrics().density;
        this.JcM = viewConfiguration.getScaledPagingTouchSlop();
        this.f20804jb = (int) (400.0f * f11);
        this.Ei = viewConfiguration.getScaledMaximumFlingVelocity();
        this.ndK = new EdgeEffect(context);
        this.qRN = new EdgeEffect(context);
        this.HpB = (int) (25.0f * f11);
        this.xhi = (int) (2.0f * f11);
        this.LD = (int) (f11 * 16.0f);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c5 A[PHI: r7 r10 r15
  0x00c5: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:63:0x00e9, B:60:0x00d3, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]
  0x00c5: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:63:0x00e9, B:60:0x00d3, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]
  0x00c5: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:63:0x00e9, B:60:0x00d3, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]] */
    void Sj(int i11) {
        sP sPVarSP;
        String hexString;
        sP sPVarSj;
        sP sPVarSj2;
        sP sPVar;
        int i12 = this.EjP;
        if (i12 != i11) {
            sPVarSP = sP(i12);
            this.EjP = i11;
        } else {
            sPVarSP = null;
        }
        if (this.TKC == null) {
            Jcg();
            return;
        }
        if (this.wE) {
            Jcg();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        int i13 = this.ley;
        int iMax = Math.max(0, this.EjP - i13);
        int iSj = this.TKC.Sj();
        int iMin = Math.min(iSj - 1, this.EjP + i13);
        if (iSj != this.Sj) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.Sj + ", found: " + iSj + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.TKC.getClass());
        }
        int i14 = 0;
        while (true) {
            if (i14 < this.Jcg.size()) {
                sPVarSj = this.Jcg.get(i14);
                int i15 = sPVarSj.sP;
                int i16 = this.EjP;
                if (i15 >= i16) {
                    if (i15 != i16) {
                        break;
                    } else {
                        break;
                    }
                }
                i14++;
            }
            sPVarSj = null;
            break;
        }
        if (sPVarSj == null && iSj > 0) {
            sPVarSj = Sj(this.EjP, i14);
        }
        if (sPVarSj != null) {
            int i17 = i14 - 1;
            sP sPVar2 = i17 >= 0 ? this.Jcg.get(i17) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - sPVarSj.EjP) + (getPaddingLeft() / clientWidth);
            float f11 = 0.0f;
            for (int i18 = this.EjP - 1; i18 >= 0; i18--) {
                if (f11 >= paddingLeft && i18 < iMax) {
                    if (sPVar2 == null) {
                        break;
                    }
                    if (i18 == sPVar2.sP && !sPVar2.TKC) {
                        this.Jcg.remove(i17);
                        this.TKC.Sj((ViewGroup) this, i18, sPVar2.Sj);
                        i17--;
                        i14--;
                        if (i17 >= 0) {
                            sPVar = this.Jcg.get(i17);
                        } else {
                            sPVar = null;
                        }
                        sPVar2 = sPVar;
                    }
                } else {
                    if (sPVar2 == null || i18 != sPVar2.sP) {
                        f11 += Sj(i18, i17 + 1).EjP;
                        i14++;
                        if (i17 >= 0) {
                            sPVar = this.Jcg.get(i17);
                        } else {
                            sPVar = null;
                        }
                    } else {
                        f11 += sPVar2.EjP;
                        i17--;
                        if (i17 >= 0) {
                            sPVar = this.Jcg.get(i17);
                        } else {
                            sPVar = null;
                        }
                    }
                    sPVar2 = sPVar;
                }
            }
            float f12 = sPVarSj.EjP;
            int i19 = i14 + 1;
            if (f12 < 2.0f) {
                sP sPVar3 = i19 < this.Jcg.size() ? this.Jcg.get(i19) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i20 = this.EjP;
                while (true) {
                    i20++;
                    if (i20 >= iSj) {
                        break;
                    }
                    if (f12 >= paddingRight && i20 > iMin) {
                        if (sPVar3 == null) {
                            break;
                        }
                        if (i20 == sPVar3.sP && !sPVar3.TKC) {
                            this.Jcg.remove(i19);
                            this.TKC.Sj((ViewGroup) this, i20, sPVar3.Sj);
                            if (i19 < this.Jcg.size()) {
                                sPVar3 = this.Jcg.get(i19);
                            }
                        }
                    } else if (sPVar3 == null || i20 != sPVar3.sP) {
                        sP sPVarSj3 = Sj(i20, i19);
                        i19++;
                        f12 += sPVarSj3.EjP;
                        sPVar3 = i19 < this.Jcg.size() ? this.Jcg.get(i19) : null;
                    } else {
                        f12 += sPVar3.EjP;
                        i19++;
                        if (i19 < this.Jcg.size()) {
                            sPVar3 = this.Jcg.get(i19);
                        }
                    }
                }
            }
            Sj(sPVarSj, i14, sPVarSP);
        }
        int childCount = getChildCount();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt = getChildAt(i21);
            C0196TKC c0196tkc = (C0196TKC) childAt.getLayoutParams();
            c0196tkc.vS = i21;
            if (!c0196tkc.Sj && c0196tkc.TKC == 0.0f && (sPVarSj2 = Sj(childAt)) != null) {
                c0196tkc.TKC = sPVarSj2.EjP;
                c0196tkc.HiB = sPVarSj2.sP;
            }
        }
        Jcg();
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            sP sPVarSP2 = viewFindFocus != null ? sP(viewFindFocus) : null;
            if (sPVarSP2 == null || sPVarSP2.sP != this.EjP) {
                for (int i22 = 0; i22 < getChildCount(); i22++) {
                    View childAt2 = getChildAt(i22);
                    sP sPVarSj4 = Sj(childAt2);
                    if (sPVarSj4 != null && sPVarSj4.sP == this.EjP && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    protected void Sj(int i11, float f11, int i12) {
        int iMax;
        int width;
        int left;
        if (this.MuB > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                C0196TKC c0196tkc = (C0196TKC) childAt.getLayoutParams();
                if (c0196tkc.Sj) {
                    int i14 = c0196tkc.sP & 7;
                    if (i14 != 1) {
                        if (i14 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i14 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i15 = iMax;
                    width = paddingLeft;
                    paddingLeft = i15;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        sP(i11, f11, i12);
        if (this.Chv != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i16 = 0; i16 < childCount2; i16++) {
                View childAt2 = getChildAt(i16);
                if (!((C0196TKC) childAt2.getLayoutParams()).Sj) {
                    this.Chv.Sj(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.sdp = true;
    }

    void Sj(int i11, int i12, int i13) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.Fmk;
        if (scroller == null || scroller.isFinished()) {
            scrollX = getScrollX();
        } else {
            scrollX = this.sef ? this.Fmk.getCurrX() : this.Fmk.getStartX();
            this.Fmk.abortAnimation();
            setScrollingCacheEnabled(false);
        }
        int i14 = scrollX;
        int scrollY = getScrollY();
        int i15 = i11 - i14;
        int i16 = i12 - scrollY;
        if (i15 == 0 && i16 == 0) {
            Sj(false);
            TKC();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i17 = clientWidth / 2;
        float f11 = clientWidth;
        float f12 = i17;
        float fSj = f12 + (Sj(Math.min(1.0f, (Math.abs(i15) * 1.0f) / f11)) * f12);
        int iAbs2 = Math.abs(i13);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fSj / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i15) / ((f11 * this.TKC.Sj(this.EjP)) + this.uvD)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.sef = false;
        this.Fmk.startScroll(i14, scrollY, i15, i16, iMin);
        postInvalidateOnAnimation();
    }

    public void Sj(int i11, boolean z10) {
        this.wE = false;
        Sj(i11, z10, false);
    }

    void Sj(int i11, boolean z10, boolean z11) {
        Sj(i11, z10, z11, 0);
    }

    void Sj(int i11, boolean z10, boolean z11, int i12) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar = this.TKC;
        if (sPVar == null || sPVar.Sj() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z11 && this.EjP == i11 && this.Jcg.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i11 < 0) {
            i11 = 0;
        } else if (i11 >= this.TKC.Sj()) {
            i11 = this.TKC.Sj() - 1;
        }
        int i13 = this.ley;
        int i14 = this.EjP;
        if (i11 > i14 + i13 || i11 < i14 - i13) {
            for (int i15 = 0; i15 < this.Jcg.size(); i15++) {
                this.Jcg.get(i15).TKC = true;
            }
        }
        boolean z12 = this.EjP != i11;
        if (!this.UHs) {
            Sj(i11);
            Sj(i11, z10, i12, z12);
        } else {
            this.EjP = i11;
            if (z12) {
                HiB(i11);
            }
            requestLayout();
        }
    }

    public void Sj(EjP ejP) {
        if (this.IOh == null) {
            this.IOh = new ArrayList();
        }
        this.IOh.add(ejP);
    }

    public void Sj(boolean z10, HiB hiB) {
        Sj(z10, hiB, 2);
    }

    public void Sj(boolean z10, HiB hiB, int i11) {
        boolean z11 = hiB != null;
        boolean z12 = z11 != (this.Chv != null);
        this.Chv = hiB;
        setChildrenDrawingOrderEnabled(z11);
        if (z11) {
            this.aNB = z10 ? 2 : 1;
            this.Bml = i11;
        } else {
            this.aNB = 0;
        }
        if (z12) {
            TKC();
        }
    }

    public boolean Sj(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return keyEvent.hasModifiers(2) ? EjP() : TKC(17);
            }
            if (keyCode == 22) {
                return keyEvent.hasModifiers(2) ? HiB() : TKC(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return TKC(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return TKC(1);
                }
            }
        }
        return false;
    }

    protected boolean Sj(View view, boolean z10, int i11, int i12, int i13) {
        int i14;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i15 = i12 + scrollX;
                if (i15 >= childAt.getLeft() && i15 < childAt.getRight() && (i14 = i13 + scrollY) >= childAt.getTop() && i14 < childAt.getBottom() && Sj(childAt, true, i11, i15 - childAt.getLeft(), i14 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i11);
    }

    void TKC() {
        Sj(this.EjP);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b9  */
    public boolean TKC(int i11) {
        boolean zEjP;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb2.append(" => ");
                        sb2.append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb2.toString());
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i11);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i11 == 17 || i11 == 1) {
                zEjP = EjP();
            } else if (i11 == 66 || i11 == 2) {
                zEjP = HiB();
            } else {
                zEjP = false;
            }
        } else if (i11 == 17) {
            zEjP = (viewFindFocus == null || Sj(this.uA, viewFindNextFocus).left < Sj(this.uA, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : EjP();
        } else if (i11 == 66) {
            int i12 = Sj(this.uA, viewFindNextFocus).left;
            int i13 = Sj(this.uA, viewFindFocus).left;
            if (viewFindFocus == null || i12 > i13) {
                zEjP = viewFindNextFocus.requestFocus();
            } else {
                zEjP = HiB();
            }
        } else {
            zEjP = false;
        }
        if (zEjP) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i11));
        }
        return zEjP;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i11, int i12) {
        sP sPVarSj;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i13 = 0; i13 < getChildCount(); i13++) {
                View childAt = getChildAt(i13);
                if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP) {
                    childAt.addFocusables(arrayList, i11, i12);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i12 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        sP sPVarSj;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C0196TKC c0196tkc = (C0196TKC) layoutParams;
        boolean zTKC = c0196tkc.Sj | TKC(view);
        c0196tkc.Sj = zTKC;
        if (!this.kF) {
            super.addView(view, i11, layoutParams);
        } else {
            if (zTKC) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            c0196tkc.EjP = true;
            addViewInLayout(view, i11, layoutParams);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i11) {
        if (this.TKC == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i11 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.sU));
        }
        return i11 > 0 && scrollX < ((int) (((float) clientWidth) * this.f20802dx));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0196TKC) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.sef = true;
        if (this.Fmk.isFinished() || !this.Fmk.computeScrollOffset()) {
            Sj(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.Fmk.getCurrX();
        int currY = this.Fmk.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!EjP(currX)) {
                this.Fmk.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || Sj(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        sP sPVarSj;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (sPVar = this.TKC) != null && sPVar.Sj() > 1)) {
            if (!this.ndK.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.sU * width);
                this.ndK.setSize(height, width);
                zDraw = this.ndK.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.qRN.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f20802dx + 1.0f)) * width2);
                this.qRN.setSize(height2, width2);
                zDraw |= this.qRN.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.ndK.finish();
            this.qRN.finish();
        }
        if (zDraw) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.dNu;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0196TKC();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0196TKC(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public com.bytedance.adsdk.ugeno.Dq.sP getAdapter() {
        return this.TKC;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i11, int i12) {
        if (this.aNB == 2) {
            i12 = (i11 - 1) - i12;
        }
        return ((C0196TKC) this.cX.get(i12).getLayoutParams()).vS;
    }

    public int getCurrentItem() {
        return this.EjP;
    }

    public int getOffscreenPageLimit() {
        return this.ley;
    }

    public int getPageMargin() {
        return this.uvD;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.UHs = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.Uc);
        Scroller scroller = this.Fmk;
        if (scroller != null && !scroller.isFinished()) {
            this.Fmk.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i11;
        float f11;
        super.onDraw(canvas);
        if (this.uvD <= 0 || this.dNu == null || this.Jcg.size() <= 0 || this.TKC == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f12 = width;
        float f13 = this.uvD / f12;
        int i12 = 0;
        sP sPVar = this.Jcg.get(0);
        float f14 = sPVar.HiB;
        int size = this.Jcg.size();
        int i13 = sPVar.sP;
        int i14 = this.Jcg.get(size - 1).sP;
        while (i13 < i14) {
            while (true) {
                i11 = sPVar.sP;
                if (i13 <= i11 || i12 >= size) {
                    break;
                }
                i12++;
                sPVar = this.Jcg.get(i12);
            }
            if (i13 == i11) {
                float f15 = sPVar.HiB;
                float f16 = sPVar.EjP;
                f11 = (f15 + f16) * f12;
                f14 = f15 + f16 + f13;
            } else {
                float fSj = this.TKC.Sj(i13);
                f11 = (f14 + fSj) * f12;
                f14 += fSj + f13;
            }
            if (this.uvD + f11 > scrollX) {
                this.dNu.setBounds(Math.round(f11), this.TzV, Math.round(this.uvD + f11), this.RiZ);
                this.dNu.draw(canvas);
            }
            if (f11 > scrollX + width) {
                return;
            }
            i13++;
            f13 = f13;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            Dq();
            return false;
        }
        if (action != 0) {
            if (this.LqL) {
                return true;
            }
            if (this.Yf) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.FPG = x10;
            this.WMZ = x10;
            float y10 = motionEvent.getY();
            this.Wjd = y10;
            this.Mts = y10;
            this.xD = motionEvent.getPointerId(0);
            this.Yf = false;
            this.sef = true;
            this.Fmk.computeScrollOffset();
            if (this.f20805xu != 2 || Math.abs(this.Fmk.getFinalX() - this.Fmk.getCurrX()) <= this.xhi) {
                Sj(false);
                this.LqL = false;
            } else {
                this.Fmk.abortAnimation();
                this.wE = false;
                TKC();
                this.LqL = true;
                TKC(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i11 = this.xD;
            if (i11 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i11)) != -1) {
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f11 = x11 - this.WMZ;
                float fAbs = Math.abs(f11);
                float y11 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y11 - this.Wjd);
                if (f11 != 0.0f && !Sj(this.WMZ, f11) && Sj(this, false, (int) f11, (int) x11, (int) y11)) {
                    this.WMZ = x11;
                    this.Mts = y11;
                    this.Yf = true;
                    return false;
                }
                int i12 = this.JcM;
                if (fAbs > i12 && fAbs * 0.5f > fAbs2) {
                    this.LqL = true;
                    TKC(true);
                    setScrollState(1);
                    float f12 = this.FPG;
                    float f13 = this.JcM;
                    this.WMZ = f11 > 0.0f ? f12 + f13 : f12 - f13;
                    this.Mts = y11;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i12) {
                    this.Yf = true;
                }
                if (this.LqL && sP(x11)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            Sj(motionEvent);
        }
        if (this.Fm == null) {
            this.Fm = VelocityTracker.obtain();
        }
        this.Fm.addMovement(motionEvent);
        return this.LqL;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        boolean z11;
        sP sPVarSj;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i15 = i13 - i11;
        int i16 = i14 - i12;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                C0196TKC c0196tkc = (C0196TKC) childAt.getLayoutParams();
                if (c0196tkc.Sj) {
                    int i19 = c0196tkc.sP;
                    int i20 = i19 & 7;
                    int i21 = i19 & 112;
                    if (i20 != 1) {
                        if (i20 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i20 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i15 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i21 != 16) {
                            if (i21 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i21 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i16 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i22 = paddingLeft + scrollX;
                            childAt.layout(i22, paddingTop, childAt.getMeasuredWidth() + i22, paddingTop + childAt.getMeasuredHeight());
                            i17++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i16 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i23 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i23;
                        int i24 = paddingLeft + scrollX;
                        childAt.layout(i24, paddingTop, childAt.getMeasuredWidth() + i24, paddingTop + childAt.getMeasuredHeight());
                        i17++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i15 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i25 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i25;
                    if (i21 != 16) {
                        if (i21 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i21 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i16 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i26 = paddingLeft + scrollX;
                        childAt.layout(i26, paddingTop, childAt.getMeasuredWidth() + i26, paddingTop + childAt.getMeasuredHeight());
                        i17++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i16 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i27 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i27;
                    int i28 = paddingLeft + scrollX;
                    childAt.layout(i28, paddingTop, childAt.getMeasuredWidth() + i28, paddingTop + childAt.getMeasuredHeight());
                    i17++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i29 = (i15 - paddingLeft) - paddingRight;
        for (int i30 = 0; i30 < childCount; i30++) {
            View childAt2 = getChildAt(i30);
            if (childAt2.getVisibility() != 8) {
                C0196TKC c0196tkc2 = (C0196TKC) childAt2.getLayoutParams();
                if (!c0196tkc2.Sj && (sPVarSj = Sj(childAt2)) != null) {
                    float f11 = i29;
                    int i31 = ((int) (sPVarSj.HiB * f11)) + paddingLeft;
                    if (c0196tkc2.EjP) {
                        c0196tkc2.EjP = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f11 * c0196tkc2.TKC), 1073741824), View.MeasureSpec.makeMeasureSpec((i16 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i31, paddingTop, childAt2.getMeasuredWidth() + i31, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.TzV = paddingTop;
        this.RiZ = i16 - paddingBottom;
        this.MuB = i17;
        if (this.UHs) {
            z11 = false;
            Sj(this.EjP, false, 0, false);
        } else {
            z11 = false;
        }
        this.UHs = z11;
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        C0196TKC c0196tkc;
        C0196TKC c0196tkc2;
        int i13;
        setMeasuredDimension(View.getDefaultSize(0, i11), View.getDefaultSize(0, i12));
        int measuredWidth = getMeasuredWidth();
        this.fF = Math.min(measuredWidth / 10, this.LD);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i14 = 0;
        while (true) {
            boolean z10 = true;
            int i15 = 1073741824;
            if (i14 >= childCount) {
                break;
            }
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8 && (c0196tkc2 = (C0196TKC) childAt.getLayoutParams()) != null && c0196tkc2.Sj) {
                int i16 = c0196tkc2.sP;
                int i17 = i16 & 7;
                int i18 = i16 & 112;
                boolean z11 = i18 == 48 || i18 == 80;
                if (i17 != 3 && i17 != 5) {
                    z10 = false;
                }
                int i19 = Integer.MIN_VALUE;
                if (z11) {
                    i13 = Integer.MIN_VALUE;
                    i19 = 1073741824;
                } else {
                    i13 = z10 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i20 = ((ViewGroup.LayoutParams) c0196tkc2).width;
                if (i20 != -2) {
                    if (i20 == -1) {
                        i20 = paddingLeft;
                    }
                    i19 = 1073741824;
                } else {
                    i20 = paddingLeft;
                }
                int i21 = ((ViewGroup.LayoutParams) c0196tkc2).height;
                if (i21 == -2) {
                    i21 = measuredHeight;
                    i15 = i13;
                } else if (i21 == -1) {
                    i21 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i20, i19), View.MeasureSpec.makeMeasureSpec(i21, i15));
                if (z11) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z10) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i14++;
        }
        this.zR = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f20803ib = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.kF = true;
        TKC();
        this.kF = false;
        int childCount2 = getChildCount();
        for (int i22 = 0; i22 < childCount2; i22++) {
            View childAt2 = getChildAt(i22);
            if (childAt2.getVisibility() != 8 && ((c0196tkc = (C0196TKC) childAt2.getLayoutParams()) == null || !c0196tkc.Sj)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * c0196tkc.TKC), 1073741824), this.f20803ib);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i11, Rect rect) {
        int i12;
        int i13;
        int i14;
        sP sPVarSj;
        int childCount = getChildCount();
        if ((i11 & 2) != 0) {
            i13 = childCount;
            i12 = 0;
            i14 = 1;
        } else {
            i12 = childCount - 1;
            i13 = -1;
            i14 = -1;
        }
        while (i12 != i13) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 0 && (sPVarSj = Sj(childAt)) != null && sPVarSj.sP == this.EjP && childAt.requestFocus(i11, rect)) {
                return true;
            }
            i12 += i14;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Jcg)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Jcg jcg = (Jcg) parcelable;
        super.onRestoreInstanceState(jcg.Sj());
        if (this.TKC != null) {
            Sj(jcg.sP, false, true);
            return;
        }
        this.TEQ = jcg.sP;
        this.Ym = jcg.TKC;
        this.f20800aa = jcg.EjP;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Jcg jcg = new Jcg(super.onSaveInstanceState());
        jcg.sP = this.EjP;
        com.bytedance.adsdk.ugeno.Dq.sP sPVar = this.TKC;
        if (sPVar != null) {
            jcg.TKC = sPVar.sP();
        }
        return jcg;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 != i13) {
            int i15 = this.uvD;
            Sj(i11, i13, i15, i15);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar;
        int iFindPointerIndex;
        if (this.f20801db) {
            return true;
        }
        boolean zDq = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (sPVar = this.TKC) == null || sPVar.Sj() == 0) {
            return false;
        }
        if (this.Fm == null) {
            this.Fm = VelocityTracker.obtain();
        }
        this.Fm.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.Fmk.abortAnimation();
            this.wE = false;
            TKC();
            float x10 = motionEvent.getX();
            this.FPG = x10;
            this.WMZ = x10;
            float y10 = motionEvent.getY();
            this.Wjd = y10;
            this.Mts = y10;
            this.xD = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (actionIndex != -1) {
                            this.WMZ = motionEvent.getX(actionIndex);
                            this.xD = motionEvent.getPointerId(actionIndex);
                        }
                    } else if (action == 6) {
                        Sj(motionEvent);
                        int iFindPointerIndex2 = motionEvent.findPointerIndex(this.xD);
                        if (iFindPointerIndex2 != -1) {
                            this.WMZ = motionEvent.getX(iFindPointerIndex2);
                        }
                    }
                } else if (this.LqL) {
                    Sj(this.EjP, true, 0, false);
                    zDq = Dq();
                }
            } else if (!this.LqL) {
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.xD);
                if (iFindPointerIndex3 == -1) {
                    zDq = Dq();
                } else {
                    float x11 = motionEvent.getX(iFindPointerIndex3);
                    float fAbs = Math.abs(x11 - this.WMZ);
                    float y11 = motionEvent.getY(iFindPointerIndex3);
                    float fAbs2 = Math.abs(y11 - this.Mts);
                    if (fAbs > this.JcM && fAbs > fAbs2) {
                        this.LqL = true;
                        TKC(true);
                        float f11 = this.FPG;
                        this.WMZ = x11 - f11 > 0.0f ? f11 + this.JcM : f11 - this.JcM;
                        this.Mts = y11;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.LqL) {
                        zDq = sP(motionEvent.getX(iFindPointerIndex));
                    }
                }
            } else if (this.LqL && (iFindPointerIndex = motionEvent.findPointerIndex(this.xD)) != -1) {
                zDq = sP(motionEvent.getX(iFindPointerIndex));
            }
        } else if (this.LqL) {
            VelocityTracker velocityTracker = this.Fm;
            velocityTracker.computeCurrentVelocity(1000, this.Ei);
            int xVelocity = (int) velocityTracker.getXVelocity(this.xD);
            this.wE = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            sP sPVarUA = uA();
            float f12 = clientWidth;
            float f13 = this.uvD / f12;
            int i11 = sPVarUA.sP;
            float f14 = ((scrollX / f12) - sPVarUA.HiB) / (sPVarUA.EjP + f13);
            int iFindPointerIndex4 = motionEvent.findPointerIndex(this.xD);
            if (iFindPointerIndex4 != -1) {
                Sj(Sj(i11, f14, xVelocity, (int) (motionEvent.getX(iFindPointerIndex4) - this.FPG)), true, true, xVelocity);
                zDq = Dq();
            }
        }
        if (zDq) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.kF) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    sP sP(int i11) {
        for (int i12 = 0; i12 < this.Jcg.size(); i12++) {
            sP sPVar = this.Jcg.get(i12);
            if (sPVar.sP == i11) {
                return sPVar;
            }
        }
        return null;
    }

    sP sP(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return Sj(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    void sP() {
        int iSj = this.TKC.Sj();
        this.Sj = iSj;
        boolean z10 = this.Jcg.size() < (this.ley * 2) + 1 && this.Jcg.size() < iSj;
        int iMax = this.EjP;
        int i11 = 0;
        while (i11 < this.Jcg.size()) {
            sP sPVar = this.Jcg.get(i11);
            int iSj2 = this.TKC.Sj(sPVar.Sj);
            if (iSj2 != -1) {
                if (iSj2 == -2) {
                    this.Jcg.remove(i11);
                    i11--;
                    this.TKC.Sj((ViewGroup) this, sPVar.sP, sPVar.Sj);
                    int i12 = this.EjP;
                    if (i12 == sPVar.sP) {
                        iMax = Math.max(0, Math.min(i12, iSj - 1));
                    }
                } else {
                    int i13 = sPVar.sP;
                    if (i13 != iSj2) {
                        if (i13 == this.EjP) {
                            iMax = iSj2;
                        }
                        sPVar.sP = iSj2;
                    }
                }
                z10 = true;
            }
            i11++;
        }
        Collections.sort(this.Jcg, HiB);
        if (z10) {
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                C0196TKC c0196tkc = (C0196TKC) getChildAt(i14).getLayoutParams();
                if (!c0196tkc.Sj) {
                    c0196tkc.TKC = 0.0f;
                }
            }
            Sj(iMax, false, true);
            requestLayout();
        }
    }

    public void setAdapter(com.bytedance.adsdk.ugeno.Dq.sP sPVar) {
        com.bytedance.adsdk.ugeno.Dq.sP sPVar2 = this.TKC;
        if (sPVar2 != null) {
            sPVar2.Sj((DataSetObserver) null);
            for (int i11 = 0; i11 < this.Jcg.size(); i11++) {
                sP sPVar3 = this.Jcg.get(i11);
                this.TKC.Sj((ViewGroup) this, sPVar3.sP, sPVar3.Sj);
            }
            this.Jcg.clear();
            vS();
            this.EjP = 0;
            scrollTo(0, 0);
        }
        this.TKC = sPVar;
        this.Sj = 0;
        if (sPVar != null) {
            if (this.Zq == null) {
                this.Zq = new vS();
            }
            this.TKC.Sj((DataSetObserver) this.Zq);
            this.wE = false;
            boolean z10 = this.UHs;
            this.UHs = true;
            this.Sj = this.TKC.Sj();
            int i12 = this.TEQ;
            if (i12 >= 0) {
                Sj(i12, false, true);
                this.TEQ = -1;
                this.Ym = null;
                this.f20800aa = null;
            } else if (z10) {
                requestLayout();
            } else {
                TKC();
            }
        }
        List<Object> list = this.gY;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.gY.size();
        for (int i13 = 0; i13 < size; i13++) {
            this.gY.get(i13);
        }
    }

    public void setCurrentItem(int i11) {
        this.wE = false;
        Sj(i11, !this.UHs, false);
    }

    public void setOffscreenPageLimit(int i11) {
        if (i11 <= 0) {
            Log.w("ViewPager", "Requested offscreen page limit " + i11 + " too small; defaulting to 1");
            i11 = 1;
        }
        if (i11 != this.ley) {
            this.ley = i11;
            TKC();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(EjP ejP) {
        this.pfr = ejP;
    }

    public void setPageMargin(int i11) {
        int i12 = this.uvD;
        this.uvD = i11;
        int width = getWidth();
        Sj(width, width, i11, i12);
        requestLayout();
    }

    public void setPageMarginDrawable(int i11) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i11));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.dNu = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i11) {
        if (this.f20805xu == i11) {
            return;
        }
        this.f20805xu = i11;
        if (this.Chv != null) {
            sP(i11 != 0);
        }
        vS(i11);
    }

    public void setScroller(Scroller scroller) {
        this.Fmk = scroller;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.dNu;
    }
}
