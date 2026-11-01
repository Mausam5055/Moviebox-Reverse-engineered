package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLTextView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class z implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLFrameLayout f16910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLFrameLayout f16911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLTextView f16912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f16913d;

    private z(BLFrameLayout bLFrameLayout, BLFrameLayout bLFrameLayout2, BLTextView bLTextView, View view) {
        this.f16910a = bLFrameLayout;
        this.f16911b = bLFrameLayout2;
        this.f16912c = bLTextView;
        this.f16913d = view;
    }

    public static z a(View view) {
        View viewA;
        BLFrameLayout bLFrameLayout = (BLFrameLayout) view;
        int i11 = R$id.tv_title;
        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
        if (bLTextView == null || (viewA = g4.b.a(view, (i11 = R$id.v_selected))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        return new z(bLFrameLayout, bLFrameLayout, bLTextView, viewA);
    }

    public static z c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_room_list_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLFrameLayout getRoot() {
        return this.f16910a;
    }
}
