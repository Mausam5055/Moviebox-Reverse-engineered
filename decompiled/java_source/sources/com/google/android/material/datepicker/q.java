package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
abstract class q extends LinearLayoutManager {

    class a extends androidx.recyclerview.widget.h {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.h
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    q(Context context, int i11, boolean z10) {
        super(context, i11, z10);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.y yVar, int i11) {
        a aVar = new a(recyclerView.getContext());
        aVar.p(i11);
        startSmoothScroll(aVar);
    }
}
