package com.transsion.search.adapter;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;

/* JADX INFO: loaded from: classes6.dex */
public class CenterLayoutManager extends LinearLayoutManager {

    private static class a extends h {
        public a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.h
        public int s(int i11, int i12, int i13, int i14, int i15) {
            return (i13 + ((i14 - i13) / 2)) - (i11 + ((i12 - i11) / 2));
        }

        @Override // androidx.recyclerview.widget.h
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public CenterLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.y yVar, int i11) {
        a aVar = new a(recyclerView.getContext());
        aVar.p(i11);
        startSmoothScroll(aVar);
    }
}
