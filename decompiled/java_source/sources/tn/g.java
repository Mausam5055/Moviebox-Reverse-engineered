package tn;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.api.IStreamDetailService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f76322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f76323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Subject f76324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f76325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f76326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f76327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f76328g;

    public g(Fragment fragment, int i11, Subject subject, String pageName, String str, boolean z10, boolean z11) {
        Fragment fragmentB;
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        this.f76322a = fragment;
        this.f76323b = i11;
        this.f76324c = subject;
        this.f76325d = pageName;
        this.f76326e = str;
        this.f76327f = z10;
        this.f76328g = z11;
        if (!fragment.isAdded() || fragment.isDetached() || fragment.isRemoving()) {
            return;
        }
        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        IStreamDetailService iStreamDetailService = (IStreamDetailService) TheRouter.d(IStreamDetailService.class, new Object[0]);
        if (iStreamDetailService != null && (fragmentB = iStreamDetailService.b(subject, pageName, str, z10, z11)) != null) {
            wVarP.s(i11, fragmentB);
        }
        wVarP.j();
    }

    public /* synthetic */ g(Fragment fragment, int i11, Subject subject, String str, String str2, boolean z10, boolean z11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, i11, subject, str, str2, (i12 & 32) != 0 ? false : z10, (i12 & 64) != 0 ? false : z11);
    }
}
