package ms;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class m0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f69869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TnTextView f69870c;

    private m0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f69868a = constraintLayout;
        this.f69869b = recyclerView;
        this.f69870c = tnTextView;
    }

    public static m0 a(View view) {
        int i11 = R$id.sub_operation_appointment_recycle;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.sub_operation_appointment_title;
            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
            if (tnTextView != null) {
                return new m0((ConstraintLayout) view, recyclerView, tnTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69868a;
    }
}
