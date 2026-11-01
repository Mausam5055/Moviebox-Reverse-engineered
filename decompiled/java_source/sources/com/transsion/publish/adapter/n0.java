package com.transsion.publish.adapter;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class n0 extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ShapeableImageView f50414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AppCompatTextView f50415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AppCompatTextView f50416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AppCompatImageView f50417d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.ivCover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50414a = (ShapeableImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tvSubjectTitle);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50415b = (AppCompatTextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.tvSubjectYear);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f50416c = (AppCompatTextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.iv_publish_subject_delete);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f50417d = (AppCompatImageView) viewFindViewById4;
    }

    public final ShapeableImageView f() {
        return this.f50414a;
    }

    public final AppCompatImageView g() {
        return this.f50417d;
    }

    public final AppCompatTextView h() {
        return this.f50416c;
    }

    public final AppCompatTextView i() {
        return this.f50415b;
    }
}
