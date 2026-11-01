package com.transsion.postdetail.ui.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import so.v;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f49387a;

    public final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v f49388a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f49389b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, v binding) {
            super(binding.getRoot());
            Intrinsics.h(binding, "binding");
            this.f49389b = dVar;
            this.f49388a = binding;
        }

        public final v f() {
            return this.f49388a;
        }
    }

    public d(String str) {
        this.f49387a = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a holder, int i11) {
        Intrinsics.h(holder, "holder");
        holder.f().f75732b.setText(this.f49387a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        v vVarC = v.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(vVarC, "inflate(...)");
        return new a(this, vVarC);
    }
}
