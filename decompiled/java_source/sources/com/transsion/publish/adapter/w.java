package com.transsion.publish.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f50435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f50436b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.tvGroup);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50435a = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.iv_publish_group_delete);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50436b = viewFindViewById2;
    }

    public final View f() {
        return this.f50436b;
    }

    public final TextView g() {
        return this.f50435a;
    }
}
