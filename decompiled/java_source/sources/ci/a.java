package ci;

import ak.g;
import android.content.Context;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.search_pugc.fragment.hot.SearchHotFragment;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;
import qq.c;
import yj.b;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements b {
    private final String f() {
        return g.f639a.b() ? SearchHotFragment.PAGE_NAME : "/search/activity/search_manager";
    }

    @Override // yj.b
    public void a(String keyword, String hotWord, List searchHotWords, Context context) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(hotWord, "hotWord");
        Intrinsics.h(searchHotWords, "searchHotWords");
        Intrinsics.h(context, "context");
        Navigator.x(TheRouter.c(f()).F(NativeComponentConstants.KEY_COMPONENT_TYPE, 3).K("hot_search_word", hotWord).K("keyword", keyword), context, null, 2, null);
        c.f73672a.c(searchHotWords);
    }

    @Override // yj.b
    public void b(String hotWord, List searchHotWords, Context context) {
        Intrinsics.h(hotWord, "hotWord");
        Intrinsics.h(searchHotWords, "searchHotWords");
        Intrinsics.h(context, "context");
        Navigator.x(TheRouter.c(f()).F(NativeComponentConstants.KEY_COMPONENT_TYPE, 3).K("hot_search_word", hotWord), context, null, 2, null);
        c.f73672a.c(searchHotWords);
    }

    @Override // yj.b
    public void c(String hotWord, Context context) {
        Intrinsics.h(hotWord, "hotWord");
        Intrinsics.h(context, "context");
        Navigator.x(TheRouter.c(f()).F(NativeComponentConstants.KEY_COMPONENT_TYPE, 3).K("hot_search_word", hotWord), context, null, 2, null);
    }

    @Override // yj.b
    public void d(String hotWord, Context context) {
        Intrinsics.h(hotWord, "hotWord");
        Intrinsics.h(context, "context");
        Navigator.x(TheRouter.c(f()).F(NativeComponentConstants.KEY_COMPONENT_TYPE, 1).K("hot_search_word", hotWord), context, null, 2, null);
    }

    @Override // yj.b
    public void e(Context context) {
        Intrinsics.h(context, "context");
        Navigator.x(TheRouter.c("/search/activity/search_manager").F(NativeComponentConstants.KEY_COMPONENT_TYPE, 1).j(ASTNode.DEOP), context, null, 2, null);
    }
}
