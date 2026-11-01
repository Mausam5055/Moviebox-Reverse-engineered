package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends TTDislikeDialogAbstract {
    private Sj EjP;
    private String HiB;

    public interface Sj {
        void Sj();

        void Sj(int i11, FilterWord filterWord);

        void sP();
    }

    public EjP(Context context, String str, List<FilterWord> list, String str2) {
        super(context, ib.vS(context, "tt_dislikeDialog"), str2);
        this.Sj = str;
        this.sP = list;
    }

    private void Sj() {
        Window window = getWindow();
        if (window == null || window.getAttributes() == null) {
            return;
        }
        window.getAttributes().windowAnimations = 0;
    }

    private void sP() {
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.TKC.EjP.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (EjP.this.EjP != null) {
                    Sj unused = EjP.this.EjP;
                }
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.TKC.EjP.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (EjP.this.EjP != null) {
                    EjP.this.EjP.sP();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.sP
    public void Sj(int i11) {
        FilterWord filterWordSP;
        if (TEQ.TKC == i11) {
            dismiss();
            return;
        }
        if (TEQ.HiB == i11) {
            Sj sj2 = this.EjP;
            if (sj2 != null) {
                sj2.Sj();
                return;
            }
            return;
        }
        if (TEQ.sP != i11 || (filterWordSP = this.TKC.sP()) == null || TEQ.Sj.equals(filterWordSP)) {
            return;
        }
        Sj sj3 = this.EjP;
        if (sj3 != null) {
            try {
                sj3.Sj(0, filterWordSP);
            } catch (Throwable unused) {
            }
        }
        dismiss();
    }

    public void Sj(Sj sj2) {
        this.EjP = sj2;
    }

    public void Sj(String str) {
        this.HiB = str;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(FPG.TKC(getContext()) - 120, -2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public View getLayoutView() {
        return new uA(getContext(), this.TKC, this.sP);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setCanceledOnTouchOutside(true);
            setCancelable(true);
            Sj();
            sP();
            setMaterialMeta(this.Sj, this.sP);
        } catch (Throwable unused) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }
}
