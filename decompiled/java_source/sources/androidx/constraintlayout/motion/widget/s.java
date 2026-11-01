package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static String f7494w = "ViewTransition";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7495a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f7499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    g f7500f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    androidx.constraintlayout.widget.b.a f7501g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f7504j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7505k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f7509o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7496b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7497c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7498d = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7502h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7503i = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f7506l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f7507m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f7508n = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7510p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f7511q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f7512r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f7513s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7514t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7515u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f7516v = -1;

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.constraintlayout.core.motion.utils.c f7517a;

        a(s sVar, androidx.constraintlayout.core.motion.utils.c cVar) {
            this.f7517a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            return (float) this.f7517a.a(f11);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f7518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f7519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f7520c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        m f7521d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f7522e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f7523f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        t f7525h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Interpolator f7526i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f7528k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f7529l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        long f7530m;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f7532o;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        androidx.constraintlayout.core.motion.utils.d f7524g = new androidx.constraintlayout.core.motion.utils.d();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f7527j = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        Rect f7531n = new Rect();

        b(t tVar, m mVar, int i11, int i12, int i13, Interpolator interpolator, int i14, int i15) {
            this.f7532o = false;
            this.f7525h = tVar;
            this.f7521d = mVar;
            this.f7522e = i11;
            this.f7523f = i12;
            long jNanoTime = System.nanoTime();
            this.f7520c = jNanoTime;
            this.f7530m = jNanoTime;
            this.f7525h.b(this);
            this.f7526i = interpolator;
            this.f7518a = i14;
            this.f7519b = i15;
            if (i13 == 3) {
                this.f7532o = true;
            }
            this.f7529l = i11 == 0 ? Float.MAX_VALUE : 1.0f / i11;
            a();
        }

        void a() {
            if (this.f7527j) {
                c();
            } else {
                b();
            }
        }

        void b() {
            long jNanoTime = System.nanoTime();
            long j11 = jNanoTime - this.f7530m;
            this.f7530m = jNanoTime;
            float f11 = this.f7528k + (((float) (j11 * 1.0E-6d)) * this.f7529l);
            this.f7528k = f11;
            if (f11 >= 1.0f) {
                this.f7528k = 1.0f;
            }
            Interpolator interpolator = this.f7526i;
            float interpolation = interpolator == null ? this.f7528k : interpolator.getInterpolation(this.f7528k);
            m mVar = this.f7521d;
            boolean zX = mVar.x(mVar.f7377b, interpolation, jNanoTime, this.f7524g);
            if (this.f7528k >= 1.0f) {
                if (this.f7518a != -1) {
                    this.f7521d.v().setTag(this.f7518a, Long.valueOf(System.nanoTime()));
                }
                if (this.f7519b != -1) {
                    this.f7521d.v().setTag(this.f7519b, null);
                }
                if (!this.f7532o) {
                    this.f7525h.i(this);
                }
            }
            if (this.f7528k < 1.0f || zX) {
                this.f7525h.f();
            }
        }

        void c() {
            long jNanoTime = System.nanoTime();
            long j11 = jNanoTime - this.f7530m;
            this.f7530m = jNanoTime;
            float f11 = this.f7528k - (((float) (j11 * 1.0E-6d)) * this.f7529l);
            this.f7528k = f11;
            if (f11 < 0.0f) {
                this.f7528k = 0.0f;
            }
            Interpolator interpolator = this.f7526i;
            float interpolation = interpolator == null ? this.f7528k : interpolator.getInterpolation(this.f7528k);
            m mVar = this.f7521d;
            boolean zX = mVar.x(mVar.f7377b, interpolation, jNanoTime, this.f7524g);
            if (this.f7528k <= 0.0f) {
                if (this.f7518a != -1) {
                    this.f7521d.v().setTag(this.f7518a, Long.valueOf(System.nanoTime()));
                }
                if (this.f7519b != -1) {
                    this.f7521d.v().setTag(this.f7519b, null);
                }
                this.f7525h.i(this);
            }
            if (this.f7528k > 0.0f || zX) {
                this.f7525h.f();
            }
        }

        public void d(int i11, float f11, float f12) {
            if (i11 == 1) {
                if (this.f7527j) {
                    return;
                }
                e(true);
            } else {
                if (i11 != 2) {
                    return;
                }
                this.f7521d.v().getHitRect(this.f7531n);
                if (this.f7531n.contains((int) f11, (int) f12) || this.f7527j) {
                    return;
                }
                e(true);
            }
        }

        void e(boolean z10) {
            int i11;
            this.f7527j = z10;
            if (z10 && (i11 = this.f7523f) != -1) {
                this.f7529l = i11 == 0 ? Float.MAX_VALUE : 1.0f / i11;
            }
            this.f7525h.f();
            this.f7530m = System.nanoTime();
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    s(Context context, XmlPullParser xmlPullParser) {
        byte b11;
        this.f7509o = context;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (!name.equals("ConstraintOverride")) {
                                b11 = -1;
                            } else {
                                b11 = 2;
                            }
                            break;
                        case -1239391468:
                            if (!name.equals("KeyFrameSet")) {
                                b11 = -1;
                            } else {
                                b11 = 1;
                            }
                            break;
                        case 61998586:
                            if (!name.equals("ViewTransition")) {
                                b11 = -1;
                            } else {
                                b11 = 0;
                            }
                            break;
                        case 366511058:
                            if (!name.equals("CustomMethod")) {
                                b11 = -1;
                            } else {
                                b11 = 4;
                            }
                            break;
                        case 1791837707:
                            if (!name.equals("CustomAttribute")) {
                                b11 = -1;
                            } else {
                                b11 = 3;
                            }
                            break;
                        default:
                            b11 = -1;
                            break;
                    }
                    if (b11 == 0) {
                        m(context, xmlPullParser);
                    } else if (b11 == 1) {
                        this.f7500f = new g(context, xmlPullParser);
                    } else if (b11 == 2) {
                        this.f7501g = androidx.constraintlayout.widget.b.m(context, xmlPullParser);
                    } else if (b11 == 3 || b11 == 4) {
                        ConstraintAttribute.i(context, xmlPullParser, this.f7501g.f7769g);
                    } else {
                        Log.e(f7494w, androidx.constraintlayout.motion.widget.a.a() + " unknown tag " + name);
                        Log.e(f7494w, ".xml:" + xmlPullParser.getLineNumber());
                    }
                } else if (eventType == 3 && "ViewTransition".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View[] viewArr) {
        if (this.f7510p != -1) {
            for (View view : viewArr) {
                view.setTag(this.f7510p, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.f7511q != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.f7511q, null);
            }
        }
    }

    private void m(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.ViewTransition);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.ViewTransition_android_id) {
                this.f7495a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7495a);
            } else if (index == R$styleable.ViewTransition_motionTarget) {
                if (MotionLayout.IS_IN_EDIT_MODE) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f7504j);
                    this.f7504j = resourceId;
                    if (resourceId == -1) {
                        this.f7505k = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.f7505k = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.f7504j = typedArrayObtainStyledAttributes.getResourceId(index, this.f7504j);
                }
            } else if (index == R$styleable.ViewTransition_onStateTransition) {
                this.f7496b = typedArrayObtainStyledAttributes.getInt(index, this.f7496b);
            } else if (index == R$styleable.ViewTransition_transitionDisable) {
                this.f7497c = typedArrayObtainStyledAttributes.getBoolean(index, this.f7497c);
            } else if (index == R$styleable.ViewTransition_pathMotionArc) {
                this.f7498d = typedArrayObtainStyledAttributes.getInt(index, this.f7498d);
            } else if (index == R$styleable.ViewTransition_duration) {
                this.f7502h = typedArrayObtainStyledAttributes.getInt(index, this.f7502h);
            } else if (index == R$styleable.ViewTransition_upDuration) {
                this.f7503i = typedArrayObtainStyledAttributes.getInt(index, this.f7503i);
            } else if (index == R$styleable.ViewTransition_viewTransitionMode) {
                this.f7499e = typedArrayObtainStyledAttributes.getInt(index, this.f7499e);
            } else if (index == R$styleable.ViewTransition_motionInterpolator) {
                int i12 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i12 == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.f7508n = resourceId2;
                    if (resourceId2 != -1) {
                        this.f7506l = -2;
                    }
                } else if (i12 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f7507m = string;
                    if (string == null || string.indexOf("/") <= 0) {
                        this.f7506l = -1;
                    } else {
                        this.f7508n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.f7506l = -2;
                    }
                } else {
                    this.f7506l = typedArrayObtainStyledAttributes.getInteger(index, this.f7506l);
                }
            } else if (index == R$styleable.ViewTransition_setsTag) {
                this.f7510p = typedArrayObtainStyledAttributes.getResourceId(index, this.f7510p);
            } else if (index == R$styleable.ViewTransition_clearsTag) {
                this.f7511q = typedArrayObtainStyledAttributes.getResourceId(index, this.f7511q);
            } else if (index == R$styleable.ViewTransition_ifTagSet) {
                this.f7512r = typedArrayObtainStyledAttributes.getResourceId(index, this.f7512r);
            } else if (index == R$styleable.ViewTransition_ifTagNotSet) {
                this.f7513s = typedArrayObtainStyledAttributes.getResourceId(index, this.f7513s);
            } else if (index == R$styleable.ViewTransition_SharedValueId) {
                this.f7515u = typedArrayObtainStyledAttributes.getResourceId(index, this.f7515u);
            } else if (index == R$styleable.ViewTransition_SharedValue) {
                this.f7514t = typedArrayObtainStyledAttributes.getInteger(index, this.f7514t);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void p(p.b bVar, View view) {
        int i11 = this.f7502h;
        if (i11 != -1) {
            bVar.E(i11);
        }
        bVar.I(this.f7498d);
        bVar.G(this.f7506l, this.f7507m, this.f7508n);
        int id2 = view.getId();
        g gVar = this.f7500f;
        if (gVar != null) {
            ArrayList arrayListD = gVar.d(-1);
            g gVar2 = new g();
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                gVar2.c(((d) it.next()).clone().i(id2));
            }
            bVar.t(gVar2);
        }
    }

    void b(t tVar, MotionLayout motionLayout, View view) {
        m mVar = new m(view);
        mVar.B(view);
        this.f7500f.a(mVar);
        mVar.I(motionLayout.getWidth(), motionLayout.getHeight(), this.f7502h, System.nanoTime());
        new b(tVar, mVar, this.f7502h, this.f7503i, this.f7496b, f(motionLayout.getContext()), this.f7510p, this.f7511q);
    }

    void c(t tVar, MotionLayout motionLayout, int i11, androidx.constraintlayout.widget.b bVar, final View... viewArr) {
        if (this.f7497c) {
            return;
        }
        int i12 = this.f7499e;
        if (i12 == 2) {
            b(tVar, motionLayout, viewArr[0]);
            return;
        }
        if (i12 == 1) {
            for (int i13 : motionLayout.getConstraintSetIds()) {
                if (i13 != i11) {
                    androidx.constraintlayout.widget.b constraintSet = motionLayout.getConstraintSet(i13);
                    for (View view : viewArr) {
                        androidx.constraintlayout.widget.b.a aVarA = constraintSet.A(view.getId());
                        androidx.constraintlayout.widget.b.a aVar = this.f7501g;
                        if (aVar != null) {
                            aVar.d(aVarA);
                            aVarA.f7769g.putAll(this.f7501g.f7769g);
                        }
                    }
                }
            }
        }
        androidx.constraintlayout.widget.b bVar2 = new androidx.constraintlayout.widget.b();
        bVar2.r(bVar);
        for (View view2 : viewArr) {
            androidx.constraintlayout.widget.b.a aVarA2 = bVar2.A(view2.getId());
            androidx.constraintlayout.widget.b.a aVar2 = this.f7501g;
            if (aVar2 != null) {
                aVar2.d(aVarA2);
                aVarA2.f7769g.putAll(this.f7501g.f7769g);
            }
        }
        motionLayout.updateState(i11, bVar2);
        motionLayout.updateState(R$id.view_transition, bVar);
        motionLayout.setState(R$id.view_transition, -1, -1);
        p.b bVar3 = new p.b(-1, motionLayout.f7146a, R$id.view_transition, i11);
        for (View view3 : viewArr) {
            p(bVar3, view3);
        }
        motionLayout.setTransition(bVar3);
        motionLayout.transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f7492a.k(viewArr);
            }
        });
    }

    boolean d(View view) {
        int i11 = this.f7512r;
        boolean z10 = i11 == -1 || view.getTag(i11) != null;
        int i12 = this.f7513s;
        return z10 && (i12 == -1 || view.getTag(i12) == null);
    }

    int e() {
        return this.f7495a;
    }

    Interpolator f(Context context) {
        int i11 = this.f7506l;
        if (i11 == -2) {
            return AnimationUtils.loadInterpolator(context, this.f7508n);
        }
        if (i11 == -1) {
            return new a(this, androidx.constraintlayout.core.motion.utils.c.c(this.f7507m));
        }
        if (i11 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i11 == 1) {
            return new AccelerateInterpolator();
        }
        if (i11 == 2) {
            return new DecelerateInterpolator();
        }
        if (i11 == 4) {
            return new BounceInterpolator();
        }
        if (i11 == 5) {
            return new OvershootInterpolator();
        }
        if (i11 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public int g() {
        return this.f7514t;
    }

    public int h() {
        return this.f7515u;
    }

    public int i() {
        return this.f7496b;
    }

    boolean j() {
        return !this.f7497c;
    }

    boolean l(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.f7504j == -1 && this.f7505k == null) || !d(view)) {
            return false;
        }
        if (view.getId() == this.f7504j) {
            return true;
        }
        return this.f7505k != null && (view.getLayoutParams() instanceof ConstraintLayout.b) && (str = ((ConstraintLayout.b) view.getLayoutParams()).f7667c0) != null && str.matches(this.f7505k);
    }

    void n(boolean z10) {
        this.f7497c = !z10;
    }

    boolean o(int i11) {
        int i12 = this.f7496b;
        if (i12 == 1) {
            return i11 == 0;
        }
        if (i12 == 2) {
            return i11 == 1;
        }
        return i12 == 3 && i11 == 0;
    }

    public String toString() {
        return "ViewTransition(" + androidx.constraintlayout.motion.widget.a.c(this.f7509o, this.f7495a) + ")";
    }
}
