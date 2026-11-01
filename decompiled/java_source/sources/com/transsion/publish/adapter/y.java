package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class y extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f50437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f50438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f50439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f50440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f50441e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.iv_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50437a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50438b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.tv_desc);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f50439c = viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.rl_close);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f50440d = viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.layout);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f50441e = viewFindViewById5;
    }

    public final View f() {
        return this.f50440d;
    }

    public final TextView g() {
        return this.f50438b;
    }
}
