package op;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f71088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f71089b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        this.f71088a = itemView;
        View viewFindViewById = itemView.findViewById(R$id.image);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f71089b = (ImageView) viewFindViewById;
    }

    public final ImageView f() {
        return this.f71089b;
    }

    public final View g() {
        return this.f71088a;
    }
}
