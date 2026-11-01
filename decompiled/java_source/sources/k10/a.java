package k10;

import java.util.Iterator;
import java.util.List;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List f66568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static List f66569b;

    public static boolean a() {
        List list = f66568a;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static boolean b() {
        List list = f66569b;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static void c(Object obj, String str, VariableResolverFactory variableResolverFactory) {
        List list = f66568a;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
    }

    public static void d(Object obj, String str, VariableResolverFactory variableResolverFactory, Object obj2) {
        List list = f66569b;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
    }
}
