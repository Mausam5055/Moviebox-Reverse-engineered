package com.bytedance.sdk.openadsdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.TKC.TEQ;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTDislikeDialogAbstract extends Dialog implements TEQ.sP {
    private View EjP;
    private String HiB;
    protected String Sj;
    protected final TEQ TKC;
    protected List<FilterWord> sP;

    public TTDislikeDialogAbstract(@NonNull Context context) {
        super(context);
        TEQ teq = new TEQ();
        this.TKC = teq;
        teq.Sj(this);
    }

    public TTDislikeDialogAbstract(@NonNull Context context, int i11, String str) {
        super(context, i11);
        this.HiB = str;
        TEQ teq = new TEQ();
        this.TKC = teq;
        teq.Sj(this);
    }

    public void destroy() {
        TEQ teq = this.TKC;
        if (teq != null) {
            teq.Sj();
        }
    }

    public TEQ getDislikeManager() {
        return this.TKC;
    }

    public abstract ViewGroup.LayoutParams getLayoutParams();

    public abstract View getLayoutView();

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.EjP = getLayoutView();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        View view = this.EjP;
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        setContentView(view, layoutParams);
    }

    public void onSuggestionSubmit(String str) {
        TEQ teq = this.TKC;
        if (teq != null) {
            teq.TKC(str);
        }
    }

    public void setMaterialMeta(String str, List<FilterWord> list) {
        this.Sj = str;
        this.sP = list;
        this.TKC.Sj(str);
        this.TKC.Sj(this.sP);
    }
}
