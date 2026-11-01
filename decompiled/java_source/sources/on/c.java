package on;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;
import com.transsion.photoview.PhotoView;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f71057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f71058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f71059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f71060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PhotoView f71061e;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, FrameLayout frameLayout3, PhotoView photoView) {
        this.f71057a = frameLayout;
        this.f71058b = frameLayout2;
        this.f71059c = appCompatImageView;
        this.f71060d = frameLayout3;
        this.f71061e = photoView;
    }

    public static c a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i11 = R$id.thumb;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.video_container;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                i11 = R$id.video_cover;
                PhotoView photoView = (PhotoView) g4.b.a(view, i11);
                if (photoView != null) {
                    return new c(frameLayout, frameLayout, appCompatImageView, frameLayout2, photoView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_gif_image_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f71057a;
    }
}
