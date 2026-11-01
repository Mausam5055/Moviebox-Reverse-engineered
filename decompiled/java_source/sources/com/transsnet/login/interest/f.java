package com.transsnet.login.interest;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.R$mipmap;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f60380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f60381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f60382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList f60383d;

    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AppCompatTextView f60384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AppCompatImageView f60385b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            Intrinsics.h(view, "view");
            View viewFindViewById = view.findViewById(R$id.tv_interest);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f60384a = (AppCompatTextView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R$id.iv_interest);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f60385b = (AppCompatImageView) viewFindViewById2;
        }

        public final AppCompatImageView f() {
            return this.f60385b;
        }

        public final AppCompatTextView g() {
            return this.f60384a;
        }
    }

    public f(List dataList, Function1 listener) {
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(listener, "listener");
        this.f60380a = dataList;
        this.f60381b = listener;
        this.f60382c = new ArrayList();
        this.f60383d = CollectionsKt.h(Integer.valueOf(R$mipmap.login_interest_animal_plant), Integer.valueOf(R$mipmap.login_interest_sport), Integer.valueOf(R$mipmap.login_interest_food), Integer.valueOf(R$mipmap.login_interest_game), Integer.valueOf(R$mipmap.login_interest_transportation), Integer.valueOf(R$mipmap.login_interest_fitness), Integer.valueOf(R$mipmap.login_interest_music), Integer.valueOf(R$mipmap.login_interest_animation), Integer.valueOf(R$mipmap.login_interest_art), Integer.valueOf(R$mipmap.login_interest_travel), Integer.valueOf(R$mipmap.login_interest_comedy), Integer.valueOf(R$mipmap.login_interest_fashion));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(f fVar, int i11, View view) {
        boolean zIsSelected = view.isSelected();
        boolean z10 = !zIsSelected;
        if (zIsSelected) {
            fVar.f60382c.remove(Integer.valueOf(i11));
        } else {
            fVar.f60382c.add(Integer.valueOf(i11));
        }
        view.setSelected(z10);
        fVar.f60381b.invoke(fVar.f60382c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f60380a.size();
    }

    public final List h() {
        return this.f60382c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a holder, final int i11) {
        Intrinsics.h(holder, "holder");
        holder.g().setText((String) this.f60380a.get(i11));
        AppCompatImageView appCompatImageViewF = holder.f();
        Object obj = this.f60383d.get(i11);
        Intrinsics.g(obj, "get(...)");
        appCompatImageViewF.setImageResource(((Number) obj).intValue());
        holder.itemView.setSelected(this.f60382c.contains(Integer.valueOf(i11)));
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.login.interest.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.j(this.f60378a, i11, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.login_item_interest, parent, false);
        Intrinsics.g(viewInflate, "inflate(...)");
        return new a(viewInflate);
    }
}
