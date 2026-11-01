package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.music.widget.MusicLikedListEmptyView;
import com.transsion.videodetail.music.widget.MusicLikedListLoadingView;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MusicLikedListEmptyView f66360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f66361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f66362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MusicLikedListLoadingView f66363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f66365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f66366h;

    private e(ConstraintLayout constraintLayout, MusicLikedListEmptyView musicLikedListEmptyView, FrameLayout frameLayout, RecyclerView recyclerView, MusicLikedListLoadingView musicLikedListLoadingView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f66359a = constraintLayout;
        this.f66360b = musicLikedListEmptyView;
        this.f66361c = frameLayout;
        this.f66362d = recyclerView;
        this.f66363e = musicLikedListLoadingView;
        this.f66364f = appCompatTextView;
        this.f66365g = appCompatTextView2;
        this.f66366h = view;
    }

    public static e a(View view) {
        View viewA;
        int i11 = R$id.emptyView;
        MusicLikedListEmptyView musicLikedListEmptyView = (MusicLikedListEmptyView) g4.b.a(view, i11);
        if (musicLikedListEmptyView != null) {
            i11 = R$id.flPlayer;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.likedRv;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.loadingView;
                    MusicLikedListLoadingView musicLikedListLoadingView = (MusicLikedListLoadingView) g4.b.a(view, i11);
                    if (musicLikedListLoadingView != null) {
                        i11 = R$id.tvPlayAll;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tvVideosCount;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.viewTopPlaceholder))) != null) {
                                return new e((ConstraintLayout) view, musicLikedListEmptyView, frameLayout, recyclerView, musicLikedListLoadingView, appCompatTextView, appCompatTextView2, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_liked_music_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66359a;
    }
}
