package com.transsion.shorttv.subtitle;

import androidx.fragment.app.FragmentActivity;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import js.e;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.k0;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0663a f53075a = C0663a.f53076a;

    /* JADX INFO: renamed from: com.transsion.shorttv.subtitle.a$a, reason: collision with other inner class name */
    public static final class C0663a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ C0663a f53076a = new C0663a();

        private C0663a() {
        }

        public final a a(FragmentActivity activity, k0 viewBinding, ShortTvViewModel shortTvViewModel, e epItem, String str) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(viewBinding, "viewBinding");
            Intrinsics.h(epItem, "epItem");
            return new ShortTVSubtitleControlImp(activity, viewBinding, shortTvViewModel, epItem, str);
        }
    }

    void a(Function1 function1);

    void b(Function1 function1);

    void c(boolean z10);

    void d(long j11);

    void e();

    void f();

    void h(ts.b bVar);

    void onDestroy();
}
