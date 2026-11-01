package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    protected int Dq;
    protected com.bytedance.sdk.openadsdk.TKC.TKC EjP;
    protected TTDislikeDialogAbstract HiB;
    protected int Jcg;
    private com.bytedance.sdk.openadsdk.EjP.Jcg Sj;
    protected boolean TEQ;
    protected com.bytedance.sdk.openadsdk.core.model.sU TKC;
    protected boolean Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected String f21021aa;
    protected Context sP;
    protected int uA;
    protected String vS;

    public Sj(@NonNull Context context) {
        super(context);
        this.vS = "embeded_ad";
        this.TEQ = true;
        this.Ym = true;
        setTag("tt_express_backup_fl_tag_26");
    }

    public Sj(@NonNull Context context, String str) {
        super(context);
        this.vS = "embeded_ad";
        this.TEQ = true;
        this.Ym = true;
        this.f21021aa = str;
        setTag("tt_express_backup_fl_tag_26");
    }

    public void Sj() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.HiB;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.TKC.TKC tkc = this.EjP;
        if (tkc != null) {
            tkc.Sj();
        } else {
            TTDelegateActivity.Sj(this.TKC, (String) null);
        }
    }

    protected void Sj(int i11) {
        this.Ym = com.bytedance.sdk.openadsdk.core.dNu.EjP().TKC(String.valueOf(this.uA));
        int iSP = com.bytedance.sdk.openadsdk.core.dNu.EjP().sP(i11);
        if (3 == iSP) {
            this.TEQ = false;
            return;
        }
        int iTKC = com.bytedance.sdk.component.utils.TzV.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj());
        if (1 != iSP || !Mts.EjP(iTKC)) {
            if (2 == iSP) {
                if (Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC)) {
                    this.TEQ = true;
                    return;
                }
                return;
            }
            if (5 != iSP) {
                return;
            }
            if (!Mts.EjP(iTKC) && !Mts.vS(iTKC)) {
                return;
            }
        }
        this.TEQ = true;
    }

    protected void Sj(View view) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
        if (sUVar == null || sUVar.UHs() == null || view == null) {
            return;
        }
        Sj(view, this.TKC.LD() == 1 && this.TEQ);
    }

    protected abstract void Sj(View view, int i11, com.bytedance.sdk.openadsdk.core.model.sef sefVar);

    protected void Sj(View view, boolean z10) {
        com.bytedance.sdk.openadsdk.core.sP.sP sPVar;
        if (view == null) {
            return;
        }
        if (z10) {
            Context context = this.sP;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
            String str = this.vS;
            sPVar = new com.bytedance.sdk.openadsdk.core.sP.Sj(context, sUVar, str, Mts.Sj(str));
        } else {
            Context context2 = this.sP;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.TKC;
            String str2 = this.vS;
            sPVar = new com.bytedance.sdk.openadsdk.core.sP.sP(context2, sUVar2, str2, Mts.Sj(str2));
        }
        view.setOnTouchListener(sPVar);
        view.setOnClickListener(sPVar);
        sPVar.Sj(new sP() { // from class: com.bytedance.sdk.openadsdk.core.Dq.Sj.1
            @Override // com.bytedance.sdk.openadsdk.core.Dq.sP
            public void Sj(View view2, int i11, com.bytedance.sdk.openadsdk.core.model.sef sefVar) {
                Sj.this.Sj(view2, i11, sefVar);
            }
        });
    }

    protected String getDescription() {
        if (TextUtils.isEmpty(this.TKC.xu())) {
            return !TextUtils.isEmpty(this.TKC.gR()) ? this.TKC.gR() : "";
        }
        return this.TKC.xu();
    }

    protected String getNameOrSource() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
        if (sUVar == null) {
            return "";
        }
        if (sUVar.tz() == null || TextUtils.isEmpty(this.TKC.tz().sP())) {
            return !TextUtils.isEmpty(this.TKC.dwU()) ? this.TKC.dwU() : "";
        }
        return this.TKC.tz().sP();
    }

    public float getRealHeight() {
        return FPG.TKC(this.sP, this.Dq);
    }

    public float getRealWidth() {
        return FPG.TKC(this.sP, this.Jcg);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    protected String getTitle() {
        if (this.TKC.tz() != null && !TextUtils.isEmpty(this.TKC.tz().sP())) {
            return this.TKC.tz().sP();
        }
        if (TextUtils.isEmpty(this.TKC.dwU())) {
            return !TextUtils.isEmpty(this.TKC.xu()) ? this.TKC.xu() : "";
        }
        return this.TKC.dwU();
    }

    protected com.bytedance.sdk.openadsdk.core.aa.sP.vS getVideoView() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar;
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
        if (sUVar != null && this.sP != null) {
            if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(sUVar)) {
                try {
                    vSVar = new com.bytedance.sdk.openadsdk.core.aa.sP.vS(this.sP, this.TKC, this.vS, true, false, this.Sj);
                    vSVar.setVideoCacheUrl(this.f21021aa);
                    vSVar.setControllerStatusCallBack(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP() { // from class: com.bytedance.sdk.openadsdk.core.Dq.Sj.2
                        @Override // com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP
                        public void Sj(boolean z10, long j11, long j12, long j13, boolean z11) {
                        }
                    });
                    vSVar.setIsAutoPlay(this.TEQ);
                    vSVar.Sj(this.Ym, "bannerGetVideoView");
                } catch (Throwable unused) {
                    vSVar = null;
                }
            } else {
                vSVar = null;
            }
            if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.TKC) && vSVar != null && vSVar.Sj(0L, true, false)) {
                return vSVar;
            }
        }
        return null;
    }

    public void setDislikeInner(uP uPVar) {
        if (uPVar instanceof com.bytedance.sdk.openadsdk.TKC.TKC) {
            this.EjP = (com.bytedance.sdk.openadsdk.TKC.TKC) uPVar;
        }
    }

    public void setDislikeOuter(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        if (tTDislikeDialogAbstract != null && (sUVar = this.TKC) != null) {
            tTDislikeDialogAbstract.setMaterialMeta(sUVar.mZN(), this.TKC.nru());
        }
        this.HiB = tTDislikeDialogAbstract;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }
}
