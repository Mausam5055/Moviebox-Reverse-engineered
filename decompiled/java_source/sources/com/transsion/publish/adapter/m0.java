package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class m0 extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f50407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f50408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f50409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f50410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f50411e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.sv_item_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50407a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.sv_item_layer);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50408b = viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.sv_item_duration);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f50409c = (TextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.tv_select);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f50410d = (TextView) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.rl_select);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f50411e = viewFindViewById5;
    }

    public final ImageView f() {
        return this.f50407a;
    }

    public final View g() {
        return this.f50408b;
    }

    public final View h() {
        return this.f50411e;
    }

    public final TextView i() {
        return this.f50409c;
    }

    public final TextView j() {
        return this.f50410d;
    }
}
