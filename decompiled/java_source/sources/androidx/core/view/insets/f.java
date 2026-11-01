package androidx.core.view.insets;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f8416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f8417b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z0.c f8418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private z0.c f8419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8420e;

    class a extends View {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f8421a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, ViewGroup viewGroup) {
            super(context);
            this.f8421a = viewGroup;
        }

        @Override // android.view.View
        protected void onConfigurationChanged(Configuration configuration) {
            Drawable background = this.f8421a.getBackground();
            int color = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
            if (f.this.f8420e != color) {
                f.this.f8420e = color;
                for (int size = f.this.f8417b.size() - 1; size >= 0; size--) {
                    ((c) f.this.f8417b.get(size)).e(color);
                }
            }
        }
    }

    class b extends WindowInsetsAnimationCompat.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap f8423a;

        b(int i11) {
            super(i11);
            this.f8423a = new HashMap();
        }

        private boolean a(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            return (windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.systemBars()) != 0;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            if (a(windowInsetsAnimationCompat)) {
                this.f8423a.remove(windowInsetsAnimationCompat);
                for (int size = f.this.f8417b.size() - 1; size >= 0; size--) {
                    ((c) f.this.f8417b.get(size)).a();
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            if (a(windowInsetsAnimationCompat)) {
                for (int size = f.this.f8417b.size() - 1; size >= 0; size--) {
                    ((c) f.this.f8417b.get(size)).d();
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
            RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
            int i11 = 0;
            for (int size = list.size() - 1; size >= 0; size--) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) list.get(size);
                Integer num = (Integer) this.f8423a.get(windowInsetsAnimationCompat);
                if (num != null) {
                    int iIntValue = num.intValue();
                    float alpha = windowInsetsAnimationCompat.getAlpha();
                    if ((iIntValue & 1) != 0) {
                        rectF.left = alpha;
                    }
                    if ((iIntValue & 2) != 0) {
                        rectF.top = alpha;
                    }
                    if ((iIntValue & 4) != 0) {
                        rectF.right = alpha;
                    }
                    if ((iIntValue & 8) != 0) {
                        rectF.bottom = alpha;
                    }
                    i11 |= iIntValue;
                }
            }
            z0.c cVarI = f.this.i(windowInsetsCompat);
            for (int size2 = f.this.f8417b.size() - 1; size2 >= 0; size2--) {
                ((c) f.this.f8417b.get(size2)).b(i11, cVarI, rectF);
            }
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
            if (!a(windowInsetsAnimationCompat)) {
                return boundsCompat;
            }
            z0.c upperBound = boundsCompat.getUpperBound();
            z0.c lowerBound = boundsCompat.getLowerBound();
            int i11 = upperBound.f79125a != lowerBound.f79125a ? 1 : 0;
            if (upperBound.f79126b != lowerBound.f79126b) {
                i11 |= 2;
            }
            if (upperBound.f79127c != lowerBound.f79127c) {
                i11 |= 4;
            }
            if (upperBound.f79128d != lowerBound.f79128d) {
                i11 |= 8;
            }
            this.f8423a.put(windowInsetsAnimationCompat, Integer.valueOf(i11));
            return boundsCompat;
        }
    }

    interface c {
        void a();

        void b(int i11, z0.c cVar, RectF rectF);

        void c(z0.c cVar, z0.c cVar2);

        void d();

        void e(int i11);
    }

    f(ViewGroup viewGroup) {
        z0.c cVar = z0.c.f79124e;
        this.f8418c = cVar;
        this.f8419d = cVar;
        Drawable background = viewGroup.getBackground();
        this.f8420e = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        a aVar = new a(viewGroup.getContext(), viewGroup);
        this.f8416a = aVar;
        aVar.setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(aVar, new OnApplyWindowInsetsListener() { // from class: androidx.core.view.insets.d
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f8414a.m(view, windowInsetsCompat);
            }
        });
        ViewCompat.setWindowInsetsAnimationCallback(aVar, new b(0));
        viewGroup.addView(aVar, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public z0.c i(WindowInsetsCompat windowInsetsCompat) {
        return z0.c.b(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.tappableElement()));
    }

    private z0.c j(WindowInsetsCompat windowInsetsCompat) {
        return z0.c.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.tappableElement()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        ViewParent parent = this.f8416a.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f8416a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat m(View view, WindowInsetsCompat windowInsetsCompat) {
        z0.c cVarI = i(windowInsetsCompat);
        z0.c cVarJ = j(windowInsetsCompat);
        if (!cVarI.equals(this.f8418c) || !cVarJ.equals(this.f8419d)) {
            this.f8418c = cVarI;
            this.f8419d = cVarJ;
            for (int size = this.f8417b.size() - 1; size >= 0; size--) {
                ((c) this.f8417b.get(size)).c(cVarI, cVarJ);
            }
        }
        return windowInsetsCompat;
    }

    void g(c cVar) {
        if (this.f8417b.contains(cVar)) {
            return;
        }
        this.f8417b.add(cVar);
        cVar.c(this.f8418c, this.f8419d);
        cVar.e(this.f8420e);
    }

    void h() {
        this.f8416a.post(new Runnable() { // from class: androidx.core.view.insets.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f8415a.l();
            }
        });
    }

    boolean k() {
        return !this.f8417b.isEmpty();
    }

    void n(c cVar) {
        this.f8417b.remove(cVar);
    }
}
