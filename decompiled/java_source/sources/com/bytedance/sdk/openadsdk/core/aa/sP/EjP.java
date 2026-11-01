package com.bytedance.sdk.openadsdk.core.aa.sP;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import c6.a;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.TzV;
import com.bytedance.sdk.openadsdk.core.widget.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import u5.b;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends HiB {
    private int Bml;
    private int Chv;
    private boolean EZ;
    private TextView Ei;
    private TextView FPG;
    private TextView Fm;
    private final int HS;
    private ColorStateList HcZ;
    private ImageView HpB;
    private final LqL IOh;
    private int Ir;
    private ImageView MuB;
    private float QZ;
    private final View.OnTouchListener TFd;
    private float TO;
    private SeekBar UHs;
    private ColorStateList Uc;
    private ImageView Wjd;
    private int aNB;
    private final int aZ;
    private int cX;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private ImageView f21047db;
    private TextView dwU;
    private ColorStateList eI;
    private final Rect eMB;
    private final Rect gR;
    private int gY;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private TextView f21048jb;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private final Rect f21049kb;
    private final Rect liH;
    private float mZN;
    private final Rect nP;
    private TextView ndK;
    private float nru;
    private boolean pfr;
    private View qRN;
    private TextView sdp;

    /* JADX INFO: renamed from: tz, reason: collision with root package name */
    private final dNu f21050tz;
    private View xD;
    private View xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private float f21051xu;

    public EjP(Context context, ViewGroup viewGroup, boolean z10, int i11, sU sUVar, b bVar, boolean z11) {
        super(context, viewGroup, z10, i11, sUVar, bVar, z11);
        this.IOh = new LqL(this);
        this.pfr = false;
        this.EZ = false;
        this.gY = 0;
        this.Chv = 0;
        this.Bml = 0;
        this.aNB = 0;
        this.cX = 0;
        this.f21049kb = new Rect();
        this.gR = new Rect();
        this.Ir = 0;
        this.TFd = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.7
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 2) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                } else if (actionMasked == 3) {
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                }
                return false;
            }
        };
        this.eMB = new Rect();
        this.nP = new Rect();
        this.liH = new Rect();
        this.wE = com.bytedance.sdk.openadsdk.core.dNu.Sj().getApplicationContext();
        EjP(z11);
        this.TKC = viewGroup;
        this.f21053dx = z10;
        dNu dnu = new dNu(this);
        this.f21050tz = dnu;
        dnu.Sj(this.f21053dx);
        DisplayMetrics displayMetrics = this.wE.getResources().getDisplayMetrics();
        this.aZ = displayMetrics.widthPixels;
        this.HS = displayMetrics.heightPixels;
        this.kF = i11;
        this.fF = bVar;
        this.uP = sUVar;
        EjP(8);
        Sj(context, this.TKC);
        EjP();
        aa();
    }

    private void HiB(boolean z10) {
        if (z10) {
            uP();
        } else {
            wE();
        }
    }

    private void uP() {
        DisplayMetrics displayMetrics = this.wE.getResources().getDisplayMetrics();
        TextView textView = this.sdp;
        if (textView != null) {
            this.mZN = textView.getTextSize();
            this.sdp.setTextSize(2, 14.0f);
            ColorStateList textColors = this.sdp.getTextColors();
            this.HcZ = textColors;
            if (textColors != null) {
                this.sdp.setTextColor(-1);
            }
            this.nru = this.sdp.getAlpha();
            this.sdp.setAlpha(0.85f);
            this.sdp.setShadowLayer(0.0f, FPG.sP(this.wE, 0.5f), FPG.sP(this.wE, 0.5f), ib.Jcg(this.wE, "tt_b2000000"));
            ViewGroup.LayoutParams layoutParams = this.sdp.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.eMB.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                FPG.Sj(this.sdp, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.eMB.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.eMB.bottom);
            }
        }
        TextView textView2 = this.dwU;
        if (textView2 != null) {
            this.TO = textView2.getTextSize();
            this.dwU.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.dwU.getTextColors();
            this.eI = textColors2;
            if (textColors2 != null) {
                this.dwU.setTextColor(-1);
            }
            this.QZ = this.dwU.getAlpha();
            this.dwU.setAlpha(0.85f);
            this.dwU.setShadowLayer(0.0f, FPG.sP(this.wE, 0.5f), FPG.sP(this.wE, 0.5f), ib.Jcg(this.wE, "tt_b2000000"));
            ViewGroup.LayoutParams layoutParams2 = this.dwU.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.nP.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                TextView textView3 = this.dwU;
                int iApplyDimension = (int) TypedValue.applyDimension(1, 14.0f, displayMetrics);
                Rect rect = this.nP;
                FPG.Sj(textView3, iApplyDimension, rect.top, rect.right, rect.bottom);
            }
        }
        ImageView imageView = this.MuB;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.liH.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                ImageView imageView2 = this.MuB;
                Rect rect2 = this.liH;
                FPG.Sj(imageView2, rect2.left, rect2.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.liH.bottom);
            }
        }
        ImageView imageView3 = this.MuB;
        if (imageView3 != null) {
            imageView3.setImageDrawable(ib.TKC(this.wE, "tt_shrink_fullscreen"));
        }
        TextView textView4 = this.f21048jb;
        if (textView4 != null) {
            ColorStateList textColors3 = textView4.getTextColors();
            this.Uc = textColors3;
            if (textColors3 != null) {
                this.f21048jb.setTextColor(-1);
            }
            this.f21051xu = this.f21048jb.getAlpha();
            this.f21048jb.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.f21048jb.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.gR.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                TextView textView5 = this.f21048jb;
                int iApplyDimension2 = (int) TypedValue.applyDimension(1, 1.0f, displayMetrics);
                Rect rect3 = this.nP;
                FPG.Sj(textView5, iApplyDimension2, rect3.top, rect3.right, rect3.bottom);
            }
        }
        View view = this.xD;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.Ir = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.xD.setLayoutParams(layoutParams5);
            this.xD.setBackgroundResource(ib.EjP(this.wE, "tt_shadow_fullscreen_top"));
        }
        sP(false, true);
    }

    private void wE() {
        TextView textView = this.sdp;
        if (textView != null) {
            textView.setTextSize(0, this.mZN);
            ColorStateList colorStateList = this.HcZ;
            if (colorStateList != null) {
                this.sdp.setTextColor(colorStateList);
            }
            this.sdp.setAlpha(this.nru);
            this.sdp.setShadowLayer(FPG.sP(this.wE, 1.0f), 0.0f, 0.0f, ib.Jcg(this.wE, "tt_72000000"));
            TextView textView2 = this.sdp;
            Rect rect = this.eMB;
            FPG.Sj(textView2, rect.left, rect.top, rect.right, rect.bottom);
        }
        TextView textView3 = this.dwU;
        if (textView3 != null) {
            textView3.setTextSize(0, this.TO);
            ColorStateList colorStateList2 = this.eI;
            if (colorStateList2 != null) {
                this.dwU.setTextColor(colorStateList2);
            }
            this.dwU.setAlpha(this.QZ);
            this.dwU.setShadowLayer(FPG.sP(this.wE, 1.0f), 0.0f, 0.0f, ib.Jcg(this.wE, "tt_72000000"));
            TextView textView4 = this.dwU;
            Rect rect2 = this.nP;
            FPG.Sj(textView4, rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        ImageView imageView = this.MuB;
        if (imageView != null) {
            Rect rect3 = this.liH;
            FPG.Sj(imageView, rect3.left, rect3.top, rect3.right, rect3.bottom);
        }
        ImageView imageView2 = this.MuB;
        if (imageView2 != null) {
            imageView2.setImageDrawable(ib.TKC(this.wE, "tt_enlarge_video"));
        }
        TextView textView5 = this.f21048jb;
        if (textView5 != null) {
            ColorStateList colorStateList3 = this.Uc;
            if (colorStateList3 != null) {
                textView5.setTextColor(colorStateList3);
            }
            this.f21048jb.setAlpha(this.f21051xu);
            TextView textView6 = this.f21048jb;
            Rect rect4 = this.nP;
            FPG.Sj(textView6, rect4.left, rect4.top, rect4.right, rect4.bottom);
        }
        View view = this.xD;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.Ir;
            this.xD.setLayoutParams(layoutParams);
            this.xD.setBackground(TEQ.Sj(this.wE, "tt_video_black_desc_gradient"));
        }
        sP(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Dq() {
        FPG.HiB(this.vS);
        FPG.HiB(this.xhi);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    @SuppressLint({"ClickableViewAccessibility"})
    protected void EjP() {
        super.EjP();
        this.f21050tz.Sj(this.TKC);
        FPG.Sj((View) this.Wjd, (this.f21053dx || (this.kF & 1) == 1) ? 8 : 0);
        this.Wjd.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EjP.this.uvD()) {
                    EjP ejP = EjP.this;
                    ejP.LqL.TKC(ejP, view);
                }
            }
        });
        FPG.Sj((View) this.FPG, (!this.f21053dx || (this.kF & 2) == 2) ? 0 : 8);
        this.FPG.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EjP.this.uvD()) {
                    EjP ejP = EjP.this;
                    ejP.LqL.EjP(ejP, view);
                }
            }
        });
        this.HpB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EjP.this.uvD()) {
                    EjP ejP = EjP.this;
                    ejP.LqL.HiB(ejP, view);
                }
            }
        });
        this.f21047db.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EjP.this.sP(false, true);
                EjP.this.Dq();
                EjP.this.Jcg();
                EjP.this.uvD();
            }
        });
        this.MuB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EjP.this.uvD()) {
                    EjP ejP = EjP.this;
                    ejP.LqL.sP(ejP, view);
                }
            }
        });
        this.UHs.setThumbOffset(0);
        this.UHs.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.EjP.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i11, boolean z10) {
                if (EjP.this.uvD()) {
                    EjP ejP = EjP.this;
                    ejP.LqL.Sj(ejP, i11, z10);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!EjP.this.pfr && EjP.this.wE != null) {
                    seekBar.setThumb(TEQ.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), "tt_seek_thumb_press"));
                }
                if (EjP.this.uvD()) {
                    seekBar.setThumbOffset(0);
                    EjP ejP = EjP.this;
                    ejP.LqL.sP(ejP, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!EjP.this.pfr && EjP.this.wE != null) {
                    seekBar.setThumb(TEQ.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), "tt_seek_thumb_normal"));
                }
                if (EjP.this.uvD()) {
                    seekBar.setThumbOffset(0);
                    EjP ejP = EjP.this;
                    ejP.LqL.Sj(ejP, seekBar.getProgress());
                }
            }
        });
        this.UHs.setOnTouchListener(this.TFd);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void HiB() {
        this.IOh.removeMessages(1);
        this.IOh.sendMessageDelayed(this.IOh.obtainMessage(1), 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Jcg() {
        sU sUVar;
        FPG.vS(this.vS);
        FPG.vS(this.Jcg);
        FPG.HiB(this.xhi);
        if (this.Dq != null && (sUVar = this.uP) != null && sUVar.UHs() != null && this.uP.UHs().r() != null) {
            FPG.vS(this.Dq);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.UHs().r(), this.uP.UHs().t(), this.uP.UHs().C(), this.Dq, this.uP);
        }
        if (this.HiB.getVisibility() == 0) {
            FPG.Sj((View) this.HiB, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB, u5.c
    public void Sj() {
        Sj(false, this.f21053dx);
        RiZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(int i11) {
        View view = this.qRN;
        if (view == null || view.getVisibility() != 0) {
            this.UHs.setProgress(i11);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(long j11) {
        this.sdp.setText(a.b(j11));
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(long j11, long j12) {
        this.dwU.setText(a.b(j12));
        this.sdp.setText(a.b(j11));
        this.UHs.setProgress(a.a(j11, j12));
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    protected void Sj(Context context, View view) {
        super.Sj(context, view);
        this.FPG = (TextView) view.findViewById(Zq.jjS);
        this.Wjd = (ImageView) view.findViewById(Zq.Ov);
        this.xD = view.findViewById(Zq.WxP);
        this.HpB = (ImageView) view.findViewById(Zq.dU);
        this.Fm = (TextView) view.findViewById(Zq.tPD);
        this.f21048jb = (TextView) view.findViewById(Zq.DPc);
        this.Ei = (TextView) view.findViewById(Zq.hif);
        this.xhi = view.findViewById(Zq.Grp);
        this.f21047db = (ImageView) view.findViewById(Zq.tX);
        TextView textView = (TextView) view.findViewById(Zq.Aw);
        this.ndK = textView;
        textView.setText(ib.Sj(context, "tt_video_retry_des_txt"));
        this.UHs = (SeekBar) view.findViewById(Zq.vll);
        this.dwU = (TextView) view.findViewById(Zq.GJs);
        this.sdp = (TextView) view.findViewById(Zq.nou);
        this.qRN = view.findViewById(Zq.Gn);
        this.MuB = (ImageView) view.findViewById(Zq.ron);
        this.uA = view.findViewById(Zq.f21135mj);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB, com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        if (message.what != 1) {
            return;
        }
        Ym();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB, com.bytedance.sdk.openadsdk.core.widget.dNu.Sj
    public void Sj(View view, boolean z10) {
        if (TEQ()) {
            String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            sU sUVar = this.uP;
            if (sUVar != null && !TextUtils.isEmpty(sUVar.xu())) {
                Sj(this.uP.xu());
            }
            this.Ei.setText(str);
        } else {
            Sj("");
            this.Ei.setText("");
        }
        if (this.Yf) {
            return;
        }
        TKC(this.f21053dx && !this.pfr);
        if (uvD()) {
            this.LqL.Sj(this, view, true, this.vS.getVisibility() != 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(@Nullable ViewGroup viewGroup) {
        if (viewGroup != null && (this.TKC.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.pfr = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.TKC.getLayoutParams();
            this.Chv = marginLayoutParams.leftMargin;
            this.gY = marginLayoutParams.topMargin;
            this.Bml = marginLayoutParams.width;
            this.aNB = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.TKC.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.cX = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.f21049kb.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                FPG.Sj(viewGroup, 0, 0, 0, 0);
            }
            sP(true);
            this.MuB.setImageDrawable(ib.TKC(this.wE, "tt_shrink_video"));
            this.UHs.setThumb(TEQ.Sj(this.wE, "tt_seek_thumb_fullscreen_selector"));
            this.UHs.setThumbOffset(0);
            a.c(this.TKC, false);
            HiB(this.pfr);
            FPG.Sj(this.xD, 8);
            if (!this.f21053dx) {
                FPG.Sj((View) this.Wjd, 8);
                FPG.Sj((View) this.FPG, 8);
            } else if ((this.kF & 1) == 1) {
                FPG.Sj((View) this.Wjd, 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj(sU sUVar, WeakReference<Context> weakReference, boolean z10) {
        String strGR;
        String strSj;
        sU sUVar2;
        if (sUVar == null) {
            return;
        }
        Sj(this.TKC, com.bytedance.sdk.openadsdk.core.dNu.Sj());
        Sj(false, this.f21053dx);
        FPG.Sj(this.TEQ, 0);
        FPG.Sj((View) this.Ym, 0);
        FPG.Sj(this.f21052aa, 0);
        if (this.Ym != null && (sUVar2 = this.uP) != null && sUVar2.UHs() != null && this.uP.UHs().r() != null) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.UHs().r(), this.uP.UHs().t(), this.uP.UHs().C(), this.Ym, this.uP);
        }
        if (!TextUtils.isEmpty(sUVar.dwU())) {
            strGR = sUVar.dwU();
        } else if (TextUtils.isEmpty(sUVar.xu())) {
            strGR = !TextUtils.isEmpty(sUVar.gR()) ? sUVar.gR() : "";
        } else {
            strGR = sUVar.xu();
        }
        sU sUVar3 = this.uP;
        if (sUVar3 != null && sUVar3.EZ() != null && this.uP.EZ().Sj() != null) {
            FPG.Sj((View) this.Fmk, 0);
            FPG.Sj((View) this.sef, 4);
            if (this.Fmk != null) {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.EZ(), this.Fmk, sUVar);
                this.Fmk.setOnClickListener(this.JcM);
                this.Fmk.setOnTouchListener(this.JcM);
            }
        } else if (!TextUtils.isEmpty(strGR)) {
            FPG.Sj((View) this.Fmk, 4);
            FPG.Sj((View) this.sef, 0);
            TextView textView = this.sef;
            if (textView != null) {
                textView.setText(strGR.substring(0, 1));
                this.sef.setOnClickListener(this.JcM);
                this.sef.setOnTouchListener(this.JcM);
            }
        }
        if (this.Zq != null && !TextUtils.isEmpty(strGR)) {
            this.Zq.setText(strGR);
        }
        FPG.Sj((View) this.Zq, 0);
        FPG.Sj((View) this.uvD, 0);
        int iSdp = sUVar.sdp();
        if (iSdp != 4) {
            strSj = iSdp != 5 ? ib.Sj(this.wE, "tt_video_mobile_go_detail") : ib.Sj(this.wE, "tt_video_dial_phone");
        } else {
            strSj = ib.Sj(this.wE, "tt_video_download_apk");
        }
        TextView textView2 = this.uvD;
        if (textView2 != null) {
            textView2.setText(strSj);
            this.uvD.setOnClickListener(this.JcM);
            this.uvD.setOnTouchListener(this.JcM);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB, u5.c
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void Sj(Object obj, WeakReference weakReference, boolean z10) {
        Sj((sU) obj, (WeakReference<Context>) weakReference, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(String str) {
        TextView textView = this.Fm;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.f21048jb;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(boolean z10, boolean z11) {
        FPG.Sj(this.qRN, 8);
        FPG.Sj(this.xD, 8);
        FPG.Sj((View) this.HiB, 8);
        if (!this.f21053dx && !this.pfr) {
            FPG.Sj((View) this.Wjd, 8);
            if ((this.kF & 2) != 2) {
                FPG.Sj((View) this.FPG, 8);
            }
        } else if ((this.kF & 1) == 1) {
            FPG.Sj((View) this.Wjd, 8);
        }
        if (z11) {
            FPG.Sj((View) this.Wjd, 8);
            FPG.Sj((View) this.FPG, 8);
        }
        TKC(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void Sj(boolean z10, boolean z11, boolean z12) {
        FPG.Sj(this.qRN, 0);
        if (this.pfr) {
            FPG.Sj(this.xD, 0);
            FPG.Sj((View) this.f21048jb, 0);
        } else if (z12) {
            FPG.Sj(this.xD, 8);
        }
        FPG.Sj((View) this.HiB, (!z10 || this.vS.getVisibility() == 0) ? 8 : 0);
        if (!this.f21053dx && !this.pfr) {
            if ((this.kF & 1) != 1 && !z12) {
                FPG.Sj((View) this.Wjd, 0);
            }
            FPG.Sj((View) this.FPG, z12 ? 8 : 0);
        }
        FPG.Sj((View) this.dwU, 0);
        FPG.Sj((View) this.sdp, 0);
        FPG.Sj((View) this.UHs, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB, com.bytedance.sdk.openadsdk.core.widget.TzV.sP
    public boolean TEQ() {
        return this.pfr;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void TKC(boolean z10) {
        TextView textView = this.Fm;
        if (textView != null) {
            FPG.Sj((View) textView, (!this.f21053dx && z10) ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB, com.bytedance.sdk.openadsdk.core.widget.TzV.sP
    public void Ym() {
        Sj(true, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void sP(@Nullable ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = this.TKC) == null || !(viewGroup2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.pfr = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.TKC.getLayoutParams();
        marginLayoutParams.width = this.Bml;
        marginLayoutParams.height = this.aNB;
        marginLayoutParams.leftMargin = this.Chv;
        marginLayoutParams.topMargin = this.gY;
        this.TKC.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.cX);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            Rect rect = this.f21049kb;
            FPG.Sj(viewGroup, rect.left, rect.top, rect.right, rect.bottom);
        }
        sP(true);
        this.MuB.setImageDrawable(ib.TKC(this.wE, "tt_enlarge_video"));
        this.UHs.setThumb(TEQ.Sj(this.wE, "tt_seek_thumb_normal"));
        this.UHs.setThumbOffset(0);
        a.c(this.TKC, true);
        HiB(this.pfr);
        FPG.Sj(this.xD, 8);
        if ((this.kF & 2) == 2) {
            FPG.Sj((View) this.FPG, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void sP(boolean z10) {
        int i11 = TEQ() ? this.HS : this.dNu;
        int iSP = TEQ() ? this.aZ : this.TzV;
        if (this.sU <= 0 || this.RiZ <= 0 || i11 <= 0) {
            return;
        }
        if (!dx() && !TEQ() && (this.kF & 8) != 8) {
            iSP = FPG.sP(this.wE, 228.0f);
        }
        int i12 = this.RiZ;
        int i13 = this.sU;
        int i14 = (int) (i13 * ((i11 * 1.0f) / i12));
        if (i14 > iSP) {
            i11 = (int) (i12 * ((iSP * 1.0f) / i13));
        } else {
            iSP = i14;
        }
        if (!z10 && !TEQ()) {
            i11 = this.dNu;
            iSP = this.TzV;
        }
        this.EjP.Sj(i11, iSP);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public boolean sP(int i11) {
        SeekBar seekBar = this.UHs;
        return seekBar != null && i11 > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void uA() {
        this.UHs.setProgress(0);
        this.UHs.setSecondaryProgress(0);
        this.dwU.setText(ib.Sj(this.wE, "tt_00_00"));
        this.sdp.setText(ib.Sj(this.wE, "tt_00_00"));
        EjP(8);
        if (kF()) {
            this.EjP.setVisibility(8);
        }
        ImageView imageView = this.Dq;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        EjP(8);
        FPG.Sj(this.qRN, 8);
        FPG.Sj(this.TEQ, 8);
        FPG.Sj((View) this.Ym, 8);
        FPG.Sj(this.f21052aa, 8);
        FPG.Sj((View) this.Fmk, 8);
        FPG.Sj((View) this.sef, 8);
        FPG.Sj((View) this.Zq, 8);
        TzV tzV = this.ley;
        if (tzV != null) {
            tzV.Sj(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.HiB
    public void vS() {
        this.IOh.removeMessages(1);
    }
}
