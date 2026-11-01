package androidx.core.view.insets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.R$id;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {
    private static final Object PROTECTION_VIEW = new Object();
    private c mGroup;
    private final List<Protection> mProtections;

    class a implements Protection.a.InterfaceC0071a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FrameLayout.LayoutParams f8403a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f8404b;

        a(FrameLayout.LayoutParams layoutParams, View view) {
            this.f8403a = layoutParams;
            this.f8404b = view;
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void a(int i11) {
            FrameLayout.LayoutParams layoutParams = this.f8403a;
            layoutParams.height = i11;
            this.f8404b.setLayoutParams(layoutParams);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void b(z0.c cVar) {
            FrameLayout.LayoutParams layoutParams = this.f8403a;
            layoutParams.leftMargin = cVar.f79125a;
            layoutParams.topMargin = cVar.f79126b;
            layoutParams.rightMargin = cVar.f79127c;
            layoutParams.bottomMargin = cVar.f79128d;
            this.f8404b.setLayoutParams(layoutParams);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void c(float f11) {
            this.f8404b.setAlpha(f11);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void d(int i11) {
            FrameLayout.LayoutParams layoutParams = this.f8403a;
            layoutParams.width = i11;
            this.f8404b.setLayoutParams(layoutParams);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void e(float f11) {
            this.f8404b.setTranslationX(f11);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void f(float f11) {
            this.f8404b.setTranslationY(f11);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void g(Drawable drawable) {
            this.f8404b.setBackground(drawable);
        }

        @Override // androidx.core.view.insets.Protection.a.InterfaceC0071a
        public void onVisibilityChanged(boolean z10) {
            this.f8404b.setVisibility(z10 ? 0 : 4);
        }
    }

    public ProtectionLayout(Context context) {
        super(context);
        this.mProtections = new ArrayList();
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.mProtections = new ArrayList();
    }

    public ProtectionLayout(Context context, List<Protection> list) {
        super(context);
        this.mProtections = new ArrayList();
        setProtections(list);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008c  */
    private void addProtectionView(Context context, int i11, Protection protection) {
        int iQ;
        int i12;
        int iM;
        Protection.a attributes = protection.getAttributes();
        int side = protection.getSide();
        int i13 = -1;
        if (side != 1) {
            if (side == 2) {
                iM = attributes.m();
                i12 = 48;
            } else if (side == 4) {
                iQ = attributes.q();
                i12 = 5;
            } else {
                if (side != 8) {
                    throw new IllegalArgumentException("Unexpected side: " + protection.getSide());
                }
                iM = attributes.m();
                i12 = 80;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i13, iM, i12);
            z0.c cVarN = attributes.n();
            layoutParams.leftMargin = cVarN.f79125a;
            layoutParams.topMargin = cVarN.f79126b;
            layoutParams.rightMargin = cVarN.f79127c;
            layoutParams.bottomMargin = cVarN.f79128d;
            View view = new View(context);
            view.setTag(PROTECTION_VIEW);
            view.setTranslationX(attributes.o());
            view.setTranslationY(attributes.p());
            view.setAlpha(attributes.k());
            view.setVisibility(attributes.r() ? 0 : 4);
            view.setBackground(attributes.l());
            attributes.t(new a(layoutParams, view));
            addView(view, i11, layoutParams);
        }
        iQ = attributes.q();
        i12 = 3;
        i13 = iQ;
        iM = -1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i13, iM, i12);
        z0.c cVarN2 = attributes.n();
        layoutParams2.leftMargin = cVarN2.f79125a;
        layoutParams2.topMargin = cVarN2.f79126b;
        layoutParams2.rightMargin = cVarN2.f79127c;
        layoutParams2.bottomMargin = cVarN2.f79128d;
        View view2 = new View(context);
        view2.setTag(PROTECTION_VIEW);
        view2.setTranslationX(attributes.o());
        view2.setTranslationY(attributes.p());
        view2.setAlpha(attributes.k());
        view2.setVisibility(attributes.r() ? 0 : 4);
        view2.setBackground(attributes.l());
        attributes.t(new a(layoutParams2, view2));
        addView(view2, i11, layoutParams2);
    }

    private void addProtectionViews() {
        if (this.mProtections.isEmpty()) {
            return;
        }
        this.mGroup = new c(getOrInstallSystemBarStateMonitor(), this.mProtections);
        int childCount = getChildCount();
        int i11 = this.mGroup.i();
        for (int i12 = 0; i12 < i11; i12++) {
            addProtectionView(getContext(), i12 + childCount, this.mGroup.h(i12));
        }
    }

    private f getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R$id.tag_system_bar_state_monitor);
        if (tag instanceof f) {
            return (f) tag;
        }
        f fVar = new f(viewGroup);
        viewGroup.setTag(R$id.tag_system_bar_state_monitor, fVar);
        return fVar;
    }

    private void maybeUninstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R$id.tag_system_bar_state_monitor);
        if (tag instanceof f) {
            f fVar = (f) tag;
            if (fVar.k()) {
                return;
            }
            fVar.h();
            viewGroup.setTag(R$id.tag_system_bar_state_monitor, null);
        }
    }

    private void removeProtectionViews() {
        if (this.mGroup != null) {
            removeViews(getChildCount() - this.mGroup.i(), this.mGroup.i());
            int i11 = this.mGroup.i();
            for (int i12 = 0; i12 < i11; i12++) {
                this.mGroup.h(i12).getAttributes().t(null);
            }
            this.mGroup.g();
            this.mGroup = null;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != PROTECTION_VIEW) {
            c cVar = this.mGroup;
            int childCount = getChildCount() - (cVar != null ? cVar.i() : 0);
            if (i11 > childCount || i11 < 0) {
                i11 = childCount;
            }
        }
        super.addView(view, i11, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mGroup != null) {
            removeProtectionViews();
        }
        addProtectionViews();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeProtectionViews();
        maybeUninstallSystemBarStateMonitor();
    }

    public void setProtections(List<Protection> list) {
        this.mProtections.clear();
        this.mProtections.addAll(list);
        if (isAttachedToWindow()) {
            removeProtectionViews();
            addProtectionViews();
            requestApplyInsets();
        }
    }
}
