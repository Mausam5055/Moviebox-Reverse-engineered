package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.TitleLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NestedScrollView f16707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatEditText f16708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f16709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f16710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TitleLayout f16711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f16712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f16713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f16714h;

    private a(NestedScrollView nestedScrollView, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, ShapeableImageView shapeableImageView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f16707a = nestedScrollView;
        this.f16708b = appCompatEditText;
        this.f16709c = appCompatEditText2;
        this.f16710d = shapeableImageView;
        this.f16711e = titleLayout;
        this.f16712f = appCompatTextView;
        this.f16713g = appCompatTextView2;
        this.f16714h = appCompatTextView3;
    }

    public static a a(View view) {
        int i11 = R$id.et_community_desc;
        AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
        if (appCompatEditText != null) {
            i11 = R$id.et_community_name;
            AppCompatEditText appCompatEditText2 = (AppCompatEditText) g4.b.a(view, i11);
            if (appCompatEditText2 != null) {
                i11 = R$id.iv_avatar;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.tool_bar;
                    TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                    if (titleLayout != null) {
                        i11 = R$id.tv_comfirm;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tv_desc;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null) {
                                i11 = R$id.tv_name;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView3 != null) {
                                    return new a((NestedScrollView) view, appCompatEditText, appCompatEditText2, shapeableImageView, titleLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_create_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NestedScrollView getRoot() {
        return this.f16707a;
    }
}
