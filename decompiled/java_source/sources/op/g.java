package op;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f71090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f71091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TnTextView f71092c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        this.f71090a = itemView;
        View viewFindViewById = itemView.findViewById(R$id.image);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f71091b = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.desc);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f71092c = (TnTextView) viewFindViewById2;
    }

    public final TnTextView f() {
        return this.f71092c;
    }

    public final ImageView g() {
        return this.f71091b;
    }

    public final View h() {
        return this.f71090a;
    }
}
