package com.transsion.ugcvideodetail.hepler.subtitle;

import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static final a f56392g1 = a.f56393a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f56393a = new a();

        private a() {
        }

        public final b a(FragmentActivity activity, String pageName, ViewGroup subtitleLayout, SimpleSubtitleView subtitleView, com.transsion.ugcvideodetail.hepler.subtitle.a aVar, UGCImmVideo uGCImmVideo, UGCVideoPlayStream uGCVideoPlayStream) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(pageName, "pageName");
            Intrinsics.h(subtitleLayout, "subtitleLayout");
            Intrinsics.h(subtitleView, "subtitleView");
            return new UGCImmVideoSubtitleControlImp(activity, pageName, subtitleLayout, subtitleView, aVar, uGCImmVideo, uGCVideoPlayStream);
        }
    }

    void a(Function1 function1);

    void b(Function1 function1);

    void c(boolean z10);

    void d(long j11);

    void e();

    void f(eu.a aVar);

    void onDestroy();
}
