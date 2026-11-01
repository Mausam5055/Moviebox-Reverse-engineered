package com.cloud.tmc.miniapp.defaultimpl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.RefreshAction;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0o implements com.cloud.tmc.miniapp.utils.manager.OooO00o {
    public TmcFragment OooO00o;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o OooO0O0;

    /* JADX WARN: Multi-variable type inference failed */
    public static final void OooO00o(TmcFragment tmcFragment, OooOOO it) {
        Intrinsics.h(tmcFragment, "$tmcFragment");
        Intrinsics.h(it, "it");
        if (tmcFragment instanceof RefreshAction) {
            ((RefreshAction) tmcFragment).onRefreshEvent();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void OooO0O0(TmcFragment tmcFragment, OooOOO it) {
        Intrinsics.h(tmcFragment, "$tmcFragment");
        Intrinsics.h(it, "it");
        if (tmcFragment instanceof RefreshAction) {
            ((RefreshAction) tmcFragment).onLoadMoreEvent();
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public View OooO00o(TmcFragment tmcFragment, View view) {
        Intrinsics.h(tmcFragment, "tmcFragment");
        Intrinsics.h(view, "view");
        this.OooO00o = tmcFragment;
        OooO00o();
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        Intrinsics.e(oooO00o);
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO0o oooO0o = oooO00o.o00oO0O;
        if (oooO0o != null) {
            oooO00o.removeView(((com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO0o).OooO00o);
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00 oooOo00 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00(-1, -1);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00) {
            oooOo00 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00) layoutParams;
        }
        ViewExtKt.removeSelf(view);
        oooO00o.addView(view, oooO00o.getChildCount(), oooOo00);
        oooO00o.o00oO0O = new com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o(view);
        if (oooO00o.o000OOo) {
            View viewFindViewById = oooO00o.findViewById(oooO00o.OooOOoo);
            View viewFindViewById2 = oooO00o.findViewById(oooO00o.OooOo00);
            com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o2 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o.o00oO0O;
            oooO00o2.getClass();
            oooO00o2.OooO.OooO0O0 = null;
            com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o3 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o.o00oO0O;
            oooO00o3.OooO.OooO0OO = oooO00o.OoooO0;
            oooO00o3.OooO00o(oooO00o.o0ooOoO, viewFindViewById, viewFindViewById2);
        }
        OooOO0O oooOO0O = oooO00o.oo000o;
        if (oooOO0O != null && oooOO0O.getSpinnerStyle().OooO0O0) {
            oooO00o.bringChildToFront(oooO00o.oo000o.getView());
        }
        OooOO0O oooOO0O2 = oooO00o.o00oO0o;
        if (oooOO0O2 != null && oooOO0O2.getSpinnerStyle().OooO0O0) {
            oooO00o.bringChildToFront(oooO00o.o00oO0o.getView());
        }
        return oooO00o;
    }

    @SuppressLint({"ResourceType"})
    public final void OooO00o() {
        final TmcFragment tmcFragment = this.OooO00o;
        if (tmcFragment != null) {
            Context contextRequireContext = tmcFragment.requireContext();
            Intrinsics.g(contextRequireContext, "tmcFragment.requireContext()");
            this.OooO0O0 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o(contextRequireContext, null);
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
            Intrinsics.e(oooO00o);
            oooO00o.setLayoutParams(layoutParams);
            oooO00o.setTag("close egg");
            com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0 oooO0O0 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0(contextRequireContext, null);
            TextView textView = oooO0O0.OooOOoo;
            oooO0O0.OooOo0 = false;
            textView.setVisibility(8);
            OooOOO0 oooOOO0 = oooO0O0.OooO0oO;
            if (oooOOO0 != null) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO0).OooO00o(oooO0O0);
            }
            ImageView imageView = oooO0O0.OooO0o0;
            oooO0O0.OooOo0O = false;
            imageView.setVisibility(8);
            OooOOO0 oooOOO1 = oooO0O0.OooO0oO;
            if (oooOOO1 != null) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO1).OooO00o(oooO0O0);
            }
            int i11 = R.anim.layout_refresh_loading;
            oooO0O0.OooO = null;
            oooO0O0.OooO0o.setImageResource(i11);
            oooO0O0.OooO0Oo.setTextSize(12.0f);
            OooOOO0 oooOOO2 = oooO0O0.OooO0oO;
            if (oooOOO2 != null) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO2).OooO00o(oooO0O0);
            }
            oooO0O0.OooO00o(androidx.core.content.b.getColor(contextRequireContext, R.color.mini_color_element_03));
            oooO0O0.setBackgroundResource(R.color.mini_color_bg_02);
            oooO00o.OooO00o(oooO0O0);
            com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO0O0 oooO0O1 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO0O0(contextRequireContext, null);
            ImageView imageView2 = oooO0O1.OooO0o0;
            oooO0O1.OooOoO0 = false;
            imageView2.setVisibility(8);
            OooOOO0 oooOOO3 = oooO0O1.OooO0oO;
            if (oooOOO3 != null) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO3).OooO00o(oooO0O1);
            }
            int i12 = R.anim.layout_refresh_loading;
            oooO0O1.OooO = null;
            oooO0O1.OooO0o.setImageResource(i12);
            oooO0O1.OooO0Oo.setTextSize(12.0f);
            OooOOO0 oooOOO4 = oooO0O1.OooO0oO;
            if (oooOOO4 != null) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO4).OooO00o(oooO0O1);
            }
            oooO0O1.OooO00o(androidx.core.content.b.getColor(contextRequireContext, R.color.mini_color_element_03));
            oooO0O1.setBackgroundResource(R.color.mini_color_bg_02);
            oooO0O1.OooOOO0 = 100;
            oooO00o.OooO00o(oooO0O1);
            oooO00o.OooOooO = false;
            oooO00o.OoooOOo = true;
            oooO00o.OooOooo = false;
            oooO00o.Oooo0oO = false;
            oooO00o.o00o0O = 0.8f;
            oooO00o.Oooo0o0 = false;
            oooO00o.OoooOoo = new com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0OO() { // from class: com.cloud.tmc.miniapp.defaultimpl.j
                @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0OO
                public final void OooO00o(OooOOO oooOOO) {
                    OooO0o.OooO00o(tmcFragment, oooOOO);
                }
            };
            oooO00o.Ooooo00 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0O0() { // from class: com.cloud.tmc.miniapp.defaultimpl.k
                @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0O0
                public final void OooO00o(OooOOO oooOOO) {
                    OooO0o.OooO0O0(tmcFragment, oooOOO);
                }
            };
            oooO00o.OooOooo = oooO00o.OooOooo || !oooO00o.OoooOOo;
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO00o(float f11) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 refreshHeader = oooO00o != null ? oooO00o.getRefreshHeader() : null;
        if (refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0 oooO0O0 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0) refreshHeader;
            oooO0O0.getClass();
            oooO0O0.OooOooO = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(f11);
        } else if (refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO oooO0OO = (com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) refreshHeader;
            oooO0OO.getClass();
            oooO0OO.OooO0oO = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(f11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO00o(int i11) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO refreshFooter = oooO00o != null ? oooO00o.getRefreshFooter() : null;
        if (refreshFooter instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO0O0) {
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO0O0) refreshFooter).OooO00o(i11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO00o(int i11, boolean z10) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(i11, z10, false);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO00o(File file, File file2, File file3, File file4) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 refreshHeader = oooO00o != null ? oooO00o.getRefreshHeader() : null;
        if (refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO oooO0OO = (com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) refreshHeader;
            oooO0OO.OooOO0 = file;
            oooO0OO.OooOO0O = file2;
            oooO0OO.OooOO0o = file3;
            oooO0OO.OooOOO0 = file4;
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO00o(String style) {
        Context context;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o;
        Intrinsics.h(style, "style");
        TmcFragment tmcFragment = this.OooO00o;
        if (tmcFragment == null || (context = tmcFragment.getContext()) == null) {
            return;
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO oooO0OO = null;
        if (Intrinsics.c(style, "custom")) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO oooO0OO2 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO(context, null);
            TextView textView = oooO0OO2.OooO0o0;
            if (textView != null) {
                textView.setTextSize(12.0f);
            }
            OooOOO0 oooOOO0 = oooO0OO2.OooO;
            if (oooOOO0 != null) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO0).OooO00o(oooO0OO2);
            }
            int color = androidx.core.content.b.getColor(context, R.color.mini_color_element_03);
            TextView textView2 = oooO0OO2.OooO0o0;
            if (textView2 != null) {
                textView2.setTextColor((color & 16777215) | (-872415232));
            }
            oooO0OO2.setBackgroundResource(R.color.mini_color_bg_02);
            oooO0OO2.OooO0oo = 1400;
            oooO0OO = oooO0OO2;
        }
        if (oooO0OO == null || (oooO00o = this.OooO0O0) == null) {
            return;
        }
        oooO00o.OooO00o(oooO0OO);
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO00o(boolean z10) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.Oooo00o = z10;
            oooO00o.OoooOo0 = true;
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0O0(float f11) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.ooOO = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(f11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0O0(int i11) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 refreshHeader = oooO00o != null ? oooO00o.getRefreshHeader() : null;
        if (refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0) {
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0) refreshHeader).setBackgroundColor(i11);
        } else if (refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) {
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) refreshHeader).setBackgroundColor(i11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0O0(int i11, boolean z10) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(i11, z10, Boolean.FALSE);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0O0(boolean z10) {
        TextView textView;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 refreshHeader = oooO00o != null ? oooO00o.getRefreshHeader() : null;
        if (!(refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) || (textView = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) refreshHeader).OooO0o0) == null) {
            return;
        }
        ViewExtKt.toVisibleOrGone(textView, z10);
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0OO(int i11) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO refreshFooter = oooO00o != null ? oooO00o.getRefreshFooter() : null;
        if (refreshFooter instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO0O0) {
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.footer.OooO0O0) refreshFooter).setBackgroundColor(i11);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0OO(boolean z10) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooOooO = z10;
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0Oo(int i11) {
        TextView textView;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0 refreshHeader = oooO00o != null ? oooO00o.getRefreshHeader() : null;
        if (refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0) {
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0O0) refreshHeader).OooO00o(i11);
        } else {
            if (!(refreshHeader instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) || (textView = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO0OO) refreshHeader).OooO0o0) == null) {
                return;
            }
            textView.setTextColor((i11 & 16777215) | (-872415232));
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void OooO0Oo(boolean z10) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OoooOOo = true;
            oooO00o.OooOooo = z10;
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void onDestroy() {
        this.OooO00o = null;
        this.OooO0O0 = null;
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public boolean startRefresh() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            return oooO00o.OooO00o();
        }
        return false;
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void stopLoadMore() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - oooO00o.o0OO00O))), 300) << 16, true, false);
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.manager.OooO00o
    public void stopRefresh() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - oooO00o.o0OO00O))), 300) << 16, true, Boolean.FALSE);
        }
    }
}
