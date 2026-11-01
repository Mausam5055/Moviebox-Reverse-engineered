package bf;

import android.content.Context;
import com.transsion.baseui.dialog.BaseDialog;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f16466a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f16467b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f16468c = new LinkedHashMap();

    private c() {
    }

    public final void a() {
        f16467b.clear();
        f16468c.clear();
    }

    public final boolean b(BaseDialog dialog, String tag) {
        Intrinsics.h(dialog, "dialog");
        Intrinsics.h(tag, "tag");
        List list = f16467b;
        if (list.isEmpty()) {
            list.add(dialog);
            return true;
        }
        f16468c.put(tag, dialog);
        return false;
    }

    public final void c(Context context) {
        Intrinsics.h(context, "context");
        f16467b.clear();
        Map map = f16468c;
        if (map.isEmpty()) {
            return;
        }
        String str = (String) CollectionsKt.h0(map.keySet());
        BaseDialog baseDialog = (BaseDialog) map.remove(str);
        if (baseDialog == null || !f16466a.b(baseDialog, str)) {
            return;
        }
        baseDialog.k0(context, str);
    }
}
