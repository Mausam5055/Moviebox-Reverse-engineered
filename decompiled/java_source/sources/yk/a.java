package yk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.fission.R$id;
import com.transsion.fission.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f79024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatButton f79025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f79026c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TitleLayout f79027d;

    private a(ConstraintLayout constraintLayout, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, TitleLayout titleLayout) {
        this.f79024a = constraintLayout;
        this.f79025b = appCompatButton;
        this.f79026c = appCompatEditText;
        this.f79027d = titleLayout;
    }

    public static a a(View view) {
        int i11 = R$id.btn_submit;
        AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
        if (appCompatButton != null) {
            i11 = R$id.et_invitation_code;
            AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
            if (appCompatEditText != null) {
                i11 = R$id.tool_bar;
                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                if (titleLayout != null) {
                    return new a((ConstraintLayout) view, appCompatButton, appCompatEditText, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fission_activity_invitation_code, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f79024a;
    }
}
