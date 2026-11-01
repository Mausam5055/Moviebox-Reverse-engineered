package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends ScrollView {
    private final TEQ Sj;
    private final com.bytedance.sdk.openadsdk.core.HiB.HiB sP;

    public vS(Context context, TEQ teq) {
        super(context);
        this.Sj = teq;
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        this.sP = hiB;
        hiB.setOrientation(1);
        addView(hiB, new FrameLayout.LayoutParams(-1, -2));
        if (teq.Dq() == 0) {
            Sj();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        setLayoutParams(layoutParams);
        setVerticalScrollBarEnabled(false);
    }

    private void Sj() {
        if (this.Sj.Dq() != 0) {
            return;
        }
        this.Sj.Sj(FPG.TKC(getContext()), FPG.HiB(getContext()));
    }

    private static List<FilterWord> TKC(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int i11 = 0;
        int i12 = -1;
        for (int i13 = 0; i13 < list.size(); i13++) {
            if (list.get(i13).hasSecondOptions()) {
                i12 = i13;
            }
        }
        if (i12 != -1 && i12 <= list.size()) {
            i11 = i12;
        }
        FilterWord filterWord = list.get(i11);
        Iterator<FilterWord> it = list.iterator();
        while (it.hasNext()) {
            FilterWord next = it.next();
            if (!next.hasSecondOptions()) {
                filterWord.addOption(next);
                it.remove();
            }
        }
        return list;
    }

    private void sP(List<FilterWord> list) {
        this.sP.removeAllViews();
        for (int i11 = 0; i11 < list.size(); i11++) {
            FilterWord filterWord = list.get(i11);
            if (filterWord != null) {
                this.sP.addView(new Jcg(getContext(), filterWord, this.Sj));
            }
            if (i11 < list.size() - 1) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                int iSP = FPG.sP(getContext(), this.Sj.uA() ? 16.0f : 8.0f);
                layoutParams.topMargin = iSP;
                layoutParams.bottomMargin = iSP;
                this.sP.addView(new Ym(getContext()), layoutParams);
            }
        }
    }

    public void Sj(List<FilterWord> list) {
        List<FilterWord> listTKC = TKC(list);
        if (listTKC == null) {
            return;
        }
        sP(listTKC);
    }
}
