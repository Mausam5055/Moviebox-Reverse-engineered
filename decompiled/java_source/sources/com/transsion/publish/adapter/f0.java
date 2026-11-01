package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f0 extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f50359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f50360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f50361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f50362d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.sv_item_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50359a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_select);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50360b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.view_masking);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f50361c = viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.rl_select);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f50362d = viewFindViewById4;
    }

    public final ImageView f() {
        return this.f50359a;
    }

    public final View g() {
        return this.f50362d;
    }

    public final TextView h() {
        return this.f50360b;
    }

    public final View i() {
        return this.f50361c;
    }
}
