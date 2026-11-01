package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MotionLayout f7423a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MotionEvent f7436n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MotionLayout.e f7439q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7440r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final t f7441s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f7442t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f7443u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    androidx.constraintlayout.widget.e f7424b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    b f7425c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7426d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList f7427e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f7428f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList f7429g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SparseArray f7430h = new SparseArray();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private HashMap f7431i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SparseIntArray f7432j = new SparseIntArray();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f7433k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f7434l = 400;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f7435m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f7437o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7438p = false;

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.constraintlayout.core.motion.utils.c f7444a;

        a(p pVar, androidx.constraintlayout.core.motion.utils.c cVar) {
            this.f7444a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            return (float) this.f7444a.a(f11);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f7445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f7446b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f7447c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7448d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7449e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f7450f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7451g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f7452h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f7453i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final p f7454j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private ArrayList f7455k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private q f7456l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ArrayList f7457m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f7458n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f7459o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f7460p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f7461q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f7462r;

        public static class a implements View.OnClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final b f7463a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f7464b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f7465c;

            public a(Context context, b bVar, XmlPullParser xmlPullParser) {
                this.f7464b = -1;
                this.f7465c = 17;
                this.f7463a = bVar;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i11 = 0; i11 < indexCount; i11++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i11);
                    if (index == R$styleable.OnClick_targetId) {
                        this.f7464b = typedArrayObtainStyledAttributes.getResourceId(index, this.f7464b);
                    } else if (index == R$styleable.OnClick_clickAction) {
                        this.f7465c = typedArrayObtainStyledAttributes.getInt(index, this.f7465c);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public void a(MotionLayout motionLayout, int i11, b bVar) {
                boolean z10;
                View viewFindViewById;
                int i12 = this.f7464b;
                View view = motionLayout;
                if (i12 != -1) {
                    viewFindViewById = motionLayout.findViewById(i12);
                }
                if (view == null) {
                    view = viewFindViewById;
                    Log.e("MotionScene", "OnClick could not find id " + this.f7464b);
                    return;
                }
                int i13 = bVar.f7448d;
                int i14 = bVar.f7447c;
                if (i13 == -1) {
                    view = viewFindViewById;
                    view.setOnClickListener(this);
                    return;
                }
                int i15 = this.f7465c;
                boolean z11 = false;
                if ((i15 & 1) == 0 || i11 != i13) {
                    view = viewFindViewById;
                    z10 = false;
                } else {
                    z10 = true;
                }
                boolean z12 = ((i15 & 1) != 0 && i11 == i13) | z10 | ((i15 & 256) != 0 && i11 == i13) | ((i15 & 16) != 0 && i11 == i14);
                if ((i15 & 4096) != 0 && i11 == i14) {
                    z11 = true;
                }
                if (z12 || z11) {
                    view.setOnClickListener(this);
                }
            }

            boolean b(b bVar, MotionLayout motionLayout) {
                b bVar2 = this.f7463a;
                if (bVar2 == bVar) {
                    return true;
                }
                int i11 = bVar2.f7447c;
                int i12 = this.f7463a.f7448d;
                if (i12 == -1) {
                    return motionLayout.f7156f != i11;
                }
                int i13 = motionLayout.f7156f;
                return i13 == i12 || i13 == i11;
            }

            public void c(MotionLayout motionLayout) {
                int i11 = this.f7464b;
                if (i11 == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i11);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f7464b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MotionLayout motionLayout = this.f7463a.f7454j.f7423a;
                if (motionLayout.isInteractionEnabled()) {
                    if (this.f7463a.f7448d == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.transitionToState(this.f7463a.f7447c);
                            return;
                        }
                        b bVar = new b(this.f7463a.f7454j, this.f7463a);
                        bVar.f7448d = currentState;
                        bVar.f7447c = this.f7463a.f7447c;
                        motionLayout.setTransition(bVar);
                        motionLayout.transitionToEnd();
                        return;
                    }
                    b bVar2 = this.f7463a.f7454j.f7425c;
                    int i11 = this.f7465c;
                    boolean z10 = false;
                    boolean z11 = ((i11 & 1) == 0 && (i11 & 256) == 0) ? false : true;
                    boolean z12 = ((i11 & 16) == 0 && (i11 & 4096) == 0) ? false : true;
                    if (z11 && z12) {
                        b bVar3 = this.f7463a.f7454j.f7425c;
                        b bVar4 = this.f7463a;
                        if (bVar3 != bVar4) {
                            motionLayout.setTransition(bVar4);
                        }
                        if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                            z12 = false;
                            z10 = z11;
                        }
                    } else {
                        z10 = z11;
                    }
                    if (b(bVar2, motionLayout)) {
                        if (z10 && (this.f7465c & 1) != 0) {
                            motionLayout.setTransition(this.f7463a);
                            motionLayout.transitionToEnd();
                            return;
                        }
                        if (z12 && (this.f7465c & 16) != 0) {
                            motionLayout.setTransition(this.f7463a);
                            motionLayout.transitionToStart();
                        } else if (z10 && (this.f7465c & 256) != 0) {
                            motionLayout.setTransition(this.f7463a);
                            motionLayout.setProgress(1.0f);
                        } else {
                            if (!z12 || (this.f7465c & 4096) == 0) {
                                return;
                            }
                            motionLayout.setTransition(this.f7463a);
                            motionLayout.setProgress(0.0f);
                        }
                    }
                }
            }
        }

        public b(int i11, p pVar, int i12, int i13) {
            this.f7445a = -1;
            this.f7446b = false;
            this.f7447c = -1;
            this.f7448d = -1;
            this.f7449e = 0;
            this.f7450f = null;
            this.f7451g = -1;
            this.f7452h = 400;
            this.f7453i = 0.0f;
            this.f7455k = new ArrayList();
            this.f7456l = null;
            this.f7457m = new ArrayList();
            this.f7458n = 0;
            this.f7459o = false;
            this.f7460p = -1;
            this.f7461q = 0;
            this.f7462r = 0;
            this.f7445a = i11;
            this.f7454j = pVar;
            this.f7448d = i12;
            this.f7447c = i13;
            this.f7452h = pVar.f7434l;
            this.f7461q = pVar.f7435m;
        }

        b(p pVar, Context context, XmlPullParser xmlPullParser) {
            this.f7445a = -1;
            this.f7446b = false;
            this.f7447c = -1;
            this.f7448d = -1;
            this.f7449e = 0;
            this.f7450f = null;
            this.f7451g = -1;
            this.f7452h = 400;
            this.f7453i = 0.0f;
            this.f7455k = new ArrayList();
            this.f7456l = null;
            this.f7457m = new ArrayList();
            this.f7458n = 0;
            this.f7459o = false;
            this.f7460p = -1;
            this.f7461q = 0;
            this.f7462r = 0;
            this.f7452h = pVar.f7434l;
            this.f7461q = pVar.f7435m;
            this.f7454j = pVar;
            w(pVar, context, Xml.asAttributeSet(xmlPullParser));
        }

        b(p pVar, b bVar) {
            this.f7445a = -1;
            this.f7446b = false;
            this.f7447c = -1;
            this.f7448d = -1;
            this.f7449e = 0;
            this.f7450f = null;
            this.f7451g = -1;
            this.f7452h = 400;
            this.f7453i = 0.0f;
            this.f7455k = new ArrayList();
            this.f7456l = null;
            this.f7457m = new ArrayList();
            this.f7458n = 0;
            this.f7459o = false;
            this.f7460p = -1;
            this.f7461q = 0;
            this.f7462r = 0;
            this.f7454j = pVar;
            this.f7452h = pVar.f7434l;
            if (bVar != null) {
                this.f7460p = bVar.f7460p;
                this.f7449e = bVar.f7449e;
                this.f7450f = bVar.f7450f;
                this.f7451g = bVar.f7451g;
                this.f7452h = bVar.f7452h;
                this.f7455k = bVar.f7455k;
                this.f7453i = bVar.f7453i;
                this.f7461q = bVar.f7461q;
            }
        }

        private void v(p pVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArray.getIndex(i11);
                if (index == R$styleable.Transition_constraintSetEnd) {
                    this.f7447c = typedArray.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7447c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        bVar.H(context, this.f7447c);
                        pVar.f7430h.append(this.f7447c, bVar);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f7447c = pVar.O(context, this.f7447c);
                    }
                } else if (index == R$styleable.Transition_constraintSetStart) {
                    this.f7448d = typedArray.getResourceId(index, this.f7448d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f7448d);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName2)) {
                        androidx.constraintlayout.widget.b bVar2 = new androidx.constraintlayout.widget.b();
                        bVar2.H(context, this.f7448d);
                        pVar.f7430h.append(this.f7448d, bVar2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f7448d = pVar.O(context, this.f7448d);
                    }
                } else if (index == R$styleable.Transition_motionInterpolator) {
                    int i12 = typedArray.peekValue(index).type;
                    if (i12 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f7451g = resourceId;
                        if (resourceId != -1) {
                            this.f7449e = -2;
                        }
                    } else if (i12 == 3) {
                        String string = typedArray.getString(index);
                        this.f7450f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.f7451g = typedArray.getResourceId(index, -1);
                                this.f7449e = -2;
                            } else {
                                this.f7449e = -1;
                            }
                        }
                    } else {
                        this.f7449e = typedArray.getInteger(index, this.f7449e);
                    }
                } else if (index == R$styleable.Transition_duration) {
                    int i13 = typedArray.getInt(index, this.f7452h);
                    this.f7452h = i13;
                    if (i13 < 8) {
                        this.f7452h = 8;
                    }
                } else if (index == R$styleable.Transition_staggered) {
                    this.f7453i = typedArray.getFloat(index, this.f7453i);
                } else if (index == R$styleable.Transition_autoTransition) {
                    this.f7458n = typedArray.getInteger(index, this.f7458n);
                } else if (index == R$styleable.Transition_android_id) {
                    this.f7445a = typedArray.getResourceId(index, this.f7445a);
                } else if (index == R$styleable.Transition_transitionDisable) {
                    this.f7459o = typedArray.getBoolean(index, this.f7459o);
                } else if (index == R$styleable.Transition_pathMotionArc) {
                    this.f7460p = typedArray.getInteger(index, -1);
                } else if (index == R$styleable.Transition_layoutDuringTransition) {
                    this.f7461q = typedArray.getInteger(index, 0);
                } else if (index == R$styleable.Transition_transitionFlags) {
                    this.f7462r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f7448d == -1) {
                this.f7446b = true;
            }
        }

        private void w(p pVar, Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transition);
            v(pVar, context, typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }

        public int A() {
            return this.f7448d;
        }

        public q B() {
            return this.f7456l;
        }

        public boolean C() {
            return !this.f7459o;
        }

        public boolean D(int i11) {
            return (i11 & this.f7462r) != 0;
        }

        public void E(int i11) {
            this.f7452h = Math.max(i11, 8);
        }

        public void F(boolean z10) {
            this.f7459o = !z10;
        }

        public void G(int i11, String str, int i12) {
            this.f7449e = i11;
            this.f7450f = str;
            this.f7451g = i12;
        }

        public void H(int i11) {
            q qVarB = B();
            if (qVarB != null) {
                qVarB.y(i11);
            }
        }

        public void I(int i11) {
            this.f7460p = i11;
        }

        public void t(g gVar) {
            this.f7455k.add(gVar);
        }

        public void u(Context context, XmlPullParser xmlPullParser) {
            this.f7457m.add(new a(context, this, xmlPullParser));
        }

        public int x() {
            return this.f7458n;
        }

        public int y() {
            return this.f7447c;
        }

        public int z() {
            return this.f7461q;
        }
    }

    p(Context context, MotionLayout motionLayout, int i11) {
        this.f7423a = motionLayout;
        this.f7441s = new t(motionLayout);
        M(context, i11);
        this.f7430h.put(R$id.motion_base, new androidx.constraintlayout.widget.b());
        this.f7431i.put("motion_base", Integer.valueOf(R$id.motion_base));
    }

    private boolean J(int i11) {
        int i12 = this.f7432j.get(i11);
        int size = this.f7432j.size();
        while (i12 > 0) {
            if (i12 == i11) {
                return true;
            }
            int i13 = size - 1;
            if (size < 0) {
                return true;
            }
            i12 = this.f7432j.get(i12);
            size = i13;
        }
        return false;
    }

    private boolean K() {
        return this.f7439q != null;
    }

    private void M(Context context, int i11) {
        XmlResourceParser xml = context.getResources().getXml(i11);
        try {
            int eventType = xml.getEventType();
            b bVar = null;
            while (true) {
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    if (this.f7433k) {
                        System.out.println("parsing = " + name);
                    }
                    switch (name) {
                        case "MotionScene":
                            Q(context, xml);
                            break;
                        case "Transition":
                            ArrayList arrayList = this.f7427e;
                            bVar = new b(this, context, xml);
                            arrayList.add(bVar);
                            if (this.f7425c == null && !bVar.f7446b) {
                                this.f7425c = bVar;
                                if (bVar.f7456l != null) {
                                    this.f7425c.f7456l.x(this.f7440r);
                                }
                            }
                            if (!bVar.f7446b) {
                                break;
                            } else {
                                if (bVar.f7447c == -1) {
                                    this.f7428f = bVar;
                                } else {
                                    this.f7429g.add(bVar);
                                }
                                this.f7427e.remove(bVar);
                                break;
                            }
                            break;
                        case "OnSwipe":
                            if (bVar == null) {
                                Log.v("MotionScene", " OnSwipe (" + context.getResources().getResourceEntryName(i11) + ".xml:" + xml.getLineNumber() + ")");
                            }
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.f7456l = new q(context, this.f7423a, xml);
                                break;
                            }
                            break;
                        case "OnClick":
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.u(context, xml);
                                break;
                            }
                            break;
                        case "StateSet":
                            this.f7424b = new androidx.constraintlayout.widget.e(context, xml);
                            break;
                        case "ConstraintSet":
                            N(context, xml);
                            break;
                        case "include":
                        case "Include":
                            P(context, xml);
                            break;
                        case "KeyFrameSet":
                            g gVar = new g(context, xml);
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.f7455k.add(gVar);
                                break;
                            }
                            break;
                        case "ViewTransition":
                            this.f7441s.a(new s(context, xml));
                            break;
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0098  */
    /* JADX WARN: Code duplicated, block: B:9:0x0046  */
    private int N(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        bVar.V(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int iS = -1;
        int iS2 = -1;
        for (int i11 = 0; i11 < attributeCount; i11++) {
            String attributeName = xmlPullParser.getAttributeName(i11);
            String attributeValue = xmlPullParser.getAttributeValue(i11);
            if (this.f7433k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName) {
                case "deriveConstraintsFrom":
                    iS2 = s(context, attributeValue);
                    break;
                case "constraintRotate":
                    try {
                        bVar.f7759d = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.hashCode();
                        switch (attributeValue) {
                            case "x_left":
                                bVar.f7759d = 4;
                                break;
                            case "left":
                                bVar.f7759d = 2;
                                break;
                            case "none":
                                bVar.f7759d = 0;
                                break;
                            case "right":
                                bVar.f7759d = 1;
                                break;
                            case "x_right":
                                bVar.f7759d = 3;
                                break;
                        }
                        break;
                    }
                    break;
                case "id":
                    iS = s(context, attributeValue);
                    this.f7431i.put(c0(attributeValue), Integer.valueOf(iS));
                    bVar.f7757b = androidx.constraintlayout.motion.widget.a.c(context, iS);
                    break;
                default:
                    break;
            }
        }
        if (iS != -1) {
            if (this.f7423a.f7192x != 0) {
                bVar.Y(true);
            }
            bVar.I(context, xmlPullParser);
            if (iS2 != -1) {
                this.f7432j.put(iS, iS2);
            }
            this.f7430h.put(iS, bVar);
        }
        return iS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int O(Context context, int i11) {
        XmlResourceParser xml = context.getResources().getXml(i11);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return N(context, xml);
                }
            }
            return -1;
        } catch (IOException e11) {
            e11.printStackTrace();
            return -1;
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
            return -1;
        }
    }

    private void P(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.include_constraintSet) {
                O(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void Q(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.MotionScene_defaultDuration) {
                int i12 = typedArrayObtainStyledAttributes.getInt(index, this.f7434l);
                this.f7434l = i12;
                if (i12 < 8) {
                    this.f7434l = 8;
                }
            } else if (index == R$styleable.MotionScene_layoutDuringTransition) {
                this.f7435m = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void U(int i11, MotionLayout motionLayout) {
        androidx.constraintlayout.widget.b bVar = (androidx.constraintlayout.widget.b) this.f7430h.get(i11);
        bVar.f7758c = bVar.f7757b;
        int i12 = this.f7432j.get(i11);
        if (i12 > 0) {
            U(i12, motionLayout);
            androidx.constraintlayout.widget.b bVar2 = (androidx.constraintlayout.widget.b) this.f7430h.get(i12);
            if (bVar2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + androidx.constraintlayout.motion.widget.a.c(this.f7423a.getContext(), i12));
                return;
            }
            bVar.f7758c += "/" + bVar2.f7758c;
            bVar.Q(bVar2);
        } else {
            bVar.f7758c += "  layout";
            bVar.P(motionLayout);
        }
        bVar.h(bVar);
    }

    public static String c0(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf < 0 ? str : str.substring(iIndexOf + 1);
    }

    private int s(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            if (this.f7433k) {
                System.out.println("id getMap res = " + identifier);
            }
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return identifier;
    }

    private int z(int i11) {
        int iC;
        androidx.constraintlayout.widget.e eVar = this.f7424b;
        return (eVar == null || (iC = eVar.c(i11, -1, -1)) == -1) ? i11 : iC;
    }

    int A() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0;
        }
        return this.f7425c.f7456l.k();
    }

    float B() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.l();
    }

    float C() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.m();
    }

    float D() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.n();
    }

    float E() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.o();
    }

    public float F() {
        b bVar = this.f7425c;
        if (bVar != null) {
            return bVar.f7453i;
        }
        return 0.0f;
    }

    int G() {
        b bVar = this.f7425c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f7448d;
    }

    public b H(int i11) {
        for (b bVar : this.f7427e) {
            if (bVar.f7445a == i11) {
                return bVar;
            }
        }
        return null;
    }

    public List I(int i11) {
        int iZ = z(i11);
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.f7427e) {
            if (bVar.f7448d == iZ || bVar.f7447c == iZ) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public boolean L(int i11) {
        return this.f7441s.g(i11);
    }

    void R(float f11, float f12) {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return;
        }
        this.f7425c.f7456l.u(f11, f12);
    }

    void S(float f11, float f12) {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return;
        }
        this.f7425c.f7456l.v(f11, f12);
    }

    void T(MotionEvent motionEvent, int i11, MotionLayout motionLayout) {
        MotionLayout.e eVar;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f7439q == null) {
            this.f7439q = this.f7423a.U();
        }
        this.f7439q.a(motionEvent);
        if (i11 != -1) {
            int action = motionEvent.getAction();
            boolean z10 = false;
            if (action == 0) {
                this.f7442t = motionEvent.getRawX();
                this.f7443u = motionEvent.getRawY();
                this.f7436n = motionEvent;
                this.f7437o = false;
                if (this.f7425c.f7456l != null) {
                    RectF rectFF = this.f7425c.f7456l.f(this.f7423a, rectF);
                    if (rectFF != null && !rectFF.contains(this.f7436n.getX(), this.f7436n.getY())) {
                        this.f7436n = null;
                        this.f7437o = true;
                        return;
                    }
                    RectF rectFP = this.f7425c.f7456l.p(this.f7423a, rectF);
                    if (rectFP == null || rectFP.contains(this.f7436n.getX(), this.f7436n.getY())) {
                        this.f7438p = false;
                    } else {
                        this.f7438p = true;
                    }
                    this.f7425c.f7456l.w(this.f7442t, this.f7443u);
                    return;
                }
                return;
            }
            if (action == 2 && !this.f7437o) {
                float rawY = motionEvent.getRawY() - this.f7443u;
                float rawX = motionEvent.getRawX() - this.f7442t;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.f7436n) == null) {
                    return;
                }
                b bVarI = i(i11, rawX, rawY, motionEvent2);
                if (bVarI != null) {
                    motionLayout.setTransition(bVarI);
                    RectF rectFP2 = this.f7425c.f7456l.p(this.f7423a, rectF);
                    if (rectFP2 != null && !rectFP2.contains(this.f7436n.getX(), this.f7436n.getY())) {
                        z10 = true;
                    }
                    this.f7438p = z10;
                    this.f7425c.f7456l.z(this.f7442t, this.f7443u);
                }
            }
        }
        if (this.f7437o) {
            return;
        }
        b bVar = this.f7425c;
        if (bVar != null && bVar.f7456l != null && !this.f7438p) {
            this.f7425c.f7456l.s(motionEvent, this.f7439q, i11, this);
        }
        this.f7442t = motionEvent.getRawX();
        this.f7443u = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (eVar = this.f7439q) == null) {
            return;
        }
        eVar.recycle();
        this.f7439q = null;
        int i12 = motionLayout.f7156f;
        if (i12 != -1) {
            h(motionLayout, i12);
        }
    }

    void V(MotionLayout motionLayout) {
        for (int i11 = 0; i11 < this.f7430h.size(); i11++) {
            int iKeyAt = this.f7430h.keyAt(i11);
            if (J(iKeyAt)) {
                Log.e("MotionScene", "Cannot be derived from yourself");
                return;
            }
            U(iKeyAt, motionLayout);
        }
    }

    public void W(int i11, androidx.constraintlayout.widget.b bVar) {
        this.f7430h.put(i11, bVar);
    }

    public void X(int i11) {
        b bVar = this.f7425c;
        if (bVar != null) {
            bVar.E(i11);
        } else {
            this.f7434l = i11;
        }
    }

    public void Y(boolean z10) {
        this.f7440r = z10;
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return;
        }
        this.f7425c.f7456l.x(this.f7440r);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0039  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0096  */
    /* JADX WARN: Code duplicated, block: B:48:0x006d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0075 A[SYNTHETIC] */
    void Z(int i11, int i12) {
        int iC;
        int iC2;
        b bVar;
        Iterator it;
        b bVar2;
        b bVar3;
        b bVar4;
        androidx.constraintlayout.widget.e eVar = this.f7424b;
        if (eVar != null) {
            iC = eVar.c(i11, -1, -1);
            if (iC == -1) {
                iC = i11;
            }
            iC2 = this.f7424b.c(i12, -1, -1);
            if (iC2 == -1) {
            }
            bVar = this.f7425c;
            if (bVar == null && bVar.f7447c == i12 && this.f7425c.f7448d == i11) {
                return;
            }
            it = this.f7427e.iterator();
            while (true) {
                if (it.hasNext()) {
                    bVar2 = this.f7428f;
                    for (b bVar5 : this.f7429g) {
                        if (bVar5.f7447c == i12) {
                            bVar2 = bVar5;
                        }
                    }
                    bVar3 = new b(this, bVar2);
                    bVar3.f7448d = iC;
                    bVar3.f7447c = iC2;
                    if (iC != -1) {
                        this.f7427e.add(bVar3);
                    }
                    this.f7425c = bVar3;
                    return;
                }
                bVar4 = (b) it.next();
                if ((bVar4.f7447c != iC2 && bVar4.f7448d == iC) || (bVar4.f7447c == i12 && bVar4.f7448d == i11)) {
                    break;
                }
            }
            this.f7425c = bVar4;
            if (bVar4 != null || bVar4.f7456l == null) {
            }
            this.f7425c.f7456l.x(this.f7440r);
            return;
        }
        iC = i11;
        iC2 = i12;
        bVar = this.f7425c;
        if (bVar == null) {
        }
        it = this.f7427e.iterator();
        while (true) {
            if (it.hasNext()) {
                bVar2 = this.f7428f;
                while (r3.hasNext()) {
                    if (bVar5.f7447c == i12) {
                        bVar2 = bVar5;
                    }
                }
                bVar3 = new b(this, bVar2);
                bVar3.f7448d = iC;
                bVar3.f7447c = iC2;
                if (iC != -1) {
                    this.f7427e.add(bVar3);
                }
                this.f7425c = bVar3;
                return;
            }
            bVar4 = (b) it.next();
            if (bVar4.f7447c != iC2) {
            }
        }
        this.f7425c = bVar4;
        if (bVar4 != null) {
        }
    }

    public void a0(b bVar) {
        this.f7425c = bVar;
        if (bVar == null || bVar.f7456l == null) {
            return;
        }
        this.f7425c.f7456l.x(this.f7440r);
    }

    void b0() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return;
        }
        this.f7425c.f7456l.A();
    }

    boolean d0() {
        Iterator it = this.f7427e.iterator();
        while (it.hasNext()) {
            if (((b) it.next()).f7456l != null) {
                return true;
            }
        }
        b bVar = this.f7425c;
        return (bVar == null || bVar.f7456l == null) ? false : true;
    }

    public void e0(int i11, View... viewArr) {
        this.f7441s.k(i11, viewArr);
    }

    public void f(MotionLayout motionLayout, int i11) {
        for (b bVar : this.f7427e) {
            if (bVar.f7457m.size() > 0) {
                Iterator it = bVar.f7457m.iterator();
                while (it.hasNext()) {
                    ((b.a) it.next()).c(motionLayout);
                }
            }
        }
        for (b bVar2 : this.f7429g) {
            if (bVar2.f7457m.size() > 0) {
                Iterator it2 = bVar2.f7457m.iterator();
                while (it2.hasNext()) {
                    ((b.a) it2.next()).c(motionLayout);
                }
            }
        }
        for (b bVar3 : this.f7427e) {
            if (bVar3.f7457m.size() > 0) {
                Iterator it3 = bVar3.f7457m.iterator();
                while (it3.hasNext()) {
                    ((b.a) it3.next()).a(motionLayout, i11, bVar3);
                }
            }
        }
        for (b bVar4 : this.f7429g) {
            if (bVar4.f7457m.size() > 0) {
                Iterator it4 = bVar4.f7457m.iterator();
                while (it4.hasNext()) {
                    ((b.a) it4.next()).a(motionLayout, i11, bVar4);
                }
            }
        }
    }

    public boolean g(int i11, m mVar) {
        return this.f7441s.d(i11, mVar);
    }

    boolean h(MotionLayout motionLayout, int i11) {
        b bVar;
        if (K() || this.f7426d) {
            return false;
        }
        for (b bVar2 : this.f7427e) {
            if (bVar2.f7458n != 0 && ((bVar = this.f7425c) != bVar2 || !bVar.D(2))) {
                if (i11 == bVar2.f7448d && (bVar2.f7458n == 4 || bVar2.f7458n == 2)) {
                    MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.f7458n == 4) {
                        motionLayout.transitionToEnd();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.M(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState);
                        motionLayout.V();
                    }
                    return true;
                }
                if (i11 == bVar2.f7447c && (bVar2.f7458n == 3 || bVar2.f7458n == 1)) {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.f7458n == 3) {
                        motionLayout.transitionToStart();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.M(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.V();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public b i(int i11, float f11, float f12, MotionEvent motionEvent) {
        if (i11 == -1) {
            return this.f7425c;
        }
        List<b> listI = I(i11);
        RectF rectF = new RectF();
        float f13 = 0.0f;
        b bVar = null;
        for (b bVar2 : listI) {
            if (!bVar2.f7459o && bVar2.f7456l != null) {
                bVar2.f7456l.x(this.f7440r);
                RectF rectFP = bVar2.f7456l.p(this.f7423a, rectF);
                if (rectFP == null || motionEvent == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF rectFF = bVar2.f7456l.f(this.f7423a, rectF);
                    if (rectFF == null || motionEvent == null || rectFF.contains(motionEvent.getX(), motionEvent.getY())) {
                        float fA = bVar2.f7456l.a(f11, f12);
                        if (bVar2.f7456l.f7477l && motionEvent != null) {
                            float x10 = motionEvent.getX() - bVar2.f7456l.f7474i;
                            float y10 = motionEvent.getY() - bVar2.f7456l.f7475j;
                            fA = ((float) (Math.atan2(f12 + y10, f11 + x10) - Math.atan2(x10, y10))) * 10.0f;
                        }
                        float f14 = fA * (bVar2.f7447c == i11 ? -1.0f : 1.1f);
                        if (f14 > f13) {
                            bVar = bVar2;
                            f13 = f14;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    public void j(int i11, boolean z10) {
        this.f7441s.e(i11, z10);
    }

    public int k() {
        b bVar = this.f7425c;
        if (bVar != null) {
            return bVar.f7460p;
        }
        return -1;
    }

    int l() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0;
        }
        return this.f7425c.f7456l.d();
    }

    androidx.constraintlayout.widget.b m(int i11) {
        return n(i11, -1, -1);
    }

    androidx.constraintlayout.widget.b n(int i11, int i12, int i13) {
        int iC;
        if (this.f7433k) {
            PrintStream printStream = System.out;
            printStream.println("id " + i11);
            printStream.println("size " + this.f7430h.size());
        }
        androidx.constraintlayout.widget.e eVar = this.f7424b;
        if (eVar != null && (iC = eVar.c(i11, i12, i13)) != -1) {
            i11 = iC;
        }
        if (this.f7430h.get(i11) != null) {
            return (androidx.constraintlayout.widget.b) this.f7430h.get(i11);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + androidx.constraintlayout.motion.widget.a.c(this.f7423a.getContext(), i11) + " In MotionScene");
        SparseArray sparseArray = this.f7430h;
        return (androidx.constraintlayout.widget.b) sparseArray.get(sparseArray.keyAt(0));
    }

    public int[] o() {
        int size = this.f7430h.size();
        int[] iArr = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = this.f7430h.keyAt(i11);
        }
        return iArr;
    }

    public ArrayList p() {
        return this.f7427e;
    }

    public int q() {
        b bVar = this.f7425c;
        return bVar != null ? bVar.f7452h : this.f7434l;
    }

    int r() {
        b bVar = this.f7425c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f7447c;
    }

    public Interpolator t() {
        int i11 = this.f7425c.f7449e;
        if (i11 == -2) {
            return AnimationUtils.loadInterpolator(this.f7423a.getContext(), this.f7425c.f7451g);
        }
        if (i11 == -1) {
            return new a(this, androidx.constraintlayout.core.motion.utils.c.c(this.f7425c.f7450f));
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

    public void u(m mVar) {
        b bVar = this.f7425c;
        if (bVar != null) {
            Iterator it = bVar.f7455k.iterator();
            while (it.hasNext()) {
                ((g) it.next()).b(mVar);
            }
        } else {
            b bVar2 = this.f7428f;
            if (bVar2 != null) {
                Iterator it2 = bVar2.f7455k.iterator();
                while (it2.hasNext()) {
                    ((g) it2.next()).b(mVar);
                }
            }
        }
    }

    float v() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.g();
    }

    float w() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.h();
    }

    boolean x() {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return false;
        }
        return this.f7425c.f7456l.i();
    }

    float y(float f11, float f12) {
        b bVar = this.f7425c;
        if (bVar == null || bVar.f7456l == null) {
            return 0.0f;
        }
        return this.f7425c.f7456l.j(f11, f12);
    }
}
