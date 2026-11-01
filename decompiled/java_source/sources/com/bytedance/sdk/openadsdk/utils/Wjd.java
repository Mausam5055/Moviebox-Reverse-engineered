package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Wjd {

    class Sj implements ViewTreeObserver.OnGlobalLayoutListener {
        View Sj = null;
        final /* synthetic */ ViewGroup sP;

        Sj(ViewGroup viewGroup) {
            this.sP = viewGroup;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                sP sPVar = (sP) this.sP.getTag(520093765);
                if (this.Sj == null) {
                    ViewGroup viewGroup = this.sP;
                    Wjd.sP(viewGroup, sPVar, (Integer) viewGroup.getTag(520093766));
                    return;
                }
                Rect rect = new Rect();
                this.Sj.getGlobalVisibleRect(rect);
                Rect rect2 = new Rect();
                this.sP.getGlobalVisibleRect(rect2);
                if (rect.contains(rect2)) {
                    if (sPVar != null) {
                        sPVar.Sj(this.sP, false);
                    }
                    this.sP.setTag(520093763, Boolean.FALSE);
                } else {
                    if (sPVar != null) {
                        sPVar.Sj(this.sP, true);
                    }
                    this.sP.setTag(520093763, Boolean.TRUE);
                }
            } catch (Exception e11) {
                ApmHelper.reportCustomError("onGlobalLayout exception " + this.sP.getTag(520093765), "ViewUtils", e11);
            }
        }
    }

    public interface sP {
        void Sj();

        void Sj(View view, boolean z10);

        void Sj(boolean z10);

        void sP();
    }

    public static void Sj(final ViewGroup viewGroup, boolean z10, int i11, sP sPVar, List<ViewGroup> list) {
        viewGroup.setTag(520093765, sPVar);
        viewGroup.setTag(520093766, Integer.valueOf(i11));
        if (viewGroup.getTag(520093764) == Boolean.TRUE) {
            return;
        }
        final Sj sj2 = new Sj(viewGroup);
        if (list != null && list.size() > 0) {
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Wjd.1
                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewAdded(View view, View view2) {
                        sj2.Sj = view2;
                    }

                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewRemoved(View view, View view2) {
                        sj2.Sj = null;
                    }
                });
            }
        }
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(sj2);
        if (z10) {
            viewGroup.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.utils.Wjd.2
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public void onScrollChanged() {
                    try {
                        sP sPVar2 = (sP) viewGroup.getTag(520093765);
                        ViewGroup viewGroup2 = viewGroup;
                        Wjd.sP(viewGroup2, sPVar2, (Integer) viewGroup2.getTag(520093766));
                    } catch (Exception e11) {
                        ApmHelper.reportCustomError("onScrollChanged exception " + viewGroup.getTag(520093765), "ViewUtils", e11);
                    }
                }
            });
        }
        viewGroup.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Wjd.3
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public void onWindowFocusChanged(boolean z11) {
                try {
                    sP sPVar2 = (sP) viewGroup.getTag(520093765);
                    if (sPVar2 != null) {
                        sPVar2.Sj(z11);
                        ViewGroup viewGroup2 = viewGroup;
                        Wjd.sP(viewGroup2, sPVar2, (Integer) viewGroup2.getTag(520093766));
                    }
                } catch (Exception e11) {
                    ApmHelper.reportCustomError("onWindowFocusChanged exception " + viewGroup.getTag(520093765), "ViewUtils", e11);
                }
            }
        });
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Wjd.4
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                sP sPVar2 = (sP) viewGroup.getTag(520093765);
                if (sPVar2 != null) {
                    sPVar2.Sj();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                sP sPVar2 = (sP) viewGroup.getTag(520093765);
                if (sPVar2 != null) {
                    sPVar2.sP();
                }
            }
        });
        viewGroup.setTag(520093764, Boolean.TRUE);
    }

    private static boolean Sj(View view, int i11) {
        return com.bytedance.sdk.openadsdk.core.LD.Sj(view, 20, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sP(View view, sP sPVar, Integer num) {
        if (sPVar == null) {
            return;
        }
        if (num == null) {
            num = 0;
        }
        sPVar.Sj(view, Sj(view, num.intValue()));
    }
}
