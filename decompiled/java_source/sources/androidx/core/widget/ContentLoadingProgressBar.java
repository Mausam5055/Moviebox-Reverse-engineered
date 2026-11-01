package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f8472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f8473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f8474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f8475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f8476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f8477f;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8472a = -1L;
        this.f8473b = false;
        this.f8474c = false;
        this.f8475d = false;
        this.f8476e = new Runnable() { // from class: androidx.core.widget.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f8505a.f();
            }
        };
        this.f8477f = new Runnable() { // from class: androidx.core.widget.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f8506a.g();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f8475d = true;
        removeCallbacks(this.f8477f);
        this.f8474c = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = this.f8472a;
        long j12 = jCurrentTimeMillis - j11;
        if (j12 >= 500 || j11 == -1) {
            setVisibility(8);
        } else {
            if (this.f8473b) {
                return;
            }
            postDelayed(this.f8476e, 500 - j12);
            this.f8473b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.f8473b = false;
        this.f8472a = -1L;
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        this.f8474c = false;
        if (this.f8475d) {
            return;
        }
        this.f8472a = System.currentTimeMillis();
        setVisibility(0);
    }

    private void h() {
        removeCallbacks(this.f8476e);
        removeCallbacks(this.f8477f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f8472a = -1L;
        this.f8475d = false;
        removeCallbacks(this.f8476e);
        this.f8473b = false;
        if (this.f8474c) {
            return;
        }
        postDelayed(this.f8477f, 500L);
        this.f8474c = true;
    }

    public void hide() {
        post(new Runnable() { // from class: androidx.core.widget.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f8508a.e();
            }
        });
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    public void show() {
        post(new Runnable() { // from class: androidx.core.widget.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f8507a.i();
            }
        });
    }
}
