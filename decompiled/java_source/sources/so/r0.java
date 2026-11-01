package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLTextView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class r0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f75698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLTextView f75699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Space f75700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLTextView f75701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f75702e;

    private r0(View view, BLTextView bLTextView, Space space, BLTextView bLTextView2, AppCompatTextView appCompatTextView) {
        this.f75698a = view;
        this.f75699b = bLTextView;
        this.f75700c = space;
        this.f75701d = bLTextView2;
        this.f75702e = appCompatTextView;
    }

    public static r0 a(View view) {
        int i11 = R$id.go_to_setting;
        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
        if (bLTextView != null) {
            i11 = R$id.guideline;
            Space space = (Space) g4.b.a(view, i11);
            if (space != null) {
                i11 = R$id.retry;
                BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                if (bLTextView2 != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        return new r0(view, bLTextView, space, bLTextView2, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r0 b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.view_imm_video_not_net, viewGroup);
        return a(viewGroup);
    }

    @Override // g4.a
    public View getRoot() {
        return this.f75698a;
    }
}
