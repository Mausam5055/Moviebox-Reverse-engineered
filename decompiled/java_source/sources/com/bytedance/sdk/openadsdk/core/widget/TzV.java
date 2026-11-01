package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;
import y5.b;

/* JADX INFO: loaded from: classes3.dex */
public class TzV {
    private ViewGroup Dq;
    private com.bytedance.sdk.openadsdk.core.aa.sP.Sj EjP;
    private sP HiB;
    private b Jcg;
    private View Sj;
    private Context TKC;
    private TextView sP;
    private boolean vS = false;

    public enum Sj {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    public interface sP {
        boolean TEQ();

        void Ym();
    }

    private void EjP() {
        View view = this.Sj;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private ViewGroup.LayoutParams Sj(ViewGroup viewGroup) {
        if (viewGroup instanceof RelativeLayout) {
            return new RelativeLayout.LayoutParams(-1, -1);
        }
        if (viewGroup instanceof LinearLayout) {
            return new LinearLayout.LayoutParams(-1, -1);
        }
        if (viewGroup instanceof FrameLayout) {
            return new FrameLayout.LayoutParams(-1, -1);
        }
        return null;
    }

    private void Sj(Context context, View view, boolean z10) {
        ViewGroup.LayoutParams layoutParamsSj;
        if (context == null || view == null || this.Sj != null || (layoutParamsSj = Sj(this.Dq)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.sef.Zq zq2 = new com.bytedance.sdk.openadsdk.sef.Zq(context);
        this.Sj = zq2;
        zq2.setLayoutParams(layoutParamsSj);
        this.Dq.addView(this.Sj);
        this.sP = (TextView) this.Sj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.DhB);
        View viewFindViewById = this.Sj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.DKa);
        if (z10) {
            viewFindViewById.setClickable(true);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TzV.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TzV.this.TKC();
                    if (TzV.this.EjP != null) {
                        TzV.this.EjP.Sj(Sj.START_VIDEO, (String) null);
                    }
                }
            });
        } else {
            viewFindViewById.setOnClickListener(null);
            viewFindViewById.setClickable(false);
        }
    }

    private void Sj(b bVar, boolean z10) {
        View view;
        String str;
        View view2;
        if (bVar == null || (view = this.Sj) == null || this.TKC == null || view.getVisibility() == 0) {
            return;
        }
        sP sPVar = this.HiB;
        if (sPVar != null) {
            sPVar.Ym();
        }
        double dCeil = Math.ceil((bVar.g() * 1.0d) / 1048576.0d);
        if (z10) {
            str = String.format(ib.Sj(this.TKC, "tt_video_without_wifi_tips"), Float.valueOf(Double.valueOf(dCeil).floatValue()));
        } else {
            str = ib.Sj(this.TKC, "tt_video_without_wifi_tips") + ib.Sj(this.TKC, "tt_video_bytesize");
        }
        FPG.Sj(this.Sj, 0);
        FPG.Sj(this.sP, str);
        if (!FPG.EjP(this.Sj) || (view2 = this.Sj) == null) {
            return;
        }
        view2.bringToFront();
    }

    private boolean Sj(int i11) {
        sP sPVar;
        if (Sj() || this.vS) {
            return true;
        }
        if (this.EjP != null && (sPVar = this.HiB) != null) {
            if (sPVar.TEQ()) {
                this.EjP.HiB(null, null);
            }
            this.EjP.Sj(Sj.PAUSE_VIDEO, (String) null);
        }
        Sj(this.Jcg, true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC() {
        if (this.TKC == null) {
            return;
        }
        EjP();
    }

    private void sP() {
        this.Jcg = null;
    }

    public void Sj(Context context, ViewGroup viewGroup) {
        if (context == null || !(viewGroup instanceof ViewGroup)) {
            return;
        }
        this.Dq = viewGroup;
        this.TKC = com.bytedance.sdk.openadsdk.core.dNu.Sj().getApplicationContext();
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.sP.Sj sj2, sP sPVar) {
        this.HiB = sPVar;
        this.EjP = sj2;
    }

    public void Sj(boolean z10) {
        if (z10) {
            sP();
        }
        EjP();
    }

    public boolean Sj() {
        View view = this.Sj;
        return view != null && view.getVisibility() == 0;
    }

    public boolean Sj(int i11, b bVar, boolean z10) {
        Context context = this.TKC;
        if (context == null || bVar == null) {
            return true;
        }
        Sj(context, this.Dq, z10);
        this.Jcg = bVar;
        if (i11 == 1 || i11 == 2) {
            return Sj(i11);
        }
        return true;
    }
}
