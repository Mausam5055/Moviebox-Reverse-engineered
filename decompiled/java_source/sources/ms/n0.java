package ms;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class n0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f69875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f69876c;

    private n0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TextView textView) {
        this.f69874a = constraintLayout;
        this.f69875b = recyclerView;
        this.f69876c = textView;
    }

    public static n0 a(View view) {
        int i11 = R$id.sub_operation_variable_recycle;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.sub_operation_variable_title;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                return new n0((ConstraintLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69874a;
    }
}
