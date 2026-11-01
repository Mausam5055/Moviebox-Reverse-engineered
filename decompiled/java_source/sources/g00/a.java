package g00;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ValueAnimator f63049b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f63048a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f63050c = 150;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f63051d = new AccelerateDecelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Animator.AnimatorListener f63052e = new C0764a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f63053f = new b();

    /* JADX INFO: renamed from: g00.a$a, reason: collision with other inner class name */
    class C0764a extends AnimatorListenerAdapter {
        C0764a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.d(0);
            a.this.f63049b = null;
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i11 = (int) fFloatValue;
            float f11 = fFloatValue - i11;
            if (fFloatValue < 0.0f) {
                i11--;
                f11 += 1.0f;
            }
            a.this.e(i11, f11, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i11) {
        Iterator it = this.f63048a.iterator();
        while (it.hasNext()) {
            ((MagicIndicator) it.next()).onPageScrollStateChanged(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i11, float f11, int i12) {
        Iterator it = this.f63048a.iterator();
        while (it.hasNext()) {
            ((MagicIndicator) it.next()).onPageScrolled(i11, f11, i12);
        }
    }

    public static k00.a f(List list, int i11) {
        k00.a aVar;
        if (i11 >= 0 && i11 <= list.size() - 1) {
            return (k00.a) list.get(i11);
        }
        k00.a aVar2 = new k00.a();
        if (i11 < 0) {
            aVar = (k00.a) list.get(0);
        } else {
            i11 = (i11 - list.size()) + 1;
            aVar = (k00.a) list.get(list.size() - 1);
        }
        aVar2.f66555a = aVar.f66555a + (aVar.b() * i11);
        aVar2.f66556b = aVar.f66556b;
        aVar2.f66557c = aVar.f66557c + (aVar.b() * i11);
        aVar2.f66558d = aVar.f66558d;
        aVar2.f66559e = aVar.f66559e + (aVar.b() * i11);
        aVar2.f66560f = aVar.f66560f;
        aVar2.f66561g = aVar.f66561g + (i11 * aVar.b());
        aVar2.f66562h = aVar.f66562h;
        return aVar2;
    }
}
