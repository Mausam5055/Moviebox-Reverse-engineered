package wa;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.R$attr;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TimeInterpolator f77607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final View f77608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f77609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final int f77610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f77611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.activity.b f77612f;

    public a(View view) {
        this.f77608b = view;
        Context context = view.getContext();
        this.f77607a = j.g(context, R$attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.f77609c = j.f(context, R$attr.motionDurationMedium2, 300);
        this.f77610d = j.f(context, R$attr.motionDurationShort3, 150);
        this.f77611e = j.f(context, R$attr.motionDurationShort2, 100);
    }

    public float a(float f11) {
        return this.f77607a.getInterpolation(f11);
    }

    protected androidx.activity.b b() {
        if (this.f77612f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        androidx.activity.b bVar = this.f77612f;
        this.f77612f = null;
        return bVar;
    }

    public androidx.activity.b c() {
        androidx.activity.b bVar = this.f77612f;
        this.f77612f = null;
        return bVar;
    }

    protected void d(androidx.activity.b bVar) {
        this.f77612f = bVar;
    }

    protected androidx.activity.b e(androidx.activity.b bVar) {
        if (this.f77612f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        androidx.activity.b bVar2 = this.f77612f;
        this.f77612f = bVar;
        return bVar2;
    }
}
