package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatButton f75493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f75494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TitleLayout f75495d;

    private e(ConstraintLayout constraintLayout, AppCompatButton appCompatButton, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f75492a = constraintLayout;
        this.f75493b = appCompatButton;
        this.f75494c = recyclerView;
        this.f75495d = titleLayout;
    }

    public static e a(View view) {
        int i11 = R$id.btnSubmit;
        AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
        if (appCompatButton != null) {
            i11 = R$id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.toolbar;
                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                if (titleLayout != null) {
                    return new e((ConstraintLayout) view, appCompatButton, recyclerView, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_post_feedback_input, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75492a;
    }
}
