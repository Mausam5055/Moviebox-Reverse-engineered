package com.google.android.flexbox;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
interface a {
    int getAlignContent();

    int getAlignItems();

    int getChildHeightMeasureSpec(int i11, int i12, int i13);

    int getChildWidthMeasureSpec(int i11, int i12, int i13);

    int getDecorationLengthCrossAxis(View view);

    int getDecorationLengthMainAxis(View view, int i11, int i12);

    int getFlexDirection();

    View getFlexItemAt(int i11);

    int getFlexItemCount();

    List getFlexLinesInternal();

    int getFlexWrap();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    View getReorderedFlexItemAt(int i11);

    int getSumOfCrossSize();

    boolean isMainAxisDirectionHorizontal();

    void onNewFlexItemAdded(View view, int i11, int i12, b bVar);

    void onNewFlexLineAdded(b bVar);

    void setFlexLines(List list);

    void updateViewCache(int i11, View view);
}
