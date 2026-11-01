package com.transsion.publish.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class z extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f50442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f50443b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.tvLocation);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50442a = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.iv_publish_location_delete);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50443b = viewFindViewById2;
    }

    public final View f() {
        return this.f50443b;
    }

    public final TextView g() {
        return this.f50442a;
    }
}
