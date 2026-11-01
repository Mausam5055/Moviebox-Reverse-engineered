package com.transsion.publish.adapter;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f50317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f50318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FrameLayout f50319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f50320d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50317a = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_desc);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50318b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.rl_close);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f50319c = (FrameLayout) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.iv_play);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f50320d = (ImageView) viewFindViewById4;
    }

    public final ImageView f() {
        return this.f50320d;
    }

    public final FrameLayout g() {
        return this.f50319c;
    }

    public final TextView h() {
        return this.f50318b;
    }

    public final TextView i() {
        return this.f50317a;
    }
}
