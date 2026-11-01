package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.resources.R$styleable;
import androidx.appcompat.widget.b0;
import androidx.collection.x;
import androidx.collection.y0;
import androidx.vectordrawable.graphics.drawable.h;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.web.api.WebConstants;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.k;

/* JADX INFO: loaded from: classes.dex */
public class a extends androidx.appcompat.graphics.drawable.d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f1230o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private g f1231p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1232q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1233r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1234s;

    private static class b extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Animatable f1235a;

        b(Animatable animatable) {
            super();
            this.f1235a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void c() {
            this.f1235a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void d() {
            this.f1235a.stop();
        }
    }

    static class c extends androidx.appcompat.graphics.drawable.d.a {
        x K;
        y0 L;

        c(c cVar, a aVar, Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
            } else {
                this.K = new x();
                this.L = new y0();
            }
        }

        private static long E(int i11, int i12) {
            return ((long) i12) | (((long) i11) << 32);
        }

        int C(int[] iArr, Drawable drawable, int i11) {
            int iA = super.A(iArr, drawable);
            this.L.l(iA, Integer.valueOf(i11));
            return iA;
        }

        int D(int i11, int i12, Drawable drawable, boolean z10) {
            int iA = super.a(drawable);
            long jE = E(i11, i12);
            long j11 = z10 ? 8589934592L : 0L;
            long j12 = iA;
            this.K.a(jE, Long.valueOf(j12 | j11));
            if (z10) {
                this.K.a(E(i12, i11), Long.valueOf(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE | j12 | j11));
            }
            return iA;
        }

        int F(int i11) {
            if (i11 < 0) {
                return 0;
            }
            return ((Integer) this.L.g(i11, 0)).intValue();
        }

        int G(int[] iArr) {
            int iB = super.B(iArr);
            return iB >= 0 ? iB : super.B(StateSet.WILD_CARD);
        }

        int H(int i11, int i12) {
            return (int) ((Long) this.K.f(E(i11, i12), -1L)).longValue();
        }

        boolean I(int i11, int i12) {
            return (((Long) this.K.f(E(i11, i12), -1L)).longValue() & TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE) != 0;
        }

        boolean J(int i11, int i12) {
            return (((Long) this.K.f(E(i11, i12), -1L)).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new a(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }

        @Override // androidx.appcompat.graphics.drawable.d.a, androidx.appcompat.graphics.drawable.DrawableContainerCompat.c
        void s() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }
    }

    private static class d extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.vectordrawable.graphics.drawable.c f1236a;

        d(androidx.vectordrawable.graphics.drawable.c cVar) {
            super();
            this.f1236a = cVar;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void c() {
            this.f1236a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void d() {
            this.f1236a.stop();
        }
    }

    private static class e extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ObjectAnimator f1237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f1238b;

        e(AnimationDrawable animationDrawable, boolean z10, boolean z11) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i11 = z10 ? numberOfFrames - 1 : 0;
            int i12 = z10 ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z10);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i11, i12);
            objectAnimatorOfInt.setAutoCancel(true);
            objectAnimatorOfInt.setDuration(fVar.a());
            objectAnimatorOfInt.setInterpolator(fVar);
            this.f1238b = z11;
            this.f1237a = objectAnimatorOfInt;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public boolean a() {
            return this.f1238b;
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void b() {
            this.f1237a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void c() {
            this.f1237a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.a.g
        public void d() {
            this.f1237a.cancel();
        }
    }

    private static class f implements TimeInterpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f1239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1240b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1241c;

        f(AnimationDrawable animationDrawable, boolean z10) {
            b(animationDrawable, z10);
        }

        int a() {
            return this.f1241c;
        }

        int b(AnimationDrawable animationDrawable, boolean z10) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f1240b = numberOfFrames;
            int[] iArr = this.f1239a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f1239a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f1239a;
            int i11 = 0;
            for (int i12 = 0; i12 < numberOfFrames; i12++) {
                int duration = animationDrawable.getDuration(z10 ? (numberOfFrames - i12) - 1 : i12);
                iArr2[i12] = duration;
                i11 += duration;
            }
            this.f1241c = i11;
            return i11;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            int i11 = (int) ((f11 * this.f1241c) + 0.5f);
            int i12 = this.f1240b;
            int[] iArr = this.f1239a;
            int i13 = 0;
            while (i13 < i12) {
                int i14 = iArr[i13];
                if (i11 < i14) {
                    break;
                }
                i11 -= i14;
                i13++;
            }
            return (i13 / i12) + (i13 < i12 ? i11 / this.f1241c : 0.0f);
        }
    }

    private static abstract class g {
        private g() {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public a() {
        this(null, null);
    }

    a(c cVar, Resources resources) {
        super(null);
        this.f1232q = -1;
        this.f1233r = -1;
        h(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public static a m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            a aVar = new a();
            aVar.n(context, resources, xmlPullParser, attributeSet, theme);
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals(WebConstants.FIELD_ITEM)) {
                    q(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals("transition")) {
                    r(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    private void p() {
        onStateChange(getState());
    }

    private int q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.AnimatedStateListDrawableItem);
        int resourceId = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable drawableJ = resourceId2 > 0 ? b0.h().j(context, resourceId2) : null;
        typedArrayK.recycle();
        int[] iArrK = k(attributeSet);
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableJ = xmlPullParser.getName().equals("vector") ? h.c(resources, xmlPullParser, attributeSet, theme) : h.a.a(resources, xmlPullParser, attributeSet, theme);
        }
        if (drawableJ != null) {
            return this.f1230o.C(iArrK, drawableJ, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    private int r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.AnimatedStateListDrawableTransition);
        int resourceId = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable drawableJ = resourceId3 > 0 ? b0.h().j(context, resourceId3) : null;
        boolean z10 = typedArrayK.getBoolean(R$styleable.AnimatedStateListDrawableTransition_android_reversible, false);
        typedArrayK.recycle();
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableJ = xmlPullParser.getName().equals("animated-vector") ? androidx.vectordrawable.graphics.drawable.c.b(context, resources, xmlPullParser, attributeSet, theme) : h.a.a(resources, xmlPullParser, attributeSet, theme);
        }
        if (drawableJ == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId != -1 && resourceId2 != -1) {
            return this.f1230o.D(resourceId, resourceId2, drawableJ, z10);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    private boolean s(int i11) {
        int iC;
        int iH;
        g bVar;
        g gVar = this.f1231p;
        if (gVar == null) {
            iC = c();
        } else {
            if (i11 == this.f1232q) {
                return true;
            }
            if (i11 == this.f1233r && gVar.a()) {
                gVar.b();
                this.f1232q = this.f1233r;
                this.f1233r = i11;
                return true;
            }
            iC = this.f1232q;
            gVar.d();
        }
        this.f1231p = null;
        this.f1233r = -1;
        this.f1232q = -1;
        c cVar = this.f1230o;
        int iF = cVar.F(iC);
        int iF2 = cVar.F(i11);
        if (iF2 == 0 || iF == 0 || (iH = cVar.H(iF, iF2)) < 0) {
            return false;
        }
        boolean zJ = cVar.J(iF, iF2);
        g(iH);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            bVar = new e((AnimationDrawable) current, cVar.I(iF, iF2), zJ);
        } else {
            if (!(current instanceof androidx.vectordrawable.graphics.drawable.c)) {
                if (current instanceof Animatable) {
                    bVar = new b((Animatable) current);
                }
                return false;
            }
            bVar = new d((androidx.vectordrawable.graphics.drawable.c) current);
        }
        bVar.c();
        this.f1231p = bVar;
        this.f1233r = iC;
        this.f1232q = i11;
        return true;
    }

    private void t(TypedArray typedArray) {
        c cVar = this.f1230o;
        cVar.f1207d |= h.a.b(typedArray);
        cVar.y(typedArray.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_variablePadding, cVar.f1212i));
        cVar.u(typedArray.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_constantSize, cVar.f1215l));
        cVar.v(typedArray.getInt(R$styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.A));
        cVar.w(typedArray.getInt(R$styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.B));
        setDither(typedArray.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_dither, cVar.f1227x));
    }

    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    void h(DrawableContainerCompat.c cVar) {
        super.h(cVar);
        if (cVar instanceof c) {
            this.f1230o = (c) cVar;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.f1231p;
        if (gVar != null) {
            gVar.d();
            this.f1231p = null;
            g(this.f1232q);
            this.f1232q = -1;
            this.f1233r = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public c b() {
        return new c(this.f1230o, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1234s && super.mutate() == this) {
            this.f1230o.s();
            this.f1234s = true;
        }
        return this;
    }

    public void n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.AnimatedStateListDrawableCompat);
        setVisible(typedArrayK.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        t(typedArrayK);
        i(resources);
        typedArrayK.recycle();
        o(context, resources, xmlPullParser, attributeSet, theme);
        p();
    }

    @Override // androidx.appcompat.graphics.drawable.d, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int iG = this.f1230o.G(iArr);
        boolean z10 = iG != c() && (s(iG) || g(iG));
        Drawable current = getCurrent();
        return current != null ? z10 | current.setState(iArr) : z10;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        g gVar = this.f1231p;
        if (gVar != null && (visible || z11)) {
            if (z10) {
                gVar.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
