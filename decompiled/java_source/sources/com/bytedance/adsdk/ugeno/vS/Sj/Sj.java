package com.bytedance.adsdk.ugeno.vS.Sj;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.vS.EjP;
import com.tn.lib.view.FlowLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends LinearLayout {
    private boolean Dq;
    private Context EjP;
    private int HiB;
    private int Jcg;
    private List<View> Sj;
    private int TKC;
    private int sP;
    private int uA;
    private int vS;

    public Sj(Context context) {
        super(context);
        this.sP = FlowLayout.SPACING_AUTO;
        this.TKC = -16776961;
        this.HiB = 5;
        this.vS = 20;
        this.Jcg = 20;
        this.EjP = context;
        this.Sj = new ArrayList();
        Sj();
    }

    private GradientDrawable sP(int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i11);
        return gradientDrawable;
    }

    public void Sj() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        setGravity(17);
        setOrientation(0);
        layoutParams.bottomMargin = (int) Dq.Sj(this.EjP, 10.0f);
        setLayoutParams(layoutParams);
    }

    public void Sj(int i11) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.vS, this.Jcg);
        int i12 = this.HiB;
        layoutParams.leftMargin = i12;
        layoutParams.rightMargin = i12;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.vS, this.Jcg);
        int i13 = this.HiB;
        layoutParams2.leftMargin = i13;
        layoutParams2.rightMargin = i13;
        int iSj = EjP.Sj(this.Dq, this.uA, this.Sj.size());
        int iSj2 = EjP.Sj(this.Dq, i11, this.Sj.size());
        if (this.Sj.size() == 0) {
            iSj2 = 0;
        }
        if (!this.Sj.isEmpty() && EjP.Sj(iSj, this.Sj) && EjP.Sj(iSj2, this.Sj)) {
            this.Sj.get(iSj).setBackground(sP(this.TKC));
            this.Sj.get(iSj).setLayoutParams(layoutParams2);
            this.Sj.get(iSj2).setBackground(sP(this.sP));
            this.Sj.get(iSj2).setLayoutParams(layoutParams);
            this.uA = i11;
        }
    }

    public void Sj(int i11, int i12) {
        Iterator<View> it = this.Sj.iterator();
        while (it.hasNext()) {
            it.next().setBackground(sP(this.TKC));
        }
        if (i11 < 0 || i11 >= this.Sj.size()) {
            i11 = 0;
        }
        if (this.Sj.size() > 0) {
            this.Sj.get(i11).setBackground(sP(this.sP));
            this.uA = i12;
        }
    }

    public int getSize() {
        return this.Sj.size();
    }

    public void sP() {
        View view = new View(getContext());
        view.setClickable(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.vS, this.Jcg);
        int i11 = this.HiB;
        layoutParams.leftMargin = i11;
        layoutParams.rightMargin = i11;
        addView(view, layoutParams);
        view.setBackground(sP(this.TKC));
        this.Sj.add(view);
    }

    public void setLoop(boolean z10) {
        this.Dq = z10;
    }

    public void setSelectedColor(int i11) {
        this.sP = i11;
    }

    public void setUnSelectedColor(int i11) {
        this.TKC = i11;
    }
}
