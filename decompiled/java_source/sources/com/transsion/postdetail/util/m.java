package com.transsion.postdetail.util;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f50170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f50171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f50172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f50173d = new b();

    public interface a {
        void a(int i11);

        void b(int i11);
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (m.this.f50170a == null) {
                View view = m.this.f50170a;
                Intrinsics.e(view);
                view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                return;
            }
            Rect rect = new Rect();
            View view2 = m.this.f50170a;
            Intrinsics.e(view2);
            view2.getWindowVisibleDisplayFrame(rect);
            int iHeight = rect.height();
            if (m.this.c() == 0) {
                m.this.e(iHeight);
                return;
            }
            if (m.this.c() == iHeight) {
                return;
            }
            if (m.this.c() - iHeight > 200) {
                if (m.this.f50172c != null) {
                    a aVar = m.this.f50172c;
                    Intrinsics.e(aVar);
                    aVar.b(m.this.c() - iHeight);
                }
                m.this.e(iHeight);
                return;
            }
            if (iHeight - m.this.c() > 200) {
                if (m.this.f50172c != null) {
                    a aVar2 = m.this.f50172c;
                    Intrinsics.e(aVar2);
                    aVar2.a(iHeight - m.this.c());
                }
                m.this.e(iHeight);
            }
        }
    }

    public final int c() {
        return this.f50171b;
    }

    public final void d(Activity activity, a aVar) {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        Window window;
        this.f50172c = aVar;
        View decorView = (activity == null || (window = activity.getWindow()) == null) ? null : window.getDecorView();
        this.f50170a = decorView;
        if (aVar == null) {
            if (decorView == null || (viewTreeObserver2 = decorView.getViewTreeObserver()) == null) {
                return;
            }
            viewTreeObserver2.removeOnGlobalLayoutListener(this.f50173d);
            return;
        }
        if (decorView == null || (viewTreeObserver = decorView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(this.f50173d);
    }

    public final void e(int i11) {
        this.f50171b = i11;
    }
}
