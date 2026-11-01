package qt;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.dialog.ShortTvDownloadResDialog;
import hj.i;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f73700a = new a();

    private a() {
    }

    public final void a(FragmentActivity activity, String str, String str2, String str3, boolean z10, Subject subject, String str4, Boolean bool) {
        String subjectId;
        String string = str2;
        Intrinsics.h(activity, "activity");
        if (!z10 && Intrinsics.c(bool, Boolean.FALSE)) {
            Navigator navigatorZ = TheRouter.c(ls.a.f69034a.b()).z("download", true);
            if (str4 == null) {
                subjectId = subject != null ? subject.getSubjectId() : null;
            } else {
                subjectId = str4;
            }
            Navigator.x(navigatorZ.K("id", subjectId).K("ops", str2), activity, null, 2, null);
            return;
        }
        if (string == null || str2.length() == 0) {
            Bundle extras = activity.getIntent().getExtras();
            string = extras != null ? extras.getString("ops") : null;
        }
        String str5 = string;
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        ShortTvDownloadResDialog.INSTANCE.a(str, i.f64505a.i(), subject, str5, str3, z10).show(supportFragmentManager, "download");
    }
}
