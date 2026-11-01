package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class y0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLView f63006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLView f63007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLView f63008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLView f63009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLView f63010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLView f63011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLView f63012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BLView f63013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f63014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BLView f63015k;

    private y0(ConstraintLayout constraintLayout, BLView bLView, BLView bLView2, BLView bLView3, BLView bLView4, BLView bLView5, BLView bLView6, BLView bLView7, BLView bLView8, TextView textView, BLView bLView9) {
        this.f63005a = constraintLayout;
        this.f63006b = bLView;
        this.f63007c = bLView2;
        this.f63008d = bLView3;
        this.f63009e = bLView4;
        this.f63010f = bLView5;
        this.f63011g = bLView6;
        this.f63012h = bLView7;
        this.f63013i = bLView8;
        this.f63014j = textView;
        this.f63015k = bLView9;
    }

    public static y0 a(View view) {
        int i11 = R$id.avatarSkeleton;
        BLView bLView = (BLView) g4.b.a(view, i11);
        if (bLView != null) {
            i11 = R$id.expirySkeleton;
            BLView bLView2 = (BLView) g4.b.a(view, i11);
            if (bLView2 != null) {
                i11 = R$id.firstDeviceSkeleton;
                BLView bLView3 = (BLView) g4.b.a(view, i11);
                if (bLView3 != null) {
                    i11 = R$id.listTitleSkeleton;
                    BLView bLView4 = (BLView) g4.b.a(view, i11);
                    if (bLView4 != null) {
                        i11 = R$id.middleCardSkeleton;
                        BLView bLView5 = (BLView) g4.b.a(view, i11);
                        if (bLView5 != null) {
                            i11 = R$id.nameSkeleton;
                            BLView bLView6 = (BLView) g4.b.a(view, i11);
                            if (bLView6 != null) {
                                i11 = R$id.secondDeviceSkeleton;
                                BLView bLView7 = (BLView) g4.b.a(view, i11);
                                if (bLView7 != null) {
                                    i11 = R$id.thirdDeviceSkeleton;
                                    BLView bLView8 = (BLView) g4.b.a(view, i11);
                                    if (bLView8 != null) {
                                        i11 = R$id.titleSkeleton;
                                        TextView textView = (TextView) g4.b.a(view, i11);
                                        if (textView != null) {
                                            i11 = R$id.userCardSkeleton;
                                            BLView bLView9 = (BLView) g4.b.a(view, i11);
                                            if (bLView9 != null) {
                                                return new y0((ConstraintLayout) view, bLView, bLView2, bLView3, bLView4, bLView5, bLView6, bLView7, bLView8, textView, bLView9);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static y0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.layout_device_management_loading, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63005a;
    }
}
