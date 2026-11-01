package com.transsnet.downloader.manager;

import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.c0;
import com.tencent.mmkv.MMKV;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f59485h = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f59478a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f59479b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.i();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f59480c = "key_next_dl_type";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f59481d = "key_last_download_time";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f59482e = "key_today_downloaded_times";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f59483f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f59484g = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f59486i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f59487j = 2;

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f59479b.getValue();
        }

        public final String b() {
            return f.f59481d;
        }

        public final int c() {
            return f.f59483f;
        }

        public final int d() {
            return f.f59484g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f i() {
        return new f();
    }

    public final int f() {
        return f59485h;
    }

    public final void g() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (!c0.f(bVar.b().getLong(f59481d, 0L))) {
            bVar.b().putInt(f59482e, 1);
            return;
        }
        MMKV mmkvB = bVar.b();
        String str = f59482e;
        bVar.b().putInt(str, mmkvB.getInt(str, 0) + 1);
    }

    public final void h() {
        f();
    }

    public final void j(FragmentActivity activity, Subject subject, Function0 function0) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(subject, "subject");
        if (f() != f59485h || function0 == null) {
            return;
        }
        function0.invoke();
    }
}
