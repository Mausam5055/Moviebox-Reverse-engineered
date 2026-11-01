package dp;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.postdetail.ui.adapter.i;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public static final C0735a f61376h1 = C0735a.f61377a;

    /* JADX INFO: renamed from: dp.a$a, reason: collision with other inner class name */
    public static final class C0735a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ C0735a f61377a = new C0735a();

        private C0735a() {
        }

        public final a a(Context context, Fragment fragment, RecyclerView recyclerView, i iVar, String pageName, String subpageName, boolean z10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(fragment, "fragment");
            Intrinsics.h(pageName, "pageName");
            Intrinsics.h(subpageName, "subpageName");
            return new e(context, fragment, recyclerView, iVar, pageName, subpageName, z10);
        }
    }

    void a();

    void b();

    void c();

    void onPageDestroy();
}
