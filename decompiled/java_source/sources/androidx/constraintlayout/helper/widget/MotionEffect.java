package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.a;
import androidx.constraintlayout.motion.widget.e;
import androidx.constraintlayout.motion.widget.h;
import androidx.constraintlayout.motion.widget.m;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = "FadeMove";
    public static final int WEST = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7133n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f7136q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f7137r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f7138s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7139t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7140u;

    public MotionEffect(Context context) {
        super(context);
        this.f7133n = 0.1f;
        this.f7134o = 49;
        this.f7135p = 50;
        this.f7136q = 0;
        this.f7137r = 0;
        this.f7138s = true;
        this.f7139t = -1;
        this.f7140u = -1;
    }

    public MotionEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7133n = 0.1f;
        this.f7134o = 49;
        this.f7135p = 50;
        this.f7136q = 0;
        this.f7137r = 0;
        this.f7138s = true;
        this.f7139t = -1;
        this.f7140u = -1;
        l(context, attributeSet);
    }

    public MotionEffect(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7133n = 0.1f;
        this.f7134o = 49;
        this.f7135p = 50;
        this.f7136q = 0;
        this.f7137r = 0;
        this.f7138s = true;
        this.f7139t = -1;
        this.f7140u = -1;
        l(context, attributeSet);
    }

    private void l(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionEffect);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.MotionEffect_motionEffect_start) {
                    int i12 = typedArrayObtainStyledAttributes.getInt(index, this.f7134o);
                    this.f7134o = i12;
                    this.f7134o = Math.max(Math.min(i12, 99), 0);
                } else if (index == R$styleable.MotionEffect_motionEffect_end) {
                    int i13 = typedArrayObtainStyledAttributes.getInt(index, this.f7135p);
                    this.f7135p = i13;
                    this.f7135p = Math.max(Math.min(i13, 99), 0);
                } else if (index == R$styleable.MotionEffect_motionEffect_translationX) {
                    this.f7136q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7136q);
                } else if (index == R$styleable.MotionEffect_motionEffect_translationY) {
                    this.f7137r = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7137r);
                } else if (index == R$styleable.MotionEffect_motionEffect_alpha) {
                    this.f7133n = typedArrayObtainStyledAttributes.getFloat(index, this.f7133n);
                } else if (index == R$styleable.MotionEffect_motionEffect_move) {
                    this.f7140u = typedArrayObtainStyledAttributes.getInt(index, this.f7140u);
                } else if (index == R$styleable.MotionEffect_motionEffect_strict) {
                    this.f7138s = typedArrayObtainStyledAttributes.getBoolean(index, this.f7138s);
                } else if (index == R$styleable.MotionEffect_motionEffect_viewTransition) {
                    this.f7139t = typedArrayObtainStyledAttributes.getResourceId(index, this.f7139t);
                }
            }
            int i14 = this.f7134o;
            int i15 = this.f7135p;
            if (i14 == i15) {
                if (i14 > 0) {
                    this.f7134o = i14 - 1;
                } else {
                    this.f7135p = i15 + 1;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    public boolean isDecorator() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0161  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01db  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e4  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0185, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0199, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a9, code lost:
    
        if (r15 == 0.0f) goto L58;
     */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreSetup(MotionLayout motionLayout, HashMap<View, m> map) {
        e eVar;
        e eVar2;
        e eVar3;
        int i11;
        HashMap<View, m> map2 = map;
        View[] viewArrJ = j((ConstraintLayout) getParent());
        if (viewArrJ == null) {
            Log.v(TAG, a.a() + " views = null");
            return;
        }
        e eVar4 = new e();
        e eVar5 = new e();
        eVar4.R("alpha", Float.valueOf(this.f7133n));
        eVar5.R("alpha", Float.valueOf(this.f7133n));
        eVar4.g(this.f7134o);
        eVar5.g(this.f7135p);
        h hVar = new h();
        hVar.g(this.f7134o);
        hVar.m(0);
        hVar.n("percentX", 0);
        hVar.n("percentY", 0);
        h hVar2 = new h();
        hVar2.g(this.f7135p);
        hVar2.m(0);
        hVar2.n("percentX", 1);
        hVar2.n("percentY", 1);
        e eVar6 = null;
        if (this.f7136q > 0) {
            eVar = new e();
            eVar2 = new e();
            eVar.R("translationX", Integer.valueOf(this.f7136q));
            eVar.g(this.f7135p);
            eVar2.R("translationX", 0);
            eVar2.g(this.f7135p - 1);
        } else {
            eVar = null;
            eVar2 = null;
        }
        if (this.f7137r > 0) {
            eVar6 = new e();
            eVar3 = new e();
            eVar6.R("translationY", Integer.valueOf(this.f7137r));
            eVar6.g(this.f7135p);
            eVar3.R("translationY", 0);
            eVar3.g(this.f7135p - 1);
        } else {
            eVar3 = null;
        }
        int i12 = this.f7140u;
        if (i12 == -1) {
            int[] iArr = new int[4];
            for (View view : viewArrJ) {
                m mVar = map2.get(view);
                if (mVar != null) {
                    float fN = mVar.n() - mVar.t();
                    float fO = mVar.o() - mVar.u();
                    if (fO < 0.0f) {
                        iArr[1] = iArr[1] + 1;
                    }
                    if (fO > 0.0f) {
                        iArr[0] = iArr[0] + 1;
                    }
                    if (fN > 0.0f) {
                        iArr[3] = iArr[3] + 1;
                    }
                    if (fN < 0.0f) {
                        iArr[2] = iArr[2] + 1;
                    }
                }
            }
            int i13 = iArr[0];
            i12 = 0;
            for (int i14 = 1; i14 < 4; i14++) {
                int i15 = iArr[i14];
                if (i13 < i15) {
                    i13 = i15;
                    i12 = i14;
                }
            }
        }
        int i16 = 0;
        while (i16 < viewArrJ.length) {
            m mVar2 = map2.get(viewArrJ[i16]);
            if (mVar2 != null) {
                float fN2 = mVar2.n() - mVar2.t();
                float fO2 = mVar2.o() - mVar2.u();
                if (i12 == 0) {
                    if (fO2 > 0.0f) {
                        if (this.f7138s) {
                        }
                    }
                    i11 = this.f7139t;
                    if (i11 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f7136q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f7137r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i11, mVar2);
                    }
                } else if (i12 == 1) {
                    if (fO2 < 0.0f) {
                        if (this.f7138s) {
                        }
                    }
                    i11 = this.f7139t;
                    if (i11 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f7136q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f7137r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i11, mVar2);
                    }
                } else if (i12 == 2) {
                    if (fN2 < 0.0f) {
                        if (this.f7138s) {
                        }
                    }
                    i11 = this.f7139t;
                    if (i11 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f7136q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f7137r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i11, mVar2);
                    }
                } else if (i12 != 3 || fN2 <= 0.0f || (this.f7138s && fO2 != 0.0f)) {
                    i11 = this.f7139t;
                    if (i11 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f7136q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f7137r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i11, mVar2);
                    }
                }
            }
            i16++;
            map2 = map;
        }
    }
}
