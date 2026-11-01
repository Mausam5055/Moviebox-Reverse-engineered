package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f29280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f29281d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private xa.d f29284g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextPaint f29278a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final xa.f f29279b = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29282e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WeakReference f29283f = new WeakReference(null);

    class a extends xa.f {
        a() {
        }

        @Override // xa.f
        public void a(int i11) {
            y.this.f29282e = true;
            b bVar = (b) y.this.f29283f.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // xa.f
        public void b(Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            y.this.f29282e = true;
            b bVar = (b) y.this.f29283f.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public y(b bVar) {
        j(bVar);
    }

    private float c(String str) {
        if (str == null) {
            return 0.0f;
        }
        return Math.abs(this.f29278a.getFontMetrics().ascent);
    }

    private float d(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f29278a.measureText(charSequence, 0, charSequence.length());
    }

    private void i(String str) {
        this.f29280c = d(str);
        this.f29281d = c(str);
        this.f29282e = false;
    }

    public xa.d e() {
        return this.f29284g;
    }

    public float f(String str) {
        if (!this.f29282e) {
            return this.f29281d;
        }
        i(str);
        return this.f29281d;
    }

    public TextPaint g() {
        return this.f29278a;
    }

    public float h(String str) {
        if (!this.f29282e) {
            return this.f29280c;
        }
        i(str);
        return this.f29280c;
    }

    public void j(b bVar) {
        this.f29283f = new WeakReference(bVar);
    }

    public void k(xa.d dVar, Context context) {
        if (this.f29284g != dVar) {
            this.f29284g = dVar;
            if (dVar != null) {
                dVar.o(context, this.f29278a, this.f29279b);
                b bVar = (b) this.f29283f.get();
                if (bVar != null) {
                    this.f29278a.drawableState = bVar.getState();
                }
                dVar.n(context, this.f29278a, this.f29279b);
                this.f29282e = true;
            }
            b bVar2 = (b) this.f29283f.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void l(boolean z10) {
        this.f29282e = z10;
    }

    public void m(boolean z10) {
        this.f29282e = z10;
    }

    public void n(Context context) {
        this.f29284g.n(context, this.f29278a, this.f29279b);
    }
}
