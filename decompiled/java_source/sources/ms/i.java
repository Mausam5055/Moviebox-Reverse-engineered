package ms;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f69792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f69793c;

    private i(ConstraintLayout constraintLayout, RecyclerView recyclerView, TextView textView) {
        this.f69791a = constraintLayout;
        this.f69792b = recyclerView;
        this.f69793c = textView;
    }

    public static i a(View view) {
        int i11 = R$id.sub_operation_variable_recycle;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.sub_operation_variable_title;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                return new i((ConstraintLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69791a;
    }
}
