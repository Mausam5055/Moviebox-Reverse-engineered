package com.transsion.audio.view;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.therouter.TheRouter;
import com.transsion.audio.fragment.AudioBottomSheetFragment;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FloatingMagnetView f42953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference f42954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f42955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f42956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioBean f42957e;

    class a implements EnFloatingView.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FrameLayout f42958a;

        a(FrameLayout frameLayout) {
            this.f42958a = frameLayout;
        }

        @Override // com.transsion.audio.view.EnFloatingView.f
        public void a(ViewGroup viewGroup) {
            d dVar = d.this;
            dVar.i((ViewGroup) dVar.f42954b.get());
            for (IFloatingApi.a aVar : d.this.f42955c) {
                if (aVar != null) {
                    aVar.onRemove();
                }
            }
            d.this.w(8);
        }

        @Override // com.transsion.audio.view.EnFloatingView.f
        public void b(ViewGroup viewGroup) {
            AudioBottomSheetFragment.INSTANCE.a(d.this.f42957e).show(((FragmentActivity) this.f42958a.getContext()).getSupportFragmentManager(), "dialog");
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f42960a = new d();
    }

    private d() {
        this.f42956d = "";
        this.f42957e = null;
        this.f42955c = new ArrayList();
    }

    private void e(View view) {
        FrameLayout frameLayoutN;
        if (n() == null || (frameLayoutN = n()) == null) {
            return;
        }
        frameLayoutN.addView(view);
    }

    private void j(Activity activity, AudioBean audioBean) {
        if (this.f42953a == null) {
            EnFloatingView enFloatingView = new EnFloatingView(activity);
            this.f42953a = enFloatingView;
            e(enFloatingView);
        } else {
            w(0);
            if (!((IAudioApi) TheRouter.d(IAudioApi.class, new Object[0])).b(audioBean) && this.f42953a.isPackUp()) {
                this.f42953a.expanded();
            }
        }
    }

    public static d k() {
        return b.f42960a;
    }

    private FrameLayout l(Activity activity) {
        if (activity == null) {
            return null;
        }
        try {
            return (FrameLayout) activity.getWindow().getDecorView().findViewById(R.id.content);
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private FrameLayout n() {
        WeakReference weakReference = this.f42954b;
        if (weakReference == null) {
            return null;
        }
        return (FrameLayout) weakReference.get();
    }

    public d d(Activity activity, AudioBean audioBean) {
        j(activity, audioBean);
        return this;
    }

    public d f(Activity activity) {
        g(activity, l(activity));
        return this;
    }

    public void g(Activity activity, FrameLayout frameLayout) {
        FloatingMagnetView floatingMagnetView;
        String simpleName = activity.getClass().getSimpleName();
        if (!TextUtils.equals(this.f42956d, simpleName)) {
            this.f42956d = simpleName;
            FloatingMagnetView floatingMagnetView2 = this.f42953a;
            if (floatingMagnetView2 != null) {
                floatingMagnetView2.packUp();
            }
        }
        if (frameLayout == null || (floatingMagnetView = this.f42953a) == null) {
            this.f42954b = new WeakReference(frameLayout);
            return;
        }
        floatingMagnetView.setOnOptionListener(new a(frameLayout));
        if (this.f42953a.getParent() == frameLayout) {
            return;
        }
        if (this.f42953a.getParent() != null) {
            ((ViewGroup) this.f42953a.getParent()).removeView(this.f42953a);
        }
        this.f42953a.attach(activity);
        this.f42954b = new WeakReference(frameLayout);
        frameLayout.addView(this.f42953a);
    }

    public d h(Activity activity) {
        i(l(activity));
        return this;
    }

    public void i(ViewGroup viewGroup) {
        FloatingMagnetView floatingMagnetView = this.f42953a;
        if (floatingMagnetView != null && viewGroup != null && ViewCompat.isAttachedToWindow(floatingMagnetView)) {
            viewGroup.removeView(this.f42953a);
        }
        if (n() == viewGroup) {
            this.f42954b = null;
        }
    }

    public AudioBean m() {
        return this.f42957e;
    }

    public Boolean o() {
        return Boolean.valueOf(this.f42953a.getVisibility() == 8);
    }

    public d p(Long l11, Long l12) {
        if (this.f42953a != null) {
            int iLongValue = (int) (((l11.longValue() * 1.0f) / l12.longValue()) * 100.0f);
            if (iLongValue > 100) {
                iLongValue = 100;
            }
            this.f42953a.onProgress(iLongValue);
        }
        return this;
    }

    public d q(int i11) {
        FloatingMagnetView floatingMagnetView = this.f42953a;
        if (floatingMagnetView != null) {
            floatingMagnetView.onStateChanged(i11);
        }
        return this;
    }

    public void r() {
        FloatingMagnetView floatingMagnetView = this.f42953a;
        if (floatingMagnetView != null) {
            floatingMagnetView.packUp();
        }
    }

    public void s() {
        FloatingMagnetView floatingMagnetView = this.f42953a;
        if (floatingMagnetView != null) {
            floatingMagnetView.packUpAnimation();
        }
    }

    public d t(AudioBean audioBean) {
        if (audioBean != null) {
            this.f42957e = audioBean;
            lg.a.f68839a.c("EnFloatingView", "prepare..mEnFloatingView.." + this.f42953a, false);
            FloatingMagnetView floatingMagnetView = this.f42953a;
            if (floatingMagnetView != null) {
                floatingMagnetView.prepare();
            }
        }
        return this;
    }

    public void u(IFloatingApi.a aVar) {
        this.f42955c.remove(aVar);
    }

    public void v(IFloatingApi.a aVar) {
        this.f42955c.add(aVar);
    }

    public d w(int i11) {
        FloatingMagnetView floatingMagnetView = this.f42953a;
        if (floatingMagnetView != null && floatingMagnetView.getVisibility() != i11) {
            this.f42953a.setVisibility(i11);
        }
        return this;
    }

    public void x(String str) {
        m().setTitle(str);
    }
}
