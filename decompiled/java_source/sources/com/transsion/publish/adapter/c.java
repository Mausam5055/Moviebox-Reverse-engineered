package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f50326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f50327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f50328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f50329d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(View view) {
        super(view);
        Intrinsics.e(view);
        this.f50326a = (ImageView) view.findViewById(R$id.iv_photo);
        this.f50327b = view.findViewById(R$id.iv_clear);
        this.f50328c = view.findViewById(R$id.rl_add);
        this.f50329d = (TextView) view.findViewById(R$id.tv_number);
    }

    public final View f() {
        return this.f50328c;
    }

    public final View g() {
        return this.f50327b;
    }

    public final ImageView h() {
        return this.f50326a;
    }

    public final TextView i() {
        return this.f50329d;
    }
}
