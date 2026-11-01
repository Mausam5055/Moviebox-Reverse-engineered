package com.cloud.tmc.miniapp.widget.pulldownrefresh.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.MiniRefreshState;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class OooO0O0 extends RelativeLayout implements OooOO0O {
    public View OooO00o;
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 OooO0O0;
    public OooOO0O OooO0OO;

    public OooO0O0(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OooO0O0(@NonNull View view) {
        this(view, view instanceof OooOO0O ? (OooOO0O) view : null);
    }

    public OooO0O0(@NonNull View view, @Nullable OooOO0O oooOO0O) {
        super(view.getContext(), null, 0);
        this.OooO00o = view;
        this.OooO0OO = oooOO0O;
        if ((this instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO0O0) && (oooOO0O instanceof OooOO0) && oooOO0O.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO) {
            oooOO0O.getView().setScaleY(-1.0f);
            return;
        }
        if (this instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO0OO) {
            OooOO0O oooOO0O2 = this.OooO0OO;
            if ((oooOO0O2 instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) && oooOO0O2.getSpinnerStyle() == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oO) {
                oooOO0O.getView().setScaleY(-1.0f);
            }
        }
    }

    public int OooO00o(@NonNull OooOOO oooOOO, boolean z10) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return 0;
        }
        return oooOO0O.OooO00o(oooOOO, z10);
    }

    public void OooO00o(float f11, int i11, int i12) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return;
        }
        oooOO0O.OooO00o(f11, i11, i12);
    }

    public void OooO00o(@NonNull OooOOO0 oooOOO0, int i11, int i12) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O != null && oooOO0O != this) {
            oooOO0O.OooO00o(oooOOO0, i11, i12);
            return;
        }
        View view = this.OooO00o;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00) {
                ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO0).OooO00o(this, ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00) layoutParams).OooO00o);
            }
        }
    }

    public void OooO00o(@NonNull OooOOO oooOOO, int i11, int i12) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return;
        }
        oooOO0O.OooO00o(oooOOO, i11, i12);
    }

    public void OooO00o(@NonNull OooOOO oooOOO, @NonNull MiniRefreshState miniRefreshState, @NonNull MiniRefreshState miniRefreshState2) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return;
        }
        if ((this instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO0O0) && (oooOO0O instanceof OooOO0)) {
            if (miniRefreshState.isFooter) {
                miniRefreshState = miniRefreshState.toHeader();
            }
            if (miniRefreshState2.isFooter) {
                miniRefreshState2 = miniRefreshState2.toHeader();
            }
        } else if ((this instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO0OO) && (oooOO0O instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO)) {
            if (miniRefreshState.isHeader) {
                miniRefreshState = miniRefreshState.toFooter();
            }
            if (miniRefreshState2.isHeader) {
                miniRefreshState2 = miniRefreshState2.toFooter();
            }
        }
        OooOO0O oooOO0O2 = this.OooO0OO;
        if (oooOO0O2 != null) {
            oooOO0O2.OooO00o(oooOOO, miniRefreshState, miniRefreshState2);
        }
    }

    public void OooO00o(boolean z10, float f11, int i11, int i12, int i13) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return;
        }
        oooOO0O.OooO00o(z10, f11, i11, i12, i13);
    }

    public boolean OooO00o() {
        OooOO0O oooOO0O = this.OooO0OO;
        return (oooOO0O == null || oooOO0O == this || !oooOO0O.OooO00o()) ? false : true;
    }

    @SuppressLint({"RestrictedApi"})
    public boolean OooO00o(boolean z10) {
        OooOO0O oooOO0O = this.OooO0OO;
        return (oooOO0O instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) && ((com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO) oooOO0O).OooO00o(z10);
    }

    public void OooO0O0(@NonNull OooOOO oooOOO, int i11, int i12) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return;
        }
        oooOO0O.OooO0O0(oooOOO, i11, i12);
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        return (obj instanceof OooOO0O) && getView() == ((OooOO0O) obj).getView();
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    @NonNull
    public com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 getSpinnerStyle() {
        int i11;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 oooO0O0 = this.OooO0O0;
        if (oooO0O0 != null) {
            return oooO0O0;
        }
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O != null && oooOO0O != this) {
            return oooOO0O.getSpinnerStyle();
        }
        View view = this.OooO00o;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00) {
                com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 oooO0O1 = ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo00) layoutParams).OooO0O0;
                this.OooO0O0 = oooO0O1;
                if (oooO0O1 != null) {
                    return oooO0O1;
                }
            }
            if (layoutParams != null && ((i11 = layoutParams.height) == 0 || i11 == -1)) {
                for (com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 oooO0O2 : com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oo) {
                    if (oooO0O2.OooO0OO) {
                        this.OooO0O0 = oooO0O2;
                        return oooO0O2;
                    }
                }
            }
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0 oooO0O3 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo;
        this.OooO0O0 = oooO0O3;
        return oooO0O3;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    @NonNull
    public View getView() {
        View view = this.OooO00o;
        return view == null ? this : view;
    }

    public int hashCode() {
        return Objects.hash(this.OooO00o, this.OooO0O0, this.OooO0OO);
    }

    public void setPrimaryColors(int... iArr) {
        OooOO0O oooOO0O = this.OooO0OO;
        if (oooOO0O == null || oooOO0O == this) {
            return;
        }
        oooOO0O.setPrimaryColors(iArr);
    }
}
