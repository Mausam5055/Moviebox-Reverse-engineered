package com.bytedance.adsdk.ugeno.HiB;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
interface Sj {
    int Sj(int i11, int i12, int i13);

    int Sj(View view);

    int Sj(View view, int i11, int i12);

    View Sj(int i11);

    void Sj(View view, int i11, int i12, TKC tkc);

    void Sj(TKC tkc);

    boolean Sj();

    int getAlignContent();

    int getAlignItems();

    int getFlexDirection();

    int getFlexItemCount();

    List<TKC> getFlexLinesInternal();

    int getFlexWrap();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    int getSumOfCrossSize();

    int sP(int i11, int i12, int i13);

    View sP(int i11);

    void setFlexLines(List<TKC> list);
}
