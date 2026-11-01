package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class l0 extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f50402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f50403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f50404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f50405d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(View view) {
        super(view);
        Intrinsics.e(view);
        this.f50402a = (ImageView) view.findViewById(R$id.iv_photo);
        this.f50403b = view.findViewById(R$id.iv_clear);
        this.f50404c = view.findViewById(R$id.rl_add);
        this.f50405d = (TextView) view.findViewById(R$id.tv_number);
    }

    public final View f() {
        return this.f50404c;
    }

    public final View g() {
        return this.f50403b;
    }

    public final ImageView h() {
        return this.f50402a;
    }

    public final TextView i() {
        return this.f50405d;
    }
}
