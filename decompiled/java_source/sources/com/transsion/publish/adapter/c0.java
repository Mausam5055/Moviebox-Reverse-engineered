package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c0 extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f50330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f50331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f50332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f50333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f50334e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f50335f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.sv_item_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f50330a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f50331b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.tv_desc);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f50332c = (TextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.tv_select);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f50333d = (TextView) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.iv_play);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f50334e = (ImageView) viewFindViewById5;
        View viewFindViewById6 = itemView.findViewById(R$id.view_masking);
        Intrinsics.g(viewFindViewById6, "findViewById(...)");
        this.f50335f = viewFindViewById6;
    }

    public final ImageView f() {
        return this.f50334e;
    }

    public final TextView g() {
        return this.f50332c;
    }

    public final TextView h() {
        return this.f50333d;
    }

    public final TextView i() {
        return this.f50331b;
    }

    public final View j() {
        return this.f50335f;
    }
}
