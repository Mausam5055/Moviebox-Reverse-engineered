package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadPathEntranceView;
import com.transsnet.downloader.widget.DownloadView;

/* JADX INFO: loaded from: classes7.dex */
public final class g0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f72727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f72728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f72729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayoutCompat f72730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DownloadView f72731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f72732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f72733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DownloadPathEntranceView f72734i;

    private g0(FrameLayout frameLayout, s0 s0Var, ImageView imageView, View view, LinearLayoutCompat linearLayoutCompat, DownloadView downloadView, AppCompatTextView appCompatTextView, View view2, DownloadPathEntranceView downloadPathEntranceView) {
        this.f72726a = frameLayout;
        this.f72727b = s0Var;
        this.f72728c = imageView;
        this.f72729d = view;
        this.f72730e = linearLayoutCompat;
        this.f72731f = downloadView;
        this.f72732g = appCompatTextView;
        this.f72733h = view2;
        this.f72734i = downloadPathEntranceView;
    }

    public static g0 a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.included_content;
        View viewA3 = g4.b.a(view, i11);
        if (viewA3 != null) {
            s0 s0VarA = s0.a(viewA3);
            i11 = R$id.iv_close;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                i11 = R$id.ll_content;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                if (linearLayoutCompat != null) {
                    i11 = R$id.tv_download;
                    DownloadView downloadView = (DownloadView) g4.b.a(view, i11);
                    if (downloadView != null) {
                        i11 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_bottom))) != null) {
                            i11 = R$id.v_path_entrance;
                            DownloadPathEntranceView downloadPathEntranceView = (DownloadPathEntranceView) g4.b.a(view, i11);
                            if (downloadPathEntranceView != null) {
                                return new g0((FrameLayout) view, s0VarA, imageView, viewA, linearLayoutCompat, downloadView, appCompatTextView, viewA2, downloadPathEntranceView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_single_res, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72726a;
    }
}
